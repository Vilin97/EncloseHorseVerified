import EncloseHorseVerified.Hardness.FOCellModel
import EncloseHorseVerified.Hardness.TokenCounters

/-! Exact numeric side data of the fixed expanded-board interpretation. -/
noncomputable section
namespace EncloseHorse.Hardness.FOEncoding
open FirstOrder DescriptiveComplexity Language Structure FOTokens

variable {A : Type} [Src.Structure A] [LinearOrder A]
variable (lo : A) (hlo : ∀ a, lo ≤ a)

/-- The unary wall budget names exactly all physical cells. -/
theorem out_budget (p : Out (A := A)) :
    BoardEncoding.Budget p ↔ BoardEncoding.Cell p := by rfl

variable [Finite A]
include hlo

/-- Every physical matrix entry, including water, contributes one budget token. -/
theorem out_budget_count :
    {p : Out (A := A) | BoardEncoding.Budget p}.ncard = 10 * Nat.card (G lo) + 5 := by
  have hs : {p : Out (A := A) | BoardEncoding.Budget p} =
      {p : Out (A := A) | BoardEncoding.Cell p} := Set.ext out_budget
  rw [hs, ← Nat.card_coe_set_eq]
  change Nat.card {p : Out (A := A) // BoardEncoding.Cell p} = _
  rw [← Nat.card_congr (cellsEquiv lo hlo)]
  simp only [OrderedCells.Cell, Nat.card_sum, Nat.card_prod, Nat.card_fin]
  omega


/-- The two explicit unary side counters encode the exact signed source threshold. -/
theorem out_threshold : BoardEncoding.threshold (Out (A := A)) =
    BoardGadgets.formalThreshold (SourceEncoding.encode (SSElem (A := A)) SSFam SSMem SSMarked) := by
  have hp : {p : Out (A := A) | BoardEncoding.ThresholdPlus p} =
      {p : FOTokens.Token A | Plus SSElem SSFam SSMem SSMarked lo p} :=
    Set.ext (out_plus lo hlo)
  have hm : {p : Out (A := A) | BoardEncoding.ThresholdMinus p} =
      {p : FOTokens.Token A | Minus SSElem SSFam SSMem SSMarked lo p} :=
    Set.ext (out_minus lo hlo)
  unfold BoardEncoding.threshold
  rw [hp, hm]
  change (({p : FOTokens.Token A | Plus SSElem SSFam SSMem SSMarked lo p}.ncard : Nat) : Int) -
      (({p : FOTokens.Token A | Minus SSElem SSFam SSMem SSMarked lo p}.ncard : Nat) : Int) = _
  rw [TokenPermutation.ncard_plus, TokenPermutation.ncard_minus]
  simp only [BoardGadgets.formalThreshold, Int.natCast_add, Int.natCast_mul]

end EncloseHorse.Hardness.FOEncoding
end
