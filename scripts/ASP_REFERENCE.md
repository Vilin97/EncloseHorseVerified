# Independent ASP reference

This optional reference solves standard enclose.horse levels with Clingo. It compares the verified Lean implementation with a separate practical exact optimization engine. **Its optimality claims are not Lean proofs.** Every JSON result states lean_verified=false.

## Run it

From the repository root:

    python -m pip install -r scripts/requirements-asp.txt
    python scripts/solve_asp.py data/daily-levels.json --timeout 180 --require-optimal
    python scripts/test_asp.py --daily --json-output /tmp/asp-results.json

Select one fixture with --id daily-2026-01-12. Add --emit-asp /tmp/level.lp with one selected level to inspect the generated ASP program.

## Encoding and trust

The encoding chooses at most the wall budget from ordinary grass. It derives reach/1 by positive recursion from the horse through four-neighbor edges and matching portal labels, excluding walls. Reachability is a least fixed point rather than a freely guessed set: an inconvenient bee or a reachable escape cannot simply be omitted. A constraint rejects every model whose reachable component touches the grid boundary. The objective sums signed tile values: horse, grass and portal = 1; cherry = 4; apple = 11; bee = -4.

For each model, a separately implemented coordinate/queue BFS checks legality, the full reachable component, enclosure and score. This catches translation or witness errors, but does **not** establish an upper bound. Optimality is reported only when Clingo says the search is exhausted and uninterrupted. A timeout is incomplete, even if it found a good incumbent. Unsolvable and negative-optimum levels are handled separately from escape score 0.

The repository's Lean solver and theorem are the verified implementation. This external reference is not called by the Lean tactic or the infoview solver. Tests/DailyLevels.lean checks the three reference witnesses' feasibility and scores in the Lean kernel; those checks alone do not certify global optimality.

## Daily fixtures and measured results

The three daily maps in data/daily-levels.json are factual fixture snapshots from [pink10000/eh_ilp_solver](https://github.com/pink10000/eh_ilp_solver), pinned to commit 6956feb8052291d22bac488ce3814749031df83d. Each entry includes its exact source path and blob SHA. The archive's scraper records the map, budget and reported optimum from official daily-page JSON. No solver code from that project was copied. This original ASP implementation independently recovered the reported optima.

One GitHub Actions Ubuntu 24.04 run with Python 3.12 and Clingo 5.8.0 measured:

| Daily level | Grid | Grass candidates | Budget | Optimal score | Total seconds |
|---|---:|---:|---:|---:|---:|
| 2026-01-07 | 12 × 14 | 104 | 12 | 66 | 1.511 |
| 2026-01-12 | 19 × 19 | 171 | 12 | 204 | 0.323 |
| 2026-03-10 | 17 × 17 | 184 | 10 | 99 | 1.406 |

These are observed timings from one machine/run, not a performance guarantee. Complete witnesses, reached cells and trust/status fields are retained in data/daily-asp-results.json. Reproduce the [source run](https://github.com/Vilin97/EncloseHorseVerified/actions/runs/39471920840).

Tests also cover all five unmodified official tutorials, 120 deterministic random small boards compared with exhaustive subset search, disconnected bonuses, portal escapes, negative optima, invalid placements and interrupted searches.
