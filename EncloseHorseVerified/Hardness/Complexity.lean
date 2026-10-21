import EncloseHorseVerified.Hardness.FOModel
import DescriptiveComplexity.Problems.SetFamily

/-!
# NP-hardness of the actual physical board game

This is an ordered first-order reduction, with four source coordinates and a
fixed finite tag type. Its target explicitly names every physical matrix cell,
its terrain, geometric adjacency, boundary, portal links, and unary numeric
side data. Correctness was proved through the ordinary `Board` game semantics.

`NP` is the existing descriptive-complexity library's existential second-order
class, and the source is its proved NP-hard Set Cover problem. The reduction
uses that library's actual syntax and correctness interface; polynomial output
size is not substituted for a polynomial-time reduction proof.
-/
noncomputable section
namespace EncloseHorse.Hardness

open FirstOrder DescriptiveComplexity Language Structure

/-- Set Cover reduces to the ordinary game on explicitly expanded width-five
physical boards. Correctness holds for every finite nonempty ordered source,
as required by `OrderedFOReduction`. -/
noncomputable def setCover_fo_reduction_encloseHorse :
    OrderedFOReduction SetCover BoardEncoding.GameYES where
  Tag := FOTokens.Tag
  dim := 4
  toInterpretation := FOEncoding.interpretation
  correct A _ _ _ _ := by
    classical
    letI : Fintype A := Fintype.ofFinite A
    let lo : A := Finset.univ.min' Finset.univ_nonempty
    have hlo : ∀ a : A, lo ≤ a := fun a => Finset.min'_le _ a (Finset.mem_univ a)
    change (Finite A ∧ CoversOn (SSElem (A := A)) SSFam SSMem SSMarked) ↔ _
    exact (and_iff_right (show Finite A from inferInstance)).trans
      (FOEncoding.interpreted_game_iff_cover lo hlo).symm

/-- **Enclose Horse is NP-hard**, by the proved first-order Set Cover reduction.
No game-to-graph correspondence, reduction correctness, or source hardness is
assumed as an axiom or as a theorem parameter. -/
theorem encloseHorse_NP_hard : NP.Hard BoardEncoding.GameYES :=
  NP.hard_of_orderedReduction setCover_fo_reduction_encloseHorse setCover_NP_hard

end EncloseHorse.Hardness
end
