#!/usr/bin/env python3
"""Emit untrusted linkage data and kernel-checkable proofs for a daily RUP certificate.

Requires the standard daily Board/Witness declarations, the generated Data and
Final RUP modules, and an encoding.json produced by solve_certificate.py. Every
emitted equality and certificate acceptance uses decide +kernel; this program
and the JSON metadata are not trusted. Currently requires all open static cells
to lie in the horse component, as on the three retained daily fixtures.
"""
from __future__ import annotations

import argparse
from collections import deque
import json
from pathlib import Path
import re

from solve_certificate import board_graph
from counter_clause_checkpoints import emit_counter
from selection_tree_checkpoints import emit_selection_tree
from selection_parts import emit_parts


def lit(value: int) -> str:
    return f'({abs(value)-1},{str(value > 0).lower()})'


def cnf(clauses: list[list[int]]) -> str:
    return '[' + ','.join('[' + ','.join(map(lit, c)) + ']' for c in clauses) + ']'


def tree(node: dict) -> str:
    if 'lit' in node:
        return '(.leaf ' + lit(node['lit']) + ')'
    outputs = [v - 1 for v in node['outputs']]
    return '(.node ' + json.dumps(outputs, separators=(',', ':')) + ' ' + tree(node['left']) + ' ' + tree(node['right']) + ')'


def emit(encoding: dict, folder: Path, block_size: int = 16) -> None:
    level = encoding['level']
    match = re.fullmatch(r'daily-(\d{4})-(\d{2})-(\d{2})', level['id'])
    if match is None:
        raise ValueError('requires a named daily fixture')
    date = ''.join(match.groups())
    namespace = 'EncloseHorse.Certificate.Generated.Daily' + date
    module = 'EncloseHorseVerified.Certificate.Generated.Daily' + date
    board = 'DailyLevels.daily' + date
    witness = board + 'Witness'
    target = encoding['target']
    if type(target) is not int:
        raise ValueError('target must be an integer')
    cells, graph, reached, horse = board_graph(level.get('rows') or level['map'].splitlines())
    if reached != {i for i, c in enumerate(cells) if c != '~'}:
        raise ValueError('static horse component must cover every open cell for this path-forest template')
    if block_size < 1:
        raise ValueError('block size must be positive')
    constraints = encoding['constraints']
    if len(constraints) != 2 or any('tree' not in c for c in constraints):
        raise ValueError('requires wall and score counter trees')
    if any(c['bound'] < 0 or c['bound'] >= len(c['outputs']) for c in constraints):
        raise ValueError('counter root bounds must have an allocated output')
    folder.mkdir(parents=True, exist_ok=True)

    def header(imports: list[str], extra: str = '') -> str:
        return ''.join('import ' + i + '\n' for i in imports) + '''
open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace ''' + namespace + '\n\n' + extra

    def write(name: str, source: str) -> None:
        (folder / (name + '.lean')).write_text(source + '\nend ' + namespace + '\n')

    write('Counters', header(['EncloseHorseVerified.Certificate.Clingo', 'EncloseHorseVerified.DailyLevels']) +
          'def wallBudget : CounterTree :=\n  ' + tree(constraints[0]['tree']) + '\n\n' +
          'def scoreComplement : CounterTree :=\n  ' + tree(constraints[1]['tree']) + '\n\n' +
          f'''def counters : Counters where
  budget := wallBudget
  complement := scoreComplement
  budgetBound := ⟨{constraints[0]['bound']}, by decide +kernel⟩
  scoreBound := ⟨{constraints[1]['bound']}, by decide +kernel⟩

theorem countersAccepted : checkCounters {board} {target} counters = true := by
  decide +kernel
''')
    write('StaticData', header(['EncloseHorseVerified.Certificate.StaticReach', 'EncloseHorseVerified.DailyLevels']) +
          'namespace Input\n\ndef staticCells : List Nat := ' +
          json.dumps(sorted(reached), separators=(',', ':')) + '\n\nend Input\n')

    parents = {horse: None}
    queue = deque([horse])
    while queue:
        parent = queue.popleft()
        for cell in sorted(graph[parent]):
            if cell not in parents:
                parents[cell] = parent
                queue.append(cell)
    forest = '[' + ','.join(f'({i},{p})' for i, p in parents.items() if p is not None) + ']'
    write('Static', header([module + '.StaticData', 'EncloseHorseVerified.Certificate.PathForest']) + f'''
def staticCells : List Nat := Input.staticCells

def parentForest : List (Nat × Nat) := {forest}

theorem pathsAccepted : PathForest.check ({board}.edge []) {board}.horse parentForest = true := by
  decide +kernel

theorem staticCoverage : {board}.openCells [] = staticCells := by decide +kernel

theorem horseIndex : {board}.horse = {horse} := by decide +kernel

theorem forestCoverage : staticCells.all (fun i =>
    (parentForest.map Prod.fst ++ [{board}.horse]).contains i) = true := by
  decide +kernel

theorem staticPaths : ∀ i ∈ staticCells,
    Reachability.Path ({board}.edge []) {board}.horse i := by
  intro i hi
  apply PathForest.check_sound ({board}.edge []) {board}.horse parentForest pathsAccepted i
  exact List.contains_iff_mem.mp ((List.all_eq_true.mp forestCoverage) i hi)

theorem staticMask_eq : (reach {board} []).contains = staticCells.contains :=
  static_contains_eq {board} (by decide +kernel) staticCells staticCoverage staticPaths
''')

    cursor = 0
    cell_parts = []
    width, height = encoding['width'], encoding['height']
    for i, char in enumerate(cells):
        count = (int(char != '.') + int(i not in reached) +
                 int(i % width in (0, width - 1) or i // width in (0, height - 1)) +
                 1 + len(graph.get(i, ())))
        cell_parts.append(encoding['clauses'][cursor:cursor + count])
        cursor += count
    if cursor != encoding['baseClauseCount'] - 1:
        raise ValueError('base clause partition mismatch')
    block_ids = []
    for index, start in enumerate(range(0, len(cells), block_size)):
        block_ids.append(index)
        indices = list(range(start, min(start + block_size, len(cells))))
        clauses = sum(cell_parts[start:start + block_size], [])
        write(f'Base{index:03d}', header([module + '.StaticData']) +
              f'def cellBlock{index} : List Nat := ' + json.dumps(indices, separators=(',', ':')) + '\n\n' +
              f'def baseBlock{index} : CNF := ' + cnf(clauses) + '\n\n' +
              f'''theorem baseBlock{index}_eq :
    cellBlock{index}.flatMap (cellClauses {board} Input.staticCells) = baseBlock{index} := by
  decide +kernel
''')
    block_names = [f'baseBlock{i}' for i in block_ids]
    write('BaseBlocks', header([module + f'.Base{i:03d}' for i in block_ids]) +
          'def baseLiteral : CNF := ' + ' ++ '.join(block_names) +
          f' ++ [[({2 * horse + 1},true)]]\n')
    write('Base', header([module + '.BaseBlocks', module + '.Static']) + f'''
theorem base_eq : baseClauses {board} = baseLiteral := by
  rw [baseClauses_from_static {board} Input.staticCells (by exact staticMask_eq)]
  have hc : {board}.cells = ''' + ' ++ '.join(f'cellBlock{i}' for i in block_ids) + ''' := by decide +kernel
  rw [hc]
  simp only [List.flatMap_append, ''' + ', '.join(f'baseBlock{i}_eq' for i in block_ids) + ''']
  rw [horseIndex]
  rfl
''')

    base_end = encoding['baseClauseCount']
    budget_end = base_end + constraints[0]['clauseEnd']
    write('BudgetClauses', header([module + '.Counters']) +
          'def budgetLiteral : CNF := ' + cnf(encoding['clauses'][base_end:budget_end]) + '\n\n' +
          'theorem budget_eq : counters.budget.atMostClauses counters.budgetBound = budgetLiteral := by\n  rfl\n')
    write('ScoreClauses', header([module + '.Counters']) +
          'def scoreLiteral : CNF := ' + cnf(encoding['clauses'][budget_end:]) + '\n\n' +
          'theorem complement_eq : counters.complement.atMostClauses counters.scoreBound = scoreLiteral := by\n  rfl\n')
    (folder / 'CounterClauses.lean').write_text(
        'import ' + module + '.BudgetClauses\nimport ' + module + '.ScoreClauses\n')
    write('Link', header([module + '.Counters', module + '.Data', module + '.Base',
                         module + '.CounterClauses', 'EncloseHorseVerified.Certificate.Selection']) +
          'open Selection Rup\n\ndef treeClauseIndices : List Nat := ' +
          json.dumps(encoding['treeClauseIndices'], separators=(',', ':')) + f'''

theorem selectionAccepted :
    checkSelection (fullCNF {board} counters) treeClauseIndices state0.clauses = true := by
  unfold checkSelection fullCNF
  rw [base_eq, budget_eq, complement_eq]
  decide +kernel

theorem selected_eq : selectClauses (fullCNF {board} counters) treeClauseIndices = state0.clauses :=
  checkSelection_sound _ _ _ selectionAccepted

theorem full_unsat_of_selected
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model state0.clauses) :
    ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF {board} counters) :=
  unsat_of_checkSelection _ _ _ selectionAccepted hu
''')
    write('Witness', header([module + '.Counters']) + f'''
theorem incumbentChecked : admissible {board} {witness} ∧ score {board} {witness} = {target} := by
  decide +kernel

theorem incumbentCountersAccepted : checkCounters {board} (score {board} {witness}) counters = true := by
  rw [incumbentChecked.2]
  exact countersAccepted
''')
    write('Verified', header([module + '.Link', module + '.Final', module + '.Witness', 'Lean']) + f'''
theorem full_unsat : ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF {board} counters) :=
  full_unsat_of_selected unsat

theorem optimal : Optimal {board} {witness} :=
  optimal_of_unsat _ _ counters incumbentChecked.1 incumbentCountersAccepted full_unsat

theorem physicalOptimal : PhysicalOptimal {board} {witness} := optimal.physical

open Lean Elab Command

elab "#audit_daily_{date}" : command => do
  for name in [``selectionAccepted, ``countersAccepted, ``incumbentChecked,
      ``full_unsat, ``optimal, ``physicalOptimal] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{{name}} depends on unexpected axiom {{ax}}"
    logInfo m!"{{name}}: {{axioms}}"

#audit_daily_{date}
''')

    # A whole recursive score counter can exhaust the kernel's reduction cache.
    # Per-node equalities check the same merge clauses and compose by congruence.
    emit_counter(encoding, folder, 'Score', 1, namespace, module)
    emit_selection_tree(encoding, folder, namespace, module, block_size)
    write('Link', header([module + '.Counters', module + '.Data', module + '.Lookup',
                         'EncloseHorseVerified.Certificate.Selection']) +
          'open Selection Rup\n\ndef treeClauseIndices : List Nat := ' +
          json.dumps(encoding['treeClauseIndices'], separators=(',', ':')) + f'''

theorem selectionAccepted : SelectionTree.check Lookup.fullTree treeClauseIndices state0.clauses = true := by
  decide +kernel

theorem selected_eq : SelectionTree.select Lookup.fullTree treeClauseIndices = state0.clauses :=
  of_decide_eq_true selectionAccepted

theorem full_unsat_of_selected
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model state0.clauses) :
    ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF {board} counters) := by
  intro model hs
  apply hu model
  apply SelectionTree.check_sat Lookup.fullTree treeClauseIndices state0.clauses selectionAccepted model
  rw [Lookup.fullTree_eq]
  exact hs
''')


    if len(encoding['treeClauseIndices']) > 2500:
        if not (folder / 'Data.lean').exists():
            raise ValueError('emit the RUP Data modules before generating selected-input checkpoints')
        emit_parts(encoding, folder, namespace, module)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('encoding', type=Path)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--block-size', type=int, default=16)
    args = parser.parse_args()
    emit(json.loads(args.encoding.read_text()), args.output, args.block_size)
    print('Wrote untrusted proof sources. Compile every module with Lean; generation alone proves nothing.')


if __name__ == '__main__':
    main()
