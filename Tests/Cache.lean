import EncloseHorseVerified.Cache

namespace EncloseHorse.CacheTests

private def openField : Board := Board.ofRows ["...", ".H.", "..."] 1
private def c := GraphCache.ofBoard openField

-- Static adjacency, dynamic walls and out-of-range queries.
example : c.edge [] 4 1 = true := by decide +kernel
example : c.edge [1] 4 1 = false := by decide +kernel
example : c.edge [] 100 4 = false := by decide +kernel
example : c.tileAt 100 = .water := by decide +kernel

private def forcedBees : Board := Board.ofRows ["~~~~~", "~HSS~", "~~~~~"] 0
private def bees := GraphCache.ofBoard forcedBees

example : bees.score [] = -7 := by
  rw [bees.score_eq]
  decide +kernel

example : bees.completionBound [] [] = -7 := by
  rw [bees.completionBound_eq]
  decide +kernel

#print axioms GraphCache.reach_eq
#print axioms GraphCache.score_eq
#print axioms GraphCache.completionBound_eq

end EncloseHorse.CacheTests
