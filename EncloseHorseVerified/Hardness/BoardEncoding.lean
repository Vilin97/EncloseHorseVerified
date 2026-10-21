import EncloseHorseVerified.Game
import DescriptiveComplexity.Interpretation
import DescriptiveComplexity.Numbers.Unary
import Mathlib.Order.Fin.Basic

/-!
# Explicit relational encodings of physical game boards

The input names every physical cell, including water. Unary side data encode
the wall budget and the signed target score. These structures are not Set Cover
instances interpreted through a game compiler: `Represents` relates their
cell data directly to an ordinary `Board` and its reference game semantics.
-/

namespace FirstOrder.Language

inductive encloseBoardRel : Nat → Type
  | cell : encloseBoardRel 1
  | water : encloseBoardRel 1
  | grass : encloseBoardRel 1
  | horse : encloseBoardRel 1
  | cherry : encloseBoardRel 1
  | apple : encloseBoardRel 1
  | bee : encloseBoardRel 1
  | portal : encloseBoardRel 1
  | onEdge : encloseBoardRel 1
  | budget : encloseBoardRel 1
  | thresholdPlus : encloseBoardRel 1
  | thresholdMinus : encloseBoardRel 1
  | adjacent : encloseBoardRel 2
  | portalLinked : encloseBoardRel 2
  | indexLe : encloseBoardRel 2
  deriving DecidableEq

protected def encloseBoard : Language := ⟨fun _ => Empty, encloseBoardRel⟩
  deriving IsRelational

end FirstOrder.Language

namespace EncloseHorse.Hardness.BoardEncoding

open FirstOrder DescriptiveComplexity
open Language Structure

abbrev Rel := Language.encloseBoardRel

def Unary {A : Type} [Language.encloseBoard.Structure A]
    (r : Language.encloseBoard.Relations 1) (a : A) : Prop := RelMap r ![a]
def Binary {A : Type} [Language.encloseBoard.Structure A]
    (r : Language.encloseBoard.Relations 2) (a b : A) : Prop := RelMap r ![a, b]

abbrev Cell {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .cell
abbrev Water {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .water
abbrev Grass {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .grass
abbrev Horse {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .horse
abbrev Cherry {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .cherry
abbrev Apple {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .apple
abbrev Bee {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .bee
abbrev Portal {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .portal
abbrev OnEdge {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .onEdge
abbrev Budget {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .budget
abbrev ThresholdPlus {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .thresholdPlus
abbrev ThresholdMinus {A : Type} [Language.encloseBoard.Structure A] : A → Prop := Unary .thresholdMinus
abbrev Adjacent {A : Type} [Language.encloseBoard.Structure A] : A → A → Prop := Binary .adjacent
abbrev PortalLinked {A : Type} [Language.encloseBoard.Structure A] : A → A → Prop := Binary .portalLinked
abbrev IndexLe {A : Type} [Language.encloseBoard.Structure A] : A → A → Prop := Binary .indexLe

noncomputable def threshold (A : Type) [Language.encloseBoard.Structure A] : Int :=
  ({x : A | ThresholdPlus x}.ncard : Int) - ({x : A | ThresholdMinus x}.ncard : Int)

/-- A complete physical width-five matrix, with numeric portal names quotiented
only by their actual equality links. The cell order is the row-major order. -/
structure Represents (b : Board) (A : Type) [Language.encloseBoard.Structure A] where
  cellEquiv : Fin b.size ≃ {x : A // Cell x}
  width_eq : b.width = 5
  height_pos : 0 < b.height
  tiles_length : b.tiles.length = b.size
  unique_horse : ∃ p : Fin b.size, b.tileAt p.val = .horse ∧
    ∀ q : Fin b.size, b.tileAt q.val = .horse → q = p
  water_iff : ∀ p, Water (cellEquiv p).val ↔ b.tileAt p.val = .water
  grass_iff : ∀ p, Grass (cellEquiv p).val ↔ b.tileAt p.val = .grass
  horse_iff : ∀ p, Horse (cellEquiv p).val ↔ b.tileAt p.val = .horse
  cherry_iff : ∀ p, Cherry (cellEquiv p).val ↔ b.tileAt p.val = .cherry
  apple_iff : ∀ p, Apple (cellEquiv p).val ↔ b.tileAt p.val = .apple
  bee_iff : ∀ p, Bee (cellEquiv p).val ↔ b.tileAt p.val = .bee
  portal_iff : ∀ p, Portal (cellEquiv p).val ↔ ∃ label, b.tileAt p.val = .portal label
  edge_iff : ∀ p, OnEdge (cellEquiv p).val ↔ b.onEdge p.val = true
  adjacent_iff : ∀ p q, Adjacent (cellEquiv p).val (cellEquiv q).val ↔
    b.adjacent p.val q.val = true
  portalLinked_iff : ∀ p q, PortalLinked (cellEquiv p).val (cellEquiv q).val ↔
    b.portalLinked p.val q.val = true
  indexLe_iff : ∀ p q, IndexLe (cellEquiv p).val (cellEquiv q).val ↔ p.val ≤ q.val
  budget_eq : b.budget = {x : A | Budget x}.ncard

section Transport

variable {A B : Type} [Language.encloseBoard.Structure A] [Language.encloseBoard.Structure B]

theorem unary_map (e : A ≃[Language.encloseBoard] B) (r : Rel 1) (a : A) :
    Unary r a ↔ Unary r (e a) := relMap_equiv₁ e r a

theorem binary_map (e : A ≃[Language.encloseBoard] B) (r : Rel 2) (a b : A) :
    Binary r a b ↔ Binary r (e a) (e b) := relMap_equiv₂ e r a b

def cellIso (e : A ≃[Language.encloseBoard] B) : {x : A // Cell x} ≃ {x : B // Cell x} where
  toFun x := ⟨e x.val, (unary_map e .cell x.val).mp x.property⟩
  invFun x := ⟨e.symm x.val, (unary_map e.symm .cell x.val).mp x.property⟩
  left_inv x := by apply Subtype.ext; exact e.left_inv x.val
  right_inv x := by apply Subtype.ext; exact e.right_inv x.val

theorem threshold_map (e : A ≃[Language.encloseBoard] B) : threshold A = threshold B := by
  unfold threshold
  rw [ncard_setOf_equiv e.toEquiv (fun a => unary_map e .thresholdPlus a),
    ncard_setOf_equiv e.toEquiv (fun a => unary_map e .thresholdMinus a)]

/-- Renaming physical cells and numeric side tokens does not change the board encoded. -/
def Represents.transport {b : Board} (r : Represents b A)
    (e : A ≃[Language.encloseBoard] B) : Represents b B where
  cellEquiv := r.cellEquiv.trans (cellIso e)
  width_eq := r.width_eq
  height_pos := r.height_pos
  tiles_length := r.tiles_length
  unique_horse := r.unique_horse
  water_iff p := (unary_map e .water _).symm.trans (r.water_iff p)
  grass_iff p := (unary_map e .grass _).symm.trans (r.grass_iff p)
  horse_iff p := (unary_map e .horse _).symm.trans (r.horse_iff p)
  cherry_iff p := (unary_map e .cherry _).symm.trans (r.cherry_iff p)
  apple_iff p := (unary_map e .apple _).symm.trans (r.apple_iff p)
  bee_iff p := (unary_map e .bee _).symm.trans (r.bee_iff p)
  portal_iff p := (unary_map e .portal _).symm.trans (r.portal_iff p)
  edge_iff p := (unary_map e .onEdge _).symm.trans (r.edge_iff p)
  adjacent_iff p q := (binary_map e .adjacent _ _).symm.trans (r.adjacent_iff p q)
  portalLinked_iff p q := (binary_map e .portalLinked _ _).symm.trans (r.portalLinked_iff p q)
  indexLe_iff p q := (binary_map e .indexLe _ _).symm.trans (r.indexLe_iff p q)
  budget_eq := r.budget_eq.trans
    (ncard_setOf_equiv e.toEquiv (fun a => unary_map e .budget a))

end Transport

namespace Represents

variable {A : Type} [Language.encloseBoard.Structure A] {b c : Board}

/-- Row-major order prevents a representation from secretly permuting the matrix. -/
def positionIso (r : Represents b A) (s : Represents c A) : Fin b.size ≃o Fin c.size where
  toEquiv := r.cellEquiv.trans s.cellEquiv.symm
  map_rel_iff' := by
    intro p q
    change (s.cellEquiv.symm (r.cellEquiv p)).val ≤
      (s.cellEquiv.symm (r.cellEquiv q)).val ↔ p.val ≤ q.val
    rw [← s.indexLe_iff]
    simp only [Equiv.apply_symm_apply]
    exact r.indexLe_iff p q

theorem size_eq (r : Represents b A) (s : Represents c A) : b.size = c.size := by
  have h := Fintype.card_congr (r.cellEquiv.trans s.cellEquiv.symm)
  simpa using h

theorem height_eq (r : Represents b A) (s : Represents c A) : b.height = c.height := by
  have h := r.size_eq s
  simp only [Board.size, r.width_eq, s.width_eq] at h
  omega

theorem cellEquiv_eq (r : Represents b A) (s : Represents c A) (p : Fin b.size) :
    r.cellEquiv p = s.cellEquiv ⟨p.val, by rw [← r.size_eq s]; exact p.isLt⟩ := by
  have hi : r.positionIso s p = (⟨p.val, by rw [← r.size_eq s]; exact p.isLt⟩ : Fin c.size) := by
    apply Fin.ext
    exact Fin.coe_orderIso_apply (r.positionIso s) p
  have hc : s.cellEquiv (r.positionIso s p) = r.cellEquiv p := by
    simp [positionIso]
  rw [hi] at hc
  exact hc.symm

/-- Portal names may be renamed, but all ordinary terrain and item kinds are fixed. -/
def tileKind : Tile → Nat
  | .water => 0 | .grass => 1 | .horse => 2 | .cherry => 3
  | .apple => 4 | .bee => 5 | .portal _ => 6

theorem tileKind_eq (r : Represents b A) (s : Represents c A) (i : Nat) :
    tileKind (b.tileAt i) = tileKind (c.tileAt i) := by
  by_cases hi : i < b.size
  · let p : Fin b.size := ⟨i, hi⟩
    let q : Fin c.size := ⟨i, by rw [← r.size_eq s]; exact hi⟩
    have hc : r.cellEquiv p = s.cellEquiv q := r.cellEquiv_eq s p
    have hw : b.tileAt i = .water ↔ c.tileAt i = .water := by
      change b.tileAt p.val = .water ↔ c.tileAt q.val = .water
      rw [← r.water_iff, ← s.water_iff, hc]
    have hg : b.tileAt i = .grass ↔ c.tileAt i = .grass := by
      change b.tileAt p.val = .grass ↔ c.tileAt q.val = .grass
      rw [← r.grass_iff, ← s.grass_iff, hc]
    have hh : b.tileAt i = .horse ↔ c.tileAt i = .horse := by
      change b.tileAt p.val = .horse ↔ c.tileAt q.val = .horse
      rw [← r.horse_iff, ← s.horse_iff, hc]
    have hch : b.tileAt i = .cherry ↔ c.tileAt i = .cherry := by
      change b.tileAt p.val = .cherry ↔ c.tileAt q.val = .cherry
      rw [← r.cherry_iff, ← s.cherry_iff, hc]
    have ha : b.tileAt i = .apple ↔ c.tileAt i = .apple := by
      change b.tileAt p.val = .apple ↔ c.tileAt q.val = .apple
      rw [← r.apple_iff, ← s.apple_iff, hc]
    have hb : b.tileAt i = .bee ↔ c.tileAt i = .bee := by
      change b.tileAt p.val = .bee ↔ c.tileAt q.val = .bee
      rw [← r.bee_iff, ← s.bee_iff, hc]
    cases hbi : b.tileAt i <;> cases hci : c.tileAt i <;> simp_all [tileKind]
  · have hj : ¬ i < c.size := by rw [← r.size_eq s]; exact hi
    have hb : b.tiles[i]? = none := List.getElem?_eq_none (by rw [r.tiles_length]; omega)
    have hc : c.tiles[i]? = none := List.getElem?_eq_none (by rw [s.tiles_length]; omega)
    simp [Board.tileAt, hb, hc]

theorem portalLinked_eq (r : Represents b A) (s : Represents c A)
    (i j : Nat) (hi : i < b.size) (hj : j < b.size) :
    b.portalLinked i j = c.portalLinked i j := by
  let p : Fin b.size := ⟨i, hi⟩
  let q : Fin b.size := ⟨j, hj⟩
  have hp := r.cellEquiv_eq s p
  have hq := r.cellEquiv_eq s q
  have ht : b.portalLinked i j = true ↔ c.portalLinked i j = true := by
    rw [← r.portalLinked_iff p q, hp, hq, s.portalLinked_iff]
  exact Bool.eq_iff_iff.mpr ht

theorem budget_eq_board (r : Represents b A) (s : Represents c A) : b.budget = c.budget :=
  r.budget_eq.trans s.budget_eq.symm

end Represents

/-- The ordinary game, on a fully expanded matrix representation. -/
def Holds (A : Type) [Language.encloseBoard.Structure A] : Prop :=
  Finite A ∧ ∃ b : Board, Nonempty (Represents b A) ∧
    ∃ walls : Placement, admissible b walls ∧ threshold A ≤ score b walls

theorem holds_iso {A B : Type} [Language.encloseBoard.Structure A]
    [Language.encloseBoard.Structure B] (e : A ≃[Language.encloseBoard] B) :
    Holds A ↔ Holds B := by
  have forward : ∀ {X Y : Type} [Language.encloseBoard.Structure X]
      [Language.encloseBoard.Structure Y], (X ≃[Language.encloseBoard] Y) → Holds X → Holds Y := by
    intro X Y _ _ u h
    obtain ⟨hfinite, b, ⟨r⟩, walls, ha, hs⟩ := h
    exact ⟨u.toEquiv.finite_iff.mp hfinite, b, ⟨r.transport u⟩, walls, ha,
      (threshold_map u).symm ▸ hs⟩
  exact ⟨forward e, forward e.symm⟩

/-- A restriction of the actual game to width-five physical boards. -/
def GameYES : DecisionProblem Language.encloseBoard where
  Holds := fun A _ => Holds A
  iso_invariant := holds_iso

end EncloseHorse.Hardness.BoardEncoding
