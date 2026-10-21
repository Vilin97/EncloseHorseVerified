#!/usr/bin/env python3
"""Emit small, kernel-reduced RUP certificate modules with explicit checkpoints.

This untrusted formatter does not establish any theorem by itself. Each emitted
transition is checked by Lean's kernel against Certificate.Rup.runPrefix, whose
model-preservation theorem is proved independently of this generator.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
from solve_certificate import emit_lit_list


class Trees:
    def __init__(self):
        self.nodes = []
        self.ids = {}
        self.nil = self.intern(("nil",))

    def intern(self, key):
        if key not in self.ids:
            self.ids[key] = len(self.nodes)
            self.nodes.append(key)
        return self.ids[key]

    def leaf(self, clause):
        return self.intern(("leaf", tuple(clause)))

    def node(self, left, right):
        if left == right == self.nil:
            return self.nil
        return self.intern(("node", left, right))

    def initial(self, slots, depth):
        if not slots:
            return self.nil
        if depth == 0:
            assert set(slots) == {0}
            return self.leaf(slots[0])
        left = self.initial({i // 2: c for i, c in slots.items() if i % 2 == 0}, depth - 1)
        right = self.initial({i // 2: c for i, c in slots.items() if i % 2 == 1}, depth - 1)
        return self.node(left, right)

    def put(self, tree, depth, slot, clause):
        if depth == 0:
            return self.leaf(clause)
        key = self.nodes[tree]
        left, right = key[1:] if key[0] == "node" else (self.nil, self.nil)
        if slot % 2 == 0:
            return self.node(self.put(left, depth - 1, slot // 2, clause), right)
        return self.node(left, self.put(right, depth - 1, slot // 2, clause))

    def reachable(self, roots):
        seen = set()
        def visit(i):
            if i in seen:
                return
            seen.add(i)
            key = self.nodes[i]
            if key[0] == "node":
                visit(key[1]); visit(key[2])
        for root in roots:
            visit(root)
        return sorted(seen)


def emit(source: Path, output: Path, module: str, chunk_size: int, checker: str = "Rup", data_part_size: int = 5000,
         proofs_only: bool = False, keep_prefix: int = 0, prior_checker: str = "RupFast"):
    clauses = json.loads((source / "certificate-clauses.json").read_text())
    actions = json.loads((source / "actions.json").read_text())
    digest = hashlib.sha256(json.dumps([clauses, actions], sort_keys=True,
                                      separators=(",", ":")).encode()).hexdigest()
    assert actions[-1]["kind"] == "addEmpty"
    assert all(a["kind"] == "addRup" for a in actions[:-1])
    additions = actions[:-1]
    depth = (len(clauses) + len(actions)).bit_length()
    chunks = [additions[i:i + chunk_size] for i in range(0, len(additions), chunk_size)]
    trees = Trees()
    roots = [trees.initial(dict(enumerate(clauses)), depth)]
    for chunk in chunks:
        root = roots[-1]
        for action in chunk:
            root = trees.put(root, depth, action["id"] - 1, action["clause"])
        roots.append(root)
    used = trees.reachable(roots)
    ns = "EncloseHorse.Certificate.Generated." + module.rsplit(".", 1)[-1]
    output.mkdir(parents=True, exist_ok=True)
    if proofs_only and not (output / "Data.lean").exists():
        raise ValueError("--proofs-only requires existing generated data")
    if proofs_only and (output / "generation.json").exists():
        old = json.loads((output / "generation.json").read_text())
        if old.get("chunkSize") != chunk_size or old.get("depth") != depth:
            raise ValueError("proof-only regeneration must preserve checkpoint size and depth")
        if old.get("inputDigest", digest) != digest:
            raise ValueError("proof-only regeneration must preserve clauses and actions")
    if keep_prefix > len(chunks) or (keep_prefix and not proofs_only):
        raise ValueError("--keep-prefix requires --proofs-only and an existing prefix")
    for stale in output.glob("Chunk*.lean"):
        if int(stale.stem[5:]) >= keep_prefix:
            stale.unlink()
    if not proofs_only:
        for stale in output.glob("Data[0-9][0-9][0-9].lean"):
            stale.unlink()
    common = ["open EncloseHorse.Certificate", "open Totalizer Rup", "",
              "set_option maxRecDepth 100000", "set_option maxHeartbeats 0", "",
              f"namespace {ns}", ""]
    node_defs = []
    for i in used:
        key = trees.nodes[i]
        if key[0] == "nil":
            term = ".nil"
        elif key[0] == "leaf":
            term = ".leaf " + emit_lit_list(key[1])
        else:
            term = f".node n{key[1]} n{key[2]}"
        node_defs.append(f"noncomputable def n{i} : ClauseTree := {term}")
    data_parts = [node_defs[i:i + data_part_size] for i in range(0, len(node_defs), data_part_size)]
    for i, defs in enumerate(data_parts):
        prior = "EncloseHorseVerified.Certificate.Rup" if i == 0 else f"{module}.Data{i-1:03}"
        lines = [f"import {prior}", ""] + common + defs + ["", f"end {ns}", ""]
        if not proofs_only:
            (output / f"Data{i:03}.lean").write_text("\n".join(lines))
    data = [f"import {module}.Data{len(data_parts)-1:03}", ""] + common
    data += [f"def depth : Nat := {depth}", ""]
    for i, root in enumerate(roots):
        data.append(f"noncomputable def state{i} : ClauseTree := n{root}")
    data += ["", f"end {ns}", ""]
    if not proofs_only:
        (output / "Data.lean").write_text("\n".join(data))
    for i, chunk in enumerate(chunks):
        if i < keep_prefix:
            if not (output / f"Chunk{i:03}.lean").exists():
                raise ValueError(f"missing kept prefix chunk {i}")
            continue
        prior = ".Data" if i == 0 else f".Chunk{i-1:03}"
        lines = [f"import {module}{prior}"]
        if checker != "Rup":
            lines.append(f"import EncloseHorseVerified.Certificate.{checker}")
        lines += [""] + common
        lines.append(f"def prefix{i} : List TreeAction := [")
        for action in chunk:
            hints = "[" + ",".join(map(str, action["hints"])) + "]"
            lines.append(f"  .add {action['id']-1} {emit_lit_list(action['clause'])} {hints},")
        lines += ["]", "", f"theorem transition{i} : {checker}.runPrefix prefix{i} state{i} depth = some state{i+1} := by", "  rfl", "", f"end {ns}", ""]
        (output / f"Chunk{i:03}.lean").write_text("\n".join(lines))
    final = [f"import {module}.Chunk{len(chunks)-1:03}"]
    if checker != "Rup":
        final.append(f"import EncloseHorseVerified.Certificate.{checker}")
    final += [""] + common
    final += ["def finalProof : List TreeAction := [.empty [" + ",".join(map(str, actions[-1]["hints"])) + "]]", "",
              f"theorem finalAccepted : {checker}.checkTree finalProof state{len(chunks)} depth = true := by", "  decide +kernel", "",
              "theorem unsat : ∀ model : Nat → Bool, ¬ Satisfies model state0.clauses := by", "  intro model h0"]
    for i in range(len(chunks)):
        step_checker = prior_checker if i < keep_prefix else checker
        final.append(f"  have h{i+1} := {step_checker}.runPrefix_sound prefix{i} state{i} depth state{i+1} transition{i} model h{i}")
    final += [f"  exact {checker}.checkTree_sound finalProof state{len(chunks)} depth finalAccepted model h{len(chunks)}", "",
              "#print axioms unsat", "", f"end {ns}", ""]
    (output / "Final.lean").write_text("\n".join(final))
    report = {"module": module, "depth": depth, "chunks": len(chunks), "chunkSize": chunk_size,
              "nodes": len(used), "initialClauses": len(clauses), "additions": len(additions),
              "checker": checker, "dataParts": len(data_parts), "dataPartSize": data_part_size,
              "keptPrefixChunks": keep_prefix, "prefixChecker": prior_checker if keep_prefix else None,
              "inputDigest": digest,
              "status": "generated-unchecked"}
    (output / "generation.json").write_text(json.dumps(report, indent=2) + "\n")
    return report


if __name__ == "__main__":
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("source", type=Path)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--module", required=True)
    p.add_argument("--chunk-size", type=int, default=25)
    p.add_argument("--checker", choices=["Rup", "RupFast", "RupBits"], default="Rup")
    p.add_argument("--data-part-size", type=int, default=5000)
    p.add_argument("--proofs-only", action="store_true")
    p.add_argument("--keep-prefix", type=int, default=0)
    p.add_argument("--prior-checker", choices=["Rup", "RupFast", "RupBits"], default="RupFast")
    a = p.parse_args()
    if a.chunk_size < 1 or a.data_part_size < 1 or a.keep_prefix < 0:
        p.error("chunk size and data part size must be positive")
    print(json.dumps(emit(a.source, a.output, a.module, a.chunk_size, a.checker, a.data_part_size,
                         a.proofs_only, a.keep_prefix, a.prior_checker)))
