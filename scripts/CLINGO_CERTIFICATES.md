# Kernel-checked external optimality certificates

Clingo finds a placement. A separate SAT solver refutes the claim that a better
legal enclosure exists. Lean checks that refutation and proves the placement
optimal for the reference game rules. Clingo's status flag, SAT solver, Python
encoder, and certificate formatter are not trusted.

The generic theorem is
`EncloseHorse.Certificate.Clingo.optimal_of_unsat` in
[`Certificate/Clingo.lean`](../EncloseHorseVerified/Certificate/Clingo.lean).
Its conclusion is `Optimal b walls`; the physical variant covers every distinct
wall placement, independently of the order in which the walls were listed.
The theorem does not assume that Clingo's implementation is correct.

## Proof chain

1. Lean checks that the incumbent is legal and encloses the horse.
2. `Encoding.baseClauses_sat` proves that every actual admissible placement
   satisfies the board clauses. These include orthogonal and portal movement,
   grass-only walls, the horse, water, and all boundary cells.
3. `Weighted.score_complement_count` proves the signed identity
   `complement_count + actual_score = positive_total`. Bees contribute four
   positive inside literals; a positive point contributes a negated inside
   literal. Thus a score strictly larger than the incumbent requires a count at
   most `positive_total - incumbent_score - 1`.
4. The proved forward totalizer constructs a common satisfying assignment for
   the budget and score counters, preserving every board variable.
   `checkCounters` binds the exact leaves, limits, and auxiliary allocation to
   the board. Counter shapes are untrusted data.
5. The initial clauses used by the refutation are checked to be a selection of
   the actual formula. Invalid clause indices are discarded, never converted
   into empty clauses.
6. The proved RUP checker validates each unit-propagation inference. Persistent
   clause trees make lookup logarithmic. Small, explicitly checked checkpoint
   equations keep the kernel's work bounded per module; model preservation is
   composed across the checkpoints to derive a contradiction.

The CNF deliberately allows extra disconnected inside components. Every actual
better solution still gives a model, so UNSAT proves the required upper bound.
Satisfiability of this relaxation alone is not a certificate of an actual game
solution. A failed or incomplete certificate establishes no optimality claim.

All concrete acceptance equations use `rfl` or `decide +kernel`. They do not use
`native_decide`, the BVDecide compiler axiom, or a trusted parser. Axiom audits
reject dependencies beyond `propext`, `Classical.choice`, and `Quot.sound`.

## Reproduction

Use Lean v4.35.0, exactly as pinned in `lean-toolchain` and `lake-manifest.json`.
The checked certificate sources are ordinary Lean files in
`EncloseHorseVerified/Certificate/Generated/`.

```sh
lake exe cache get
python3 scripts/verify_lean.py
lake env lean Tests/DailyCertificatesTrust.lean
```

The three complete game-level proofs are
`Generated.Daily20260107.optimal` (66),
`Generated.Daily20260112.optimal` (204), and
`Generated.Daily20260310.optimal` (99), in namespace
`EncloseHorse.Certificate`. Each also exports `physicalOptimal`.
The checked RUP counts and source theorem names are recorded in
[`data/sat-certificate-results.json`](../data/sat-certificate-results.json).

Generating new untrusted proof data requires a CaDiCaL version that supports
text LRAT output. This is separate from finding an incumbent with Clingo:

```sh
python -m pip install -r scripts/requirements-asp.txt
python scripts/solve_asp.py data/daily-levels.json --id daily-2026-01-12 --require-optimal
python scripts/solve_certificate.py data/daily-levels.json \
  --id daily-2026-01-12 --solver /path/to/cadical --output /tmp/certificates
python scripts/emit_kernel_rup.py /tmp/certificates/daily-2026-01-12 \
  --output EncloseHorseVerified/Certificate/Generated/Daily20260112 \
  --module EncloseHorseVerified.Certificate.Generated.Daily20260112 \
  --chunk-size 10 --checker RupBits
python scripts/generate_certificate_linkage.py \
  /tmp/certificates/daily-2026-01-12/encoding.json \
  --output EncloseHorseVerified/Certificate/Generated/Daily20260112
python3 scripts/verify_lean.py
```

The emitter produces checkpoint data and refutation modules. The game linkage
also checks `Counters`, clause selection, and incumbent feasibility; these checks
are essential. Generating files or seeing a solver print UNSAT proves nothing
until Lean accepts the complete game-level theorem. The present `Counters`
format handles nonempty, nonvacuous budget and score constraints; a generator
must reject unsupported degenerate cases rather than silently certify them.
The bundled linkage template is specialized to named daily fixtures whose
non-water cells are statically connected to the horse. The generic optimality
and certificate soundness theorems have no such connectedness restriction.
