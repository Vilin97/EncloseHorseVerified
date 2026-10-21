import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock18 : List Nat := [288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303]

def baseBlock18 : CNF := [[(576,false),(577,false)],[(577,false),(574,true),(575,true)],[(577,false),(614,true),(615,true)],[(578,false)],[(579,false)],[(578,false),(579,false)],[(580,false)],[(581,false)],[(580,false),(581,false)],[(582,false)],[(583,false)],[(582,false),(583,false)],[(584,false)],[(585,false)],[(584,false),(585,false)],[(586,false)],[(587,false)],[(586,false),(587,false)],[(588,false),(589,false)],[(589,false),(550,true),(551,true)],[(589,false),(590,true),(591,true)],[(589,false),(626,true),(627,true)],[(590,false),(591,false)],[(591,false),(552,true),(553,true)],[(591,false),(588,true),(589,true)],[(591,false),(628,true),(629,true)],[(592,false)],[(593,false)],[(592,false),(593,false)],[(594,false)],[(595,false)],[(594,false),(595,false)],[(596,false),(597,false)],[(597,false),(598,true),(599,true)],[(597,false),(634,true),(635,true)],[(598,false),(599,false)],[(599,false),(560,true),(561,true)],[(599,false),(596,true),(597,true)],[(599,false),(600,true),(601,true)],[(599,false),(636,true),(637,true)],[(600,false),(601,false)],[(601,false),(562,true),(563,true)],[(601,false),(598,true),(599,true)],[(601,false),(602,true),(603,true)],[(601,false),(638,true),(639,true)],[(602,false),(603,false)],[(603,false),(564,true),(565,true)],[(603,false),(600,true),(601,true)],[(603,false),(604,true),(605,true)],[(603,false),(640,true),(641,true)],[(604,false),(605,false)],[(605,false),(566,true),(567,true)],[(605,false),(602,true),(603,true)],[(605,false),(606,true),(607,true)],[(605,false),(642,true),(643,true)],[(607,false)],[(606,false),(607,false)],[(607,false),(568,true),(569,true)],[(607,false),(604,true),(605,true)]]

theorem baseBlock18_eq : cellBlock18.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock18 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
