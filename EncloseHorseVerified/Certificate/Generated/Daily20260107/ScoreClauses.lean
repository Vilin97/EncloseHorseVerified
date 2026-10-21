import EncloseHorseVerified.Certificate.Generated.Daily20260107.ScoreNode016

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107

def scoreLiteral : CNF := ScoreNodes.c258 ++ [[(1801,false)]]
theorem scoreTree_eq : counters.complement = ScoreNodes.t258 := by rfl

theorem complement_eq : counters.complement.atMostClauses counters.scoreBound = scoreLiteral := by
  unfold CounterTree.atMostClauses
  have hc : counters.complement.clauses = ScoreNodes.c258 := by
    rw [scoreTree_eq]
    exact ScoreNodes.eq258
  rw [hc]
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
