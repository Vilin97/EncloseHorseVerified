# Performance and trust

The practical external solver and the proved Lean solver are separate implementations. An external optimum flag is never used as a Lean optimality proof.

## Reproduce

```sh
python -m pip install -r scripts/requirements-asp.txt
python scripts/solve_asp.py data/daily-levels.json --timeout 180 --require-optimal
lake build fastBench
lake exe fastBench --all
lake exe fastBench --daily --seed
```

Each native case can be bounded independently, for example:

```sh
timeout 90 lake exe fastBench --daily --seed --id=daily-2026-01-12
```

A timeout is an incomplete search. It provides no global optimality certificate.

## External exact daily results

Clingo 5.8.0 completed the following searches on one GitHub Actions Ubuntu 24.04 runner. A separate queue BFS checks every returned placement; Lean kernel tests separately check each stored witness's legality, enclosure and score. Clingo's upper-bound/optimality claim remains external.

| Daily | Grid | Grass | Budget | Score | Ground + solve |
|---|---:|---:|---:|---:|---:|
| 2026-01-07 | 12 × 14 | 104 | 12 | 66 | 1.511 s |
| 2026-01-12 | 19 × 19 | 171 | 12 | 204 | 0.323 s |
| 2026-03-10 | 17 × 17 | 184 | 10 | 99 | 1.406 s |

See [full results](../data/daily-asp-results.json), [source run](https://github.com/Vilin97/EncloseHorseVerified/actions/runs/39471920840), and [ASP semantics and tests](../scripts/ASP_REFERENCE.md). These results show that practical exact algorithms exist; they do not identify the official website's algorithm.

## Native proved search: initial baseline

The first compiled dynamic branch-and-bound baseline, before score caching and budget-exhausted leaf pruning, measured:

| Tutorial | Score | Native time |
|---|---:|---:|
| 1 | 15 | 6 ms |
| 2 | 17 | 269 ms |
| 3 | 12 | 5,829 ms |
| 4 | 31 | 18,306 ms |
| 5 | 39 | 276 ms |

All three daily cases reached their individual **90-second limit**, even when given the correct optimal witness as a checked incumbent. No completed Lean optimality certificate is claimed for those daily runs. The external witness only supplies a lower bound; the proved search must still rule out every better solution.

See [machine-readable baseline](../data/native-search-baseline.json) and [native run](https://github.com/Vilin97/EncloseHorseVerified/actions/runs/39473233025). The benchmark workflow records timeouts as exit 124 and uploads logs; a green workflow means that the bounded experiment completed, not that every search finished.

The uniform Lean theorem proves that every completed search result is optimal under the independent game specification. Invoking the tactic additionally kernel-checks a particular solver equation. Native timings do not include constructing such an individual kernel certificate.

## Why subset enumeration is insufficient

For `m` grass cells and budget `k`, the exhaustive reference considers

`sum(i=0..k, choose(m,i))`

placements. These daily examples have approximately 1.98 quadrillion, 950 quadrillion, and 10.1 quadrillion candidates respectively. Branch-and-bound avoids constructing this list and can discard entire regions at once; ASP uses a different constraint-solving search. Both retain an exponential worst case. The [NP-hardness proof](NP_Hardness_No_Portals.md) rules out a general polynomial exact optimizer unless P = NP.

Timings are observations from specific machines and commits, not guarantees.
