import EncloseHorseVerified.Hardness.OrderedRepresentation
import EncloseHorseVerified.Hardness.Reduction
import EncloseHorseVerified.Hardness.GameTransport

/-! A complete decision bridge from expanded ordered-token models to the actual game. -/
namespace EncloseHorse.Hardness.OrderedCells

open FirstOrder DescriptiveComplexity BoardEncoding Geometry BoardGadgets

variable {G A : Type} [Fintype G] [LinearOrder G]
  [FirstOrder.Language.encloseBoard.Structure A] [Finite A]

/-- Once the first-order formulas have their explicit cell semantics, the target
is the ordinary game on the materialized matrix. No alternate board witness can
change its answer. -/
theorem SemanticModel.gameYES_iff_cover {decode : G → Gadget} {budget : Nat}
    (m : SemanticModel (A := A) decode budget)
    (hhorse : ∃ x : Cell G, cellTile decode x = .horse ∧
      ∀ y : Cell G, cellTile decode y = .horse → y = x)
    (a : CoverInstance) (tail : List Gadget)
    (hsorted : sortedGadgets decode = .root :: tail)
    (hperm : (.root :: tail).Perm (BoardGadgets.gadgets a))
    (hbudget : budget = 10 * (.root :: tail).length + 5)
    (hthreshold : BoardEncoding.threshold A = formalThreshold a) :
    BoardEncoding.GameYES.Holds A ↔ CoverYES a := by
  have hr := m.represents hhorse
  rw [hr.gameYES_iff, hsorted, hbudget, hthreshold]
  exact (BoardReduction.cover_iff_actual_winning a tail hperm).symm

end EncloseHorse.Hardness.OrderedCells
