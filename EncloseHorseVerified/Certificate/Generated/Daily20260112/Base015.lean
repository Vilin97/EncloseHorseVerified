import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock15 : List Nat := [240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]

def baseBlock15 : CNF := [[(480,false)],[(481,false)],[(480,false),(481,false)],[(482,false),(483,false)],[(483,false),(444,true),(445,true)],[(483,false),(484,true),(485,true)],[(484,false),(485,false)],[(485,false),(446,true),(447,true)],[(485,false),(482,true),(483,true)],[(485,false),(522,true),(523,true)],[(486,false)],[(487,false)],[(486,false),(487,false)],[(488,false)],[(489,false)],[(488,false),(489,false)],[(490,false)],[(491,false)],[(490,false),(491,false)],[(492,false)],[(493,false)],[(493,false)],[(492,false),(493,false)],[(494,false)],[(495,false)],[(495,false)],[(494,false),(495,false)],[(496,false),(497,false)],[(497,false),(458,true),(459,true)],[(497,false),(498,true),(499,true)],[(498,false),(499,false)],[(499,false),(460,true),(461,true)],[(499,false),(496,true),(497,true)],[(499,false),(500,true),(501,true)],[(499,false),(536,true),(537,true)],[(500,false),(501,false)],[(501,false),(462,true),(463,true)],[(501,false),(498,true),(499,true)],[(501,false),(502,true),(503,true)],[(502,false),(503,false)],[(503,false),(464,true),(465,true)],[(503,false),(500,true),(501,true)],[(504,false)],[(505,false)],[(504,false),(505,false)],[(506,false)],[(507,false)],[(506,false),(507,false)],[(508,false)],[(509,false)],[(508,false),(509,false)],[(510,false)],[(511,false)],[(510,false),(511,false)]]

theorem baseBlock15_eq : cellBlock15.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock15 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
