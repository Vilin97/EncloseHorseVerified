"""Untrusted emitter for small, kernel-checked counter-clause equalities."""
from __future__ import annotations
import json
from pathlib import Path


def split_merge_rows(encoding: dict, merge: dict, rows_per_part: int = 8):
    left, right, outputs = merge['left'], merge['right'], merge['outputs']
    begin = encoding['baseClauseCount'] + merge['clauseStart']
    clauses = encoding['clauses'][begin:encoding['baseClauseCount'] + merge['clauseEnd']]
    rows = [(i, [] if i == 0 else [-left[i - 1]]) for i in range(len(left) + 1)]
    counts = [sum(0 < i + j <= len(outputs) for j in range(len(right) + 1)) for i in range(len(left) + 1)]
    parts=[];cursor=0
    for start in range(0,len(rows),rows_per_part):
        count=sum(counts[start:start+rows_per_part])
        parts.append((rows[start:start+rows_per_part],clauses[cursor:cursor+count]))
        cursor+=count
    assert cursor==len(clauses)
    return parts


def counter_items(root_tree):
    items=[];memo={}
    def visit(node):
        key=('leaf',node['lit']) if 'lit' in node else ('node',tuple(node['outputs']))
        if key in memo:return memo[key]
        if 'lit' in node:left=right=None
        else:left=visit(node['left']);right=visit(node['right'])
        index=len(items);memo[key]=index;items.append((node,left,right));return index
    return items,visit(root_tree)


def emit_counter(encoding: dict, folder: Path, kind: str, counter_index: int,
                 namespace: str, module: str, merges_per_file: int = 10) -> None:
    def lit(value):return f'({abs(value)-1},{str(value>0).lower()})'
    def clause(c):return '['+','.join(map(lit,c))+']'
    def cnf(cs):return '['+','.join(map(clause,cs))+']'
    def header(imports):return ''.join('import '+i+'\n' for i in imports)+f'''
open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace {namespace}.{kind}Nodes

'''
    def write(name,source): (folder/(name+'.lean')).write_text(source+'\nend '+namespace+'.'+kind+'Nodes\n')
    merges={tuple(m['outputs']):m for m in encoding['merges']};base=encoding['baseClauseCount']
    items,root=counter_items(encoding['constraints'][counter_index]['tree'])
    pending=[];count=0;checkpoint=0;last=module+'.Counters';nrows=0
    def flush():
        nonlocal pending,count,checkpoint,last
        if not pending:return
        name=f'{kind}Node{checkpoint:03d}'
        helper='''theorem concat3_congr {a b c d e f : CNF} (h : a = b) (k : c = d) (l : e = f) :
    a ++ c ++ e = b ++ d ++ f := by
  cases h; cases k; cases l; rfl

''' if checkpoint==0 else ''
        write(name,header([last])+helper+''.join(pending))
        last=module+'.'+name;checkpoint+=1;pending=[];count=0
    for index,(node,left,right) in enumerate(items):
        if 'lit' in node:
            pending.append(f'def t{index} : CounterTree := .leaf {lit(node["lit"])}\ndef c{index} : CNF := []\ntheorem eq{index} : t{index}.clauses = c{index} := rfl\n\n')
            continue
        outputs=json.dumps([v-1 for v in node['outputs']],separators=(',',':'))
        merge=merges[tuple(node['outputs'])]
        clauses=encoding['clauses'][base+merge['clauseStart']:base+merge['clauseEnd']]
        if len(clauses)>1200:
            flush();parts=split_merge_rows(encoding,merge)
            for part,(rows,row_clauses) in enumerate(parts):
                name=f'{kind}Merge{index}Row{part:03d}'
                row_literal='['+','.join(f'({i},{clause(c)})' for i,c in rows)+']'
                source=header([last,'EncloseHorseVerified.Certificate.MergeRows'])+f'''def rows{index}_{part} : List (Nat × Clause) := {row_literal}
def rowCNF{index}_{part} : CNF := {cnf(row_clauses)}
theorem rowEq{index}_{part} : mergeRows rows{index}_{part} t{right}.outputLits {outputs} = rowCNF{index}_{part} := by rfl
'''
                write(name,source);last=module+'.'+name;nrows+=1
            rows_expr=' ++ '.join(f'rows{index}_{part}' for part in range(len(parts)))
            cnf_expr=' ++ '.join(f'rowCNF{index}_{part}' for part in range(len(parts)))
            eqs=', '.join(f'rowEq{index}_{part}' for part in range(len(parts)))
            merge_source=f'''def m{index} : CNF := {cnf_expr}
theorem merge{index} : mergeClauses t{left}.outputLits t{right}.outputLits {outputs} = m{index} := by
  rw [mergeClauses_eq_mergeRows]
  have hr : thresholds t{left}.outputLits = {rows_expr} := by rfl
  rw [hr]
  simp only [mergeRows_append, {eqs}, m{index}]
'''
        else:
            merge_source=f'''def m{index} : CNF := {cnf(clauses)}
theorem merge{index} : mergeClauses t{left}.outputLits t{right}.outputLits {outputs} = m{index} := by rfl
'''
        pending.append(f'def t{index} : CounterTree := .node {outputs} t{left} t{right}\n'+merge_source+f'''
def c{index} : CNF := c{left} ++ c{right} ++ m{index}
theorem eq{index} : t{index}.clauses = c{index} := by
  change t{left}.clauses ++ t{right}.clauses ++ mergeClauses t{left}.outputLits t{right}.outputLits {outputs} = c{index}
  exact concat3_congr eq{left} eq{right} merge{index}

''')
        count+=1
        if count==merges_per_file:flush()
    flush()
    constraint=encoding['constraints'][counter_index];root_output=constraint['outputs'][constraint['bound']]-1
    field='budget' if counter_index==0 else 'complement';bound='budgetBound' if counter_index==0 else 'scoreBound'
    value='budgetLiteral' if counter_index==0 else 'scoreLiteral';proof='budget_eq' if counter_index==0 else 'complement_eq'
    (folder/f'{kind}Clauses.lean').write_text(f'''import {last}

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace {namespace}

def {value} : CNF := {kind}Nodes.c{root} ++ [[({root_output},false)]]
theorem {kind.lower()}Tree_eq : counters.{field} = {kind}Nodes.t{root} := by rfl

theorem {proof} : counters.{field}.atMostClauses counters.{bound} = {value} := by
  unfold CounterTree.atMostClauses
  have hc : counters.{field}.clauses = {kind}Nodes.c{root} := by
    rw [{kind.lower()}Tree_eq]
    exact {kind}Nodes.eq{root}
  rw [hc]
  rfl

end {namespace}
''')
    print(kind,len(items),'named subtrees,',checkpoint,'node checkpoints,',nrows,'row checkpoints')
