import EncloseHorseVerified.Hardness.FOCellTerrain
import EncloseHorseVerified.Hardness.FOCellRelations
import EncloseHorseVerified.Hardness.FONumeric
import EncloseHorseVerified.Hardness.FOGameBridge

/-! The fixed first-order formulas describe the actual expanded game matrix. -/
noncomputable section
namespace EncloseHorse.Hardness.FOEncoding

open FirstOrder DescriptiveComplexity Language Structure FOTokens

variable {A : Type} [Src.Structure A] [LinearOrder A] [Finite A]
variable (lo : A) (hlo : ∀ a, lo ≤ a)

local instance rawOrderM : LinearOrder (RawGadget A) := tagTupleOrder
local instance rawLEM : LE (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLE
local instance rawLTM : LT (RawGadget A) := (tagTupleOrder : LinearOrder (RawGadget A)).toLT
local instance gOrderM : LinearOrder (G lo) := FOEncoding.gOrder lo
local instance gLEM : LE (G lo) := (gOrderM lo).toLE
local instance gLTM : LT (G lo) := (gOrderM lo).toLT

/-- Every relation of the interpreted structure is proved to have its literal
physical meaning, for every cell of the rectangular matrix. -/
noncomputable def semanticModel [Fintype (G lo)] :
    OrderedCells.SemanticModel (A := Out (A := A))
      (tokenDecode SSElem SSFam SSMem SSMarked lo)
      (10 * Fintype.card (G lo) + 5) where
  cells := cellsEquiv lo hlo
  water_iff := cells_water_iff lo hlo familyLabels elementLabels
  grass_iff := cells_grass_iff lo hlo familyLabels elementLabels
  horse_iff := cells_horse_iff lo hlo familyLabels elementLabels
  cherry_iff := cells_cherry_iff lo hlo familyLabels elementLabels
  apple_iff := cells_apple_iff lo hlo familyLabels elementLabels
  bee_iff := cells_bee_iff lo hlo familyLabels elementLabels
  portal_iff := cells_portal_iff lo hlo familyLabels elementLabels
  edge_iff := cells_edge_iff lo hlo
  adjacent_iff := cells_adjacent_iff lo hlo
  portalLinked_iff := cells_portalLinked_iff lo hlo
  indexLe_iff := cells_index_iff lo hlo
  budget_eq := by
    simpa only [Nat.card_eq_fintype_card] using (out_budget_count lo hlo).symm

include hlo

/-- Kernel-checked correctness of the fixed syntactic compiler, through the
ordinary Board reachability and score definitions. -/
theorem interpreted_game_iff_cover : BoardEncoding.GameYES.Holds (Out (A := A)) ↔
    CoversOn (SSElem (A := A)) SSFam SSMem SSMarked := by
  letI : Fintype (G lo) := Fintype.ofFinite _
  letI : Finite (Out (A := A)) := inferInstanceAs (Finite (Tag × (Fin 4 → A)))
  exact (gameYES_iff_encodedCover SSElem SSFam SSMem SSMarked lo
    (semanticModel lo hlo) (out_threshold lo hlo)).trans
      (SourceEncoding.coverYES_encode_iff SSElem SSFam SSMem SSMarked)

end EncloseHorse.Hardness.FOEncoding
end
