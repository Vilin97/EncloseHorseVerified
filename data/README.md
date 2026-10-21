# Real-level fixtures and provenance

These five 8 × 8 boards are the **unmodified official tutorial levels** published
at <https://enclose.horse/tutorial>. They were retrieved from the literal tutorial
array in <https://enclose.horse/tutorial.js> on 2026-10-20.

The source script's SHA-256 at retrieval was:

```
7ff79a359bc9391321f0a025ba6dd1f8a31a2ede6659f329e4f2f6096fb28a07
```

`tutorial-levels.json` contains each exact map, budget, and source attribution.
`Levels.lean` transcribes these same maps. No original game JavaScript, artwork,
sprites, or fonts are included in this repository. Original game and level
credit belongs to the enclose.horse creators, Ryan and Praveen.

`tutorial-solutions.json` records the independently calculated optima below.
Its `seconds` field is an illustrative measurement from one Python run and is
not a performance guarantee. The scores and placements were also compared
with the official game's flood-fill behavior during the source audit.

| Fixture | Grass candidates | Budget | Placements checked | Optimum |
| --- | ---: | ---: | ---: | ---: |
| Tutorial 1 | 16 | 1 | 17 | 15 |
| Tutorial 2 | 28 | 3 | 3,683 | 17 |
| Tutorial 3 | 35 | 5 | 384,168 | 12 |
| Tutorial 4 | 33 | 6 | 1,391,842 | 31 |
| Tutorial 5 | 25 | 3 | 2,626 | 39 |

The tutorial itself states optimum 12 for stage 3 and 31 for stage 4. Stage 5
contains portals and two golden apples; its optimum contains 19 tiles and both
apples, yielding 39. Stage 4's optimum contains 18 tiles, a cherry, an apple,
and no bees, yielding 31.

Recompute all five with an independent exhaustive Python implementation:

```sh
python3 scripts/verify_fixtures.py
```

A second, set-based BFS independently checks the recorded wall placements.
If a Lean executable exports an array of `{id, score, walls}` records, pass its
path as `--lean-json path.json` to verify their scores and placements too.

Wall indices in the data are **zero-based, row-major**: `row * width + column`.
Walls may be placed only on `.` cells. Budgets are upper bounds. The score
includes every reachable tile, including the horse, portals, and items; then
adds 3 per cherry, 10 per apple, and subtracts 5 per bee. If any reachable tile
lies on the rectangular boundary, the horse escapes and the score is zero.
Matching portal labels connect even when far apart. Only standard single-horse
mode is represented by these fixtures; optional bonus modes are separate rules.

The three archived daily witnesses now have complete Lean global and physical optimality proofs in `Certificate/Generated/DailyYYYYMMDD/Verified.lean`. `sat-certificate-results.json` records the separately checked SAT refutations and their theorem names. The original ASP timing records retain their native solver trust fields; the Lean proof chain is documented in [the certificate guide](../scripts/CLINGO_CERTIFICATES.md).
