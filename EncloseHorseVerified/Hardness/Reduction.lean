import EncloseHorseVerified.Hardness.BoardScore
import EncloseHorseVerified.Hardness.ChosenWalls

/-! The actual grid-game reduction, including both directions of its decision equivalence. -/
namespace EncloseHorse.Hardness.BoardReduction

open Geometry BoardGadgets CoverGraph

def setHotCount (a : CoverInstance) (gs : List Gadget) (budget : Nat)
    (walls : Placement) : Nat :=
  ((List.range a.setCount).filter (fun i => hot gs budget walls (setLabel i))).length

def elementHotCount (a : CoverInstance) (gs : List Gadget) (budget : Nat)
    (walls : Placement) : Nat :=
  ((List.range a.elementCount).filter (fun e => hot gs budget walls (elementLabel a e))).length

def totalGateBonus (gs : List Gadget) (budget : Nat) (walls : Placement) : Int :=
  ((List.range gs.length).map (gateBonus gs budget walls)).sum

private theorem perm_sum_int {xs ys : List Int} (h : xs.Perm ys) : xs.sum = ys.sum := by
  induction h with
  | nil => rfl
  | cons a _ ih => simp only [List.sum_cons, ih]
  | swap a b xs => simp only [List.sum_cons]; omega
  | trans _ _ ih ih' => exact ih.trans ih'

/-- Exact score identity for any order of the generated, isolated islands. -/
theorem constructed_score (a : CoverInstance) (tail : List Gadget)
    (hp : (.root :: tail).Perm (BoardGadgets.gadgets a))
    (budget : Nat) (walls : Placement) (hl : legal (board (.root :: tail) budget) walls) :
    score (board (.root :: tail) budget) walls =
      (a.rootReward : Int) +
      (elementHotCount a (.root :: tail) budget walls : Int) * (formalReward a : Int) -
      (setHotCount a (.root :: tail) budget walls : Int) * (a.setCost : Int) +
      totalGateBonus (.root :: tail) budget walls := by
  rw [score_eq_base_plus_bonus tail budget walls hl]
  rw [perm_sum_int (hp.map (baseWeight (hot (.root :: tail) budget walls))),
    baseWeight_gadgets]
  have hr := root_hot tail budget walls hl
  simp only [hr, show bit true = 1 from rfl, Int.mul_one, sum_bits]
  change ((a.setCount : Int) + 2) - (a.setCost : Int) * (setHotCount a _ _ _ : Int) +
    (formalReward a : Int) * (elementHotCount a _ _ _ : Int) + _ = _
  simp only [CoverInstance.rootReward, Int.natCast_add, totalGateBonus]
  rw [Int.mul_comm (a.setCost : Int), Int.mul_comm (formalReward a : Int)]
  omega

/-- Gate grass adds at most one point per generated gate. -/
theorem totalGateBonus_bounds (a : CoverInstance) (tail : List Gadget)
    (hp : (.root :: tail).Perm (BoardGadgets.gadgets a)) (budget : Nat) (walls : Placement) :
    0 ≤ totalGateBonus (.root :: tail) budget walls ∧
      totalGateBonus (.root :: tail) budget walls ≤ (a.gateCount : Int) := by
  have h := gate_bonus_bounds (.root :: tail)
    (fun g => (reach (board (.root :: tail) budget) walls).contains (pos g 1))
  have hc := (hp.filter Gadget.isGate).length_eq
  rw [gadgets_gateCount] at hc
  unfold totalGateBonus gateBonus
  simpa only [hc] using h

theorem setHotCount_eq_reachedSets (a : CoverInstance) (tail : List Gadget)
    (budget : Nat) (walls : Placement) (hl : legal (board (.root :: tail) budget) walls) :
    setHotCount a (.root :: tail) budget walls =
      (reachedSets a (.root :: tail) walls).length := by
  let xs := (List.range a.setCount).filter (fun i => hot (.root :: tail) budget walls (setLabel i))
  have hx : xs.Nodup := List.Pairwise.filter _ List.nodup_range
  have hm (i : Nat) : i ∈ xs ↔ i ∈ reachedSets a (.root :: tail) walls := by
    simp only [xs, List.mem_filter, List.mem_range, mem_reachedSets_iff]
    rw [hot_iff_label tail budget walls hl]
  exact Nat.le_antisymm
    (EncloseHorse.nodup_length_le_of_subset xs _ hx (fun i hi => (hm i).mp hi))
    (EncloseHorse.nodup_length_le_of_subset _ xs (reachedSets_nodup a _ _) (fun i hi => (hm i).mpr hi))

/-- Full element count means that every source element has an actual reachable portal. -/
theorem all_elements_hot_of_count (a : CoverInstance) (gs : List Gadget)
    (budget : Nat) (walls : Placement)
    (hc : elementHotCount a gs budget walls = a.elementCount) :
    ∀ e < a.elementCount, hot gs budget walls (elementLabel a e) = true := by
  have he : (List.range a.elementCount).filter (fun e => hot gs budget walls (elementLabel a e)) =
      List.range a.elementCount :=
    List.Sublist.eq_of_length List.filter_sublist (by simpa only [elementHotCount, List.length_range] using hc)
  intro e he'
  have hm : e ∈ (List.range a.elementCount).filter (fun e => hot gs budget walls (elementLabel a e)) := by
    rw [he]
    exact List.mem_range.mpr he'
  exact (List.mem_filter.mp hm).2

/-- The explicit, uncapped source budget is dominated by the new element reward. -/
theorem formalReward_dominate (a : CoverInstance) :
    a.coverBudget * a.setCost + a.gateCount < formalReward a := by
  have hm := Nat.mul_le_mul_right a.setCost
    (show a.coverBudget + 2 ≤ a.setCount + a.coverBudget + 2 by omega)
  simp only [Nat.add_mul] at hm
  simp only [formalReward, Nat.add_mul]
  have hc : a.setCost = a.gateCount + 1 := rfl
  omega

/-- Any winning actual-board placement yields a source Set Cover witness. -/
theorem cover_of_actual_winning (a : CoverInstance) (tail : List Gadget)
    (hp : (.root :: tail).Perm (BoardGadgets.gadgets a))
    (budget : Nat) (walls : Placement)
    (ha : admissible (board (.root :: tail) budget) walls)
    (hw : formalThreshold a ≤ score (board (.root :: tail) budget) walls) : CoverYES a := by
  have hsc := constructed_score a tail hp budget walls ha.1
  have hb := totalGateBonus_bounds a tail hp budget walls
  have he : elementHotCount a (.root :: tail) budget walls ≤ a.elementCount := by
    have h := List.length_filter_le (fun e => hot (.root :: tail) budget walls (elementLabel a e)) (List.range a.elementCount)
    simpa only [elementHotCount, List.length_range] using h
  have hM : (a.coverBudget : Int) * (a.setCost : Int) + (a.gateCount : Int) <
      (formalReward a : Int) := by
    have h := Int.ofNat_lt.mpr (formalReward_dominate a)
    simpa only [Int.natCast_add, Int.natCast_mul] using h
  have hC : (a.gateCount : Int) < (a.setCost : Int) := by
    simp only [CoverInstance.setCost, Int.natCast_add]
    omega
  have hcounts := threshold_forces_cover_counts
    (a.rootReward : Int) (formalReward a : Int) (a.setCost : Int) (a.gateCount : Int)
    (a.elementCount : Int) (a.coverBudget : Int)
    (elementHotCount a (.root :: tail) budget walls : Int)
    (setHotCount a (.root :: tail) budget walls : Int)
    (totalGateBonus (.root :: tail) budget walls)
    (by omega) hC hM (by omega) (by omega) (by omega) hb.2
    (by simpa only [formalThreshold, hsc] using hw)
  have heu : elementHotCount a (.root :: tail) budget walls = a.elementCount := by omega
  have hr : setHotCount a (.root :: tail) budget walls ≤ a.coverBudget := by omega
  apply cover_of_all_elements_reached a (.root :: tail) walls
    (gate_classificationFor a tail hp)
  · intro e he'
    exact (hot_iff_label tail budget walls ha.1 _).mp
      (all_elements_hot_of_count a _ budget walls heu e he')
  · rwa [← setHotCount_eq_reachedSets a tail budget walls ha.1]

/-- A source cover constructs actual legal enclosing walls that meet the threshold. -/
theorem actual_winning_of_cover (a : CoverInstance) (tail : List Gadget)
    (hp : (.root :: tail).Perm (BoardGadgets.gadgets a)) (hc : CoverYES a) :
    ∃ walls, admissible (reducedBoardFor tail) walls ∧
      formalThreshold a ≤ score (reducedBoardFor tail) walls := by
  obtain ⟨chosen, hc⟩ := hc
  let walls := chosenWallsFor a tail chosen
  have ha := chosenWallsFor_admissible a tail chosen
  have helem : elementHotCount a (.root :: tail) (10 * (.root :: tail).length + 5) walls =
      a.elementCount := by
    have hf : (List.range a.elementCount).filter
        (fun e => hot (.root :: tail) (10 * (.root :: tail).length + 5) walls (elementLabel a e)) =
        List.range a.elementCount := by
      apply List.filter_eq_self.mpr
      intro e he
      exact (hot_iff_label tail _ walls ha.1 _).mpr
        (chosenFor_elements_reached a tail hp chosen hc e (List.mem_range.mp he))
    simp only [elementHotCount, hf, List.length_range]
  have hsets : setHotCount a (.root :: tail) (10 * (.root :: tail).length + 5) walls ≤
      a.coverBudget := by
    rw [setHotCount_eq_reachedSets a tail _ walls ha.1]
    exact Nat.le_trans (chosenFor_reachedSets_length_le a tail chosen) hc.budget
  refine ⟨walls, ha, ?_⟩
  have hsc := constructed_score a tail hp _ walls ha.1
  have hb := (totalGateBonus_bounds a tail hp (10 * (.root :: tail).length + 5) walls).1
  change formalThreshold a ≤ score (board (.root :: tail) _) walls
  rw [hsc, helem]
  exact cover_counts_meet_threshold _ _ _ _ _ _ _ (by omega) (by omega) hb

/-- Complete Set Cover decision equivalence for the executable grid game.
The board order is arbitrary up to a root-first permutation of its islands. -/
theorem cover_iff_actual_winning (a : CoverInstance) (tail : List Gadget)
    (hp : (.root :: tail).Perm (BoardGadgets.gadgets a)) :
    CoverYES a ↔ ∃ walls, admissible (reducedBoardFor tail) walls ∧
      formalThreshold a ≤ score (reducedBoardFor tail) walls := by
  constructor
  · exact actual_winning_of_cover a tail hp
  · rintro ⟨walls, ha, hw⟩
    exact cover_of_actual_winning a tail hp _ walls ha hw

/-- The canonical executable constructor is also a complete many-one reduction. -/
theorem cover_iff_reducedBoard (a : CoverInstance) :
    CoverYES a ↔ ∃ walls, admissible (reducedBoard a) walls ∧
      formalThreshold a ≤ score (reducedBoard a) walls := by
  have he : Gadget.root :: (BoardGadgets.gadgets a).tail = BoardGadgets.gadgets a := rfl
  simpa only [reducedBoardFor, reducedBoard, he] using
    cover_iff_actual_winning a (BoardGadgets.gadgets a).tail (he ▸ List.Perm.refl _)

end EncloseHorse.Hardness.BoardReduction
