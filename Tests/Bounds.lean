import EncloseHorseVerified.Bounds

namespace EncloseHorse.BoundsTests

private def forcedBees : Board := Board.ofRows
  ["~~~~~", "~HSS~", "~~~~~"] 0

-- The forced negative score is retained in the signed bound.
example : score forcedBees [] = -7 := by decide +kernel
example : upperBound forcedBees [] = 1 := by decide +kernel
example : completionBound forcedBees [] [] = -7 := by decide +kernel
example : score forcedBees [] ≤ completionBound forcedBees [] [] := by
  apply score_le_completionBound
  · exact fun _ h => h
  · exact fun _ h => h
  · decide +kernel

private def openField : Board := Board.ofRows
  ["...", ".H.", "..."] 0

example : enclosed openField [] = false := by decide +kernel

example (walls : Placement) (h : walls ⊆ []) : enclosed openField walls ≠ true := by
  exact no_enclosure_of_maximal openField [] walls h (by decide +kernel)

#print axioms reach_antitone
#print axioms enclosed_monotone
#print axioms score_le_upperBound
#print axioms score_le_completionBound

end EncloseHorse.BoundsTests
