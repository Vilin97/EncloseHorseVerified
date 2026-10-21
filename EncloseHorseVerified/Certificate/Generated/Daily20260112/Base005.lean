import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock5 : List Nat := [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]

def baseBlock5 : CNF := [[(160,false)],[(161,false)],[(160,false),(161,false)],[(162,false)],[(163,false)],[(162,false),(163,false)],[(164,false)],[(165,false)],[(164,false),(165,false)],[(166,false)],[(167,false)],[(166,false),(167,false)],[(168,false)],[(169,false)],[(168,false),(169,false)],[(170,false)],[(171,false)],[(170,false),(171,false)],[(172,false)],[(173,false)],[(172,false),(173,false)],[(174,false)],[(175,false)],[(174,false),(175,false)],[(176,false),(177,false)],[(177,false),(178,true),(179,true)],[(177,false),(214,true),(215,true)],[(178,false),(179,false)],[(179,false),(140,true),(141,true)],[(179,false),(176,true),(177,true)],[(179,false),(180,true),(181,true)],[(180,false),(181,false)],[(181,false),(142,true),(143,true)],[(181,false),(178,true),(179,true)],[(181,false),(182,true),(183,true)],[(181,false),(218,true),(219,true)],[(182,false)],[(182,false),(183,false)],[(183,false),(134,true),(135,true)],[(183,false),(144,true),(145,true)],[(183,false),(180,true),(181,true)],[(183,false),(182,true),(183,true)],[(183,false),(184,true),(185,true)],[(183,false),(220,true),(221,true)],[(184,false),(185,false)],[(185,false),(146,true),(147,true)],[(185,false),(182,true),(183,true)],[(185,false),(222,true),(223,true)],[(186,false)],[(187,false)],[(186,false),(187,false)],[(188,false)],[(189,false)],[(189,false)],[(188,false),(189,false)],[(190,false)],[(191,false)],[(191,false)],[(190,false),(191,false)]]

theorem baseBlock5_eq : cellBlock5.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock5 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
