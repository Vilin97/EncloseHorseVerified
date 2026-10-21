# Formal NP-hardness: expanded grid boards with portal groups

The formal target is the decision problem `BoardEncoding.GameYES`: given an
explicit finite rectangular board, a wall budget, and an integer threshold, is
there an admissible placement whose score reaches the threshold?

The hardness family uses width-five boards with grass, water, one horse, bees,
and portal groups. Board size and the number and multiplicity of portal labels
are unbounded. This is the generalized portal semantics of `Game.lean`; the
formal result does not claim hardness for a fixed finite collection of website
levels, nor a formal no-portal result. The separate no-portal reduction in
[NP_Hardness_No_Portals.md](NP_Hardness_No_Portals.md) is a mathematical proof.

## Complexity framework

The project pins [descriptive-complexity](https://github.com/PierreSenellart/descriptive-complexity)
at commit `4f35579400754757b1e6b1f13e74ac1913f64162`, using Lean and mathlib
v4.35.0. It supplies the genuine NP-hardness theorem for Set Cover, ultimately
from its formal Cook–Levin theorem. NP is characterized using existential
second-order logic, with a separate bounded-machine characterization in the
upstream `Problems/Machine.lean`.

The checked theorem is
`EncloseHorse.Hardness.encloseHorse_NP_hard : NP.Hard BoardEncoding.GameYES`
in `Hardness/Complexity.lean`. The complete first-order reduction is
`setCover_fo_reduction_encloseHorse`.

Our reduction uses fixed first-order formulas over an ordered source structure.
It materializes every physical cell, including water, as a target element. It
also supplies unary numeric data for the budget and the positive and negative
parts of the score threshold. There are 353 fixed tags and four source
coordinates, giving exactly `353 * |A|^4` elements in the output universe. The formal reduction is a first-order interpretation, rather
than an arbitrary function accompanied only by an output-size bound.

The target problem reads physical cell kinds, four-neighbor adjacency, boundary,
portal equality, row-major order, and the numeric data. A proved representation
bijection relates all of these directly to an ordinary `Board`. It does not
interpret a hidden Set Cover instance or run the board constructor inside the
target predicate. Representation invariance proves that choosing another board
representation cannot change legal walls, reachability, score, or the answer.

## Reduction idea

For a Set Cover instance, let `s` be the number of sets, `u` the number of
elements, `k` the cover budget, and `Q` the number of root-to-set and incidence
edges. Define

\[
C=Q+1,\quad M=(s+k+2)C,\quad R=s+2,\quad T=R+uM-kC.
\]

Each edge becomes an isolated three-cell gate between portal groups. Placing a
wall on its grass center removes the corresponding graph edge. The water rows
between gadgets make every legal horse component enclosed. Signed compensation
gadgets cancel incidental portal weights. For every legal placement the exact
actual-game score is

\[
R+M\cdot\#\text{reached elements}
 -C\cdot\#\text{reached sets}+\text{gate bonus},
\qquad 0\le\text{gate bonus}\le Q.
\]

Because `C > Q` and `M > k*C + Q`, reaching the threshold forces every source
element to be reached through at most `k` reached sets. These sets form a cover.
Conversely, a cover determines actual legal grass walls that retain its sets and
all elements and meet the threshold. Both directions use the executable game
reachability and score definitions, including every portal hop and bee penalty.
The wall budget is the number of physical cells, so every constructed gate cut
is legal; the cover budget is enforced by the proved score separation.

## Main modules

| Module | Responsibility |
|---|---|
| `Hardness/SetCover.lean`, `SourceEncoding.lean` | Source witnesses and exact finite source decoding |
| `Hardness/Geometry.lean`, `BoardReduction.lean` | Physical cells and both actual reachability directions |
| `Hardness/Weights.lean`, `BoardScore.lean` | Compensation and exact signed score |
| `Hardness/ChosenWalls.lean`, `Reduction.lean` | Concrete cover witnesses and the complete decision equivalence |
| `Hardness/BoardEncoding.lean`, `GameTransport.lean` | Explicit input representation and game invariance |
| `Hardness/Ordered*.lean` | Ordered gadget cells and their physical grid realization |
| `Hardness/FOTokens.lean`, `FOEncoding.lean`, `FOCellModel.lean` | Fixed first-order compiler and its semantics |
| `Hardness/Token*.lean`, `AbstractPermutation.lean` | All gadget multiplicities and unary counts |
| `Hardness/Complexity.lean` | NP-hardness transfer to the actual game problem |

The source theorem `cover_iff_reducedBoard` is stronger than a count-only
abstract reduction: its conclusion quantifies over actual admissible wall lists
and the actual `score` function. The final complexity theorem additionally
checks that this construction is realized by the fixed first-order formulas.
