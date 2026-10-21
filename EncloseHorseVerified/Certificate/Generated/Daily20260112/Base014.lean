import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock14 : List Nat := [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239]

def baseBlock14 : CNF := [[(448,false)],[(449,false)],[(448,false),(449,false)],[(450,false)],[(451,false)],[(450,false),(451,false)],[(452,false)],[(453,false)],[(452,false),(453,false)],[(454,false)],[(455,false)],[(455,false)],[(454,false),(455,false)],[(457,false)],[(456,false),(457,false)],[(457,false),(458,true),(459,true)],[(458,false),(459,false)],[(459,false),(420,true),(421,true)],[(459,false),(456,true),(457,true)],[(459,false),(460,true),(461,true)],[(459,false),(496,true),(497,true)],[(460,false),(461,false)],[(461,false),(422,true),(423,true)],[(461,false),(458,true),(459,true)],[(461,false),(462,true),(463,true)],[(461,false),(498,true),(499,true)],[(462,false)],[(462,false),(463,false)],[(463,false),(124,true),(125,true)],[(463,false),(424,true),(425,true)],[(463,false),(460,true),(461,true)],[(463,false),(462,true),(463,true)],[(463,false),(464,true),(465,true)],[(463,false),(500,true),(501,true)],[(464,false),(465,false)],[(465,false),(426,true),(427,true)],[(465,false),(462,true),(463,true)],[(465,false),(466,true),(467,true)],[(465,false),(502,true),(503,true)],[(466,false),(467,false)],[(467,false),(428,true),(429,true)],[(467,false),(464,true),(465,true)],[(468,false)],[(469,false)],[(468,false),(469,false)],[(470,false)],[(471,false)],[(470,false),(471,false)],[(472,false),(473,false)],[(473,false),(434,true),(435,true)],[(473,false),(474,true),(475,true)],[(474,false),(475,false)],[(475,false),(436,true),(437,true)],[(475,false),(472,true),(473,true)],[(475,false),(476,true),(477,true)],[(475,false),(512,true),(513,true)],[(476,false),(477,false)],[(477,false),(438,true),(439,true)],[(477,false),(474,true),(475,true)],[(477,false),(478,true),(479,true)],[(477,false),(514,true),(515,true)],[(478,false),(479,false)],[(479,false),(440,true),(441,true)],[(479,false),(476,true),(477,true)]]

theorem baseBlock14_eq : cellBlock14.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock14 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
