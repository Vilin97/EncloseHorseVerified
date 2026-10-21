import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock11 : List Nat := [176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]

def baseBlock11 : CNF := [[(352,false),(353,false)],[(353,false),(354,true),(355,true)],[(353,false),(390,true),(391,true)],[(354,false),(355,false)],[(355,false),(316,true),(317,true)],[(355,false),(352,true),(353,true)],[(355,false),(356,true),(357,true)],[(355,false),(392,true),(393,true)],[(356,false),(357,false)],[(357,false),(318,true),(319,true)],[(357,false),(354,true),(355,true)],[(357,false),(358,true),(359,true)],[(357,false),(394,true),(395,true)],[(358,false),(359,false)],[(359,false),(320,true),(321,true)],[(359,false),(356,true),(357,true)],[(359,false),(360,true),(361,true)],[(359,false),(396,true),(397,true)],[(360,false),(361,false)],[(361,false),(322,true),(323,true)],[(361,false),(358,true),(359,true)],[(361,false),(362,true),(363,true)],[(361,false),(398,true),(399,true)],[(362,false),(363,false)],[(363,false),(360,true),(361,true)],[(363,false),(400,true),(401,true)],[(364,false)],[(365,false)],[(364,false),(365,false)],[(366,false)],[(367,false)],[(366,false),(367,false)],[(368,false)],[(369,false)],[(368,false),(369,false)],[(370,false),(371,false)],[(371,false),(332,true),(333,true)],[(371,false),(372,true),(373,true)],[(371,false),(408,true),(409,true)],[(372,false),(373,false)],[(373,false),(334,true),(335,true)],[(373,false),(370,true),(371,true)],[(374,false)],[(375,false)],[(374,false),(375,false)],[(376,false),(377,false)],[(377,false),(338,true),(339,true)],[(377,false),(378,true),(379,true)],[(379,false)],[(378,false),(379,false)],[(379,false),(340,true),(341,true)],[(379,false),(376,true),(377,true)],[(379,false),(416,true),(417,true)],[(380,false)],[(381,false)],[(381,false)],[(380,false),(381,false)],[(382,false),(383,false)],[(383,false),(344,true),(345,true)],[(383,false),(384,true),(385,true)],[(383,false),(420,true),(421,true)]]

theorem baseBlock11_eq : cellBlock11.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock11 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
