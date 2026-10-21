import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock4 : List Nat := [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]

def baseBlock4 : CNF := [[(128,false),(129,false)],[(129,false),(126,true),(127,true)],[(129,false),(130,true),(131,true)],[(130,false),(131,false)],[(131,false),(128,true),(129,true)],[(131,false),(132,true),(133,true)],[(131,false),(154,true),(155,true)],[(132,false),(133,false)],[(133,false),(108,true),(109,true)],[(133,false),(130,true),(131,true)],[(133,false),(134,true),(135,true)],[(134,false),(135,false)],[(135,false),(110,true),(111,true)],[(135,false),(132,true),(133,true)],[(135,false),(136,true),(137,true)],[(136,false),(137,false)],[(137,false),(112,true),(113,true)],[(137,false),(134,true),(135,true)],[(137,false),(138,true),(139,true)],[(137,false),(160,true),(161,true)],[(138,false),(139,false)],[(139,false),(114,true),(115,true)],[(139,false),(136,true),(137,true)],[(139,false),(140,true),(141,true)],[(139,false),(162,true),(163,true)],[(140,false),(141,false)],[(141,false),(116,true),(117,true)],[(141,false),(138,true),(139,true)],[(141,false),(164,true),(165,true)],[(142,false)],[(143,false)],[(143,false)],[(142,false),(143,false)],[(145,false)],[(144,false),(145,false)],[(145,false),(146,true),(147,true)],[(146,false),(147,false)],[(147,false),(122,true),(123,true)],[(147,false),(144,true),(145,true)],[(147,false),(148,true),(149,true)],[(147,false),(170,true),(171,true)],[(148,false),(149,false)],[(149,false),(124,true),(125,true)],[(149,false),(146,true),(147,true)],[(149,false),(150,true),(151,true)],[(149,false),(172,true),(173,true)],[(150,false),(151,false)],[(151,false),(126,true),(127,true)],[(151,false),(148,true),(149,true)],[(151,false),(174,true),(175,true)],[(152,false)],[(153,false)],[(152,false),(153,false)],[(154,false),(155,false)],[(155,false),(130,true),(131,true)],[(156,false)],[(157,false)],[(156,false),(157,false)],[(158,false)],[(159,false)],[(158,false),(159,false)]]

theorem baseBlock4_eq :
    cellBlock4.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock4 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
