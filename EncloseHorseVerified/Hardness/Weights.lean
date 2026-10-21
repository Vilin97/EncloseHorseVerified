import EncloseHorseVerified.Hardness.SetCover
import EncloseHorseVerified.Hardness.Geometry
import EncloseHorseVerified.Hardness.CoverGraph

/-!
# Locally compensated gadget weights

Each endpoint contribution is canceled beside the gate that introduces it.
This avoids any global incidence-degree reindexing in the score calculation.
-/
namespace EncloseHorse.Hardness.BoardGadgets

open Geometry

/-- One portal-and-bee motif plus two portal pads has net weight minus one. -/
def compensation (label : Nat) : List Gadget :=
  [.bee label, .pad label, .pad label]

def rootBundle (i : Nat) : List Gadget :=
  [.gate 0 (setLabel i)] ++ compensation (setLabel i)

def incidenceBundle (a : CoverInstance) (ie : Nat × Nat) : List Gadget :=
  [.gate (setLabel ie.1) (elementLabel a ie.2)] ++
    compensation (setLabel ie.1) ++ compensation (elementLabel a ie.2)

def setPadding (a : CoverInstance) (i : Nat) : List Gadget :=
  (List.replicate a.setCost (compensation (setLabel i))).flatten

/-- Amplification accommodates the explicit, uncapped source budget. -/
def formalReward (a : CoverInstance) : Nat :=
  (a.setCount + a.coverBudget + 2) * a.setCost

def formalThreshold (a : CoverInstance) : Int :=
  (a.rootReward : Int) + (a.elementCount : Int) * (formalReward a : Int) -
    (a.coverBudget : Int) * (a.setCost : Int)

def elementPadding (a : CoverInstance) (e : Nat) : List Gadget :=
  List.replicate (formalReward a) (.pad (elementLabel a e))

/-- The finite list subsequently materialized by the generic geometry constructor. -/
def gadgets (a : CoverInstance) : List Gadget :=
  .root ::
    ((List.range a.setCount).flatMap rootBundle ++
      a.incidences.flatMap (incidenceBundle a) ++
      (List.range a.setCount).flatMap (setPadding a) ++
      (List.range a.elementCount).flatMap (elementPadding a))

def bit (b : Bool) : Int := if b then 1 else 0

/-- The contribution of nonwallable slots when the indicated portal groups are hot. -/
def baseWeight (hot : Nat → Bool) : Gadget → Int
  | .root => 2 * bit (hot 0)
  | .gate left right => bit (hot left) + bit (hot right)
  | .bee label => -3 * bit (hot label)
  | .pad label => bit (hot label)

private theorem sum_flatMap {α β : Type} (xs : List α) (g : α → List β) (f : β → Int) :
    ((xs.flatMap g).map f).sum = (xs.map fun i => ((g i).map f).sum).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simp only [List.flatMap_cons, List.map_append, List.sum_append,
      List.map_cons, List.sum_cons, ih]

private theorem sum_flatten {α : Type} (xs : List (List α)) (f : α → Int) :
    (xs.flatten.map f).sum = (xs.map fun ys => (ys.map f).sum).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simp only [List.flatten_cons, List.map_append, List.sum_append,
      List.map_cons, List.sum_cons, ih]

private theorem sum_replicate {α : Type} (n : Nat) (x : α) (f : α → Int) :
    ((List.replicate n x).map f).sum = (n : Int) * f x := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp only [List.replicate_succ, List.map_cons, List.sum_cons, ih, Int.natCast_succ,
      Int.add_mul, Int.one_mul]
    omega

private theorem sum_const {α : Type} (xs : List α) (w : Int) :
    (xs.map fun _ => w).sum = (xs.length : Int) * w := by
  induction xs with
  | nil => simp
  | cons a xs ih =>
    simp only [List.map_cons, List.sum_cons, ih, List.length_cons, Int.natCast_add,
      Int.add_mul]
    omega

private theorem sum_mul {α : Type} (xs : List α) (f : α → Int) (c : Int) :
    (xs.map fun i => c * f i).sum = c * (xs.map f).sum := by
  induction xs with
  | nil => simp
  | cons a xs ih => simp [ih, Int.mul_add]

@[simp] theorem compensation_weight (hot : Nat → Bool) (label : Nat) :
    ((compensation label).map (baseWeight hot)).sum = -bit (hot label) := by
  simp only [compensation, List.map_cons, List.sum_cons, List.map_nil, List.sum_nil,
    baseWeight]
  omega

@[simp] theorem rootBundle_weight (hot : Nat → Bool) (i : Nat) :
    ((rootBundle i).map (baseWeight hot)).sum = bit (hot 0) := by
  simp only [rootBundle, List.map_append, List.sum_append, compensation_weight,
    List.map_cons, List.sum_cons, List.map_nil, List.sum_nil, baseWeight]
  omega

@[simp] theorem incidenceBundle_weight (a : CoverInstance) (hot : Nat → Bool)
    (ie : Nat × Nat) :
    ((incidenceBundle a ie).map (baseWeight hot)).sum = 0 := by
  simp only [incidenceBundle, List.map_append, List.sum_append, compensation_weight,
    List.map_cons, List.sum_cons, List.map_nil, List.sum_nil, baseWeight]
  omega

@[simp] theorem setPadding_weight (a : CoverInstance) (hot : Nat → Bool) (i : Nat) :
    ((setPadding a i).map (baseWeight hot)).sum =
      -(a.setCost : Int) * bit (hot (setLabel i)) := by
  rw [setPadding, sum_flatten, sum_replicate, compensation_weight]
  simp only [Int.mul_neg, Int.neg_mul]

@[simp] theorem elementPadding_weight (a : CoverInstance) (hot : Nat → Bool) (e : Nat) :
    ((elementPadding a e).map (baseWeight hot)).sum =
      ((formalReward a) : Int) * bit (hot (elementLabel a e)) := by
  rw [elementPadding, sum_replicate]
  rfl

/-- Exact total of all compensated nonwallable contributions, for every group status. -/
theorem baseWeight_gadgets (a : CoverInstance) (hot : Nat → Bool) :
    ((gadgets a).map (baseWeight hot)).sum =
      ((a.setCount : Int) + 2) * bit (hot 0) -
      (a.setCost : Int) * ((List.range a.setCount).map fun i => bit (hot (setLabel i))).sum +
      ((formalReward a) : Int) *
        ((List.range a.elementCount).map fun e => bit (hot (elementLabel a e))).sum := by
  simp only [gadgets, List.map_cons, List.sum_cons, List.map_append, List.sum_append,
    sum_flatMap, rootBundle_weight, incidenceBundle_weight, setPadding_weight,
    elementPadding_weight, baseWeight]
  rw [sum_const, sum_const, sum_mul, sum_mul]
  simp only [List.length_range, Int.mul_zero, Int.add_zero, Int.neg_mul]
  rw [Int.add_mul]
  omega

@[simp] theorem compensation_filter (label : Nat) :
    (compensation label).filter Gadget.isGate = [] := rfl

@[simp] theorem rootBundle_filter (i : Nat) :
    (rootBundle i).filter Gadget.isGate = [.gate 0 (setLabel i)] := rfl

@[simp] theorem incidenceBundle_filter (a : CoverInstance) (ie : Nat × Nat) :
    (incidenceBundle a ie).filter Gadget.isGate =
      [.gate (setLabel ie.1) (elementLabel a ie.2)] := rfl

@[simp] theorem setPadding_filter (a : CoverInstance) (i : Nat) :
    (setPadding a i).filter Gadget.isGate = [] := by
  simp [setPadding, List.filter_flatten]

@[simp] theorem elementPadding_filter (a : CoverInstance) (e : Nat) :
    (elementPadding a e).filter Gadget.isGate = [] := by
  simp [elementPadding, Gadget.isGate]

/-- There is exactly one gate per source set and one per incidence. -/
theorem gadgets_gateCount (a : CoverInstance) :
    ((gadgets a).filter Gadget.isGate).length = a.gateCount := by
  simp [gadgets, Gadget.isGate, List.filter_flatMap, CoverInstance.gateCount,
    List.map_const', List.sum_replicate_nat]

@[simp] theorem compensation_length (label : Nat) : (compensation label).length = 3 := rfl
@[simp] theorem rootBundle_length (i : Nat) : (rootBundle i).length = 4 := rfl
@[simp] theorem incidenceBundle_length (a : CoverInstance) (ie : Nat × Nat) :
    (incidenceBundle a ie).length = 7 := rfl

@[simp] theorem setPadding_length (a : CoverInstance) (i : Nat) :
    (setPadding a i).length = 3 * a.setCost := by
  simp [setPadding, Nat.mul_comm]

@[simp] theorem elementPadding_length (a : CoverInstance) (e : Nat) :
    (elementPadding a e).length = (formalReward a) := by simp [elementPadding]

/-- The constructor creates a polynomial number of uniform constant-width gadgets. -/
theorem gadgets_length (a : CoverInstance) :
    (gadgets a).length = 1 + 4 * a.setCount + 7 * a.incidences.length +
      3 * a.setCost * a.setCount + (formalReward a) * a.elementCount := by
  simp only [gadgets, List.length_cons, List.length_append, List.length_flatMap,
    rootBundle_length, incidenceBundle_length, setPadding_length, elementPadding_length]
  simp only [List.map_const', List.length_range, List.sum_replicate_nat]
  have hc := Nat.mul_comm a.setCount (3 * a.setCost)
  have he := Nat.mul_comm a.elementCount (formalReward a)
  omega

/-- Boolean indicator sums are exactly the number of true entries. -/
theorem sum_bits (xs : List Nat) (p : Nat → Bool) :
    (xs.map (fun i => bit (p i))).sum = ((xs.filter p).length : Int) := by
  induction xs with
  | nil => simp
  | cons a xs ih =>
    simp only [bit] at ih
    cases hp : p a <;> simp [hp, bit, ih, Int.natCast_add, Int.add_comm]

private theorem sum_gate_filter (xs : List Nat) (p f : Nat → Bool) :
    (xs.map (fun i => if p i then bit (f i) else 0)).sum =
      ((xs.filter p).map (fun i => bit (f i))).sum := by
  induction xs with
  | nil => rfl
  | cons a xs ih => cases hp : p a <;> simp [hp, ih]

/-- The score from wallable gate centers lies between zero and the gate count. -/
theorem gate_bonus_bounds (gs : List Gadget) (f : Nat → Bool) :
    0 ≤ ((List.range gs.length).map (fun g =>
      if (gs[g]?.getD .root).isGate then bit (f g) else 0)).sum ∧
    ((List.range gs.length).map (fun g =>
      if (gs[g]?.getD .root).isGate then bit (f g) else 0)).sum ≤
        ((gs.filter Gadget.isGate).length : Int) := by
  rw [sum_gate_filter, sum_bits]
  have hf := List.length_filter_le f (gateIndices gs)
  have hc := gateIndices_length gs
  change 0 ≤ (((gateIndices gs).filter f).length : Int) ∧
    (((gateIndices gs).filter f).length : Int) ≤ ((gs.filter Gadget.isGate).length : Int)
  constructor <;> omega

private theorem flatMap_one {α β : Type} (xs : List α) (f : α → β) :
    xs.flatMap (fun x => [f x]) = xs.map f := by
  induction xs with
  | nil => rfl
  | cons a xs ih => simp [ih]

/-- The exact list of gates introduced by the construction. -/
theorem gadgets_filter (a : CoverInstance) :
    (gadgets a).filter Gadget.isGate =
      ((List.range a.setCount).map fun i => Gadget.gate 0 (setLabel i)) ++
      (a.incidences.map fun ie => Gadget.gate (setLabel ie.1) (elementLabel a ie.2)) := by
  simp [gadgets, Gadget.isGate, List.filter_flatMap, flatMap_one]

/-- Incidence enumeration contains exactly the in-range membership pairs. -/
theorem mem_incidences_iff (a : CoverInstance) (i e : Nat) :
    (i, e) ∈ a.incidences ↔ i < a.setCount ∧ e ∈ a.members i := by
  simp [CoverInstance.incidences]

/-- Every generated gate is a source root-to-set edge or a source incidence edge. -/
theorem gate_classification (a : CoverInstance) (g : Nat) (hg : g < (gadgets a).length)
    (left right : Nat) (hgate : (gadgets a)[g] = .gate left right) :
    CoverGraph.CoverGate a left right := by
  have hm : Gadget.gate left right ∈ (gadgets a).filter Gadget.isGate := by
    apply List.mem_filter.mpr
    refine ⟨?_, rfl⟩
    rw [← hgate]
    exact List.getElem_mem hg
  rw [gadgets_filter] at hm
  rcases List.mem_append.mp hm with hm | hm
  · obtain ⟨i, hi, heq⟩ := List.mem_map.mp hm
    obtain ⟨hl, hr⟩ := Gadget.gate.inj heq
    exact Or.inl ⟨i, List.mem_range.mp hi, hl.symm, hr.symm⟩
  · obtain ⟨⟨i, e⟩, hie, heq⟩ := List.mem_map.mp hm
    obtain ⟨hi, he⟩ := (mem_incidences_iff a i e).mp hie
    obtain ⟨hl, hr⟩ := Gadget.gate.inj heq
    exact Or.inr ⟨i, hi, e, he, hl.symm, hr.symm⟩

/-- Every source set has its root gate in the generated list. -/
theorem rootGate_exists (a : CoverInstance) (i : Nat) (hi : i < a.setCount) :
    ∃ g, ∃ hg : g < (gadgets a).length, (gadgets a)[g] = .gate 0 (setLabel i) := by
  apply List.getElem_of_mem
  have hm : Gadget.gate 0 (setLabel i) ∈ (gadgets a).filter Gadget.isGate := by
    rw [gadgets_filter]
    apply List.mem_append.mpr
    exact Or.inl (List.mem_map.mpr ⟨i, List.mem_range.mpr hi, rfl⟩)
  exact (List.mem_filter.mp hm).1

/-- Every source incidence has its gate in the generated list. -/
theorem incidenceGate_exists (a : CoverInstance) (i e : Nat)
    (hi : i < a.setCount) (he : e ∈ a.members i) :
    ∃ g, ∃ hg : g < (gadgets a).length,
      (gadgets a)[g] = .gate (setLabel i) (elementLabel a e) := by
  apply List.getElem_of_mem
  have hm : Gadget.gate (setLabel i) (elementLabel a e) ∈
      (gadgets a).filter Gadget.isGate := by
    rw [gadgets_filter]
    apply List.mem_append.mpr
    refine Or.inr (List.mem_map.mpr ⟨(i, e), ?_, rfl⟩)
    exact (mem_incidences_iff a i e).mpr ⟨hi, he⟩
  exact (List.mem_filter.mp hm).1

end EncloseHorse.Hardness.BoardGadgets
