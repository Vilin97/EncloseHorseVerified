# EncloseHorseVerified

A playable implementation of [enclose.horse](https://enclose.horse/) inside the **Lean 4.35.0 infoview**, with a proved exact branch-and-bound solver, a solution-finding tactic, and a kernel-checked proof of global optimality.

## Play in the infoview

1. Install Lean through [elan](https://github.com/leanprover/elan) and the official **lean4** VS Code extension.
2. Clone this repository, run `lake build`, and open `Demo.lean` in VS Code.
3. Put the cursor on a `#enclose_horse tutorial1` command. Enable **Lean: Infoview** if needed.
4. Click grass tiles to place or remove walls. The score, enclosure status, and horse's reachable region update through the Lean server. **Reset** clears walls; **Find optimal solution** runs the proved solver.

All five official tutorial levels are included. Special tiles cannot be walled over. Portal labels are displayed on the board. No npm installation is needed for the VS Code widget.

The board uses the original game's default-theme sprites: animated horses, grass, water and shorelines, golden wheat, cube walls, items, and portals. The small unmodified sprite atlas is embedded for offline rendering; see [`assets/original/README.md`](assets/original/README.md) for provenance and attribution.

![Playable native Lean infoview](docs/screenshots/infoview-manual-play.png)
![Exact optimal solution in the native Lean infoview](docs/screenshots/infoview-optimal.png)
![Official portal tutorial in the infoview](docs/screenshots/infoview-portals.png)

The screenshots are captured from the actual `@leanprover/infoview` running against a live Lean language server. The reproducible browser host and interaction test are in [`tools/`](tools/README.md).

## Find and prove a solution

```lean
import EncloseHorseVerified
open EncloseHorse EncloseHorse.Levels

#solve_enclosure tutorial1  -- some [23]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
example : ∃ walls, Optimal tutorial1 walls := by
  enclose_horse

example : Optimal tutorial1 [23] := by
  enclose_horse
```

The tactic executes exact search to discover the walls, then constructs `solveFast_optimal` with a solver equation checked using **`decide +kernel`**. Witness discovery is untrusted; the final theorem is checked by Lean. Fixed-placement goals must specify the solver's selected optimum; use the existential form to let the tactic find it. Ties are deterministic.

## What is proved

The specification is independent of the search algorithm:

```lean
Optimal b walls :=
  admissible b walls ∧
  ∀ other, admissible b other → score b other ≤ score b walls

solveFast_optimal b walls :
  solveFast b = some walls → Optimal b walls

solveFast_optimal_physical b walls :
  solveFast b = some walls → PhysicalOptimal b walls
```

`PhysicalOptimal` quantifies over **all distinct legal grass-cell lists within budget, in any order**. Canonicalization preserves their membership, reachability, and score. The search-space completeness proof shows every such placement is represented. `solveFast_eq_none_iff` and its exhaustive counterpart prove that failure means no enclosure exists.

The executable flood fill is proved equivalent to inductive paths of arbitrary length (`mem_reach_iff`), is duplicate-free (`reach_nodup`), and characterizes boundary escape (`enclosed_iff`). Structural recursion makes concrete solver equations reducible by the kernel.

There are no `sorry`s, custom axioms, or native-reflection certificates. The audit in `Tests/Trust.lean` checks the principal theorems against Lean's standard axioms (`propext`, `Classical.choice`, `Quot.sound`). The frontend draws the game; all gameplay evaluation and search run in Lean RPC methods. A displayed solver result is backed by the general theorem; invoking the tactic creates a concrete theorem in the source file.

## Rules and scope

Standard mode: four-way movement, water barriers, open board edges, an upper bound on walls, and linked matching portals. Every reachable tile contributes one point; cherries add 3, apples add 10, and bees subtract 5. Signed integer scores preserve negative totals. Walls can be placed only on ordinary grass; the horse and special items count as area.

A solution **must enclose the horse**. The solver therefore optimizes among enclosures even if all their scores are negative; it returns `none` if no enclosure exists. An escaped placement has game score zero but is not a solution. Optional bonus modes (unicorns, costly walls, lava gates) and preset `W` maps are outside this implementation. The checked parser rejects unsupported symbols.

## Practical exact search and complexity

The default Lean solver explores wall decisions on demand and builds a proved cache of the board's static graph once per solve. It chooses a cell on an escape path, tries including or excluding it, and prunes using proved reachability bounds. Its signed upper bound retains penalties for bees that every completion must reach. Blocking all remaining candidates detects impossible branches. A checked incumbent, including the current placement in the infoview, can improve pruning without affecting the theorem. The original exhaustive solver remains available for comparison.

The decision problem is **NP-complete for variable-size boards using only grass, water, one horse, cherries, and bees; no portals are required**. The [complete reduction from planar Steiner Tree](docs/NP_Hardness_No_Portals.md) gives both directions and an explicit polynomial board-size bound. A second [Set Cover reduction](docs/NP_Hardness.md) covers generalized portal groups. These are mathematical proofs; `Hardness.lean` checks the portal construction, arithmetic lemmas, and concrete examples, but the complete complexity reductions are **not fully formalized in Lean**. The solver's global optimality and pruning theorems are fully checked in Lean.

Thus a polynomial-time exact optimizer for every board in this family would imply P = NP. This leaves plenty of room for practical algorithms. The measured cached Lean search completed the five tutorials in **<1, 18, 150, 487, and 10 ms**. All three seeded daily cases still hit 90-second limits. [Full native benchmark records](docs/Performance.md) retain the exact source commits and timeouts; no daily Lean optimum certificate is claimed from those runs. The optional [Clingo exact solver](scripts/ASP_REFERENCE.md) completed three real daily levels:

| Daily level | Grid | Grass candidates | Wall budget | Score | Clingo time |
|---|---:|---:|---:|---:|---:|
| 2026-01-07 | 12 × 14 | 104 | 12 | 66 | 1.511 s |
| 2026-01-12 | 19 × 19 | 171 | 12 | 204 | 0.323 s |
| 2026-03-10 | 17 × 17 | 184 | 10 | 99 | 1.406 s |

These are measured results from one GitHub Actions runner. They are **external Clingo optimality results**, not Lean optimality certificates or Lean solver timings. Lean separately kernel-checks all three witnesses' legality, enclosure, and scores. The ASP implementation is tested against exhaustive search on 120 random boards and the official tutorials. It distinguishes completed searches, timeouts, and infeasibility.

```sh
python -m pip install -r scripts/requirements-asp.txt
python scripts/solve_asp.py data/daily-levels.json --timeout 180 --require-optimal
lake build fastBench
lake exe fastBench --all
lake exe fastBench --daily --seed
```

All exact algorithms here retain an exponential worst case. Kernel certification can cost substantially more than compiled execution.

## Validation

```sh
lake build encloseHorse
lake env lean Tests/Rules.lean
lake env lean Tests/Fixtures.lean
lake env lean Tests/Tactic.lean
lake env lean Tests/Trust.lean
lake env lean Demo.lean
lake exe encloseHorse --all --json > /tmp/enclose-results.json
python3 scripts/verify_fixtures.py --lean-json /tmp/enclose-results.json
```

The compiled Lean solver is tested on all five unmodified real official tutorial levels, including portals and apples. All five official witness placements have kernel-checked legality, enclosure, and exact-score proofs. The first tutorial also has an explicit kernel-checked global-optimality theorem. An independent Python exhaustive solver checks all five optima and independently recomputes Lean outputs with set-based BFS.

| Official tutorial | Wall budget | Optimum | Placements |
|---|---:|---:|---:|
| 1 | 1 | 15 | 17 |
| 2 | 3 | 17 | 3,683 |
| 3 | 5 | 12 | 384,168 |
| 4 | 6 | 31 | 1,391,842 |
| 5, portals | 3 | 39 | 2,626 |

`lake exe encloseHorse --all` runs exact Lean search on all five, including the larger benchmarks. Add `--exhaustive` to use the original subset search. `--all --witnesses` checks all stored witnesses quickly. Source URLs and retrieval hashes are recorded in [`data/README.md`](data/README.md).

## Layout

| File | Purpose |
|---|---|
| `Reachability.lean` | Terminating flood fill and unbounded-path correctness |
| `Game.lean` | Terrain, parser, legality, score, physical-placement correspondence |
| `FiniteSearch.lean` | Complete bounded-subset enumeration and maximum-selection proof |
| `Solver.lean` | Exhaustive reference, global optimality, impossibility theorem |
| `Bounds.lean`, `Cache.lean`, `FastSearch.lean`, `FastSolver.lean` | Proved pruning and dynamic exact search |
| `Hardness.lean`, `docs/NP_Hardness*.md` | Reduction components and complete mathematical hardness proofs |
| `DailyLevels.lean`, `scripts/solve_asp.py` | Archived daily fixtures and practical ASP reference |
| `Tactic.lean` | `enclose_horse` and `#solve_enclosure` |
| `Widget.lean`, `widget/encloseHorse.js` | Playable native infoview and Lean RPCs |
| `Levels.lean`, `Tests/` | Official levels and regression/certificate tests |

The Lean implementation has no external Lean package dependencies. The original game is by the enclose.horse team; this independent educational implementation uses its published rules, five small tutorial fixtures, three archived daily fixtures, and the original default-theme sprite atlas. No original game engine code is included. Original artwork remains third-party material outside the MIT software license. See [`NOTICE`](NOTICE).
