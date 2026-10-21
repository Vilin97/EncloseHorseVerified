import EncloseHorseVerified.Hardness.Geometry
import Mathlib.Data.Finset.Sort

/-!
# Expanded cells for a finite ordered gadget collection

This file connects an abstract ordered collection of islands to every physical
cell of the constant-width board, including all of its water cells.
-/
namespace EncloseHorse.Hardness.OrderedCells

open Geometry

abbrev Cell (G : Type) := Fin 5 ⊕ (G × Fin 2 × Fin 5)

variable {G : Type} [Fintype G] [LinearOrder G]

noncomputable def orderIso (G : Type) [Fintype G] [LinearOrder G] :
    Fin (Fintype.card G) ≃o G := Fintype.orderIsoFinOfCardEq G rfl

noncomputable def rank (g : G) : Fin (Fintype.card G) := (orderIso G).symm g

noncomputable def sortedGadgets (decode : G → Gadget) : List Gadget :=
  List.ofFn (fun i : Fin (Fintype.card G) => decode (orderIso G i))

@[simp] theorem sortedGadgets_length (decode : G → Gadget) :
    (sortedGadgets decode).length = Fintype.card G := by simp [sortedGadgets]

@[simp] theorem sortedGadgets_get_rank (decode : G → Gadget) (g : G)
    (hg : (rank g).val < (sortedGadgets decode).length) :
    (sortedGadgets decode)[(rank g).val] = decode g := by
  simp [sortedGadgets, rank]

noncomputable def index : Cell G → Nat
  | .inl col => col.val
  | .inr (g, phase, col) => 5 + 10 * (rank g).val + 5 * phase.val + col.val

noncomputable def row : Cell G → Nat
  | .inl _ => 0
  | .inr (g, phase, _) => 2 * (rank g).val + phase.val + 1

def col : Cell G → Nat
  | .inl col => col.val
  | .inr (_, _, col) => col.val

/-- Gadget cells occur only in the first phase and columns one through three. -/
def cellTile (decode : G → Gadget) : Cell G → Tile
  | .inl _ => .water
  | .inr (g, phase, col) =>
    if phase.val = 0 ∧ 1 ≤ col.val ∧ col.val ≤ 3 then (decode g).tile (col.val - 1)
    else .water

theorem index_div_five (x : Cell G) : index x / 5 = row x := by
  rcases x with c | ⟨g, p, c⟩
  · simp only [index, row]
    have hc := c.isLt
    omega
  · simp only [index, row]
    have hp := p.isLt
    have hc := c.isLt
    omega

theorem index_mod_five (x : Cell G) : index x % 5 = col x := by
  rcases x with c | ⟨g, p, c⟩
  · simp only [index, col]
    have hc := c.isLt
    omega
  · simp only [index, col]
    have hc := c.isLt
    omega

theorem index_lt (decode : G → Gadget) (budget : Nat) (x : Cell G) :
    index x < (board (sortedGadgets decode) budget).size := by
  rw [board_size, sortedGadgets_length]
  rcases x with c | ⟨g, p, c⟩
  · simp only [index]
    have hc := c.isLt
    omega
  · simp only [index]
    have hg := (rank g).isLt
    have hp := p.isLt
    have hc := c.isLt
    omega

theorem index_injective : Function.Injective (index (G := G)) := by
  intro x y heq
  rcases x with cx | ⟨g, p, cx⟩
  · rcases y with cy | ⟨h, q, cy⟩
    · apply congrArg Sum.inl
      apply Fin.ext
      exact heq
    · simp only [index] at heq
      have hx := cx.isLt
      omega
  · rcases y with cy | ⟨h, q, cy⟩
    · simp only [index] at heq
      have hy := cy.isLt
      omega
    · have hp := p.isLt
      have hq := q.isLt
      have hx := cx.isLt
      have hy := cy.isLt
      simp only [index] at heq
      have hr : (rank g).val = (rank h).val := by omega
      have hgh : g = h := (orderIso G).symm.injective (Fin.ext hr)
      subst h
      have hpq : p = q := Fin.ext (by omega)
      subst q
      have hxy : cx = cy := Fin.ext (by omega)
      subst cy
      rfl

noncomputable def toFin (decode : G → Gadget) (budget : Nat) (x : Cell G) :
    Fin (board (sortedGadgets decode) budget).size := ⟨index x, index_lt decode budget x⟩

theorem toFin_bijective (decode : G → Gadget) (budget : Nat) :
    Function.Bijective (toFin decode budget) := by
  constructor
  · intro x y heq
    apply index_injective
    exact congrArg Fin.val heq
  · intro p
    by_cases hp : p.val < 5
    · refine ⟨.inl ⟨p.val, hp⟩, ?_⟩
      apply Fin.ext
      rfl
    · let k : Fin (Fintype.card G) := ⟨(p.val - 5) / 10, by
        have hb : p.val < 10 * Fintype.card G + 5 := by
          simpa only [board_size, sortedGadgets_length] using p.isLt
        omega⟩
      let phase : Fin 2 := ⟨((p.val - 5) % 10) / 5, by omega⟩
      let column : Fin 5 := ⟨(p.val - 5) % 5, by omega⟩
      refine ⟨.inr (orderIso G k, phase, column), ?_⟩
      apply Fin.ext
      change 5 + 10 * (rank (orderIso G k)).val + 5 * phase.val + column.val = p.val
      simp only [rank, OrderIso.symm_apply_apply]
      dsimp only [k, phase, column]
      omega

/-- The complete physical matrix is exactly a top row followed by two rows per gadget. -/
noncomputable def cellEquiv (decode : G → Gadget) (budget : Nat) :
    Fin (board (sortedGadgets decode) budget).size ≃ Cell G :=
  (Equiv.ofBijective (toFin decode budget) (toFin_bijective decode budget)).symm

@[simp] theorem cellEquiv_symm_val (decode : G → Gadget) (budget : Nat) (x : Cell G) :
    ((cellEquiv decode budget).symm x).val = index x := rfl

@[simp] theorem index_cellEquiv (decode : G → Gadget) (budget : Nat)
    (p : Fin (board (sortedGadgets decode) budget).size) :
    index (cellEquiv decode budget p) = p.val := by
  have h := congrArg Fin.val ((cellEquiv decode budget).symm_apply_apply p)
  exact h

/-- The matrix lookup agrees with the decoded tile attached to the abstract cell. -/
theorem tileAt_index (decode : G → Gadget) (budget : Nat) (x : Cell G) :
    (board (sortedGadgets decode) budget).tileAt (index x) = cellTile decode x := by
  rcases x with c | ⟨g, phase, c⟩
  · apply tileAt_low
    have hc := c.isLt
    change c.val < 6
    omega
  · by_cases hc : phase.val = 0 ∧ 1 ≤ c.val ∧ c.val ≤ 3
    · have hs : c.val - 1 < 3 := by omega
      have heq : index (.inr (g, phase, c) : Cell G) = pos (rank g).val (c.val - 1) := by
        simp only [index, pos]
        omega
      rw [heq, tileAt_pos (sortedGadgets decode) budget (by simp) hs,
        sortedGadgets_get_rank decode g]
      simp only [cellTile, ite_eq_left hc]
    · have hw : (board (sortedGadgets decode) budget).tileAt
          (index (.inr (g, phase, c) : Cell G)) = .water := by
        by_contra hn
        obtain ⟨h, s, hh, hs, heq, _⟩ :=
          (nonwater_iff (sortedGadgets decode) budget _).mp hn
        have hrow := congrArg (fun p => p / 5) heq
        have hcol := congrArg (fun p => p % 5) heq
        rw [index_div_five, pos_row hs] at hrow
        rw [index_mod_five, pos_col hs] at hcol
        simp only [row, col] at hrow hcol
        have hp := phase.isLt
        have hcc := c.isLt
        omega
      rw [hw]
      simp only [cellTile, ite_eq_right hc]

/-- Lookup transport across the complete physical-cell equivalence. -/
theorem tileAt_cellEquiv_symm (decode : G → Gadget) (budget : Nat) (x : Cell G) :
    (board (sortedGadgets decode) budget).tileAt ((cellEquiv decode budget).symm x).val =
      cellTile decode x := by
  rw [cellEquiv_symm_val, tileAt_index]

end EncloseHorse.Hardness.OrderedCells
