import EncloseHorseVerified.Hardness.SortedTokens
import EncloseHorseVerified.Hardness.TokenRoot
import EncloseHorseVerified.Hardness.OrderedReduction

/-! The source-specific bridge from a first-order cell model to the actual game. -/
namespace EncloseHorse.Hardness.FOTokens

open FirstOrder DescriptiveComplexity Geometry OrderedCells TokenPermutation TokenRoot

variable {A B : Type} [Finite A] [LinearOrder A]
  [FirstOrder.Language.encloseBoard.Structure B] [Finite B]

/-- All root, ordering, multiplicity and board-semantics obligations are proved
here. The remaining inputs are the interpretation's local formula semantics
and its explicit unary threshold count. -/
theorem gameYES_iff_encodedCover (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    [Fintype (GadgetToken E F M K lo)]
    (m : SemanticModel (A := B) (tokenDecode E F M K lo)
      (10 * Fintype.card (GadgetToken E F M K lo) + 5))
    (ht : BoardEncoding.threshold B =
      BoardGadgets.formalThreshold (SourceEncoding.encode E F M K)) :
    BoardEncoding.GameYES.Holds B ↔ CoverYES (SourceEncoding.encode E F M K) := by
  let G := GadgetToken E F M K lo
  let d := tokenDecode E F M K lo
  let r := rootToken E F M K lo
  have hr : d r = .root := decode_rootToken E F M K lo _ _
  have hu : ∀ g, d g = .root → g = r := unique_decode_root E F M K lo _ _
  have hh := unique_cellHorse d r hr hu
  obtain ⟨tail,hs⟩ := sortedGadgets_root_head d r hr (rootToken_le E F M K lo)
  have hp : (Gadget.root :: tail).Perm
      (BoardGadgets.gadgets (SourceEncoding.encode E F M K)) := by
    rw [← hs]
    exact sortedTokens_perm E F M K lo
  have hn : Fintype.card G = (Gadget.root :: tail).length := by
    rw [← hs, sortedGadgets_length]
  exact m.gameYES_iff_cover hh (SourceEncoding.encode E F M K) tail hs hp
    (by rw [← hn]) ht

/-- The final semantic source problem agrees with the existing library's Set
Cover predicate, rather than with a newly invented hardness source. -/
theorem gameYES_iff_coversOn (E F : A → Prop) (M : A → A → Prop) (K : A → Prop) (lo : A)
    [Fintype (GadgetToken E F M K lo)]
    (m : SemanticModel (A := B) (tokenDecode E F M K lo)
      (10 * Fintype.card (GadgetToken E F M K lo) + 5))
    (ht : BoardEncoding.threshold B =
      BoardGadgets.formalThreshold (SourceEncoding.encode E F M K)) :
    BoardEncoding.GameYES.Holds B ↔ DescriptiveComplexity.CoversOn E F M K :=
  (gameYES_iff_encodedCover E F M K lo m ht).trans
    (SourceEncoding.coverYES_encode_iff E F M K)

end EncloseHorse.Hardness.FOTokens
