import EncloseHorseVerified.Game

/-!
# An explicit Set Cover reduction construction

This file constructs actual `Board` values for the mathematical NP-hardness
proof in `docs/NP_Hardness.md`. It proves the exact score-separation arithmetic
used by that proof and checks a concrete constructed board in the kernel.

Verification boundary: the general board/quotient-graph correspondence and the
polynomial encoding bound are proved in the document, not formalized here. This
file does NOT claim a fully Lean-formalized NP-hardness theorem.

The construction uses arbitrarily many `Tile.portal Nat` labels, repeated
matching portals, and bees. It does not classify the fixed ASCII parser or the
restricted grass/water-only game.
-/
namespace EncloseHorse.Hardness

/-- An explicit finite Set Cover input. Members outside `elementCount` are ignored;
repetitions within a set are removed by enumerating the universe. -/
structure CoverInstance where
  elementCount : Nat
  sets : List (List Nat)
  coverBudget : Nat
  deriving Repr, Inhabited

def CoverInstance.setCount (a : CoverInstance) : Nat := a.sets.length

def CoverInstance.members (a : CoverInstance) (i : Nat) : List Nat :=
  (List.range a.elementCount).filter fun e => (a.sets[i]?.getD []).contains e

def CoverInstance.incidences (a : CoverInstance) : List (Nat × Nat) :=
  (List.range a.setCount).flatMap fun i => (a.members i).map fun e => (i, e)

def CoverInstance.gateCount (a : CoverInstance) : Nat :=
  a.setCount + a.incidences.length

def CoverInstance.setCost (a : CoverInstance) : Nat := a.gateCount + 1

def CoverInstance.elementReward (a : CoverInstance) : Nat :=
  (a.setCount + 2) * a.setCost

def CoverInstance.limit (a : CoverInstance) : Nat := min a.coverBudget a.setCount

def CoverInstance.rootReward (a : CoverInstance) : Nat := a.setCount + 2

def CoverInstance.threshold (a : CoverInstance) : Int :=
  (a.rootReward : Int) + (a.elementCount : Int) * (a.elementReward : Int) -
    (a.limit : Int) * (a.setCost : Int)

def setLabel (i : Nat) : Nat := i + 1

def elementLabel (a : CoverInstance) (e : Nat) : Nat := a.setCount + 1 + e

/-- A gate is the only kind of gadget containing a wallable tile. -/
def gate (left right : Nat) : List Tile := [.portal left, .grass, .portal right]

/-- Reaching label `label` forces the attached bee to be reachable too. -/
def beeMotif (label : Nat) : List Tile := [.portal label, .bee]

def portalPad (label : Nat) : List Tile := [.portal label]

/-- With `d` endpoint portals already present, this padding makes total group
weight exactly `-cost`: d - 3(d+cost) + 2(d+cost) = -cost. -/
def negativePadding (label d cost : Nat) : List (List Tile) :=
  List.replicate (d + cost) (beeMotif label) ++
    List.replicate (2 * (d + cost)) (portalPad label)

/-- With `d` endpoint portals already present, this makes group weight `reward`:
d - 3d + (reward+2d) = reward. -/
def positivePadding (label d reward : Nat) : List (List Tile) :=
  List.replicate d (beeMotif label) ++
    List.replicate (reward + 2 * d) (portalPad label)

def gadgets (a : CoverInstance) : List (List Tile) :=
  [[.horse, .portal 0]] ++
  (List.range a.setCount).map (fun i => gate 0 (setLabel i)) ++
  a.incidences.map (fun (i, e) => gate (setLabel i) (elementLabel a e)) ++
  (List.range a.setCount).flatMap (fun i =>
    negativePadding (setLabel i) (1 + (a.members i).length) a.setCost) ++
  (List.range a.elementCount).flatMap (fun e =>
    let d := (a.incidences.filter fun p => p.2 == e).length
    positivePadding (elementLabel a e) d a.elementReward)

/-- Put gadgets in one interior row, separated by water, with a full water border.
Only grass gates are wallable, and the budget allows closing all of them. -/
def reduce (a : CoverInstance) : Board :=
  let middle := [.water] ++ (gadgets a).flatMap (fun g => g ++ [.water])
  { width := middle.length
    height := 3
    tiles := List.replicate middle.length .water ++ middle ++
      List.replicate middle.length .water
    budget := a.gateCount }


/-- A genuine game-semantics fact used by the portal-group correspondence:
any two open cells with a matching label share reachability, for paths of
arbitrary length. The result is about the actual executable board flood fill. -/
theorem portal_reachable (b : Board) (walls : Placement) (i j label : Nat)
    (hi : i ∈ reach b walls)
    (hoi : b.openCell walls i = true) (hoj : b.openCell walls j = true)
    (hti : b.tileAt i = .portal label) (htj : b.tileAt j = .portal label) :
    j ∈ reach b walls := by
  apply (mem_reach_iff b walls j).mpr
  exact .step ((mem_reach_iff b walls i).mp hi) (by
    simp [Board.edge, hoi, hoj, Board.portalLinked, hti, htj])

/-- The concrete tile gadget has the advertised signed weight. -/
theorem beeMotif_points (label : Nat) :
    ((beeMotif label).map Tile.points).sum = -3 := by rfl

theorem portalPad_points (label : Nat) :
    ((portalPad label).map Tile.points).sum = 1 := by rfl

/-- Exact algebra for a negative set group, including its endpoint portals. -/
theorem negative_group_weight (d cost : Int) :
    d - 3 * (d + cost) + 2 * (d + cost) = -cost := by omega

/-- Exact algebra for a positive element group, including its endpoint portals. -/
theorem positive_group_weight (d reward : Int) :
    d - 3 * d + (reward + 2 * d) = reward := by omega

/-- Explicit polynomial-sized parameters separate a missing element from gate
bonuses, for every cover budget capped at the number of sets. -/
theorem parameters_dominate (s q k : Nat) (hk : k ≤ s) :
    k * (q + 1) + q < (s + 2) * (q + 1) := by
  have h := Nat.mul_le_mul_right (q + 1) (show k + 2 ≤ s + 2 by omega)
  have h' : k * (q + 1) + 2 * (q + 1) ≤ (s + 2) * (q + 1) := by
    simpa only [Nat.add_mul] using h
  omega

/-- Core arithmetic of the reduction. Once the separately established gadget
semantics yield the score identity, meeting the threshold forces every element
and at most `k` sets. This is not a substitute for the board-semantics proof. -/
theorem threshold_forces_cover_counts
    (R M C Q u k e r g : Int)
    (hQ : 0 ≤ Q) (hC : Q < C) (hM : k * C + Q < M)
    (hk : 0 ≤ k) (he : e ≤ u) (hr : 0 ≤ r)
    (hg : g ≤ Q)
    (hscore : R + u * M - k * C ≤ R + e * M - r * C + g) :
    e = u ∧ r ≤ k := by
  have hC0 : 0 ≤ C := by omega
  have hkC : 0 ≤ k * C := Int.mul_nonneg hk hC0
  have hM0 : 0 ≤ M := by omega
  have hrC : 0 ≤ r * C := Int.mul_nonneg hr hC0
  have heu : e = u := by
    by_cases hsame : e = u
    · exact hsame
    · have hstep : e + 1 ≤ u := by omega
      have hmul := Int.mul_le_mul_of_nonneg_right hstep hM0
      have hmul' : e * M + M ≤ u * M := by
        simpa only [Int.add_mul, Int.one_mul] using hmul
      omega
  refine ⟨heu, ?_⟩
  subst e
  by_cases hle : r ≤ k
  · exact hle
  · have hstep : k + 1 ≤ r := by omega
    have hmul := Int.mul_le_mul_of_nonneg_right hstep hC0
    have hmul' : k * C + C ≤ r * C := by
      simpa only [Int.add_mul, Int.one_mul] using hmul
    omega

/-- A chosen cover of at most `k` sets meets the threshold; gate rewards only help. -/
theorem cover_counts_meet_threshold (R M C u k r g : Int)
    (hC : 0 ≤ C) (hr : r ≤ k) (hg : 0 ≤ g) :
    R + u * M - k * C ≤ R + u * M - r * C + g := by
  have hmul := Int.mul_le_mul_of_nonneg_right hr hC
  omega

/- Two actual constructed-board regressions. The tiny source instance is the
one-element universe with its one-element set. They exercise the real score and
flood-fill implementation, not merely the abstract arithmetic formulas. -/
private def singletonCover : CoverInstance := ⟨1, [[0]], 1⟩

set_option maxRecDepth 100000 in
set_option maxHeartbeats 10000000 in
example : score (reduce singletonCover) [] = 11 := by decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 10000000 in
example : score (reduce singletonCover) [(reduce singletonCover).width + 5] = 3 := by
  decide +kernel

end EncloseHorse.Hardness
