import EncloseHorseVerified.Certificate.Encoding

namespace EncloseHorse.Certificate.Clingo
open Totalizer

def budgetInputs (b : Board) : List Lit := b.candidates.map (fun i => (wallVar i, true))

def positivePoints (t : Tile) : Nat := (max t.points 0).toNat

def tileInputs (i : Nat) (t : Tile) : List Lit :=
  if t.points < 0 then List.replicate (-t.points).toNat (insideVar i, true)
  else List.replicate t.points.toNat (insideVar i, false)

def scoreInputs (b : Board) : List Lit :=
  b.cells.flatMap (fun i => tileInputs i (b.tileAt i))

def positiveTotal (b : Board) : Nat :=
  (b.cells.map (fun i => positivePoints (b.tileAt i))).sum

theorem countTrue_map (a : Nat → Bool) (xs : List Nat) (f : Nat → Lit) :
    countTrue a (xs.map f) = (xs.filter (fun i => evalLit a (f i))).length := by
  simp [countTrue, List.filter_map, Function.comp_def]

theorem countTrue_flatMap (a : Nat → Bool) (xs : List Nat) (f : Nat → List Lit) :
    countTrue a (xs.flatMap f) = (xs.map (fun i => countTrue a (f i))).sum := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp [List.flatMap_cons, countTrue_append, ih]

theorem countTrue_replicate (a : Nat → Bool) (n : Nat) (l : Lit) :
    countTrue a (List.replicate n l) = if evalLit a l then n else 0 := by
  cases he : evalLit a l <;> simp [countTrue, he]

theorem budget_count (b : Board) (walls : Placement) (hw : legal b walls) :
    countTrue (baseAssignment b walls) (budgetInputs b) = walls.length := by
  rw [budgetInputs, countTrue_map]
  simp only [evalLit, base_wall, beq_true]
  have hp := canonicalize_perm b walls (b.candidates_nodup.sublist hw.1)
    (fun i hi => hw.1.subset hi)
  exact hp.length_eq

private theorem tile_weight_identity (t : Tile) (r : Bool) :
    ((if t.points < 0 then (if r then (-t.points).toNat else 0)
       else (if r then 0 else t.points.toNat) : Nat) : Int) +
      (if r then t.points else 0) = (positivePoints t : Int) := by
  cases t <;> cases r <;> rfl

theorem tileInputs_count (b : Board) (walls : Placement) (i : Nat) :
    (countTrue (baseAssignment b walls) (tileInputs i (b.tileAt i)) : Int) +
      (if (reach b walls).contains i then (b.tileAt i).points else 0) =
        (positivePoints (b.tileAt i) : Int) := by
  unfold tileInputs
  split
  · rename_i hp
    rw [countTrue_replicate]
    simp only [evalLit, base_inside, beq_true]
    simpa only [ite_eq_left hp] using
      tile_weight_identity (b.tileAt i) ((reach b walls).contains i)
  · rename_i hp
    rw [countTrue_replicate]
    simp only [evalLit, base_inside, beq_false]
    have hh := tile_weight_identity (b.tileAt i) ((reach b walls).contains i)
    rw [ite_eq_right hp] at hh
    cases hr : (reach b walls).contains i <;> rw [hr] at hh <;> exact hh

def reachedCells (b : Board) (walls : Placement) : List Nat :=
  b.cells.filter (fun i => (reach b walls).contains i)

theorem reachedCells_perm (b : Board) (walls : Placement) (ha : admissible b walls) :
    (reachedCells b walls).Perm (reach b walls) := by
  have hn : (reachedCells b walls).Nodup :=
    List.Pairwise.filter _ List.nodup_range
  have hm (i : Nat) : i ∈ reachedCells b walls ↔ i ∈ reach b walls := by
    simp only [reachedCells, List.mem_filter, List.contains_iff_mem]
    exact ⟨And.right, fun hi => ⟨reach_in_cells b walls ha i hi, hi⟩⟩
  apply List.perm_iff_count.mpr
  intro i
  rw [hn.count, (reach_nodup b walls).count]
  simp only [hm]

private theorem int_sum_perm {xs ys : List Int} (hp : xs.Perm ys) : xs.sum = ys.sum := by
  induction hp with
  | nil => rfl
  | cons x hp ih => simp [List.sum_cons, ih]
  | swap x y xs => simp [List.sum_cons, Int.add_left_comm]
  | trans hp hq ihp ihq => exact ihp.trans ihq

theorem score_as_cell_sum (b : Board) (walls : Placement) (ha : admissible b walls) :
    score b walls =
      (b.cells.map (fun i => if (reach b walls).contains i then (b.tileAt i).points else 0)).sum := by
  have hp := (reachedCells_perm b walls ha).map (fun i => (b.tileAt i).points)
  rw [score, ite_eq_left ha.2, ← int_sum_perm hp]
  unfold reachedCells
  induction b.cells with
  | nil => rfl
  | cons i is ih =>
    cases he : (reach b walls).contains i <;>
      simp only [List.filter_cons, List.map_cons, List.sum_cons, he,
        Bool.false_eq_true, ↓reduceIte, ih, Int.zero_add]


theorem score_complement_count (b : Board) (walls : Placement) (ha : admissible b walls) :
    (countTrue (baseAssignment b walls) (scoreInputs b) : Int) + score b walls =
      (positiveTotal b : Int) := by
  rw [scoreInputs, countTrue_flatMap, score_as_cell_sum b walls ha]
  unfold positiveTotal
  induction b.cells with
  | nil => rfl
  | cons i is ih =>
    simp only [List.map_cons, List.sum_cons, Int.natCast_add]
    have ht := tileInputs_count b walls i
    omega

def scoreLimit (b : Board) (target : Int) : Nat :=
  ((positiveTotal b : Int) - target - 1).toNat

theorem better_count_bound (b : Board) (walls : Placement) (ha : admissible b walls)
    (target : Int) (hbetter : target < score b walls) :
    countTrue (baseAssignment b walls) (scoreInputs b) ≤ scoreLimit b target := by
  have hi := score_complement_count b walls ha
  have hle : (countTrue (baseAssignment b walls) (scoreInputs b) : Int) ≤
      (positiveTotal b : Int) - target - 1 := by omega
  have hn : 0 ≤ (positiveTotal b : Int) - target - 1 := by omega
  exact (Int.le_toNat hn).mpr hle

end EncloseHorse.Certificate.Clingo
