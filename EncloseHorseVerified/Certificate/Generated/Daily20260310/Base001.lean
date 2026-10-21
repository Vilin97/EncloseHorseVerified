import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock1 : List Nat := [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]

def baseBlock1 : CNF := [[(32,false)],[(33,false)],[(33,false)],[(32,false),(33,false)],[(34,false)],[(35,false)],[(35,false)],[(34,false),(35,false)],[(36,false),(37,false)],[(37,false),(38,true),(39,true)],[(37,false),(70,true),(71,true)],[(38,false),(39,false)],[(39,false),(36,true),(37,true)],[(39,false),(40,true),(41,true)],[(40,false),(41,false)],[(41,false),(38,true),(39,true)],[(41,false),(42,true),(43,true)],[(42,false),(43,false)],[(43,false),(40,true),(41,true)],[(43,false),(44,true),(45,true)],[(43,false),(76,true),(77,true)],[(44,false),(45,false)],[(45,false),(10,true),(11,true)],[(45,false),(42,true),(43,true)],[(45,false),(46,true),(47,true)],[(45,false),(78,true),(79,true)],[(46,false),(47,false)],[(47,false),(44,true),(45,true)],[(47,false),(48,true),(49,true)],[(47,false),(80,true),(81,true)],[(48,false),(49,false)],[(49,false),(46,true),(47,true)],[(49,false),(50,true),(51,true)],[(50,false),(51,false)],[(51,false),(48,true),(49,true)],[(51,false),(52,true),(53,true)],[(51,false),(84,true),(85,true)],[(52,false),(53,false)],[(53,false),(50,true),(51,true)],[(53,false),(54,true),(55,true)],[(53,false),(86,true),(87,true)],[(54,false),(55,false)],[(55,false),(20,true),(21,true)],[(55,false),(52,true),(53,true)],[(55,false),(56,true),(57,true)],[(55,false),(88,true),(89,true)],[(56,false),(57,false)],[(57,false),(54,true),(55,true)],[(57,false),(58,true),(59,true)],[(57,false),(90,true),(91,true)],[(58,false),(59,false)],[(59,false),(56,true),(57,true)],[(59,false),(60,true),(61,true)],[(60,false),(61,false)],[(61,false),(58,true),(59,true)],[(61,false),(62,true),(63,true)],[(62,false),(63,false)],[(63,false),(28,true),(29,true)],[(63,false),(60,true),(61,true)],[(63,false),(64,true),(65,true)],[(63,false),(96,true),(97,true)]]

theorem baseBlock1_eq :
    cellBlock1.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock1 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
