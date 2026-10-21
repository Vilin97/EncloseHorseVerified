import EncloseHorseVerified.Hardness.FOEncoding
import EncloseHorseVerified.Hardness.OrderedRepresentation

/-! Realization of the first-order formulas as every cell of an ordinary board. -/
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
noncomputable section
namespace EncloseHorse.Hardness.FOEncoding

open FirstOrder DescriptiveComplexity Language Structure FOTokens

variable {A : Type} [Src.Structure A] [LinearOrder A]
variable (lo : A) (hlo : ∀ a, lo ≤ a)

abbrev G := GadgetToken (SSElem (A := A)) SSFam SSMem SSMarked lo
abbrev Out := interpretation.Map A

local instance rawOrder : LinearOrder (RawGadget A) := tagTupleOrder
local instance rawLE : LE (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLE
local instance rawLT : LT (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLT

local instance gOrder : LinearOrder (G lo) := inferInstanceAs (LinearOrder {g : RawGadget A //
  ValidGadget SSElem SSFam SSMem SSMarked lo g})
local instance gLE : LE (G lo) := (gOrder lo).toLE
local instance gLT : LT (G lo) := (gOrder lo).toLT

include hlo

theorem out_cell (p : Out (A := A)) : BoardEncoding.Cell p ↔
    ValidCell SSElem SSFam SSMem SSMarked lo p := by
  simp only [BoardEncoding.Cell, BoardEncoding.Unary, FOInterpretation.relMap_map,
    interpretation, Matrix.cons_val_fin_one]
  exact realize_cellF lo hlo p.1 (fun i => (0, i))

theorem out_plus (p : Out (A := A)) : BoardEncoding.ThresholdPlus p ↔
    Plus SSElem SSFam SSMem SSMarked lo p := by
  simp only [BoardEncoding.ThresholdPlus, BoardEncoding.Unary, FOInterpretation.relMap_map,
    interpretation, Matrix.cons_val_fin_one]
  exact realize_plusF lo hlo p.1 (fun i => (0, i))

theorem out_minus (p : Out (A := A)) : BoardEncoding.ThresholdMinus p ↔
    Minus SSElem SSFam SSMem SSMarked lo p := by
  simp only [BoardEncoding.ThresholdMinus, BoardEncoding.Unary, FOInterpretation.relMap_map,
    interpretation, Matrix.cons_val_fin_one]
  exact realize_minusF lo hlo p.1 (fun i => (0, i))

omit hlo in
def cellValue : OrderedCells.Cell (G lo) → Out (A := A)
  | .inl col => (.top col, fun _ => lo)
  | .inr (g, phase, col) => (.gadget g.val.1 phase col, g.val.2)

omit hlo in
theorem cellValue_valid (x : OrderedCells.Cell (G lo)) :
    ValidCell SSElem SSFam SSMem SSMarked lo (cellValue lo x) := by
  rcases x with col | ⟨g, ph, col⟩
  · exact fun _ => rfl
  · exact g.property

omit hlo in
theorem cellValue_injective : Function.Injective (cellValue (A := A) lo) := by
  intro x y h
  rcases x with c | ⟨g, ph, c⟩ <;> rcases y with d | ⟨j, qh, d⟩
  · have ht := congrArg Prod.fst h
    simp only [cellValue, Tag.top.injEq] at ht
    exact congrArg Sum.inl ht
  · have := congrArg Prod.fst h
    simp [cellValue] at this
  · have := congrArg Prod.fst h
    simp [cellValue] at this
  · have ht := congrArg Prod.fst h
    have hx := congrArg Prod.snd h
    simp only [cellValue, Tag.gadget.injEq] at ht
    obtain ⟨hkind, rfl, rfl⟩ := ht
    have hgj : g = j := Subtype.ext (Prod.ext hkind hx)
    subst j
    rfl

theorem cellValue_surjective (p : Out (A := A)) (hp : BoardEncoding.Cell p) :
    ∃ x, cellValue lo x = p := by
  have hv := (out_cell lo hlo p).mp hp
  rcases p with ⟨t, payload⟩
  cases t with
  | top c =>
    refine ⟨.inl c, ?_⟩
    change (Tag.top c, fun _ => lo) = (Tag.top c, payload)
    apply Prod.ext
    · rfl
    funext i
    exact (hv i).symm
  | gadget k ph c => exact ⟨.inr (⟨(k,payload),hv⟩,ph,c),rfl⟩
  | plusRoot _ => exact False.elim hv
  | plusFamily => exact False.elim hv
  | plusElement _ _ => exact False.elim hv
  | minus _ => exact False.elim hv

noncomputable def cellsEquiv : OrderedCells.Cell (G lo) ≃ {p : Out (A := A) // BoardEncoding.Cell p} :=
  Equiv.ofBijective
    (fun x => ⟨cellValue lo x, (out_cell lo hlo _).mpr (cellValue_valid lo x)⟩)
    ⟨fun _ _ h => cellValue_injective lo (congrArg Subtype.val h),
      fun p => by
        obtain ⟨x,hx⟩ := cellValue_surjective lo hlo p.val p.property
        exact ⟨x,Subtype.ext hx⟩⟩

@[simp] theorem cellsEquiv_val (x : OrderedCells.Cell (G lo)) :
    (cellsEquiv lo hlo x).val = cellValue lo x := rfl

omit hlo in
theorem cellTile_value (familyIndex elementIndex : A → Nat) (x : OrderedCells.Cell (G lo)) :
    OrderedCells.cellTile (fun g : G lo => decode familyIndex elementIndex g.val) x =
      (terrain (cellValue lo x).1).value familyIndex elementIndex (cellValue lo x).2 := by
  rcases x with col | ⟨g,ph,col⟩
  · rfl
  · simp only [OrderedCells.cellTile, cellValue, terrain]
    have he : (ph.val = 0 ∧ 1 ≤ col.val ∧ col.val ≤ 3) ↔
        (ph = 0 ∧ 0 < col.val ∧ col.val < 4) := by
      simp only [Fin.ext_iff]
      omega
    by_cases hh : ph = 0 ∧ 0 < col.val ∧ col.val < 4
    · simp only [he.mpr hh, hh, ↓reduceIte]
      exact decode_tile familyIndex elementIndex g.val _
    · simp only [show ¬(ph.val = 0 ∧ 1 ≤ col.val ∧ col.val ≤ 3) from mt he.mp hh,
        hh, ↓reduceIte]
      rfl

theorem out_water (p : Out (A := A)) : BoardEncoding.Water p ↔
    BoardEncoding.Cell p ∧ terrain p.1 = .water := by
  simp only [BoardEncoding.Water, BoardEncoding.Cell, BoardEncoding.Unary]
  exact (realize_tileF p.1 (fun i => (0,i)) (fun t => t == .water)).trans
    (by simp only [beq_iff_eq]; rfl)

theorem out_grass (p : Out (A := A)) : BoardEncoding.Grass p ↔
    BoardEncoding.Cell p ∧ terrain p.1 = .grass := by
  simp only [BoardEncoding.Grass, BoardEncoding.Cell, BoardEncoding.Unary]
  exact (realize_tileF p.1 (fun i => (0,i)) (fun t => t == .grass)).trans
    (by simp only [beq_iff_eq]; rfl)

theorem out_horse (p : Out (A := A)) : BoardEncoding.Horse p ↔
    BoardEncoding.Cell p ∧ terrain p.1 = .horse := by
  simp only [BoardEncoding.Horse, BoardEncoding.Cell, BoardEncoding.Unary]
  exact (realize_tileF p.1 (fun i => (0,i)) (fun t => t == .horse)).trans
    (by simp only [beq_iff_eq]; rfl)

theorem out_bee (p : Out (A := A)) : BoardEncoding.Bee p ↔
    BoardEncoding.Cell p ∧ terrain p.1 = .bee := by
  simp only [BoardEncoding.Bee, BoardEncoding.Cell, BoardEncoding.Unary]
  exact (realize_tileF p.1 (fun i => (0,i)) (fun t => t == .bee)).trans
    (by simp only [beq_iff_eq]; rfl)

theorem out_portal (p : Out (A := A)) : BoardEncoding.Portal p ↔
    BoardEncoding.Cell p ∧ ∃ r, terrain p.1 = .portal r := by
  simp only [BoardEncoding.Portal, BoardEncoding.Cell, BoardEncoding.Unary]
  refine (realize_tileF (v := fun q : Fin 1 × Fin 4 => (![p] q.1).2 q.2)
    p.1 (fun i => (0,i))
    (fun t => match t with | .portal _ => true | _ => false)).trans ?_
  cases terrain p.1 <;> simp
  exact (realize_cellF lo hlo p.1 (fun i => (0,i))).trans (out_cell lo hlo p).symm

omit hlo in
theorem terrain_value_water (f e : A → Nat) (p : Payload A) (t : Terrain) :
    t.value f e p = .water ↔ t = .water := by cases t <;> simp [Terrain.value]
omit hlo in
theorem terrain_value_grass (f e : A → Nat) (p : Payload A) (t : Terrain) :
    t.value f e p = .grass ↔ t = .grass := by cases t <;> simp [Terrain.value]
omit hlo in
theorem terrain_value_horse (f e : A → Nat) (p : Payload A) (t : Terrain) :
    t.value f e p = .horse ↔ t = .horse := by cases t <;> simp [Terrain.value]
omit hlo in
theorem terrain_value_bee (f e : A → Nat) (p : Payload A) (t : Terrain) :
    t.value f e p = .bee ↔ t = .bee := by cases t <;> simp [Terrain.value]
omit hlo in
theorem terrain_value_portal (f e : A → Nat) (p : Payload A) (t : Terrain) :
    (∃ label, t.value f e p = .portal label) ↔ ∃ r, t = .portal r := by
  cases t <;> simp [Terrain.value]

omit hlo in
theorem raw_first_iff (g : G lo) :
    (∀ h : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo h → g.val ≤ h) ↔
      OrderedCells.First g := by
  constructor
  · intro h j
    exact h j.val j.property
  · intro h j hj
    exact h ⟨j,hj⟩

omit hlo in
theorem raw_last_iff (g : G lo) :
    (∀ h : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo h → h ≤ g.val) ↔
      OrderedCells.Last g := by
  constructor
  · intro h j
    exact h j.val j.property
  · intro h j hj
    exact h ⟨j,hj⟩

omit hlo in
theorem raw_next_iff (g h : G lo) :
    (g.val < h.val ∧ ∀ j : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo j →
      ¬(g.val < j ∧ j < h.val)) ↔ g ⋖ h := by
  change (g < h ∧ ∀ j : RawGadget A, ValidGadget SSElem SSFam SSMem SSMarked lo j →
    ¬(g.val < j ∧ j < h.val)) ↔ _
  constructor
  · rintro ⟨hlt, hn⟩
    exact ⟨hlt, fun j hj hjh => hn j.val j.property ⟨hj,hjh⟩⟩
  · intro hc
    exact ⟨hc.1, fun j hj hh => hc.2 (c := ⟨j,hj⟩) hh.1 hh.2⟩

end EncloseHorse.Hardness.FOEncoding
end
