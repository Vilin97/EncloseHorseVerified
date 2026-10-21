import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock14 : List Nat := [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239]

def baseBlock14 : CNF := [[(448,false),(449,false)],[(449,false),(446,true),(447,true)],[(449,false),(450,true),(451,true)],[(450,false),(451,false)],[(451,false),(448,true),(449,true)],[(451,false),(452,true),(453,true)],[(452,false),(453,false)],[(453,false),(450,true),(451,true)],[(453,false),(454,true),(455,true)],[(454,false),(455,false)],[(455,false),(452,true),(453,true)],[(455,false),(456,true),(457,true)],[(456,false),(457,false)],[(457,false),(454,true),(455,true)],[(457,false),(458,true),(459,true)],[(457,false),(490,true),(491,true)],[(458,false),(459,false)],[(459,false),(424,true),(425,true)],[(459,false),(456,true),(457,true)],[(459,false),(460,true),(461,true)],[(459,false),(492,true),(493,true)],[(460,false),(461,false)],[(461,false),(458,true),(459,true)],[(461,false),(462,true),(463,true)],[(461,false),(494,true),(495,true)],[(462,false),(463,false)],[(463,false),(460,true),(461,true)],[(463,false),(464,true),(465,true)],[(464,false),(465,false)],[(465,false),(430,true),(431,true)],[(465,false),(462,true),(463,true)],[(465,false),(466,true),(467,true)],[(465,false),(498,true),(499,true)],[(466,false),(467,false)],[(467,false),(464,true),(465,true)],[(467,false),(468,true),(469,true)],[(468,false),(469,false)],[(469,false),(466,true),(467,true)],[(469,false),(470,true),(471,true)],[(470,false),(471,false)],[(471,false),(436,true),(437,true)],[(471,false),(468,true),(469,true)],[(471,false),(472,true),(473,true)],[(472,false),(473,false)],[(473,false),(438,true),(439,true)],[(473,false),(470,true),(471,true)],[(473,false),(506,true),(507,true)],[(474,false)],[(475,false)],[(475,false)],[(474,false),(475,false)],[(476,false)],[(477,false)],[(477,false)],[(476,false),(477,false)],[(478,false),(479,false)],[(479,false),(444,true),(445,true)],[(479,false),(512,true),(513,true)]]

theorem baseBlock14_eq :
    cellBlock14.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock14 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
