import EncloseHorseVerified.Hardness.OrderedRelations
import EncloseHorseVerified.Hardness.BoardEncoding
import EncloseHorseVerified.Hardness.BoardReduction

/-! Turning the ordered, expanded cell semantics into a literal physical board. -/
namespace EncloseHorse.Hardness.OrderedCells

open FirstOrder DescriptiveComplexity BoardEncoding Geometry

variable {G A : Type} [Fintype G] [LinearOrder G]
  [FirstOrder.Language.encloseBoard.Structure A]

/-- Semantic obligations of a first-order expanded-cell interpretation.
Every field is stated on source tokens and their local terrain, before the
row-major game board is materialized. -/
structure SemanticModel (decode : G → Gadget) (budget : Nat) where
  cells : Cell G ≃ {x : A // BoardEncoding.Cell x}
  water_iff : ∀ x, Water (cells x).val ↔ cellTile decode x = .water
  grass_iff : ∀ x, Grass (cells x).val ↔ cellTile decode x = .grass
  horse_iff : ∀ x, Horse (cells x).val ↔ cellTile decode x = .horse
  cherry_iff : ∀ x, Cherry (cells x).val ↔ cellTile decode x = .cherry
  apple_iff : ∀ x, Apple (cells x).val ↔ cellTile decode x = .apple
  bee_iff : ∀ x, Bee (cells x).val ↔ cellTile decode x = .bee
  portal_iff : ∀ x, Portal (cells x).val ↔ ∃ label, cellTile decode x = .portal label
  edge_iff : ∀ x, BoardEncoding.OnEdge (cells x).val ↔ OnEdge x
  adjacent_iff : ∀ x y, BoardEncoding.Adjacent (cells x).val (cells y).val ↔ Adjacent x y
  portalLinked_iff : ∀ x y, PortalLinked (cells x).val (cells y).val ↔
    ∃ label, cellTile decode x = .portal label ∧ cellTile decode y = .portal label
  indexLe_iff : ∀ x y, BoardEncoding.IndexLe (cells x).val (cells y).val ↔ IndexLe x y
  budget_eq : budget = {x : A | Budget x}.ncard

/-- The first-order adjacency predicate is the actual physical grid adjacency. -/
theorem board_adjacent_iff (decode : G → Gadget) (budget : Nat) (x y : Cell G) :
    (board (sortedGadgets decode) budget).adjacent (index x) (index y) = true ↔ Adjacent x y := by
  rw [adjacent_iff]
  simp only [Board.adjacent, board_width, index_div_five, index_mod_five,
    Bool.or_eq_true, Bool.and_eq_true, beq_iff_eq]

/-- The first and last island rows delimit precisely the physical water frame. -/
theorem board_onEdge_iff (decode : G → Gadget) (budget : Nat) (x : Cell G) :
    (board (sortedGadgets decode) budget).onEdge (index x) = true ↔ OnEdge x := by
  rw [onEdge_iff]
  simp only [Board.onEdge, board_width, board_height, sortedGadgets_length,
    index_div_five, index_mod_five, Bool.or_eq_true, beq_iff_eq, or_assoc]

theorem board_portalLinked_iff (decode : G → Gadget) (budget : Nat) (x y : Cell G) :
    (board (sortedGadgets decode) budget).portalLinked (index x) (index y) = true ↔
      ∃ label, cellTile decode x = .portal label ∧ cellTile decode y = .portal label := by
  simp only [Board.portalLinked, tileAt_index]
  cases hx : cellTile decode x <;> cases hy : cellTile decode y <;> simp [beq_iff_eq]
  exact eq_comm

/-- Every fully expanded ordered-token model represents the actual materialized
board, including water cells, all moves, portal links, and row-major order. -/
noncomputable def SemanticModel.represents {decode : G → Gadget} {budget : Nat}
    (m : SemanticModel (A := A) decode budget)
    (hhorse : ∃ x : Cell G, cellTile decode x = .horse ∧
      ∀ y : Cell G, cellTile decode y = .horse → y = x) :
    Represents (board (sortedGadgets decode) budget) A where
  cellEquiv := (cellEquiv decode budget).trans m.cells
  width_eq := rfl
  height_pos := by simp only [board_height]; omega
  tiles_length := by simp only [board, List.length_ofFn, Board.size]
  unique_horse := by
    obtain ⟨x,hx,hu⟩ := hhorse
    let e := cellEquiv decode budget
    refine ⟨e.symm x, ?_, ?_⟩
    · exact (tileAt_cellEquiv_symm decode budget x).trans hx
    · intro q hq
      apply e.injective
      have ht : cellTile decode (e q) = .horse := by
        rw [← tileAt_index decode budget, index_cellEquiv]
        exact hq
      simpa only [Equiv.apply_symm_apply] using hu (e q) ht
  water_iff p := by
    change Water (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.water_iff, ← tileAt_index decode budget, index_cellEquiv]
  grass_iff p := by
    change Grass (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.grass_iff, ← tileAt_index decode budget, index_cellEquiv]
  horse_iff p := by
    change Horse (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.horse_iff, ← tileAt_index decode budget, index_cellEquiv]
  cherry_iff p := by
    change Cherry (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.cherry_iff, ← tileAt_index decode budget, index_cellEquiv]
  apple_iff p := by
    change Apple (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.apple_iff, ← tileAt_index decode budget, index_cellEquiv]
  bee_iff p := by
    change Bee (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.bee_iff, ← tileAt_index decode budget, index_cellEquiv]
  portal_iff p := by
    change Portal (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.portal_iff]
    simp only [← tileAt_index decode budget, index_cellEquiv]
  edge_iff p := by
    change BoardEncoding.OnEdge (m.cells (cellEquiv decode budget p)).val ↔ _
    rw [m.edge_iff, ← board_onEdge_iff decode budget, index_cellEquiv]
  adjacent_iff p q := by
    change BoardEncoding.Adjacent (m.cells (cellEquiv decode budget p)).val
      (m.cells (cellEquiv decode budget q)).val ↔ _
    rw [m.adjacent_iff, ← board_adjacent_iff decode budget, index_cellEquiv, index_cellEquiv]
  portalLinked_iff p q := by
    change PortalLinked (m.cells (cellEquiv decode budget p)).val
      (m.cells (cellEquiv decode budget q)).val ↔ _
    rw [m.portalLinked_iff, ← board_portalLinked_iff decode budget, index_cellEquiv, index_cellEquiv]
  indexLe_iff p q := by
    change BoardEncoding.IndexLe (m.cells (cellEquiv decode budget p)).val
      (m.cells (cellEquiv decode budget q)).val ↔ _
    rw [m.indexLe_iff, OrderedCells.indexLe_iff, index_cellEquiv, index_cellEquiv]
  budget_eq := m.budget_eq

end EncloseHorse.Hardness.OrderedCells
