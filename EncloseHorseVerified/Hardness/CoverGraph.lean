import EncloseHorseVerified.Hardness.BoardReduction
import EncloseHorseVerified.Hardness.SetCover

/-! Source Set Cover combinatorics for the actual board's gate-graph quotient. -/
namespace EncloseHorse.Hardness.CoverGraph

open Geometry BoardReduction

/-- Precisely the two kinds of edges in the source incidence graph. -/
def CoverGate (a : CoverInstance) (left right : Nat) : Prop :=
  (∃ i < a.setCount, left = 0 ∧ right = setLabel i) ∨
  ∃ i < a.setCount, ∃ e ∈ a.members i,
    left = setLabel i ∧ right = elementLabel a e

/-- A source-set label cannot equal an element label in the valid ranges. -/
theorem set_ne_element (a : CoverInstance) {i e : Nat} (hi : i < a.setCount) :
    setLabel i ≠ elementLabel a e := by
  simp only [setLabel, elementLabel]
  omega

theorem element_ne_root (a : CoverInstance) (e : Nat) : elementLabel a e ≠ 0 := by
  simp only [elementLabel]
  omega

/-- Every path entering an element group comes from a reachable set containing it.
This does not assume a bounded path length or a simple path. -/
theorem reachable_element_has_set (a : CoverInstance) (gs : List Gadget)
    (walls : Placement)
    (hclass : ∀ g (hg : g < gs.length) left right,
      gs[g] = .gate left right → CoverGate a left right)
    {label : Nat} (hr : LabelReach gs walls label) :
    ∀ e, label = elementLabel a e →
      ∃ i < a.setCount, LabelReach gs walls (setLabel i) ∧ e ∈ a.members i := by
  cases hr with
  | root =>
    intro e he
    exact False.elim (element_ne_root a e he.symm)
  | @forward g hg left right hgate hfree hleft =>
    intro e he
    rcases hclass g hg left label hgate with hroot | hinc
    · obtain ⟨i, hi, hl, hh⟩ := hroot
      exact False.elim (set_ne_element a hi (hh.symm.trans he))
    · obtain ⟨i, hi, f, hf, hl, hh⟩ := hinc
      have hfe : f = e := by
        simp only [elementLabel] at hh he
        omega
      subst f
      exact ⟨i, hi, by simpa only [hl] using hleft, hf⟩
  | @backward g hg left right hgate hfree hright =>
    intro e he
    rcases hclass g hg label right hgate with hroot | hinc
    · obtain ⟨i, hi, hl, hh⟩ := hroot
      exact False.elim (element_ne_root a e (hl.symm.trans he).symm)
    · obtain ⟨i, hi, f, hf, hl, hh⟩ := hinc
      exact False.elim (set_ne_element a hi (hl.symm.trans he))

/-- The source set indices reached in the quotient graph, each counted once. -/
noncomputable def reachedSets (a : CoverInstance) (gs : List Gadget)
    (walls : Placement) : List Nat := by
  classical
  exact (List.range a.setCount).filter (fun i => decide (LabelReach gs walls (setLabel i)))

theorem mem_reachedSets_iff (a : CoverInstance) (gs : List Gadget) (walls : Placement)
    (i : Nat) : i ∈ reachedSets a gs walls ↔
      i < a.setCount ∧ LabelReach gs walls (setLabel i) := by
  classical
  simp [reachedSets]

theorem reachedSets_nodup (a : CoverInstance) (gs : List Gadget) (walls : Placement) :
    (reachedSets a gs walls).Nodup := by
  classical
  exact List.Pairwise.filter _ List.nodup_range

/-- Reading the reached sets gives a genuine source cover when all elements were
reached and the score-separation argument bounds the number of reached sets. -/
theorem cover_of_all_elements_reached (a : CoverInstance) (gs : List Gadget)
    (walls : Placement)
    (hclass : ∀ g (hg : g < gs.length) left right,
      gs[g] = .gate left right → CoverGate a left right)
    (helements : ∀ e < a.elementCount, LabelReach gs walls (elementLabel a e))
    (hbudget : (reachedSets a gs walls).length ≤ a.coverBudget) : CoverYES a := by
  refine ⟨reachedSets a gs walls, reachedSets_nodup a gs walls, ?_, hbudget, ?_⟩
  · intro i hi
    exact ((mem_reachedSets_iff a gs walls i).mp hi).1
  · intro e he
    obtain ⟨i, hi, hr, hm⟩ :=
      reachable_element_has_set a gs walls hclass (helements e he) e rfl
    exact ⟨i, (mem_reachedSets_iff a gs walls i).mpr ⟨hi, hr⟩, hm⟩

/-- The groups selected by a source cover: root, selected sets, and every element. -/
def SelectedLabel (a : CoverInstance) (chosen : List Nat) (label : Nat) : Prop :=
  label = 0 ∨ (∃ i ∈ chosen, label = setLabel i) ∨
    ∃ e < a.elementCount, label = elementLabel a e

/-- Cutting the edge boundary of the selected group set prevents every path from
leaving it, independently of cycles or the traversal order. -/
theorem reachable_selected (a : CoverInstance) (chosen : List Nat)
    (gs : List Gadget) (walls : Placement)
    (hcut : ∀ g (hg : g < gs.length) left right,
      gs[g] = .gate left right → pos g 1 ∉ walls →
      (SelectedLabel a chosen left ↔ SelectedLabel a chosen right))
    {label : Nat} (hr : LabelReach gs walls label) : SelectedLabel a chosen label := by
  induction hr with
  | root => exact Or.inl rfl
  | @forward g hg left right hgate hfree hleft ih =>
    exact (hcut g hg left right hgate hfree).mp ih
  | @backward g hg left right hgate hfree hright ih =>
    exact (hcut g hg left right hgate hfree).mpr ih

theorem selected_set_iff (a : CoverInstance) (chosen : List Nat) {i : Nat}
    (hi : i < a.setCount) : SelectedLabel a chosen (setLabel i) ↔ i ∈ chosen := by
  constructor
  · rintro (hroot | hset | helem)
    · simp [setLabel] at hroot
    · obtain ⟨j, hj, heq⟩ := hset
      have hij : i = j := by simpa only [setLabel, Nat.add_right_cancel_iff] using heq
      simpa only [hij] using hj
    · obtain ⟨e, he, heq⟩ := helem
      exact False.elim (set_ne_element a hi heq)
  · intro hi
    exact Or.inr (Or.inl ⟨i, hi, rfl⟩)

theorem reachedSets_subset_chosen (a : CoverInstance) (chosen : List Nat)
    (gs : List Gadget) (walls : Placement)
    (hcut : ∀ g (hg : g < gs.length) left right,
      gs[g] = .gate left right → pos g 1 ∉ walls →
      (SelectedLabel a chosen left ↔ SelectedLabel a chosen right)) :
    reachedSets a gs walls ⊆ chosen := by
  intro i hi
  obtain ⟨hir, hr⟩ := (mem_reachedSets_iff a gs walls i).mp hi
  exact (selected_set_iff a chosen hir).mp (reachable_selected a chosen gs walls hcut hr)

theorem reachedSets_length_le_chosen (a : CoverInstance) (chosen : List Nat)
    (gs : List Gadget) (walls : Placement)
    (hcut : ∀ g (hg : g < gs.length) left right,
      gs[g] = .gate left right → pos g 1 ∉ walls →
      (SelectedLabel a chosen left ↔ SelectedLabel a chosen right)) :
    (reachedSets a gs walls).length ≤ chosen.length :=
  EncloseHorse.nodup_length_le_of_subset _ _ (reachedSets_nodup a gs walls)
    (reachedSets_subset_chosen a chosen gs walls hcut)

/-- An uncut root gate reaches its selected set. -/
theorem selected_sets_reached (a : CoverInstance) (chosen : List Nat)
    (gs : List Gadget) (walls : Placement)
    (hroot : ∀ i ∈ chosen, ∃ g, ∃ hg : g < gs.length,
      gs[g] = .gate 0 (setLabel i) ∧ pos g 1 ∉ walls) :
    ∀ i ∈ chosen, LabelReach gs walls (setLabel i) := by
  intro i hi
  obtain ⟨g, hg, hgate, hfree⟩ := hroot i hi
  exact .forward hgate hfree .root

/-- A source cover reaches all elements using only its selected root and
incidence gates. -/
theorem cover_elements_reached (a : CoverInstance) (chosen : List Nat)
    (gs : List Gadget) (walls : Placement) (hc : Covers a chosen)
    (hroot : ∀ i ∈ chosen, ∃ g, ∃ hg : g < gs.length,
      gs[g] = .gate 0 (setLabel i) ∧ pos g 1 ∉ walls)
    (hinc : ∀ i ∈ chosen, ∀ e ∈ a.members i, ∃ g, ∃ hg : g < gs.length,
      gs[g] = .gate (setLabel i) (elementLabel a e) ∧ pos g 1 ∉ walls) :
    ∀ e < a.elementCount, LabelReach gs walls (elementLabel a e) := by
  intro e he
  obtain ⟨i, hi, hm⟩ := hc.cover e he
  obtain ⟨g, hg, hgate, hfree⟩ := hinc i hi e hm
  exact .forward hgate hfree (selected_sets_reached a chosen gs walls hroot i hi)

end EncloseHorse.Hardness.CoverGraph
