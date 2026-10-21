import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock15 : List Nat := [240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]

def baseBlock15 : CNF := [[(480,false)],[(481,false)],[(480,false),(481,false)],[(482,false)],[(483,false)],[(482,false),(483,false)],[(484,false)],[(485,false)],[(484,false),(485,false)],[(486,false)],[(487,false)],[(486,false),(487,false)],[(488,false)],[(489,false)],[(488,false),(489,false)],[(490,false),(491,false)],[(491,false),(456,true),(457,true)],[(491,false),(492,true),(493,true)],[(491,false),(524,true),(525,true)],[(492,false),(493,false)],[(493,false),(458,true),(459,true)],[(493,false),(490,true),(491,true)],[(493,false),(494,true),(495,true)],[(493,false),(526,true),(527,true)],[(494,false),(495,false)],[(495,false),(460,true),(461,true)],[(495,false),(492,true),(493,true)],[(495,false),(528,true),(529,true)],[(496,false)],[(497,false)],[(496,false),(497,false)],[(498,false),(499,false)],[(499,false),(464,true),(465,true)],[(499,false),(532,true),(533,true)],[(500,false)],[(501,false)],[(500,false),(501,false)],[(502,false)],[(503,false)],[(502,false),(503,false)],[(504,false)],[(505,false)],[(504,false),(505,false)],[(506,false),(507,false)],[(507,false),(472,true),(473,true)],[(507,false),(508,true),(509,true)],[(507,false),(540,true),(541,true)],[(509,false)],[(508,false),(509,false)],[(509,false),(506,true),(507,true)],[(510,false)],[(511,false)],[(511,false)],[(510,false),(511,false)]]

theorem baseBlock15_eq :
    cellBlock15.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock15 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
