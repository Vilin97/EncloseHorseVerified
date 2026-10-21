import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock0 : List Nat := [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

def baseBlock0 : CNF := [[(0,false)],[(1,false)],[(1,false)],[(0,false),(1,false)],[(2,false)],[(3,false)],[(3,false)],[(2,false),(3,false)],[(5,false)],[(4,false),(5,false)],[(5,false),(6,true),(7,true)],[(5,false),(28,true),(29,true)],[(7,false)],[(6,false),(7,false)],[(7,false),(4,true),(5,true)],[(7,false),(30,true),(31,true)],[(8,false)],[(9,false)],[(9,false)],[(8,false),(9,false)],[(10,false)],[(11,false)],[(11,false)],[(10,false),(11,false)],[(12,false)],[(13,false)],[(13,false)],[(12,false),(13,false)],[(15,false)],[(14,false),(15,false)],[(15,false),(38,true),(39,true)],[(16,false)],[(17,false)],[(17,false)],[(16,false),(17,false)],[(18,false)],[(19,false)],[(19,false)],[(18,false),(19,false)],[(20,false)],[(21,false)],[(21,false)],[(20,false),(21,false)],[(22,false)],[(23,false)],[(23,false)],[(22,false),(23,false)],[(24,false)],[(25,false)],[(25,false)],[(24,false),(25,false)],[(26,false)],[(26,false),(27,false)],[(27,false),(28,true),(29,true)],[(27,false),(50,true),(51,true)],[(28,false),(29,false)],[(29,false),(4,true),(5,true)],[(29,false),(26,true),(27,true)],[(29,false),(30,true),(31,true)],[(29,false),(52,true),(53,true)],[(30,false)],[(30,false),(31,false)],[(31,false),(6,true),(7,true)],[(31,false),(28,true),(29,true)],[(31,false),(32,true),(33,true)],[(31,false),(54,true),(55,true)]]

theorem baseBlock0_eq :
    cellBlock0.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock0 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
