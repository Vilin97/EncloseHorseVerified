import EncloseHorseVerified.Hardness.FOCellModel

/-! The defined grid relations are exactly physical row-major grid relations. -/
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false
noncomputable section
namespace EncloseHorse.Hardness.FOEncoding

open FirstOrder DescriptiveComplexity Language Structure FOTokens

variable {A : Type} [Src.Structure A] [LinearOrder A]
variable (lo : A) (hlo : ∀ a, lo ≤ a)

local instance rawOrderR : LinearOrder (RawGadget A) := tagTupleOrder
local instance rawLER : LE (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLE
local instance rawLTR : LT (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLT
local instance gOrderR : LinearOrder (G lo) := FOEncoding.gOrder lo
local instance gLER : LE (G lo) := (gOrderR lo).toLE
local instance gLTR : LT (G lo) := (gOrderR lo).toLT

abbrev coords (n : Fin 2) : Fin 4 → Fin 2 × Fin 4 := fun i => (n,i)
def pairVal (p q : Token A) (ij : Fin 2 × Fin 4) : A := (![p,q] ij.1).2 ij.2

include hlo

theorem raw_index_iff (x y : OrderedCells.Cell (G lo)) :
    (rawIndexLeF (cellValue lo x).1 (cellValue lo y).1 (coords 0) (coords 1)).Realize
      (pairVal (cellValue lo x) (cellValue lo y)) ↔ OrderedCells.IndexLe x y := by
  rcases x with c | ⟨g,ph,c⟩ <;> rcases y with d | ⟨j,qh,d⟩
  · simp only [cellValue, rawIndexLeF, OrderedCells.IndexLe]
    split_ifs <;> simp_all
  · exact Formula.realize_top
  · exact Formula.realize_bot
  · by_cases hp : ph < qh ∨ (ph = qh ∧ c ≤ d)
    · simp only [cellValue, rawIndexLeF, hp, ↓reduceIte, Formula.realize_sup,
        realize_gadgetLtF, realize_gadgetEqF, OrderedCells.IndexLe]
      try simp only [pairVal, coords, Function.comp_def, Matrix.cons_val_zero,
        Matrix.cons_val_succ, Matrix.cons_val_one, Matrix.cons_val_fin_one, Prod.eta]
      try simp only [← Subtype.ext_iff]
      simp only [and_true]
      rfl
    · simp only [cellValue, rawIndexLeF, hp, ↓reduceIte, Formula.realize_sup,
        Formula.realize_bot, or_false, realize_gadgetLtF, OrderedCells.IndexLe]
      try simp only [pairVal, coords, Function.comp_def, Matrix.cons_val_zero,
        Matrix.cons_val_succ, Matrix.cons_val_one, Matrix.cons_val_fin_one, Prod.eta]
      simp [hp]

theorem raw_edge_iff (x : OrderedCells.Cell (G lo)) :
    (rawEdgeF (cellValue lo x).1 (fun i : Fin 4 => i)).Realize (cellValue lo x).2 ↔
      OrderedCells.OnEdge x := by
  rcases x with c | ⟨g,ph,c⟩
  · simp [cellValue, rawEdgeF, OrderedCells.OnEdge]
  · by_cases hc : c = 0 ∨ c = 4
    · rcases hc with hc | hc <;> simp [cellValue, rawEdgeF, hc, OrderedCells.OnEdge]
    · by_cases hp : ph = 1
      · simp only [cellValue, rawEdgeF, hc, hp, ↓reduceIte,
          realize_lastGadgetF lo hlo, Function.comp_def, Prod.eta]
        rw [raw_last_iff]
        have h0 := (not_or.mp hc).1
        have h4 := (not_or.mp hc).2
        simp [OrderedCells.OnEdge, h0, h4, hp]
      · simp [cellValue, rawEdgeF, hc, hp, OrderedCells.OnEdge]

theorem raw_adjacent_iff (x y : OrderedCells.Cell (G lo)) :
    (rawAdjacentF (cellValue lo x).1 (cellValue lo y).1 (coords 0) (coords 1)).Realize
      (pairVal (cellValue lo x) (cellValue lo y)) ↔ OrderedCells.Adjacent x y := by
  rcases x with c | ⟨g,ph,c⟩ <;> rcases y with d | ⟨j,qh,d⟩
  · simp only [cellValue, rawAdjacentF, OrderedCells.Adjacent, OrderedCells.SameRow,
      OrderedCells.NextRow, OrderedCells.col]
    try split_ifs <;> simp_all
  · by_cases hc : c = d
    · subst d
      by_cases hp : qh = 0
      · simp only [cellValue, rawAdjacentF, hp, and_self, ↓reduceIte,
          realize_firstGadgetF lo hlo]
        try simp only [pairVal, coords, Function.comp_def, Matrix.cons_val_zero,
          Matrix.cons_val_succ, Matrix.cons_val_one, Matrix.cons_val_fin_one, Prod.eta]
        rw [raw_first_iff]
        simp [OrderedCells.Adjacent, OrderedCells.SameRow, OrderedCells.NextRow, hp]
      · simp [cellValue, rawAdjacentF, hp, OrderedCells.Adjacent,
          OrderedCells.SameRow, OrderedCells.NextRow, hp]
    · simp [cellValue, rawAdjacentF, hc, OrderedCells.Adjacent,
        OrderedCells.SameRow, OrderedCells.NextRow, hc]
  · by_cases hc : c = d
    · subst d
      by_cases hp : ph = 0
      · simp only [cellValue, rawAdjacentF, hp, and_self, ↓reduceIte,
          realize_firstGadgetF lo hlo]
        try simp only [pairVal, coords, Function.comp_def, Matrix.cons_val_zero,
          Matrix.cons_val_succ, Matrix.cons_val_one, Matrix.cons_val_fin_one, Prod.eta]
        rw [raw_first_iff]
        simp [OrderedCells.Adjacent, OrderedCells.SameRow, OrderedCells.NextRow, hp]
      · simp [cellValue, rawAdjacentF, hp, OrderedCells.Adjacent,
          OrderedCells.SameRow, OrderedCells.NextRow, hp]
    · have hdc : d ≠ c := Ne.symm hc
      simp [cellValue, rawAdjacentF, hc, hdc, OrderedCells.Adjacent,
        OrderedCells.SameRow, OrderedCells.NextRow, hc]
  · fin_cases ph <;> fin_cases qh
    all_goals
      simp only [cellValue, rawAdjacentF]
      split_ifs
    all_goals
      simp only [Formula.realize_sup, Formula.realize_bot, Formula.realize_top,
        realize_gadgetEqF, realize_nextGadgetF lo hlo]
      try simp only [pairVal, coords, Function.comp_def, Matrix.cons_val_zero,
        Matrix.cons_val_succ, Matrix.cons_val_one, Matrix.cons_val_fin_one, Prod.eta]
      try simp only [raw_next_iff, ← Subtype.ext_iff]
      simp_all [OrderedCells.Adjacent, OrderedCells.SameRow, OrderedCells.NextRow,
        OrderedCells.col, eq_comm, or_assoc, or_comm, and_assoc]

theorem cell_pair_first (x y : OrderedCells.Cell (G lo)) :
    (cellF (cellValue lo x).1 (coords 0)).Realize
      (pairVal (cellValue lo x) (cellValue lo y)) := by
  apply (realize_cellF lo hlo _ _).mpr
  change ValidCell SSElem SSFam SSMem SSMarked lo (cellValue lo x)
  exact cellValue_valid lo x

theorem cell_pair_second (x y : OrderedCells.Cell (G lo)) :
    (cellF (cellValue lo y).1 (coords 1)).Realize
      (pairVal (cellValue lo x) (cellValue lo y)) := by
  apply (realize_cellF lo hlo _ _).mpr
  change ValidCell SSElem SSFam SSMem SSMarked lo (cellValue lo y)
  exact cellValue_valid lo y

theorem cells_index_iff (x y : OrderedCells.Cell (G lo)) :
    BoardEncoding.IndexLe (cellsEquiv lo hlo x).val (cellsEquiv lo hlo y).val ↔
      OrderedCells.IndexLe x y := by
  simp only [cellsEquiv_val, BoardEncoding.IndexLe, BoardEncoding.Binary]
  change ((cellF (cellValue lo x).1 (coords 0) ⊓ cellF (cellValue lo y).1 (coords 1) ⊓
    rawIndexLeF (cellValue lo x).1 (cellValue lo y).1 (coords 0) (coords 1)).Realize
      (pairVal (cellValue lo x) (cellValue lo y))) ↔ _
  simp only [Formula.realize_inf, cell_pair_first lo hlo, cell_pair_second lo hlo,
    true_and]
  exact raw_index_iff lo hlo x y

theorem cells_adjacent_iff (x y : OrderedCells.Cell (G lo)) :
    BoardEncoding.Adjacent (cellsEquiv lo hlo x).val (cellsEquiv lo hlo y).val ↔
      OrderedCells.Adjacent x y := by
  simp only [cellsEquiv_val, BoardEncoding.Adjacent, BoardEncoding.Binary]
  change ((cellF (cellValue lo x).1 (coords 0) ⊓ cellF (cellValue lo y).1 (coords 1) ⊓
    rawAdjacentF (cellValue lo x).1 (cellValue lo y).1 (coords 0) (coords 1)).Realize
      (pairVal (cellValue lo x) (cellValue lo y))) ↔ _
  simp only [Formula.realize_inf, cell_pair_first lo hlo, cell_pair_second lo hlo,
    true_and]
  exact raw_adjacent_iff lo hlo x y

def unaryVal (p : Token A) (ij : Fin 1 × Fin 4) : A := (![p] ij.1).2 ij.2

theorem cells_edge_iff (x : OrderedCells.Cell (G lo)) :
    BoardEncoding.OnEdge (cellsEquiv lo hlo x).val ↔ OrderedCells.OnEdge x := by
  simp only [cellsEquiv_val, BoardEncoding.OnEdge, BoardEncoding.Unary]
  change ((cellF (cellValue lo x).1 (fun i => (0,i)) ⊓
      rawEdgeF (cellValue lo x).1 (fun i => (0,i))).Realize (unaryVal (cellValue lo x))) ↔ _
  have hc : (cellF (cellValue lo x).1 (fun i => (0,i))).Realize (unaryVal (cellValue lo x)) := by
    apply (realize_cellF lo hlo _ _).mpr
    exact cellValue_valid lo x
  simp only [Formula.realize_inf, hc, true_and]
  rcases x with col | ⟨g,ph,col⟩
  · exact Formula.realize_top
  · by_cases hb : col = 0 ∨ col = 4
    · rcases hb with hb | hb <;> simp [cellValue, rawEdgeF, hb, OrderedCells.OnEdge]
    · by_cases hp : ph = 1
      · simp only [cellValue, rawEdgeF, hb, hp, ↓reduceIte,
          realize_lastGadgetF lo hlo, Function.comp_def, unaryVal, Matrix.cons_val_zero, Prod.eta]
        rw [raw_last_iff]
        have h0 := (not_or.mp hb).1
        have h4 := (not_or.mp hb).2
        simp [OrderedCells.OnEdge, h0, h4, hp]
      · simp [cellValue, rawEdgeF, hb, hp, OrderedCells.OnEdge]

end EncloseHorse.Hardness.FOEncoding
end
