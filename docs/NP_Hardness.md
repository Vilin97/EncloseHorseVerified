# NP-completeness of the generalized signed-portal game

This document gives a complete mathematical many-one reduction from **Set Cover** to the decision version of the game implemented by `Board`. The construction uses a board with only **three rows**, a water border, grass, bees, one horse, and arbitrarily many natural-number portal labels. It does not need apples or cherries.

**Scope matters.** The theorem is for the generalized data model `Tile.portal (label : Nat)`, where all occurrences of the same label are connected, with no fixed bound on the number of distinct labels. It does **not** classify the fixed 36-label ASCII parser or the restricted game containing only grass, water, and a horse. It also does not claim a polynomial algorithm for those restrictions.

The proof below is an ordinary mathematical proof. `EncloseHorseVerified/Hardness.lean` implements the actual board construction and proves its score-separation arithmetic, with concrete board regression checks. The general board/quotient-graph correspondence, polynomial encoding bound, and NP-completeness framework are **not yet formalized in Lean**. The numerical lemmas alone must not be described as a fully kernel-checked NP-hardness proof.

## 1. The decision problem and encoding

An input consists of:

- an explicitly listed rectangular array of `N` tiles, with positive dimensions whose product is exactly `N`;
- exactly one horse;
- grass, water, bees, and portal tiles; portal labels are natural numbers written in binary;
- a natural-number wall budget `B`, and an integer score threshold `T`, both in binary.

A legal placement replaces at most `B` distinct grass tiles with walls. Movement is along four-neighbor grid edges and between any two portal tiles with the same label. A solution must enclose the horse: no reachable tile may lie on the outer grid boundary. Its score is the sum of the reachable tile weights: grass, horse, and portals have weight `1`, bees have weight `-4`, and walls and water do not count. This is the implemented standard score (`+1` area and a bee penalty of `-5`).

The question is whether some legal enclosure has score at least `T`.

The **explicit** encoding is essential. The theorem does not treat a malformed raw `Board` whose binary dimensions describe exponentially many omitted tiles as an explicit board.

## 2. Membership in NP

A certificate is a subset of the `N` tile positions. Check that each selected position is grass, no position is repeated, and the number of walls is at most `B`. Cap a budget larger than `N` before doing any budget-sized work.

Build the traversable-cell graph with grid edges and matching-label portal edges. Even the naive construction, comparing all pairs of portal labels and adding every matching pair, has polynomial size and polynomial bit complexity in the explicit input. A breadth-first search computes the horse component. Check that it avoids the boundary and sum its signed tile weights. There are at most `N` contributions, so the score has polynomial bit length. Comparison with the binary threshold is polynomial-time.

Thus the decision problem belongs to NP.

## 3. Set Cover input and parameters

Start from an explicitly enumerated universe `U = {0,...,u-1}`, a family of sets `S_0,...,S_(s-1)`, and a cover bound `k`. Each set is listed explicitly. Repeated members can be removed and out-of-universe indices discarded. Replace `k` by `min(k,s)`, preserving the answer, so `0 <= k <= s`.

Let

```
I = sum_i |S_i|                number of incidences
Q = s + I                     number of grass gates
C = Q + 1                     cost of selecting a set
M = (s + 2) C                 reward for an element
R = s + 2                     fixed root contribution
T = R + u M - k C             target score
```

The inequalities used below are

```
C > Q,
M > k C + Q.
```

Indeed, `k <= s` gives `M - kC >= 2C = 2Q+2 > Q`.

For an empty universe the original instance is trivially YES and may be mapped to the fixed 3-by-3 YES board with rows `~~~`, `~H~`, `~~~` and target `1`. Equivalently, the uniform construction below also preserves its answer. For `u >= 1`, its target `T` is strictly positive.

## 4. The intended graph

Define an undirected graph `H` with vertices

- one root `r`;
- one vertex `a_i` for every set `S_i`;
- one vertex `b_e` for every element `e`.

Its edges are:

- `r -- a_i` for every set;
- `a_i -- b_e` for every membership `e in S_i`.

There are exactly `Q` edges. Every edge will have its **own** grass gate. Closing a gate deletes that edge. There is no assumption that closing only a root-to-set gate excludes that set: an element could otherwise reach it backwards through an incidence edge. The completeness construction closes **all crossing gates**, including incidence gates.

Give the vertices the intended weights `R` at the root, `-C` at each set, and `M` at each element. The board will realize these exact weights with actual permitted tiles. Every open reachable grass gate adds one further point; the combined gate contribution is between `0` and `Q`.

## 5. Actual tile gadgets

Give the root label `0`, set `a_i` label `i+1`, and element `b_e` label `s+1+e`. All these labels are distinct.

Each gadget below occupies consecutive cells of the board's middle row. Insert one water cell between consecutive gadgets, and put water at both ends. The complete top and bottom rows are water.

### Root gadget

Use the two-cell gadget

```
horse, portal(root)
```

It is the only horse. Together with the root endpoint portal of each of the `s` root-to-set gates, its whole portal group contributes exactly `1 + 1 + s = R`.

### Edge gate gadget

For every edge `x -- y` of `H`, use a separate three-cell gadget

```
portal(label(x)), grass, portal(label(y))
```

The middle grass is the edge's gate. It is the only wallable cell in that gadget. Its endpoint portals belong to their respective global portal groups even when the grass gate is closed.

### Score adjustment gadgets

A single-cell `portal(L)` pad adds `1` to portal group `L`.

A two-cell motif

```
portal(L), bee
```

adds `1 - 4 = -3` to group `L`. The bee has no neighbor other than its portal, since the surrounding cells are water. Once any occurrence of label `L` is reachable, every portal with that label and every attached bee is reachable. None of these tiles is wallable.

Suppose a set vertex has `d = 1 + |S_i|` endpoint portals in the edge gadgets. Add:

- `d+C` bee motifs of its label;
- `2(d+C)` single portal pads of its label.

Its total group weight is exactly

```
d - 3(d+C) + 2(d+C) = -C.
```

Suppose an element occurs in `d` sets, hence has `d` endpoint portals. Add:

- `d` bee motifs of its label;
- `M+2d` single portal pads of its label.

Its total group weight is exactly

```
d - 3d + (M+2d) = M.
```

This also handles an element that occurs in no set: its positive group exists, but it is disconnected from the root.

### Layout and budget

List the root gadget, all edge gadgets, and all score-adjustment gadgets in the middle row, separated by water cells. Add a full top and bottom row of water. Use wall budget `B = Q`.

Every nonwater tile is strictly inside the board. Hence **every legal placement already encloses the horse**. The only wallable cells are the `Q` grass gates, and every subset of these gates is legal. This isolates the source of hardness: selecting a connected signed-reward component, not detecting escape.

All gadgets are mutually physically isolated except for their own displayed internal edges. The water separators prevent any other horizontal adjacency; the water rows prevent all vertical adjacency. The only connections between gadgets are exactly the matching-label portal edges.

## 6. Reachability and the exact score identity

Contract each complete portal group, including its attached bees, to its corresponding vertex of `H`. The root group includes the horse. For any legal placement, a surviving gate connects precisely the two groups of its edge; a walled gate connects neither. There are no other intergroup links.

Consequently the reachable portal groups are exactly the root component of `H` after the chosen gates are deleted. The argument is bidirectional:

1. A walk in the open-edge graph expands to a board walk: within a group use matching portal moves, then traverse the edge's portal-grass-portal gadget.
2. A board walk projects to a walk in the open-edge graph: movements within a gadget either stay inside a group, enter a leaf bee, or cross an unblocked gate. Only the last case changes groups, along exactly that edge of `H`.

A group cannot be partly reachable. Every portal occurrence of the group has the same label, so reaching one reaches all; each bee is adjacent to one of those portals. The root horse is adjacent to its root portal.

Let `r'` be the number of reachable set groups, `e'` the number of reachable element groups, and `g` the number of reachable unblocked grass gates. The exact implemented game score is therefore

```
score = R + e' M - r' C + g,
0 <= e' <= u,
0 <= r' <= s,
0 <= g <= Q.
```

This counts every actual reachable tile once. In particular, the endpoint portal rewards are already included in their group weights; they are not counted again as gate rewards. The only extra gate reward is the middle grass cell.

## 7. Soundness: a high score yields a small cover

Suppose a legal placement has score at least `T`.

First, all elements must be reachable. Otherwise `e' <= u-1`, and dropping the nonpositive set contribution gives

```
score <= R + (u-1) M + Q
      <  R + u M - k C
      =  T,
```

because `M > kC+Q`. This is a contradiction. Thus `e' = u`.

Next at most `k` sets are reachable. If `r' >= k+1`, then

```
score <= R + u M - (k+1) C + Q
      <  R + u M - k C
      =  T,
```

because `C > Q`. Again a contradiction. Hence `r' <= k`.

Every reachable element group has a reachable neighboring set group: in `H` its only neighbors are sets, and it has a path to the root. Choose the sets whose groups are reachable. They cover every element and their number is at most `k`. The original Set Cover instance is YES.

The argument allows paths from a selected element back into an additional set. Any such set is genuinely reachable and pays its whole `-C` contribution, so it is counted in `r'`. There is no one-way-gate assumption.

## 8. Completeness: a small cover yields a high score

Suppose `J` is a cover with `|J| <= k`. Let `A` contain the root, the set vertices indexed by `J`, and all element vertices.

The subgraph `H[A]` is connected. Each chosen set has its root edge, and every element has an incidence edge to a chosen covering set.

Wall exactly the grass gates of edges crossing from `A` to its complement. This includes both root-to-unselected-set gates and incidence gates from unselected sets to selected elements. There are at most `Q` such gates, so the placement is legal. No crossing edge survives, while `H[A]` remains connected. By the graph correspondence, the root component is exactly `A`.

The resulting score is

```
R + u M - |J| C + g >= R + u M - k C = T,
```

since `g >= 0`. Thus the game decision instance is YES.

Combining both directions gives the required many-one equivalence.

## 9. Polynomial construction size and bit complexity

Let `L = s + u + I + 1`. Under the explicit source encoding, `L` is at most linear in the input length up to harmless encoding factors. Then `Q <= L`, `C = O(L)`, `M = O(L^2)`, and `T = O(L^3)` in magnitude. Portal labels are at most `s+u`, hence have `O(log L)` bits.

There are `3Q+2` nonwater cells in the edge and root gadgets. The set padding contributes

```
4 sum_i(d_i+C) = 4Q + 4sC,
```

and the element padding contributes

```
uM + 4 sum_e d_e = uM + 4I.
```

Thus the total number of nonwater cells is exactly

```
P = 7Q + 4I + 4sC + uM + 2 = O(L^3).
```

Every gadget has at least one nonwater cell. Adding one separating water cell per gadget and a starting water cell therefore gives width at most `2P+1`. Height is `3`, so the explicit board has `O(L^3)` tiles. Generating these tiles and their labels takes polynomial time and polynomial output bit length, including all label bits. If a square array is required, pad the rectangle with water to a square; its size is still polynomial, at most `O(L^6)`.

No exponentially large rewards are encoded by binary shortcuts: the reward `M` is realized by explicitly listing polynomially many actual tiles.

## 10. The theorem and its limits

Set Cover is NP-complete. Sections 3–9 give a polynomial many-one reduction preserving YES and NO answers, so the generalized signed-portal game is NP-hard. Section 2 proves membership in NP. Therefore its decision problem is **NP-complete**, even on height-three boards with a water border, and its exact optimization problem is NP-hard.

A polynomial-time exact optimizer for every board in this generalized model would therefore imply `P = NP`.

This result does not prevent large practical speedups. Branch-and-bound, integer programming, graph preprocessing, bitsets, and a verified certificate checker can solve many instances quickly without changing worst-case complexity. It also does not settle any of the following stricter problems:

- grass, water, and one horse only;
- a fixed bound on the number of portal labels;
- a requirement that every label occur exactly twice;
- the literal fixed-size limits of a particular website editor.

The present implementation permits repeated matching portals and unbounded natural-number labels at the `Board` level. Those are the rules used by this theorem.

## References

- Richard M. Karp, *Reducibility Among Combinatorial Problems*, 1972, which includes Set Covering among the NP-complete problems. DOI: https://doi.org/10.1007/978-1-4684-2001-2_9.
- `EncloseHorseVerified/Game.lean`: the exact movement, legality, reachability, and signed-score definitions used here.
- `EncloseHorseVerified/Hardness.lean`: actual board generator, score-separation lemmas, and small concrete board checks; it explicitly states the current formalization boundary.
