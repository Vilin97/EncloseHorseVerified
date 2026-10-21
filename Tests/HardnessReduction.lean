import EncloseHorseVerified.Hardness.OrderedReduction

open EncloseHorse EncloseHorse.Hardness
open EncloseHorse.Hardness.BoardGadgets EncloseHorse.Hardness.BoardReduction

private def singletonCover : CoverInstance := ⟨1, [[0]], 1⟩
private def uncoveredElement : CoverInstance := ⟨1, [], 0⟩

private theorem singleton_has_cover : CoverYES singletonCover := by
  refine ⟨[0], ?_, ?_, ?_, ?_⟩
  · simp
  · intro i hi
    have hi0 : i = 0 := by simpa using hi
    subst i
    decide
  · decide
  · intro e he
    have he0 : e = 0 := by change e < 1 at he; omega
    subst e
    exact ⟨0, by simp, by decide⟩

example : ∃ walls, admissible (reducedBoard singletonCover) walls ∧
    formalThreshold singletonCover ≤ score (reducedBoard singletonCover) walls :=
  (cover_iff_reducedBoard singletonCover).mp singleton_has_cover

private theorem empty_has_no_cover : ¬ CoverYES uncoveredElement := by
  rintro ⟨chosen, hc⟩
  obtain ⟨i, hi, hm⟩ := hc.cover 0 (by decide)
  have hir := hc.in_range i hi
  change i < 0 at hir
  omega

example : ¬ ∃ walls, admissible (reducedBoard uncoveredElement) walls ∧
    formalThreshold uncoveredElement ≤ score (reducedBoard uncoveredElement) walls := by
  intro h
  exact empty_has_no_cover ((cover_iff_reducedBoard uncoveredElement).mpr h)

#print axioms cover_iff_actual_winning
#print axioms cover_iff_reducedBoard

#print axioms EncloseHorse.Hardness.OrderedCells.SemanticModel.represents
#print axioms EncloseHorse.Hardness.OrderedCells.SemanticModel.gameYES_iff_cover
