import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock2 : List Nat := [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]

def baseBlock2 : CNF := [[(64,false)],[(65,false)],[(64,false),(65,false)],[(66,false)],[(67,false)],[(66,false),(67,false)],[(68,false)],[(69,false)],[(68,false),(69,false)],[(70,false),(71,false)],[(71,false),(72,true),(73,true)],[(71,false),(108,true),(109,true)],[(72,false),(73,false)],[(73,false),(70,true),(71,true)],[(73,false),(74,true),(75,true)],[(73,false),(110,true),(111,true)],[(75,false)],[(74,false),(75,false)],[(75,false),(72,true),(73,true)],[(76,false)],[(77,false)],[(77,false)],[(76,false),(77,false)],[(78,false)],[(78,false),(79,false)],[(79,false),(40,true),(41,true)],[(79,false),(80,true),(81,true)],[(79,false),(116,true),(117,true)],[(80,false)],[(80,false),(81,false)],[(81,false),(42,true),(43,true)],[(81,false),(78,true),(79,true)],[(81,false),(82,true),(83,true)],[(81,false),(118,true),(119,true)],[(82,false)],[(82,false),(83,false)],[(83,false),(44,true),(45,true)],[(83,false),(80,true),(81,true)],[(83,false),(120,true),(121,true)],[(84,false)],[(85,false)],[(84,false),(85,false)],[(86,false)],[(87,false)],[(86,false),(87,false)],[(88,false)],[(88,false),(89,false)],[(89,false),(50,true),(51,true)],[(89,false),(90,true),(91,true)],[(89,false),(126,true),(127,true)],[(90,false)],[(90,false),(91,false)],[(91,false),(52,true),(53,true)],[(91,false),(88,true),(89,true)],[(91,false),(128,true),(129,true)],[(92,false)],[(93,false)],[(92,false),(93,false)],[(94,false)],[(94,false),(95,false)],[(95,false),(56,true),(57,true)],[(95,false),(132,true),(133,true)]]

theorem baseBlock2_eq : cellBlock2.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock2 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
