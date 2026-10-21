import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode024

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112

def scoreLiteral : CNF := ScoreNodes.c444 ++ [[(3081,false)]]

theorem scoreTree_eq : counters.complement = ScoreNodes.t444 := by rfl

theorem complement_eq : counters.complement.atMostClauses counters.scoreBound = scoreLiteral := by
  unfold CounterTree.atMostClauses
  have hc : counters.complement.clauses = ScoreNodes.c444 := by
    rw [scoreTree_eq]
    exact ScoreNodes.eq444
  rw [hc]
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
