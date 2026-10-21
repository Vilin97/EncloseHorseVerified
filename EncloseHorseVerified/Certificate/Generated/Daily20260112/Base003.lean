import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock3 : List Nat := [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]

def baseBlock3 : CNF := [[(96,false)],[(97,false)],[(96,false),(97,false)],[(98,false)],[(99,false)],[(98,false),(99,false)],[(100,false)],[(101,false)],[(100,false),(101,false)],[(102,false)],[(103,false)],[(102,false),(103,false)],[(104,false)],[(105,false)],[(104,false),(105,false)],[(106,false),(107,false)],[(107,false),(108,true),(109,true)],[(107,false),(144,true),(145,true)],[(108,false),(109,false)],[(109,false),(70,true),(71,true)],[(109,false),(106,true),(107,true)],[(109,false),(110,true),(111,true)],[(109,false),(146,true),(147,true)],[(110,false),(111,false)],[(111,false),(72,true),(73,true)],[(111,false),(108,true),(109,true)],[(112,false)],[(113,false)],[(113,false)],[(112,false),(113,false)],[(114,false)],[(115,false)],[(115,false)],[(114,false),(115,false)],[(116,false)],[(116,false),(117,false)],[(117,false),(78,true),(79,true)],[(117,false),(118,true),(119,true)],[(118,false)],[(118,false),(119,false)],[(119,false),(80,true),(81,true)],[(119,false),(116,true),(117,true)],[(119,false),(120,true),(121,true)],[(120,false)],[(120,false),(121,false)],[(121,false),(82,true),(83,true)],[(121,false),(118,true),(119,true)],[(122,false)],[(123,false)],[(122,false),(123,false)],[(124,false)],[(124,false),(125,false)],[(125,false),(124,true),(125,true)],[(125,false),(126,true),(127,true)],[(125,false),(462,true),(463,true)],[(126,false)],[(126,false),(127,false)],[(127,false),(88,true),(89,true)],[(127,false),(124,true),(125,true)],[(127,false),(128,true),(129,true)]]

theorem baseBlock3_eq : cellBlock3.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock3 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
