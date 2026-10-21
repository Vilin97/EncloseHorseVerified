# SAT certificate generation and kernel checkpoints

See [CLINGO_CERTIFICATES.md](CLINGO_CERTIFICATES.md) for the complete game-level
optimality proof. This document describes the untrusted certificate tooling.

`solve_certificate.py` encodes the existence of an enclosure scoring strictly
more than a supplied target. Every actual better enclosure extends to a model
of this relaxed CNF. The relaxation may also permit disconnected inside cells;
that weakens the upper-bound test and does not compromise an UNSAT result.
Signed scores are converted to a count of complementary literals, with repeated
literals representing weights. Both the wall budget and this score complement
use the forward totalizers proved in `Certificate/Totalizer.lean`.

The generator invokes CaDiCaL with text LRAT output. It then takes the backward
RUP dependency slice of the final contradiction, removes deletion records, and
retains only the referenced initial clauses. Initial-clause selection is proved
separately in Lean. Clause numbers are renumbered to match the retained formula.
None of these Python transformations is trusted.

Example generation, using the CaDiCaL distributed with Lean:

```sh
python scripts/solve_certificate.py data/daily-levels.json \
  --id daily-2026-01-07 --output /tmp/horse-certificates \
  --solver "$(lean --print-prefix)/bin/cadical" \
  --solver-option=--elim=false
python scripts/solve_certificate.py data/daily-levels.json \
  --id daily-2026-01-12 --output /tmp/horse-certificates \
  --solver "$(lean --print-prefix)/bin/cadical"
python scripts/solve_certificate.py data/daily-levels.json \
  --id daily-2026-03-10 --output /tmp/horse-certificates \
  --solver "$(lean --print-prefix)/bin/cadical" \
  --solver-option=--probe=false
```

A generated directory contains the full DIMACS input, raw and sliced LRAT
proofs, encoding metadata, and literal Lean representations. The output status
`untrusted-unsat-certificate-generated` deliberately does not claim a Lean proof.
`certificateClauseIndices` lists retained full-CNF indices in ascending order;
`treeClauseIndices` records the same clauses in the binary checker's leaf order.
Both use zero-based indices. LRAT hints remain one-based clause identifiers.

The structural checker in `Certificate/Rup.lean` uses a sparse binary tree for
clause lookup. Hints, insertion slots, tree depths, and checkpoint contents are
all untrusted data. Its theorems show that a successful addition preserves every
model, and an accepted final contradiction rules out every model. Overwriting
a slot merely drops an older clause, which preserves soundness.

`emit_kernel_rup.py` produces explicit checkpoint states and small transition
lemmas, each proved by kernel reduction with `rfl`. For example:

```sh
python scripts/emit_kernel_rup.py /tmp/horse-certificates/daily-2026-01-07 \
  --output EncloseHorseVerified/Certificate/Generated/Daily20260107 \
  --module EncloseHorseVerified.Certificate.Generated.Daily20260107 \
  --chunk-size 50 --checker RupBits
```

The generated `Final.unsat` composes the independently checked transitions using
`RupBits.runPrefix_sound`, then applies `RupBits.checkTree_sound` to the final
empty clause. `RupBits` uses arbitrary-precision natural-number bitsets for
partial assignments, without fixed-width index truncation. Each checkpoint
explicitly names its checker; `Rup` and `RupFast` expose the same proved model
preservation contract. `RupFast` stores partial assignments in a trie with full
literal comparisons. The January 12 certificate uses `Rup`, and the January 7
certificate combines `RupFast` and `RupBits` checkpoints.

Checkpoint tree data is divided into modules of at most 5,000 shared node
definitions to bound elaboration memory.

The game-level `Link` and `Verified` modules are separate from these
untrusted formatters. They establish that the initial checked clauses are a
selection from the actual board's proved encoding and derive optimality of the
feasible witness.

Stock Lean 4.35 LRAT uses well-founded iteration suited to compiled execution.
This project uses the structurally recursive RUP checker so certificate
acceptance can be checked by the kernel without `native_decide`, `bv_decide`, or
an added compiler-trust axiom. Large certificates are split into checkpoints to
bound reduction memory. Generated data definitions may be marked
`noncomputable` to skip unnecessary code generation; their ordinary definition
bodies remain available to the kernel.
