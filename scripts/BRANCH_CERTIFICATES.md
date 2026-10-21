`Certificate/BranchTree.lean` accepts a finite, externally supplied split tree.
The tree supplies a grass index and a leaf-rule name. Lean recomputes every
bound, enclosure test, terminal score, budget check, and incumbent validity.
`check_optimal` proves that acceptance implies `Optimal`, and
`check_optimal_physical` covers arbitrary physical wall-list orderings.

The accepted leaf rules are:

- `bound`: the proved signed completion bound is at most the incumbent score.
- `dead`: mandatory walls exceed the budget, or the horse still escapes even
  after every remaining candidate becomes a wall.
- `budget`: the mandatory wall budget is full and its only possible legal
  completion cannot improve the incumbent.
- `done`: no undecided candidate remains and the terminal placement cannot
  improve the incumbent.

Splits cover both placing and forbidding a wall. Their pivot must belong to
the remaining candidates. The checker contains no external numerical bound,
optimizer status, `native_decide`, `sorry`, or added axiom.

To reproduce the untrusted generator and independent Python replay:

```sh
python3 scripts/test_tree_certificate.py
python3 scripts/generate_tree_certificate.py \
  data/tutorial-levels.json data/tutorial-solutions.json \
  --seconds 30 --output /tmp/tutorial-trees --lean-dir /tmp/tutorial-lean
```

Exported `.lean` files contain constructor trees, not acceptance axioms. The
retained trees are in `Certificate/TutorialTrees.lean`. Check the actual proofs
on Lean 4.35.0:

```sh
lake build EncloseHorseVerified.Certificate.TutorialTrees
lake env lean Tests/BranchTree.lean
```

The tests prove optimality for official tutorials 1, 2, and 5 using
`decide +kernel`, test invalid incumbents/pivots/leaf rules, prove a negative
optimum, and fail if the principal theorems depend on any axiom other than
Lean's standard `propext`, `Classical.choice`, and `Quot.sound`.

`data/branch-tree-results.json` records the experiment. Python generated and
independently replayed trees for all five tutorials. Retained kernel proofs
cover tutorials 1, 2, and 5; a combined kernel run over all five exceeded memory.
This simple certificate format does not solve daily-scale verification:
20-second runs on the three supplied daily boards visited roughly
294,000–648,000 nodes without completing a tree. They emitted no complete
certificate and establish no daily optimality theorem. The bounds are sound
but too weak for those instances; a stronger independently proved leaf rule
or a different certificate backend is needed.

The generator reports `lean_verified: false` even for a complete tree. Only
successful kernel checking of the corresponding theorem establishes the
optimality result. A timeout, node limit, or discovered better enclosure cannot
be exported as a complete Lean certificate. The independent Python replay is
QA for generation; it is outside the proof's trust boundary.
