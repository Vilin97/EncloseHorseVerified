import EncloseHorseVerified.Hardness.BoardEncoding
import EncloseHorseVerified.Hardness.FOTokens
import DescriptiveComplexity.Problems.SetFamily.Defs
import DescriptiveComplexity.OrderedComposition
import DescriptiveComplexity.OrderWalk
import Mathlib.Data.Fintype.Order

/-!
# A fixed first-order compiler for expanded physical boards

The interpretation uses four source coordinates. Every physical cell is named
explicitly; the score threshold is unary signed side data. In particular, the
interpretation does not place an arbitrary algorithm in the target predicate.
-/
noncomputable section
namespace EncloseHorse.Hardness.FOEncoding

open FirstOrder DescriptiveComplexity
open Language Structure

abbrev Src := Language.setSystem
abbrev OrdSrc := Src.sum Language.order
open FOTokens

abbrev elemSym : OrdSrc.Relations 1 := Sum.inl Language.ssElem
abbrev familySym : OrdSrc.Relations 1 := Sum.inl Language.ssFam
abbrev markedSym : OrdSrc.Relations 1 := Sum.inl Language.ssMarked
abbrev memSym : OrdSrc.Relations 2 := Sum.inl Language.ssMem

section FormulaBuilders
variable {α : Type}

def elemF (x : α) : OrdSrc.Formula α :=
  Relations.formula₁ (L := OrdSrc) elemSym (Term.var x)
def familyF (x : α) : OrdSrc.Formula α :=
  Relations.formula₁ (L := OrdSrc) familySym (Term.var x)
def markedF (x : α) : OrdSrc.Formula α :=
  Relations.formula₁ (L := OrdSrc) markedSym (Term.var x)
def memF (e s : α) : OrdSrc.Formula α :=
  Relations.formula₂ (L := OrdSrc) memSym (Term.var e) (Term.var s)
def eqF (x y : α) : OrdSrc.Formula α := oEqF x y
def leF (x y : α) : OrdSrc.Formula α := oLeF x y
def ltF (x y : α) : OrdSrc.Formula α := oLtF x y
noncomputable def minF (x : α) : OrdSrc.Formula α :=
  Formula.iAlls Unit (leF (Sum.inl x) (Sum.inr ()))

/-- One token of `1 + |F| + |incidence|`, with unused coordinates pinned. -/
noncomputable def costF (kind : Fin 3) (x y : α) : OrdSrc.Formula α :=
  if kind = 0 then minF x ⊓ minF y
  else if kind = 1 then familyF x ⊓ minF y
  else familyF x ⊓ elemF y ⊓ memF y x

/-- A token of `2 + |F| + |K|`. -/
noncomputable def rewardF (kind : Fin 4) (x : α) : OrdSrc.Formula α :=
  if kind < 2 then minF x else if kind = 2 then familyF x else markedF x

noncomputable def allMinF (x : Fin 4 → α) : OrdSrc.Formula α :=
  Formula.iInf (fun i => minF (x i))

/-- Valid gadget tokens, in 33 fixed copies of the fourth power of the input. -/
noncomputable def gadgetF (kind : GKind) (x : Fin 4 → α) : OrdSrc.Formula α :=
  if kind = 0 then allMinF x
  else if kind < 5 then
    familyF (x 0) ⊓ minF (x 1) ⊓ minF (x 2) ⊓ minF (x 3)
  else if kind < 12 then
    familyF (x 0) ⊓ elemF (x 1) ⊓ memF (x 1) (x 0) ⊓ minF (x 2) ⊓ minF (x 3)
  else if hk : kind < 21 then
    familyF (x 0) ⊓ costF ⟨((kind.val - 12) / 3) % 3, Nat.mod_lt _ (by decide)⟩ (x 1) (x 2) ⊓ minF (x 3)
  else
    elemF (x 0) ⊓ rewardF ⟨((kind.val - 21) / 3) % 4, Nat.mod_lt _ (by decide)⟩ (x 1) ⊓
      costF ⟨(kind.val - 21) % 3, by omega⟩ (x 2) (x 3)

noncomputable def cellF (tag : Tag) (x : Fin 4 → α) : OrdSrc.Formula α :=
  match tag with
  | .top _ => allMinF x
  | .gadget kind _ _ => gadgetF kind x
  | _ => ⊥

noncomputable def plusF (tag : Tag) (x : Fin 4 → α) : OrdSrc.Formula α :=
  match tag with
  | .plusRoot _ => allMinF x
  | .plusFamily => familyF (x 0) ⊓ minF (x 1) ⊓ minF (x 2) ⊓ minF (x 3)
  | .plusElement reward cost => elemF (x 0) ⊓ rewardF reward (x 1) ⊓ costF cost (x 2) (x 3)
  | _ => ⊥

noncomputable def minusF (tag : Tag) (x : Fin 4 → α) : OrdSrc.Formula α :=
  match tag with
  | .minus cost => markedF (x 0) ⊓ costF cost (x 1) (x 2) ⊓ minF (x 3)
  | _ => ⊥


noncomputable def tupleEqF (x y : Fin 4 → α) : OrdSrc.Formula α :=
  Formula.iInf (fun i => eqF (x i) (y i))

noncomputable def tupleLeF (x y : Fin 4 → α) : OrdSrc.Formula α :=
  tupleEqF x y ⊔ Formula.iSup (fun j : Fin 4 =>
    (Formula.iInf (fun i : {i : Fin 4 // i < j} => eqF (x i.val) (y i.val))) ⊓ ltF (x j) (y j))

noncomputable def gadgetEqF (k l : GKind) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  if k = l then tupleEqF x y else ⊥

noncomputable def gadgetLeF (k l : GKind) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  if k < l then ⊤ else if k = l then tupleLeF x y else ⊥

noncomputable def gadgetLtF (k l : GKind) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  gadgetLeF k l x y ⊓ ∼(gadgetEqF k l x y)

noncomputable def firstGadgetF (k : GKind) (x : Fin 4 → α) : OrdSrc.Formula α :=
  Formula.iInf (fun l : GKind => Formula.iAlls (Fin 4)
    (gadgetF l Sum.inr ⟹ gadgetLeF k l (Sum.inl ∘ x) Sum.inr))

noncomputable def lastGadgetF (k : GKind) (x : Fin 4 → α) : OrdSrc.Formula α :=
  Formula.iInf (fun l : GKind => Formula.iAlls (Fin 4)
    (gadgetF l Sum.inr ⟹ gadgetLeF l k Sum.inr (Sum.inl ∘ x)))

noncomputable def nextGadgetF (k l : GKind) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  gadgetLtF k l x y ⊓ Formula.iInf (fun m : GKind => Formula.iAlls (Fin 4)
    (gadgetF m Sum.inr ⟹ ∼(gadgetLtF k m (Sum.inl ∘ x) Sum.inr ⊓
      gadgetLtF m l Sum.inr (Sum.inl ∘ y))))

/-- Row-major comparison, with the full water rows present. -/
noncomputable def rawIndexLeF (t u : Tag) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  match t, u with
  | .top c, .top d => if c ≤ d then ⊤ else ⊥
  | .top _, .gadget _ _ _ => ⊤
  | .gadget k ph c, .gadget l qh d =>
    gadgetLtF k l x y ⊔
      (if ph < qh ∨ (ph = qh ∧ c ≤ d) then gadgetEqF k l x y else ⊥)
  | _, _ => ⊥

noncomputable def rawEdgeF (t : Tag) (x : Fin 4 → α) : OrdSrc.Formula α :=
  match t with
  | .top _ => ⊤
  | .gadget k ph c => if c = 0 ∨ c = 4 then ⊤
    else if ph = 1 then lastGadgetF k x else ⊥
  | _ => ⊥

noncomputable def rawAdjacentF (t u : Tag) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  match t, u with
  | .top c, .top d => if c.val + 1 = d.val ∨ d.val + 1 = c.val then ⊤ else ⊥
  | .top c, .gadget l qh d => if c = d ∧ qh = 0 then firstGadgetF l y else ⊥
  | .gadget k ph c, .top d => if c = d ∧ ph = 0 then firstGadgetF k x else ⊥
  | .gadget k ph c, .gadget l qh d =>
    (if ph = qh ∧ (c.val + 1 = d.val ∨ d.val + 1 = c.val)
      then gadgetEqF k l x y else ⊥) ⊔
    (if c = d then
      (if ph ≠ qh then gadgetEqF k l x y else ⊥) ⊔
      (if ph = 1 ∧ qh = 0 then nextGadgetF k l x y else ⊥) ⊔
      (if ph = 0 ∧ qh = 1 then nextGadgetF l k y x else ⊥)
    else ⊥)
  | _, _ => ⊥

noncomputable def roleEqF (r s : Role) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  match r, s with
  | .root, .root => ⊤
  | .family i, .family j => eqF (x i) (y j)
  | .element i, .element j => eqF (x i) (y j)
  | _, _ => ⊥

noncomputable def rawPortalF (t u : Tag) (x y : Fin 4 → α) : OrdSrc.Formula α :=
  match terrain t, terrain u with
  | .portal r, .portal s => roleEqF r s x y
  | _, _ => ⊥

noncomputable def tileF (t : Tag) (x : Fin 4 → α) (test : Terrain → Bool) : OrdSrc.Formula α :=
  if test (terrain t) then cellF t x else ⊥

end FormulaBuilders

/-- A constant-size formula for each relation of the expanded physical board. -/
noncomputable def interpretation : FOInterpretation OrdSrc Language.encloseBoard Tag 4 where
  relFormula := fun {_} rel tags =>
    match rel with
    | .cell => cellF (tags 0) (fun i => (0, i))
    | .water => tileF (tags 0) (fun i => (0, i)) (fun t => t == .water)
    | .grass => tileF (tags 0) (fun i => (0, i)) (fun t => t == .grass)
    | .horse => tileF (tags 0) (fun i => (0, i)) (fun t => t == .horse)
    | .cherry => ⊥
    | .apple => ⊥
    | .bee => tileF (tags 0) (fun i => (0, i)) (fun t => t == .bee)
    | .portal => tileF (tags 0) (fun i => (0, i)) (fun t => match t with | .portal _ => true | _ => false)
    | .budget => cellF (tags 0) (fun i => (0, i))
    | .thresholdPlus => plusF (tags 0) (fun i => (0, i))
    | .thresholdMinus => minusF (tags 0) (fun i => (0, i))
    | .onEdge => cellF (tags 0) (fun i => (0, i)) ⊓ rawEdgeF (tags 0) (fun i => (0, i))
    | .indexLe => cellF (tags 0) (fun i => (0, i)) ⊓ cellF (tags 1) (fun i => (1, i)) ⊓
      rawIndexLeF (tags 0) (tags 1) (fun i => (0, i)) (fun i => (1, i))
    | .adjacent => cellF (tags 0) (fun i => (0, i)) ⊓ cellF (tags 1) (fun i => (1, i)) ⊓
      rawAdjacentF (tags 0) (tags 1) (fun i => (0, i)) (fun i => (1, i))
    | .portalLinked => cellF (tags 0) (fun i => (0, i)) ⊓ cellF (tags 1) (fun i => (1, i)) ⊓
      rawPortalF (tags 0) (tags 1) (fun i => (0, i)) (fun i => (1, i))

section Realization
variable {A : Type} [Src.Structure A] [LinearOrder A] {α : Type} {v : α → A}
local instance : LinearOrder (RawGadget A) := tagTupleOrder
local instance : LE (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLE
local instance : LT (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLT

@[simp] theorem realize_elemF (x : α) :
    (elemF x).Realize v ↔ SSElem (v x) := by
  rw [elemF, Formula.realize_rel₁]
  rfl
@[simp] theorem realize_familyF (x : α) :
    (familyF x).Realize v ↔ SSFam (v x) := by
  rw [familyF, Formula.realize_rel₁]
  rfl
@[simp] theorem realize_markedF (x : α) :
    (markedF x).Realize v ↔ SSMarked (v x) := by
  rw [markedF, Formula.realize_rel₁]
  rfl
@[simp] theorem realize_memF (e f : α) :
    (memF e f).Realize v ↔ SSMem (v e) (v f) := by
  rw [memF, Formula.realize_rel₂]
  rfl
@[simp] theorem realize_eqF (x y : α) :
    (eqF x y).Realize v ↔ v x = v y := by simp [eqF, oEqF]
@[simp] theorem realize_leF (x y : α) :
    (leF x y).Realize v ↔ v x ≤ v y := by simp [leF, oLeF, Formula.realize_rel₂]
@[simp] theorem realize_ltF (x y : α) :
    (ltF x y).Realize v ↔ v x < v y := by
  simp [ltF, oLtF, oLeF, oEqF, lt_iff_le_and_ne, Formula.realize_rel₂]

@[simp] theorem realize_minF (x : α) :
    (minF x).Realize v ↔ ∀ a : A, v x ≤ a := by
  simp only [minF, Formula.realize_iAlls, realize_leF, Sum.elim_inl, Sum.elim_inr]
  exact ⟨fun h a => h (fun _ => a), fun h i => h (i ())⟩

variable (lo : A) (hlo : ∀ a, lo ≤ a)
include hlo

theorem realize_minF_eq (x : α) : (minF x).Realize v ↔ v x = lo := by
  rw [realize_minF]
  exact ⟨fun h => le_antisymm (h lo) (hlo _), fun h a => h ▸ hlo a⟩

theorem realize_costF (k : Fin 3) (x y : α) :
    (costF k x y).Realize v ↔ CostValid SSElem SSFam SSMem lo k (v x) (v y) := by
  fin_cases k <;> simp [costF, CostValid, realize_minF_eq lo hlo, and_assoc]

theorem realize_rewardF (k : Fin 4) (x : α) :
    (rewardF k x).Realize v ↔ RewardValid SSFam SSMarked lo k (v x) := by
  fin_cases k <;> simp [rewardF, RewardValid, realize_minF_eq lo hlo]

theorem realize_allMinF (x : Fin 4 → α) :
    (allMinF x).Realize v ↔ AllMin lo (v ∘ x) := by
  simp [allMinF, AllMin, realize_minF_eq lo hlo]

theorem realize_gadgetF (k : GKind) (x : Fin 4 → α) :
    (gadgetF k x).Realize v ↔ ValidGadget SSElem SSFam SSMem SSMarked lo (k, v ∘ x) := by
  unfold gadgetF ValidGadget
  simp only [Function.comp_apply]
  split
  · exact realize_allMinF lo hlo x
  · split
    · simp [realize_minF_eq lo hlo, and_assoc]
    · split
      · simp [realize_minF_eq lo hlo, and_assoc]
      · split
        · simp [realize_costF lo hlo, realize_minF_eq lo hlo, and_assoc]
        · simp [realize_costF lo hlo, realize_rewardF lo hlo, and_assoc]

theorem realize_cellF (t : Tag) (x : Fin 4 → α) :
    (cellF t x).Realize v ↔ ValidCell SSElem SSFam SSMem SSMarked lo (t, v ∘ x) := by
  cases t <;> simp [cellF, ValidCell, realize_allMinF lo hlo, realize_gadgetF lo hlo]

theorem realize_plusF (t : Tag) (x : Fin 4 → α) :
    (plusF t x).Realize v ↔ Plus SSElem SSFam SSMem SSMarked lo (t, v ∘ x) := by
  cases t <;> simp [plusF, Plus, realize_allMinF lo hlo, realize_costF lo hlo,
    realize_rewardF lo hlo, realize_minF_eq lo hlo, and_assoc]

theorem realize_minusF (t : Tag) (x : Fin 4 → α) :
    (minusF t x).Realize v ↔ Minus SSElem SSFam SSMem SSMarked lo (t, v ∘ x) := by
  cases t <;> simp [minusF, Minus, realize_costF lo hlo,
    realize_minF_eq lo hlo, and_assoc]

omit hlo in
theorem realize_tupleEqF (x y : Fin 4 → α) :
    (tupleEqF x y).Realize v ↔ (v ∘ x) = (v ∘ y) := by
  simp [tupleEqF, funext_iff]

omit hlo in
theorem realize_tupleLeF (x y : Fin 4 → α) :
    (tupleLeF x y).Realize v ↔ tupLeLex (v ∘ x) (v ∘ y) := by
  simp [tupleLeF, realize_tupleEqF, tupLeLex, Subtype.forall]

omit hlo in
theorem realize_gadgetEqF (k l : GKind) (x y : Fin 4 → α) :
    (gadgetEqF k l x y).Realize v ↔ (k, v ∘ x) = (l, v ∘ y) := by
  by_cases h : k = l <;> simp [gadgetEqF, h, realize_tupleEqF]

omit hlo in
theorem realize_gadgetLeF (k l : GKind) (x y : Fin 4 → α) :
    (gadgetLeF k l x y).Realize v ↔
      (tagTupleOrder : LinearOrder (RawGadget A)).le (k, v ∘ x) (l, v ∘ y) := by
  rw [← tagTupleLe_iff_le]
  by_cases hlt : k < l <;> by_cases heq : k = l <;>
    simp [gadgetLeF, hlt, heq, tagTupleLe, realize_tupleLeF]

omit hlo in
theorem realize_gadgetLtF (k l : GKind) (x y : Fin 4 → α) :
    (gadgetLtF k l x y).Realize v ↔ (k, v ∘ x) < (l, v ∘ y) := by
  simp only [gadgetLtF, Formula.realize_inf, Formula.realize_not,
    realize_gadgetLeF, realize_gadgetEqF]
  exact (@lt_iff_le_and_ne (RawGadget A) tagTupleOrder.toPartialOrder (k, v ∘ x) (l, v ∘ y)).symm

theorem realize_firstGadgetF (k : GKind) (x : Fin 4 → α) :
    (firstGadgetF k x).Realize v ↔
      ∀ g : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo g → (k, v ∘ x) ≤ g := by
  simp only [firstGadgetF, Formula.realize_iInf, Formula.realize_iAlls,
    Formula.realize_imp, realize_gadgetF lo hlo, realize_gadgetLeF,
    Function.comp_def, Sum.elim_inl, Sum.elim_inr]
  constructor
  · intro h ⟨l, z⟩ hz
    exact h l z hz
  · intro h l z hz
    exact h (l,z) hz

theorem realize_lastGadgetF (k : GKind) (x : Fin 4 → α) :
    (lastGadgetF k x).Realize v ↔
      ∀ g : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo g → g ≤ (k, v ∘ x) := by
  simp only [lastGadgetF, Formula.realize_iInf, Formula.realize_iAlls,
    Formula.realize_imp, realize_gadgetF lo hlo, realize_gadgetLeF,
    Function.comp_def, Sum.elim_inl, Sum.elim_inr]
  constructor
  · intro h ⟨l, z⟩ hz
    exact h l z hz
  · intro h l z hz
    exact h (l,z) hz

theorem realize_nextGadgetF (k l : GKind) (x y : Fin 4 → α) :
    (nextGadgetF k l x y).Realize v ↔
      (k, v ∘ x) < (l, v ∘ y) ∧
        ∀ g : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo g →
          ¬((k, v ∘ x) < g ∧ g < (l, v ∘ y)) := by
  simp only [nextGadgetF, Formula.realize_iInf, Formula.realize_iAlls,
    Formula.realize_imp, Formula.realize_inf, Formula.realize_not,
    realize_gadgetF lo hlo, realize_gadgetLtF,
    Function.comp_def, Sum.elim_inl, Sum.elim_inr]
  exact and_congr Iff.rfl ⟨fun h ⟨m,z⟩ hz => h m z hz, fun h m z hz => h (m,z) hz⟩

omit hlo in
theorem realize_tileF (t : Tag) (x : Fin 4 → α) (test : Terrain → Bool) :
    (tileF t x test).Realize v ↔ (cellF t x).Realize v ∧ test (terrain t) = true := by
  unfold tileF
  split <;> simp_all

end Realization



end EncloseHorse.Hardness.FOEncoding

end
