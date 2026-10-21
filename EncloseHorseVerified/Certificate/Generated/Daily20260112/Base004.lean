import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock4 : List Nat := [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]

def baseBlock4 : CNF := [[(128,false)],[(128,false),(129,false)],[(129,false),(90,true),(91,true)],[(129,false),(126,true),(127,true)],[(130,false)],[(131,false)],[(130,false),(131,false)],[(132,false)],[(132,false),(133,false)],[(133,false),(94,true),(95,true)],[(133,false),(134,true),(135,true)],[(134,false)],[(134,false),(135,false)],[(135,false),(132,true),(133,true)],[(135,false),(134,true),(135,true)],[(135,false),(182,true),(183,true)],[(136,false)],[(137,false)],[(136,false),(137,false)],[(138,false)],[(139,false)],[(138,false),(139,false)],[(140,false),(141,false)],[(141,false),(142,true),(143,true)],[(141,false),(178,true),(179,true)],[(142,false),(143,false)],[(143,false),(140,true),(141,true)],[(143,false),(144,true),(145,true)],[(143,false),(180,true),(181,true)],[(144,false),(145,false)],[(145,false),(106,true),(107,true)],[(145,false),(142,true),(143,true)],[(145,false),(146,true),(147,true)],[(145,false),(182,true),(183,true)],[(146,false),(147,false)],[(147,false),(108,true),(109,true)],[(147,false),(144,true),(145,true)],[(147,false),(184,true),(185,true)],[(148,false)],[(149,false)],[(148,false),(149,false)],[(150,false)],[(151,false)],[(151,false)],[(150,false),(151,false)],[(152,false)],[(153,false)],[(153,false)],[(152,false),(153,false)],[(154,false)],[(155,false)],[(154,false),(155,false)],[(156,false)],[(157,false)],[(156,false),(157,false)],[(158,false)],[(159,false)],[(158,false),(159,false)]]

theorem baseBlock4_eq : cellBlock4.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock4 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
