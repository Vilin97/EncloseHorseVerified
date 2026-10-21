#!/usr/bin/env python3
"""Generate untrusted SAT/LRAT data for a Lean optimality certificate.

This script never certifies an optimum on its own. The intended trust path is
Game.admissible -> satisfaction of the generated CNF -> kernel-checked LRAT
unsatisfiability. CaDiCaL, this generator, and its parser are outside that path.
The relaxed encoding permits disconnected inside components; UNSAT is still a
sound upper bound because every real enclosure is a model of the relaxation.
"""
from __future__ import annotations

import argparse
from collections import defaultdict, deque
from dataclasses import dataclass, field
import json
from pathlib import Path
import subprocess
import time
from typing import Any


@dataclass
class Totalizer:
    next_var: int
    clauses: list[list[int]] = field(default_factory=list)
    merges: list[dict[str, Any]] = field(default_factory=list)
    constraints: list[dict[str, Any]] = field(default_factory=list)

    def build(self, inputs: list[int], cap: int) -> tuple[list[int], dict[str, Any]]:
        if not inputs:
            raise ValueError("a counter tree needs at least one input")
        if len(inputs) == 1:
            return inputs.copy(), {"lit": inputs[0]}
        middle = len(inputs) // 2
        left, left_tree = self.build(inputs[:middle], cap)
        right, right_tree = self.build(inputs[middle:], cap)
        size = min(cap, len(inputs))
        outputs = list(range(self.next_var, self.next_var + size))
        self.next_var += size
        clause_start = len(self.clauses)
        for i in range(len(left) + 1):
            for j in range(len(right) + 1):
                if 1 <= i + j <= size:
                    clause = ([] if i == 0 else [-left[i - 1]])
                    clause += ([] if j == 0 else [-right[j - 1]])
                    clause += [outputs[i + j - 1]]
                    self.clauses.append(clause)
        self.merges.append({"inputs": inputs, "left": left, "right": right,
                            "outputs": outputs, "cap": cap,
                            "clauseStart": clause_start,
                            "clauseEnd": len(self.clauses)})
        return outputs, {"outputs": outputs, "left": left_tree, "right": right_tree}

    def at_most(self, inputs: list[int], bound: int, label: str) -> None:
        start = len(self.clauses)
        tree = None
        if bound < 0:
            outputs = []
            self.clauses.append([])
        elif bound >= len(inputs):
            outputs = []
        else:
            outputs, tree = self.build(inputs, bound + 1)
            self.clauses.append([-outputs[bound]])
        self.constraints.append({"label": label, "inputs": inputs, "bound": bound,
                                 "outputs": outputs, "tree": tree, "clauseStart": start,
                                 "clauseEnd": len(self.clauses)})


def board_graph(rows: list[str]) -> tuple[str, dict[int, set[int]], set[int], int]:
    if not rows or not rows[0] or any(len(r) != len(rows[0]) for r in rows):
        raise ValueError("expected a nonempty rectangular map")
    cells = "".join(rows).replace(" ", ".").replace("#", "~")
    if cells.count("H") != 1:
        raise ValueError("expected exactly one horse")
    if set(cells) - set(".~HCGS0123456789abcdefghijklmnopqrstuvwxyz"):
        raise ValueError("unsupported map character")
    width = len(rows[0])
    graph = {i: set() for i, c in enumerate(cells) if c != "~"}
    portals: dict[str, list[int]] = defaultdict(list)
    for i, c in enumerate(cells):
        if c.isdigit() or "a" <= c <= "z":
            portals[c].append(i)
    for i in graph:
        for j in (i - 1, i + 1, i - width, i + width):
            if j in graph and abs(i // width - j // width) + abs(i % width - j % width) == 1:
                graph[i].add(j)
        if cells[i] in portals:
            graph[i].update(portals[cells[i]])
    horse = cells.index("H")
    reached, queue = {horse}, deque([horse])
    while queue:
        for j in sorted(graph[queue.popleft()]):
            if j not in reached:
                reached.add(j)
                queue.append(j)
    return cells, graph, reached, horse


def encode(level: dict[str, Any], target: int) -> dict[str, Any]:
    rows = level.get("rows") or level["map"].splitlines()
    cells, graph, static_reach, horse = board_graph(rows)
    width, height, n = len(rows[0]), len(rows), len(cells)
    budget = int(level["budget"])
    if budget < 0:
        raise ValueError("negative wall budget")
    wall = lambda i: 2 * i + 1
    inside = lambda i: 2 * i + 2
    clauses: list[list[int]] = []
    grass, score_complement = [], []
    positive_total = 0
    for i, char in enumerate(cells):
        if char == ".":
            grass.append(wall(i))
        else:
            clauses.append([-wall(i)])
        if i not in static_reach:
            clauses.append([-inside(i)])
        if i % width in (0, width - 1) or i // width in (0, height - 1):
            clauses.append([-inside(i)])
        clauses.append([-wall(i), -inside(i)])
        point = {"C": 4, "G": 11, "S": -4, "~": 0}.get(char, 1)
        positive_total += max(point, 0)
        score_complement.extend(([-inside(i)] if point > 0 else [inside(i)]) * abs(point))
        for j in sorted(graph.get(i, ())):
            clauses.append([-inside(i), wall(j), inside(j)])
    clauses.append([inside(horse)])
    base_clause_count = len(clauses)
    totalizer = Totalizer(2 * n + 1)
    totalizer.at_most(grass, budget, "wall-budget")
    totalizer.at_most(score_complement, positive_total - target - 1, "strictly-better-score")
    clauses.extend(totalizer.clauses)
    return {"schema": "enclose-horse-forward-totalizer-v1", "level": level,
            "target": target, "width": width, "height": height, "horse": horse,
            "staticReach": sorted(static_reach), "positiveTotal": positive_total,
            "baseClauseCount": base_clause_count, "numVars": totalizer.next_var - 1,
            "clauses": clauses, "merges": totalizer.merges,
            "constraints": totalizer.constraints}


def parse_and_renumber_lrat(text: str, initial_clauses: int) -> tuple[list[dict[str, Any]], str]:
    """Make LRAT additions contiguous, as required by Lean's array-based checker.

    This parsing is untrusted: every resulting action is checked in Lean.
    Deletion records are retained and all referenced clause IDs are translated.
    """
    mapping = {i: i for i in range(1, initial_clauses + 1)}
    next_id = initial_clauses + 1
    actions, lines = [], []
    for line in text.splitlines():
        if not line or line.startswith("c"):
            continue
        parts = line.split()
        original_id = int(parts[0])
        if parts[1] == "d":
            ids = [mapping[int(v)] for v in parts[2:] if int(v)]
            actions.append({"kind": "del", "ids": ids})
            lines.append(f"1 d {' '.join(map(str, ids))} 0")
            continue
        split = parts.index("0", 1)
        clause = [int(v) for v in parts[1:split]]
        raw_hints = [int(v) for v in parts[split + 1:]]
        if not raw_hints or raw_hints[-1] != 0:
            raise ValueError("LRAT line does not end with zero")
        raw_hints.pop()
        hints = [(-mapping[-v] if v < 0 else mapping[v]) for v in raw_hints]
        ident = next_id
        next_id += 1
        mapping[original_id] = ident
        if any(v < 0 for v in hints):
            kind = "addRat"
        elif clause and not hints:
            kind = "addRat"
        else:
            kind = "addRup" if clause else "addEmpty"
        actions.append({"kind": kind, "id": ident, "clause": clause, "hints": hints})
        lines.append(f"{ident} {' '.join(map(str, clause))} 0 {' '.join(map(str, hints))} 0")
    if not actions or actions[-1]["kind"] != "addEmpty":
        raise ValueError("proof does not finish with the empty clause")
    return actions, "\n".join(lines) + "\n"


def lean_array(values: list[int]) -> str:
    return "#[" + ",".join(map(str, values)) + "]"


def trim_rup_actions(actions: list[dict[str, Any]], initial_clauses: int) -> list[dict[str, Any]]:
    """Backward slice a RUP proof and renumber it for Lean's append-only state.

    Deletions do not affect RUP soundness, so omitted deletions merely retain
    extra clauses. RAT proofs are left intact because extra clauses affect RAT.
    The generated result remains untrusted until LRAT.check accepts it.
    """
    if any(a["kind"] == "addRat" for a in actions):
        return actions
    empty = next(a for a in actions if a["kind"] == "addEmpty")
    required = {empty["id"]}
    kept = []
    for action in reversed(actions):
        if action["kind"] == "del" or action["id"] not in required:
            continue
        kept.append(action)
        required.update(action["hints"])
    kept.reverse()
    mapping = {i: i for i in range(1, initial_clauses + 1)}
    trimmed = []
    for action in kept:
        ident = initial_clauses + len(trimmed) + 1
        mapping[action["id"]] = ident
        trimmed.append({**action, "id": ident, "hints": [mapping[i] for i in action["hints"]]})
    return trimmed


def emit_lean_tree(tree: dict[str, Any]) -> str:
    if "lit" in tree:
        lit = tree["lit"]
        return f"(.leaf ({abs(lit) - 1},{'true' if lit > 0 else 'false'}))"
    outputs = "[" + ",".join(str(i - 1) for i in tree["outputs"]) + "]"
    return f"(.node {outputs} {emit_lean_tree(tree['left'])} {emit_lean_tree(tree['right'])})"


def compact_initial_clauses(clauses: list[list[int]], actions: list[dict[str, Any]]) -> tuple[list[int], list[list[int]], list[dict[str, Any]]]:
    """Retain only initial clauses used by a sliced RUP proof.

    Lean must separately prove that these clauses are selected from the full
    proved encoding. The index list is zero-based and records that obligation.
    """
    if any(a["kind"] == "addRat" for a in actions):
        return list(range(len(clauses))), clauses, actions
    used = sorted({i for a in actions for i in a.get("hints", []) if i <= len(clauses)})
    mapping = {old: new for new, old in enumerate(used, 1)}
    compact = []
    for action in actions:
        ident = len(used) + len(compact) + 1
        mapping[action["id"]] = ident
        compact.append({**action, "id": ident, "hints": [mapping[i] for i in action["hints"]]})
    return [i - 1 for i in used], [clauses[i - 1] for i in used], compact


def emit_lean_trees(data: dict[str, Any], name: str) -> str:
    lines = ["import EncloseHorseVerified.Certificate.Totalizer", "",
             "open EncloseHorse.Certificate.Totalizer", ""]
    for constraint in data["constraints"]:
        if constraint["tree"] is not None:
            suffix = constraint["label"].replace("-", "_")
            lines.append(f"def {name}_{suffix} : CounterTree :=\n  " + emit_lean_tree(constraint["tree"]) + "\n")
    return "\n".join(lines)


def emit_lit_list(clause: list[int]) -> str:
    return "[" + ",".join(f"({abs(l) - 1},{'true' if l > 0 else 'false'})" for l in clause) + "]"


def clause_tree(slots: dict[int, list[int]], depth: int) -> tuple[str, list[int]]:
    """Emit sparse least-significant-bit-first trie and its clause-slot order."""
    if not slots:
        return ".nil", []
    if depth == 0:
        if set(slots) != {0}:
            raise ValueError("clause tree depth is too small")
        return "(.leaf " + emit_lit_list(slots[0]) + ")", [0]
    left, left_order = clause_tree({i // 2: c for i, c in slots.items() if i % 2 == 0}, depth - 1)
    right, right_order = clause_tree({i // 2: c for i, c in slots.items() if i % 2 == 1}, depth - 1)
    return f"(.node {left} {right})", [2 * i for i in left_order] + [2 * i + 1 for i in right_order]


def emit_lean_rup_tree(clauses: list[list[int]], actions: list[dict[str, Any]], name: str) -> tuple[str, list[int]]:
    if any(a["kind"] not in {"addRup", "addEmpty"} for a in actions):
        raise ValueError("the structural checker supports only RUP actions")
    depth = (len(clauses) + len(actions)).bit_length()
    tree, order = clause_tree(dict(enumerate(clauses)), depth)
    lines = ["import EncloseHorseVerified.Certificate.Rup", "",
             "open EncloseHorse.Certificate.Rup", "", "set_option maxRecDepth 100000",
             "set_option maxHeartbeats 0", "", f"def {name}_state : ClauseTree :=\n  {tree}", "",
             f"def {name}_depth : Nat := {depth}", "",
             f"def {name}_proof : List TreeAction := ["]
    for action in actions:
        hints = "[" + ",".join(map(str, action["hints"])) + "]"
        if action["kind"] == "addEmpty":
            lines.append(f"  .empty {hints},")
        else:
            lines.append(f"  .add {action['id'] - 1} {emit_lit_list(action['clause'])} {hints},")
    lines.append("]\n")
    return "\n".join(lines), order


def emit_lean_actions(actions: list[dict[str, Any]], name: str) -> str:
    lines = ["import Std.Tactic.BVDecide.LRAT.Checker", "", "open Std.Tactic.BVDecide.LRAT", "",
             f"def {name} : Array IntAction := #["]
    for action in actions:
        kind = action["kind"]
        if kind == "del":
            term = f".del {lean_array(action['ids'])}"
        elif kind == "addEmpty":
            term = f".addEmpty {action['id']} {lean_array(action['hints'])}"
        elif kind == "addRup":
            term = f".addRup {action['id']} {lean_array(action['clause'])} {lean_array(action['hints'])}"
        else:
            clause, hints = action["clause"], action["hints"]
            if not clause:
                raise ValueError("empty RAT clause")
            first_rat = next((i for i, v in enumerate(hints) if v < 0), len(hints))
            rup, rats = hints[:first_rat], []
            i = first_rat
            while i < len(hints):
                ident = -hints[i]
                j = i + 1
                while j < len(hints) and hints[j] > 0:
                    j += 1
                rats.append((ident, hints[i + 1:j]))
                i = j
            pivot = f"({abs(clause[0])}, {'true' if clause[0] > 0 else 'false'})"
            rat_arr = "#[" + ",".join(f"({i},{lean_array(h)})" for i, h in rats) + "]"
            term = f".addRat {action['id']} {lean_array(clause)} {pivot} {lean_array(rup)} {rat_arr}"
        lines.append("  " + term + ",")
    lines.append("]\n")
    return "\n".join(lines)


def run_one(level: dict[str, Any], args: argparse.Namespace) -> dict[str, Any]:
    level_id = level["id"]
    if not isinstance(level_id, str) or not level_id or any(
            c not in "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-" for c in level_id):
        raise ValueError("level id must contain only ASCII letters, digits, underscores, and hyphens")
    target = int(level["reportedOptimalScore"] if args.target is None else args.target)
    data = encode(level, target)
    out = args.output / level["id"]
    out.mkdir(parents=True, exist_ok=True)
    (out / "encoding.json").write_text(json.dumps(data, indent=2) + "\n")
    cnf = f"p cnf {data['numVars']} {len(data['clauses'])}\n"
    cnf += "".join(" ".join(map(str, c)) + " 0\n" for c in data["clauses"])
    (out / "input.cnf").write_text(cnf)
    if args.emit_only:
        return {"id": level["id"], "variables": data["numVars"], "clauses": len(data["clauses"]), "status": "generated"}
    start = time.monotonic()
    cmd = [str(args.solver), str(out / "input.cnf"), str(out / "raw.lrat"),
           "--lrat", "--binary=false", "--quiet", "--shrink=0", "--unsat"] + args.solver_option
    try:
        proc = subprocess.run(cmd, capture_output=True, text=True, timeout=args.timeout)
    except subprocess.TimeoutExpired:
        return {"id": level["id"], "status": "timeout", "seconds": time.monotonic() - start}
    (out / "solver.log").write_text(proc.stdout + proc.stderr)
    if proc.returncode != 20 or "s UNSATISFIABLE" not in proc.stdout:
        return {"id": level["id"], "status": "not-unsat", "returncode": proc.returncode, "stdout": proc.stdout}
    actions, proof_text = parse_and_renumber_lrat((out / "raw.lrat").read_text(), len(data["clauses"]))
    actions = trim_rup_actions(actions, len(data["clauses"]))
    indices, certificate_clauses, actions = compact_initial_clauses(data["clauses"], actions)
    data["certificateClauseIndices"] = indices
    (out / "encoding.json").write_text(json.dumps(data, indent=2) + "\n")
    (out / "certificate-clauses.json").write_text(json.dumps(certificate_clauses, separators=(",", ":")) + "\n")
    certificate_cnf = f"p cnf {data['numVars']} {len(certificate_clauses)}\n"
    certificate_cnf += "".join(" ".join(map(str, c)) + " 0\n" for c in certificate_clauses)
    (out / "certificate.cnf").write_text(certificate_cnf)
    if all(a["kind"] != "addRat" for a in actions):
        proof_text = "".join(
            f"{a['id']} {' '.join(map(str, a['clause']))} 0 {' '.join(map(str, a['hints']))} 0\n"
            for a in actions)
    (out / "proof.lrat").write_text(proof_text)
    (out / "actions.json").write_text(json.dumps(actions, separators=(",", ":")) + "\n")
    name = "certificate_" + level["id"].replace("-", "_")
    (out / "Actions.lean").write_text(emit_lean_actions(actions, name))
    (out / "Trees.lean").write_text(emit_lean_trees(data, name))
    if all(a["kind"] in {"addRup", "addEmpty"} for a in actions):
        lean_tree, tree_order = emit_lean_rup_tree(certificate_clauses, actions, name)
        (out / "RupTreeData.lean").write_text(lean_tree)
        data["treeClauseIndices"] = [indices[i] for i in tree_order]
        (out / "encoding.json").write_text(json.dumps(data, indent=2) + "\n")
    result = {"id": level["id"], "target": target, "variables": data["numVars"],
              "clauses": len(data["clauses"]), "actions": len(actions),
              "certificateClauses": len(certificate_clauses),
              "solverOptions": args.solver_option,
              "seconds": time.monotonic() - start, "proofBytes": len(proof_text),
              "status": "untrusted-unsat-certificate-generated", "kernelChecked": False}
    (out / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("levels", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--solver", type=Path, default=Path("cadical"))
    parser.add_argument("--solver-option", action="append", default=[],
                        help="extra CaDiCaL option, e.g. --solver-option=--elim=false")
    parser.add_argument("--timeout", type=int, default=120)
    parser.add_argument("--target", type=int)
    parser.add_argument("--id", action="append")
    parser.add_argument("--emit-only", action="store_true")
    args = parser.parse_args()
    levels = json.loads(args.levels.read_text())
    if isinstance(levels, dict):
        levels = [levels]
    results = []
    for level in levels:
        if args.id is None or level["id"] in args.id:
            result = run_one(level, args)
            results.append(result)
            print(json.dumps(result), flush=True)
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "results.json").write_text(json.dumps(results, indent=2) + "\n")
    return 0 if all(r["status"] in ("generated", "untrusted-unsat-certificate-generated") for r in results) else 1


if __name__ == "__main__":
    raise SystemExit(main())
