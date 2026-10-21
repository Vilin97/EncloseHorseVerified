import EncloseHorseVerified.Hardness.Weights

/-!
# Walls realizing a source cover

Keep only gates whose two endpoint groups are selected. All other gate centers
are blocked. The target budget permits every gate to be blocked if necessary.
-/
namespace EncloseHorse.Hardness.BoardGadgets

open Geometry BoardReduction CoverGraph

/-- The uniform layout with a budget at least its total number of gate centers. -/
def reducedBoard (a : CoverInstance) : Board :=
  board (gadgets a) (10 * (gadgets a).length + 5)

@[simp] theorem reducedBoard_size (a : CoverInstance) :
    (reducedBoard a).size = 10 * (gadgets a).length + 5 := board_size _ _

/-- The construction's water frame makes every placement an enclosure. -/
theorem reducedBoard_enclosed (a : CoverInstance) (walls : Placement) :
    enclosed (reducedBoard a) walls = true := by
  unfold reducedBoard gadgets
  exact enclosed_root _ _ _

/-- A gate remains open exactly when both its endpoint groups are selected. -/
noncomputable def closedGate (a : CoverInstance) (chosen : List Nat) (p : Nat) : Bool := by
  classical
  exact match (gadgets a)[(p - 6) / 10]?.getD .root with
    | .gate left right => decide (¬(SelectedLabel a chosen left ∧ SelectedLabel a chosen right))
    | _ => false

noncomputable def chosenWalls (a : CoverInstance) (chosen : List Nat) : Placement :=
  (reducedBoard a).candidates.filter (closedGate a chosen)

/-- Selecting any collection of source groups gives a legal target wall placement. -/
theorem chosenWalls_legal (a : CoverInstance) (chosen : List Nat) :
    legal (reducedBoard a) (chosenWalls a chosen) := by
  refine ⟨List.filter_sublist, ?_⟩
  have hw := List.length_filter_le (closedGate a chosen) (reducedBoard a).candidates
  have hc := List.length_filter_le (fun i => (reducedBoard a).tileAt i == .grass)
    (reducedBoard a).cells
  simp only [Board.cells, List.length_range] at hc
  have hs : (reducedBoard a).size = (reducedBoard a).budget := by
    change (board (gadgets a) _).size = 10 * (gadgets a).length + 5
    exact board_size _ _
  exact Nat.le_trans hw (hs ▸ hc)

/-- The wall placement extracted from a source witness is always admissible. -/
theorem chosenWalls_admissible (a : CoverInstance) (chosen : List Nat) :
    admissible (reducedBoard a) (chosenWalls a chosen) :=
  ⟨chosenWalls_legal a chosen, reducedBoard_enclosed a _⟩

/-- The exact status of every generated gate under the witness wall placement. -/
theorem gate_free_iff (a : CoverInstance) (chosen : List Nat)
    {g : Nat} (hg : g < (gadgets a).length) {left right : Nat}
    (hgate : (gadgets a)[g] = .gate left right) :
    pos g 1 ∉ chosenWalls a chosen ↔
      SelectedLabel a chosen left ∧ SelectedLabel a chosen right := by
  classical
  have hc : pos g 1 ∈ (reducedBoard a).candidates := by
    apply (mem_candidates_iff (gadgets a) _ _).mpr
    exact ⟨g, hg, left, right, hgate, rfl⟩
  have hb : closedGate a chosen (pos g 1) =
      decide (¬(SelectedLabel a chosen left ∧ SelectedLabel a chosen right)) := by
    simp only [closedGate, pos_div_ten (g := g) (s := 1) (by decide), List.getElem?_eq_getElem hg,
      Option.getD_some, hgate]
  simp only [chosenWalls, List.mem_filter, hc, true_and, hb, decide_eq_true_eq,
    Classical.not_not]

/-- All uncut gates have selected endpoints on both sides. -/
theorem chosenWalls_cut (a : CoverInstance) (chosen : List Nat)
    (g : Nat) (hg : g < (gadgets a).length) (left right : Nat)
    (hgate : (gadgets a)[g] = .gate left right) (hfree : pos g 1 ∉ chosenWalls a chosen) :
    SelectedLabel a chosen left ↔ SelectedLabel a chosen right := by
  obtain ⟨hl, hr⟩ := (gate_free_iff a chosen hg hgate).mp hfree
  exact ⟨fun _ => hr, fun _ => hl⟩

/-- Reachability cannot leave the chosen group set. -/
theorem chosen_labels_selected (a : CoverInstance) (chosen : List Nat)
    {label : Nat} (hr : LabelReach (gadgets a) (chosenWalls a chosen) label) :
    SelectedLabel a chosen label :=
  reachable_selected a chosen (gadgets a) (chosenWalls a chosen) (chosenWalls_cut a chosen) hr

/-- The number of reached source sets is bounded by the source witness length. -/
theorem chosen_reachedSets_length_le (a : CoverInstance) (chosen : List Nat) :
    (reachedSets a (gadgets a) (chosenWalls a chosen)).length ≤ chosen.length :=
  reachedSets_length_le_chosen a chosen (gadgets a) (chosenWalls a chosen)
    (chosenWalls_cut a chosen)

/-- Each source set in a cover has an uncut root gate. -/
theorem chosen_rootGate_free (a : CoverInstance) (chosen : List Nat) (hc : Covers a chosen)
    (i : Nat) (hi : i ∈ chosen) :
    ∃ g, ∃ hg : g < (gadgets a).length,
      (gadgets a)[g] = .gate 0 (setLabel i) ∧ pos g 1 ∉ chosenWalls a chosen := by
  obtain ⟨g, hg, hgate⟩ := rootGate_exists a i (hc.in_range i hi)
  refine ⟨g, hg, hgate, (gate_free_iff a chosen hg hgate).mpr ?_⟩
  exact ⟨Or.inl rfl, Or.inr (Or.inl ⟨i, hi, rfl⟩)⟩

/-- Each source incidence of a chosen set has its uncut gate. -/
theorem chosen_incidenceGate_free (a : CoverInstance) (chosen : List Nat) (hc : Covers a chosen)
    (i : Nat) (hi : i ∈ chosen) (e : Nat) (he : e ∈ a.members i) :
    ∃ g, ∃ hg : g < (gadgets a).length,
      (gadgets a)[g] = .gate (setLabel i) (elementLabel a e) ∧ pos g 1 ∉ chosenWalls a chosen := by
  obtain ⟨g, hg, hgate⟩ := incidenceGate_exists a i e (hc.in_range i hi) he
  refine ⟨g, hg, hgate, (gate_free_iff a chosen hg hgate).mpr ?_⟩
  exact ⟨Or.inr (Or.inl ⟨i, hi, rfl⟩),
    Or.inr (Or.inr ⟨e, (mem_members_iff a i e).mp he |>.1, rfl⟩)⟩

/-- Every chosen source set is reached through its root gate. -/
theorem chosen_sets_reached (a : CoverInstance) (chosen : List Nat) (hc : Covers a chosen) :
    ∀ i ∈ chosen, LabelReach (gadgets a) (chosenWalls a chosen) (setLabel i) :=
  selected_sets_reached a chosen (gadgets a) (chosenWalls a chosen) (chosen_rootGate_free a chosen hc)

/-- Every source element is reached using an incidence of a chosen covering set. -/
theorem chosen_elements_reached (a : CoverInstance) (chosen : List Nat) (hc : Covers a chosen) :
    ∀ e < a.elementCount,
      LabelReach (gadgets a) (chosenWalls a chosen) (elementLabel a e) :=
  cover_elements_reached a chosen (gadgets a) (chosenWalls a chosen) hc
    (chosen_rootGate_free a chosen hc) (chosen_incidenceGate_free a chosen hc)

/-! ## Permutation-independent witness construction -/

/-- The same water-framed layout for any root-first enumeration of the gadgets. -/
def reducedBoardFor (tail : List Gadget) : Board :=
  board (.root :: tail) (10 * (.root :: tail).length + 5)

noncomputable def closedGateFor (a : CoverInstance) (tail : List Gadget)
    (chosen : List Nat) (p : Nat) : Bool := by
  classical
  exact match (.root :: tail)[(p - 6) / 10]?.getD .root with
    | .gate left right => decide (¬(SelectedLabel a chosen left ∧ SelectedLabel a chosen right))
    | _ => false

noncomputable def chosenWallsFor (a : CoverInstance) (tail : List Gadget)
    (chosen : List Nat) : Placement :=
  (reducedBoardFor tail).candidates.filter (closedGateFor a tail chosen)

@[simp] theorem reducedBoardFor_size (tail : List Gadget) :
    (reducedBoardFor tail).size = 10 * (.root :: tail).length + 5 := board_size _ _

theorem reducedBoardFor_enclosed (tail : List Gadget) (walls : Placement) :
    enclosed (reducedBoardFor tail) walls = true := enclosed_root _ _ _

theorem chosenWallsFor_legal (a : CoverInstance) (tail : List Gadget) (chosen : List Nat) :
    legal (reducedBoardFor tail) (chosenWallsFor a tail chosen) := by
  refine ⟨List.filter_sublist, ?_⟩
  have hw := List.length_filter_le (closedGateFor a tail chosen) (reducedBoardFor tail).candidates
  have hc := List.length_filter_le (fun i => (reducedBoardFor tail).tileAt i == .grass)
    (reducedBoardFor tail).cells
  simp only [Board.cells, List.length_range] at hc
  have hs : (reducedBoardFor tail).size = (reducedBoardFor tail).budget := by
    change (board (.root :: tail) _).size = 10 * (.root :: tail).length + 5
    exact board_size _ _
  exact Nat.le_trans hw (hs ▸ hc)

theorem chosenWallsFor_admissible (a : CoverInstance) (tail : List Gadget) (chosen : List Nat) :
    admissible (reducedBoardFor tail) (chosenWallsFor a tail chosen) :=
  ⟨chosenWallsFor_legal a tail chosen, reducedBoardFor_enclosed tail _⟩

/-- Gate status depends on group labels, independent of the gadget enumeration. -/
theorem gate_free_iffFor (a : CoverInstance) (tail : List Gadget) (chosen : List Nat)
    {g : Nat} (hg : g < (.root :: tail).length) {left right : Nat}
    (hgate : (.root :: tail)[g] = .gate left right) :
    pos g 1 ∉ chosenWallsFor a tail chosen ↔
      SelectedLabel a chosen left ∧ SelectedLabel a chosen right := by
  classical
  have hc : pos g 1 ∈ (reducedBoardFor tail).candidates := by
    apply (mem_candidates_iff (.root :: tail) _ _).mpr
    exact ⟨g, hg, left, right, hgate, rfl⟩
  have hb : closedGateFor a tail chosen (pos g 1) =
      decide (¬(SelectedLabel a chosen left ∧ SelectedLabel a chosen right)) := by
    simp only [closedGateFor, pos_div_ten (g := g) (s := 1) (by decide),
      List.getElem?_eq_getElem hg, Option.getD_some, hgate]
  simp only [chosenWallsFor, List.mem_filter, hc, true_and, hb, decide_eq_true_eq,
    Classical.not_not]

theorem chosenWallsFor_cut (a : CoverInstance) (tail : List Gadget) (chosen : List Nat)
    (g : Nat) (hg : g < (.root :: tail).length) (left right : Nat)
    (hgate : (.root :: tail)[g] = .gate left right)
    (hfree : pos g 1 ∉ chosenWallsFor a tail chosen) :
    SelectedLabel a chosen left ↔ SelectedLabel a chosen right := by
  obtain ⟨hl, hr⟩ := (gate_free_iffFor a tail chosen hg hgate).mp hfree
  exact ⟨fun _ => hr, fun _ => hl⟩

theorem chosenFor_labels_selected (a : CoverInstance) (tail : List Gadget) (chosen : List Nat)
    {label : Nat} (hr : LabelReach (.root :: tail) (chosenWallsFor a tail chosen) label) :
    SelectedLabel a chosen label :=
  reachable_selected a chosen (.root :: tail) (chosenWallsFor a tail chosen)
    (chosenWallsFor_cut a tail chosen) hr

theorem chosenFor_reachedSets_length_le (a : CoverInstance) (tail : List Gadget)
    (chosen : List Nat) :
    (reachedSets a (.root :: tail) (chosenWallsFor a tail chosen)).length ≤ chosen.length :=
  reachedSets_length_le_chosen a chosen (.root :: tail) (chosenWallsFor a tail chosen)
    (chosenWallsFor_cut a tail chosen)

/-- Classification transports through any permutation of the generated gadgets. -/
theorem gate_classificationFor (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (g : Nat) (hg : g < (.root :: tail).length)
    (left right : Nat) (hgate : (.root :: tail)[g] = .gate left right) :
    CoverGate a left right := by
  have hm : Gadget.gate left right ∈ .root :: tail := by
    rw [← hgate]
    exact List.getElem_mem hg
  obtain ⟨g', hg', heq⟩ := List.getElem_of_mem (hperm.mem_iff.mp hm)
  exact gate_classification a g' hg' left right heq

/-- A permuted layout still contains every source root gate. -/
theorem rootGate_existsFor (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (i : Nat) (hi : i < a.setCount) :
    ∃ g, ∃ hg : g < (.root :: tail).length, (.root :: tail)[g] = .gate 0 (setLabel i) := by
  obtain ⟨g, hg, heq⟩ := rootGate_exists a i hi
  have hm : Gadget.gate 0 (setLabel i) ∈ gadgets a := by
    rw [← heq]
    exact List.getElem_mem hg
  exact List.getElem_of_mem (hperm.mem_iff.mpr hm)

/-- A permuted layout still contains every source incidence gate. -/
theorem incidenceGate_existsFor (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (i e : Nat)
    (hi : i < a.setCount) (he : e ∈ a.members i) :
    ∃ g, ∃ hg : g < (.root :: tail).length,
      (.root :: tail)[g] = .gate (setLabel i) (elementLabel a e) := by
  obtain ⟨g, hg, heq⟩ := incidenceGate_exists a i e hi he
  have hm : Gadget.gate (setLabel i) (elementLabel a e) ∈ gadgets a := by
    rw [← heq]
    exact List.getElem_mem hg
  exact List.getElem_of_mem (hperm.mem_iff.mpr hm)

theorem chosenFor_rootGate_free (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (chosen : List Nat) (hc : Covers a chosen)
    (i : Nat) (hi : i ∈ chosen) :
    ∃ g, ∃ hg : g < (.root :: tail).length,
      (.root :: tail)[g] = .gate 0 (setLabel i) ∧ pos g 1 ∉ chosenWallsFor a tail chosen := by
  obtain ⟨g, hg, hgate⟩ := rootGate_existsFor a tail hperm i (hc.in_range i hi)
  refine ⟨g, hg, hgate, (gate_free_iffFor a tail chosen hg hgate).mpr ?_⟩
  exact ⟨Or.inl rfl, Or.inr (Or.inl ⟨i, hi, rfl⟩)⟩

theorem chosenFor_incidenceGate_free (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (chosen : List Nat) (hc : Covers a chosen)
    (i : Nat) (hi : i ∈ chosen) (e : Nat) (he : e ∈ a.members i) :
    ∃ g, ∃ hg : g < (.root :: tail).length,
      (.root :: tail)[g] = .gate (setLabel i) (elementLabel a e) ∧
        pos g 1 ∉ chosenWallsFor a tail chosen := by
  obtain ⟨g, hg, hgate⟩ := incidenceGate_existsFor a tail hperm i e (hc.in_range i hi) he
  refine ⟨g, hg, hgate, (gate_free_iffFor a tail chosen hg hgate).mpr ?_⟩
  exact ⟨Or.inr (Or.inl ⟨i, hi, rfl⟩),
    Or.inr (Or.inr ⟨e, (mem_members_iff a i e).mp he |>.1, rfl⟩)⟩

theorem chosenFor_sets_reached (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (chosen : List Nat) (hc : Covers a chosen) :
    ∀ i ∈ chosen, LabelReach (.root :: tail) (chosenWallsFor a tail chosen) (setLabel i) :=
  selected_sets_reached a chosen (.root :: tail) (chosenWallsFor a tail chosen)
    (chosenFor_rootGate_free a tail hperm chosen hc)

/-- A source cover remains a reachability witness under every root-first gadget permutation. -/
theorem chosenFor_elements_reached (a : CoverInstance) (tail : List Gadget)
    (hperm : (.root :: tail).Perm (gadgets a)) (chosen : List Nat) (hc : Covers a chosen) :
    ∀ e < a.elementCount,
      LabelReach (.root :: tail) (chosenWallsFor a tail chosen) (elementLabel a e) :=
  cover_elements_reached a chosen (.root :: tail) (chosenWallsFor a tail chosen) hc
    (chosenFor_rootGate_free a tail hperm chosen hc)
    (chosenFor_incidenceGate_free a tail hperm chosen hc)

end EncloseHorse.Hardness.BoardGadgets
