# NP-completeness without portals

## Theorem and scope

The decision version of the standard signed-tile game is **NP-complete**, even when the only tile types are water, grass, one horse, cherries, and bees, and the entire board has a water border. There are **no portals** and no nonstandard tile weights. Board dimensions and wall budgets are part of the input and may grow.

Consequently, an exact polynomial-time optimizer for all such levels would imply `P = NP`. The result does not classify the stricter grass/water/horse-only game, because this reduction needs cherries and bees.

This is a complete mathematical reduction. It is **not a claim that the whole NP-hardness proof has been formalized in Lean**. The repository's current Lean development proves solver correctness and some reduction arithmetic/construction facts; the orthogonal drawing theorem, the complete geometric reduction below, and a complexity-theory framework are not all kernel-formalized.

The earlier [Set Cover construction](NP_Hardness.md) gives an especially simple three-row reduction for the generalized portal model. The theorem here is stronger about the tile alphabet: it removes the need for unbounded or repeated portal labels.

## 1. Source problem and two established results

We reduce from **unweighted Steiner Tree on 3-connected cubic planar graphs**. An instance is an explicitly listed graph `G=(V,E)`, a terminal set `T`, and an edge bound `B`. It asks whether a subtree containing every terminal has at most `B` edges. Write `n=|V|`, `m=|E|`, and `t=|T|`.

Two primary sources supply exactly the restrictions and drawing algorithm needed:

1. **Da Lozzo and Rutter, Theorem 4**, *Strengthening Hardness Results to 3-Connected Planar Graphs*, establishes NP-completeness of Steiner Tree for 3-connected cubic planar graphs. Their definition measures a Steiner tree's size by its **number of edges**, not its drawn length. [arXiv:1607.02346](https://arxiv.org/abs/1607.02346), definition on PDF page 2 and Theorem 4 on page 6.
2. **Rahman, Nakano, and Nishizeki, Theorem 3 and Section 5**, *A Linear Algorithm for Bend-Optimal Orthogonal Drawings of Triconnected Cubic Plane Graphs*, JGAA 3(4), 31–62 (1999), constructs an orthogonal integer-grid drawing in polynomial time; its grid width and height are at most `n/2`. Edges do not cross or overlap except at their common endpoints. [Primary paper](https://jgaa.info/index.php/jgaa/article/download/paper17/2949/2755), DOI [10.7155/jgaa.00017](https://doi.org/10.7155/jgaa.00017), Section 5 on journal pages 57–61.

A planar embedding can be found in polynomial time, or supplied as part of the source instance. The latter does not weaken the hardness restriction: a polynomial embedding algorithm supplies it for an ordinary planar input. The graph is connected because it is 3-connected.

## 2. Normalize the source instance

An empty terminal set is a trivial YES instance. Map it to a fixed 3-by-3 board with rows `~~~`, `~H~`, `~~~`, budget `0`, and threshold `1`. Otherwise choose an arbitrary root terminal `h in T`.

Replace `B` by `min(B,n-1)`. This preserves the answer, because a spanning tree of connected `G` has `n-1` edges and contains every terminal. If `B < t-1`, the source instance is NO: a tree containing `t` distinct terminals has at least `t-1` edges. Map this case to a fixed NO instance, such as the one-cell board `H` with budget `0` and required enclosed score `1`.

For the remaining cases,

```
1 <= t <= n,
t-1 <= B <= n-1,
K = B + 1 - t,
0 <= K <= n-t.
```

A connected vertex set containing all `t` terminals has a spanning tree with at most `B` edges exactly when it contains at most `K` nonterminal vertices. The reduction will charge for these nonterminal vertices through the game score, rather than through corridor length.

## 3. Score parameters

Set

```
Q = m,
C = Q + 1,
M = (n + 2) C,
threshold = 1 + 4tM - 4KC.
```

There will be exactly `Q` grass tiles, one gate per graph edge, and the game wall budget will be `Q`. Every vertex group will have a fixed total score:

- a nonterminal group: `-4C`;
- a terminal group other than the root: `+4M`;
- the root terminal group: `1+4M`, including its horse.

Every reachable open gate contributes just `1`, so all gate rewards together lie between `0` and `Q`. The scale separation

```
C > Q,
M > KC + Q
```

holds because `K <= n` and `M=(n+2)C`.

All parameters are polynomially bounded integers: cubicity gives `m=3n/2`, so `C=O(n)` and `M=O(n^2)`.

## 4. Make geometric vertex groups and edge gates

### 4.1 A separated orthogonal drawing

Compute the polynomial integer-grid drawing from Section 1. An original grid unit has length one. All vertices and bends have integer coordinates, and nonincident features are disjoint. Thus two disjoint horizontal/vertical grid features have separation at least one grid unit whenever they do not meet; incident edge segments meet only at their common vertex or bend.

Choose an odd integer

```
D = 2(M+C+10)+1
```

and scale every drawing coordinate by `S=10D`. The enlarged drawing still has polynomial dimensions. At every vertex place a filled `D`-by-`D` square room centered at that vertex. The odd side length gives an integer center.

The incident graph edges leave the room through the midpoint cells of distinct sides, according to their distinct directions in the orthogonal drawing. Trace each edge outside the rooms with a one-cell-wide corridor along its scaled orthogonal path.

The scaling supplies a wide water gap between unrelated rooms and corridors. A room's radius is less than `D/2`, while unrelated original grid features are separated after scaling by at least `S`. Likewise, nonconsecutive portions of a corridor are separated by the scaled drawing unless they are consecutive segments of that same path. Around a right-angle bend the unit-width corridor is simply an ordinary grid path: diagonally touching cells introduce no extra four-neighbor edge.

### 4.2 One gate per original edge

For every edge choose a middle cell of an interior straight scaled segment, away from rooms and bends, as its gate. Such a cell exists: every nonzero original segment becomes a segment at least `S` cells long, and the room/bend exclusion zones consume only a fixed fraction of that length. Keep at least two corridor cells between a gate and any bend or room.

Make the gate ordinary grass. The edge corridor minus that gate has two connected halves, each attached to exactly one endpoint room. Assign every cell of a half-corridor to its endpoint's vertex group. A vertex group consists of its room and all its incident corridor halves.

Every group is connected. Distinct groups have no direct adjacency; the only connections between them pass through the unique grass gate of an original graph edge. All other board cells are water. Finally add at least one full water row and column on every side of the entire drawing.

There are exactly `Q=m` grass gates. Every subset of those gates is a legal placement within the game budget `Q`. No room or arm tile will be wallable. The full water border means every placement encloses the horse.

**Important:** the long corridors do not introduce extra selectable Steiner vertices. Each half-corridor belongs to its endpoint's unwallable group and is given a share of that group's fixed score. The original edge has only one wallable gate, regardless of its geometric length.

## 5. Realize the exact group scores using only cherries and bees

A cherry tile has actual implemented score `+4` (`+1` area and `+3` bonus). A bee tile has score `-4` (`+1` area and `-5` penalty). Both are traversable and **cannot be replaced by walls**.

Put the unique horse at the center of the root room. All other group cells will be cherries or bees. For a vertex `v`, let `N_v` be its number of item cells, excluding the root horse when applicable. Define the desired coefficient

```
a_v = M   if v is a terminal,
a_v = -C  otherwise.
```

The room alone supplies at least `D^2-1` item cells before the following parity adjustment. Hence it supplies many more than `|a_v|`, even at the root.

If `N_v` and `a_v` have different parity, turn one corner of the room into water. Choose a corner that is not a corridor attachment or the horse. All ports are at side midpoints and `D>=3`, so this is always possible. Removing one corner leaves the room connected and leaves every port connected to it. It changes the item count by one. After this adjustment,

```
N_v >= |a_v|,
N_v ≡ a_v (mod 2).
```

Now assign exactly

```
(N_v+a_v)/2 cherries,
(N_v-a_v)/2 bees
```

to the group's item cells. These are nonnegative integers, and their total is `N_v`. Their total score is exactly

```
4((N_v+a_v)/2) - 4((N_v-a_v)/2) = 4a_v.
```

The root group has the additional horse contribution `1`. This gives precisely the weights in Section 3.

The assignment of signs cannot change any movement or wall-placement rule: both cherries and bees are unwallable traversable tiles. Thus reaching even one cell of a group forces the whole connected group to be reachable. In particular, one cannot collect the group's cherries while excluding its bees. The complete room-plus-arm group is assigned its exact score **after** its geometric size is known, so there is no circular dependence between corridor length and reward capacity.

## 6. Quotient graph and exact score identity

For a legal placement, contract each unwallable connected vertex group to its original graph vertex. An unwalled edge gate connects its two endpoint groups; a walled gate removes that connection. The geometric separation proves that there are no other connections. Thus the horse's reachable groups are exactly the component of root `h` in `G` after the corresponding graph edges are deleted.

The correspondence is bidirectional. A graph walk expands to a board walk through the connected groups and their open gates. A board walk projects to a graph walk because its only transitions between distinct groups cross an open grass gate of an original edge.

Let `t'` be the number of reachable terminal groups, `r` the number of reachable nonterminal groups, and `g` the number of reachable open gates. The actual game score is exactly

```
score = 1 + 4t'M - 4rC + g,
0 <= t' <= t,
0 <= r <= n-t,
0 <= g <= Q.
```

The root is a terminal and is always reached. Every group cell is included exactly once in its fixed group contribution; the only extra gate contribution is the grass gate cell itself.

## 7. Soundness

Suppose a legal placement achieves the threshold.

If `t'<t`, then `t'<=t-1`, and ignoring the nonpositive nonterminal contribution gives

```
score <= 1 + 4(t-1)M + Q
      <  1 + 4tM - 4KC,
```

because `4M > 4KC+Q`. This contradicts meeting the threshold. Hence every terminal group is reachable.

If `r>=K+1`, then

```
score <= 1 + 4tM - 4(K+1)C + Q
      <  1 + 4tM - 4KC,
```

because `4C>Q`. Thus `r<=K`.

The root component in `G` is connected, contains all `t` terminals, and has `t+r` vertices. Take a spanning tree of this component. It contains every terminal and has

```
t+r-1 <= t+K-1 = B
```

edges. This is a YES witness for the source Steiner Tree instance.

## 8. Completeness

Suppose a source Steiner tree has at most `B` edges. Let `A` be its vertex set. It contains all `t` terminals and at most `K` nonterminals, because a tree with at most `B` edges has at most `B+1` vertices.

Wall exactly the grass gates of graph edges crossing from `A` to its complement. There are at most `Q` such gates, so the placement is legal. The subgraph on `A` remains connected, since it contains the source tree, and no edge from `A` to its complement survives. The horse component is therefore exactly the groups for `A`, together with its reachable open gates.

Its score satisfies

```
score = 1 + 4tM - 4rC + g
      >= 1 + 4tM - 4KC,
```

where `r<=K` and `g>=0`. The game instance is YES.

Soundness and completeness establish the required many-one equivalence.

## 9. Polynomial time and explicit output size

The source graph and terminals are explicit. A 3-connected cubic graph has `m=3n/2`. The drawing algorithm uses an integer grid with width and height `O(n)` and polynomially many segments. We choose `C=O(n)`, `M=O(n^2)`, `D=O(n^2)`, and scale `S=10D=O(n^2)`.

The resulting board width and height are `O(nS+D)=O(n^3)`. Listing **every tile**, including water, therefore uses `O(n^6)` cells, a fixed polynomial. Gates, rooms, arm assignments, parity corrections, and the cherry/bee counts can all be generated by traversing this explicitly bounded grid in polynomial time. The target magnitude is `O(tM+KC)=O(n^3)`, and all dimensions, counts, coordinates, and parameters have polynomial bit length.

The proof does not hide exponentially large coordinates in a binary encoding, and it does not replace a general graph by a grid while silently changing its adjacencies: the cited planar drawing algorithm plus separated room/corridor construction explicitly preserves them. It also does not require wallable zero-score vertices or arbitrary tile weights.

Padding the rectangle with water to a square, if desired, retains the same `O(n^6)` cell bound and does not change any reachable component or score.

## 10. NP-completeness and practical meaning

A placement is checked in polynomial time by ordinary flood fill and signed summation. Hence this no-portal decision problem belongs to NP. Sections 1–9 give a polynomial reduction from an NP-complete source problem. Therefore the decision problem is NP-complete and exact optimization is NP-hard.

The result uses only the standard ASCII tile alphabet `~ . H C S`, with the standard movement, wallability, and scores. It is a statement about the family of levels as board dimensions grow, not about a website's fixed finite editor-size limits.

It does not prevent practical exact solvers from handling many large levels quickly. It rules out a worst-case polynomial-time exact algorithm for every level unless `P=NP`. It says nothing adverse about fast heuristics, branch-and-bound, integer programming, or certified instance-specific upper bounds.

## References

- Giordano Da Lozzo and Ignaz Rutter. *Strengthening Hardness Results to 3-Connected Planar Graphs*. arXiv:1607.02346, 2016. Theorem 4; source size is measured in edges. https://arxiv.org/abs/1607.02346.
- Md. Saidur Rahman, Shin-ichi Nakano, and Takao Nishizeki. *A Linear Algorithm for Bend-Optimal Orthogonal Drawings of Triconnected Cubic Plane Graphs*. Journal of Graph Algorithms and Applications 3(4), 31–62, 1999. Theorem 3 and Section 5. https://doi.org/10.7155/jgaa.00017.
- `EncloseHorseVerified/Game.lean`: exact implemented tile weights, unwallable item rules, four-neighbor movement, and reachable-component score.
