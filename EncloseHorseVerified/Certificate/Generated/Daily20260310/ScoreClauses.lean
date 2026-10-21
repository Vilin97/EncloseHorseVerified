import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode020

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310

def scoreLiteral : CNF := ScoreNodes.c368 ++ [[(2695,false)]]
theorem scoreTree_eq : counters.complement = ScoreNodes.t368 := by rfl

theorem complement_eq : counters.complement.atMostClauses counters.scoreBound = scoreLiteral := by
  unfold CounterTree.atMostClauses
  have hc : counters.complement.clauses = ScoreNodes.c368 := by
    rw [scoreTree_eq]
    exact ScoreNodes.eq368
  rw [hc]
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
