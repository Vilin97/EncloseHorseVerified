import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock2 : List Nat := [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]

def baseBlock2 : CNF := [[(64,false),(65,false)],[(65,false),(40,true),(41,true)],[(65,false),(62,true),(63,true)],[(66,false)],[(67,false)],[(66,false),(67,false)],[(68,false),(69,false)],[(69,false),(44,true),(45,true)],[(69,false),(70,true),(71,true)],[(69,false),(92,true),(93,true)],[(71,false)],[(70,false),(71,false)],[(71,false),(68,true),(69,true)],[(73,false)],[(72,false),(73,false)],[(73,false),(48,true),(49,true)],[(73,false),(74,true),(75,true)],[(74,false)],[(74,false),(75,false)],[(75,false),(50,true),(51,true)],[(75,false),(72,true),(73,true)],[(75,false),(76,true),(77,true)],[(75,false),(98,true),(99,true)],[(76,false),(77,false)],[(77,false),(52,true),(53,true)],[(77,false),(74,true),(75,true)],[(77,false),(78,true),(79,true)],[(78,false)],[(78,false),(79,false)],[(79,false),(54,true),(55,true)],[(79,false),(76,true),(77,true)],[(79,false),(102,true),(103,true)],[(80,false)],[(81,false)],[(80,false),(81,false)],[(82,false)],[(83,false)],[(82,false),(83,false)],[(84,false),(85,false)],[(85,false),(60,true),(61,true)],[(85,false),(86,true),(87,true)],[(85,false),(108,true),(109,true)],[(86,false),(87,false)],[(87,false),(62,true),(63,true)],[(87,false),(84,true),(85,true)],[(87,false),(110,true),(111,true)],[(88,false)],[(89,false)],[(88,false),(89,false)],[(90,false)],[(91,false)],[(90,false),(91,false)],[(92,false),(93,false)],[(93,false),(68,true),(69,true)],[(93,false),(116,true),(117,true)],[(94,false)],[(95,false)],[(95,false)],[(94,false),(95,false)]]

theorem baseBlock2_eq :
    cellBlock2.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock2 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
