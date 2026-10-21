import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock2 : List Nat := [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]

def baseBlock2 : CNF := [[(64,false),(65,false)],[(65,false),(62,true),(63,true)],[(65,false),(98,true),(99,true)],[(66,false)],[(67,false)],[(67,false)],[(66,false),(67,false)],[(68,false)],[(69,false)],[(69,false)],[(68,false),(69,false)],[(70,false),(71,false)],[(71,false),(36,true),(37,true)],[(71,false),(104,true),(105,true)],[(72,false)],[(73,false)],[(72,false),(73,false)],[(74,false)],[(75,false)],[(74,false),(75,false)],[(76,false),(77,false)],[(77,false),(42,true),(43,true)],[(77,false),(78,true),(79,true)],[(77,false),(110,true),(111,true)],[(78,false),(79,false)],[(79,false),(44,true),(45,true)],[(79,false),(76,true),(77,true)],[(79,false),(80,true),(81,true)],[(79,false),(112,true),(113,true)],[(80,false),(81,false)],[(81,false),(46,true),(47,true)],[(81,false),(78,true),(79,true)],[(81,false),(114,true),(115,true)],[(82,false)],[(83,false)],[(82,false),(83,false)],[(84,false),(85,false)],[(85,false),(50,true),(51,true)],[(85,false),(86,true),(87,true)],[(85,false),(118,true),(119,true)],[(86,false),(87,false)],[(87,false),(52,true),(53,true)],[(87,false),(84,true),(85,true)],[(87,false),(88,true),(89,true)],[(87,false),(120,true),(121,true)],[(88,false),(89,false)],[(89,false),(54,true),(55,true)],[(89,false),(86,true),(87,true)],[(89,false),(90,true),(91,true)],[(89,false),(122,true),(123,true)],[(90,false),(91,false)],[(91,false),(56,true),(57,true)],[(91,false),(88,true),(89,true)],[(91,false),(124,true),(125,true)],[(92,false)],[(93,false)],[(92,false),(93,false)],[(94,false)],[(95,false)],[(94,false),(95,false)]]

theorem baseBlock2_eq :
    cellBlock2.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock2 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
