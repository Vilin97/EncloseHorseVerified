import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock11 : List Nat := [176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]

def baseBlock11 : CNF := [[(352,false),(353,false)],[(353,false),(350,true),(351,true)],[(353,false),(354,true),(355,true)],[(353,false),(386,true),(387,true)],[(354,false),(355,false)],[(355,false),(352,true),(353,true)],[(355,false),(356,true),(357,true)],[(355,false),(388,true),(389,true)],[(356,false),(357,false)],[(357,false),(354,true),(355,true)],[(357,false),(358,true),(359,true)],[(357,false),(390,true),(391,true)],[(358,false),(359,false)],[(359,false),(356,true),(357,true)],[(359,false),(360,true),(361,true)],[(359,false),(392,true),(393,true)],[(360,false),(361,false)],[(361,false),(358,true),(359,true)],[(361,false),(362,true),(363,true)],[(361,false),(394,true),(395,true)],[(362,false),(363,false)],[(363,false),(328,true),(329,true)],[(363,false),(360,true),(361,true)],[(363,false),(364,true),(365,true)],[(363,false),(396,true),(397,true)],[(364,false),(365,false)],[(365,false),(330,true),(331,true)],[(365,false),(362,true),(363,true)],[(365,false),(398,true),(399,true)],[(366,false)],[(367,false)],[(366,false),(367,false)],[(368,false),(369,false)],[(369,false),(334,true),(335,true)],[(369,false),(370,true),(371,true)],[(369,false),(402,true),(403,true)],[(370,false),(371,false)],[(371,false),(336,true),(337,true)],[(371,false),(368,true),(369,true)],[(371,false),(404,true),(405,true)],[(372,false)],[(373,false)],[(373,false)],[(372,false),(373,false)],[(375,false)],[(374,false),(375,false)],[(375,false),(376,true),(377,true)],[(376,false),(377,false)],[(377,false),(342,true),(343,true)],[(377,false),(374,true),(375,true)],[(377,false),(378,true),(379,true)],[(377,false),(410,true),(411,true)],[(378,false),(379,false)],[(379,false),(344,true),(345,true)],[(379,false),(376,true),(377,true)],[(379,false),(412,true),(413,true)],[(380,false)],[(381,false)],[(380,false),(381,false)],[(382,false),(383,false)],[(383,false),(348,true),(349,true)],[(383,false),(384,true),(385,true)]]

theorem baseBlock11_eq :
    cellBlock11.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock11 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
