import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock3 : List Nat := [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]

def baseBlock3 : CNF := [[(96,false),(97,false)],[(97,false),(62,true),(63,true)],[(97,false),(98,true),(99,true)],[(97,false),(130,true),(131,true)],[(98,false),(99,false)],[(99,false),(64,true),(65,true)],[(99,false),(96,true),(97,true)],[(99,false),(132,true),(133,true)],[(100,false)],[(101,false)],[(101,false)],[(100,false),(101,false)],[(102,false)],[(103,false)],[(103,false)],[(102,false),(103,false)],[(104,false),(105,false)],[(105,false),(70,true),(71,true)],[(105,false),(106,true),(107,true)],[(105,false),(138,true),(139,true)],[(106,false),(107,false)],[(107,false),(104,true),(105,true)],[(107,false),(108,true),(109,true)],[(107,false),(140,true),(141,true)],[(108,false),(109,false)],[(109,false),(106,true),(107,true)],[(109,false),(110,true),(111,true)],[(110,false),(111,false)],[(111,false),(76,true),(77,true)],[(111,false),(108,true),(109,true)],[(111,false),(112,true),(113,true)],[(112,false),(113,false)],[(113,false),(78,true),(79,true)],[(113,false),(110,true),(111,true)],[(113,false),(114,true),(115,true)],[(113,false),(146,true),(147,true)],[(114,false),(115,false)],[(115,false),(80,true),(81,true)],[(115,false),(112,true),(113,true)],[(115,false),(116,true),(117,true)],[(116,false),(117,false)],[(117,false),(114,true),(115,true)],[(117,false),(118,true),(119,true)],[(118,false),(119,false)],[(119,false),(84,true),(85,true)],[(119,false),(116,true),(117,true)],[(119,false),(120,true),(121,true)],[(119,false),(152,true),(153,true)],[(120,false),(121,false)],[(121,false),(86,true),(87,true)],[(121,false),(118,true),(119,true)],[(121,false),(122,true),(123,true)],[(122,false),(123,false)],[(123,false),(88,true),(89,true)],[(123,false),(120,true),(121,true)],[(123,false),(124,true),(125,true)],[(124,false),(125,false)],[(125,false),(90,true),(91,true)],[(125,false),(122,true),(123,true)],[(125,false),(126,true),(127,true)],[(126,false),(127,false)],[(127,false),(124,true),(125,true)],[(127,false),(128,true),(129,true)]]

theorem baseBlock3_eq :
    cellBlock3.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock3 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
