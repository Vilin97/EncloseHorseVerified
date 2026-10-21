import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock5 : List Nat := [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]

def baseBlock5 : CNF := [[(160,false)],[(161,false)],[(160,false),(161,false)],[(162,false)],[(163,false)],[(162,false),(163,false)],[(164,false),(165,false)],[(165,false),(130,true),(131,true)],[(165,false),(166,true),(167,true)],[(165,false),(198,true),(199,true)],[(166,false),(167,false)],[(167,false),(132,true),(133,true)],[(167,false),(164,true),(165,true)],[(167,false),(200,true),(201,true)],[(168,false)],[(169,false)],[(169,false)],[(168,false),(169,false)],[(170,false)],[(171,false)],[(171,false)],[(170,false),(171,false)],[(172,false),(173,false)],[(173,false),(138,true),(139,true)],[(173,false),(174,true),(175,true)],[(173,false),(206,true),(207,true)],[(174,false),(175,false)],[(175,false),(140,true),(141,true)],[(175,false),(172,true),(173,true)],[(175,false),(208,true),(209,true)],[(176,false)],[(177,false)],[(176,false),(177,false)],[(178,false),(179,false)],[(179,false),(180,true),(181,true)],[(179,false),(212,true),(213,true)],[(180,false),(181,false)],[(181,false),(146,true),(147,true)],[(181,false),(178,true),(179,true)],[(181,false),(182,true),(183,true)],[(181,false),(214,true),(215,true)],[(182,false),(183,false)],[(183,false),(180,true),(181,true)],[(183,false),(184,true),(185,true)],[(183,false),(216,true),(217,true)],[(184,false),(185,false)],[(185,false),(182,true),(183,true)],[(185,false),(186,true),(187,true)],[(185,false),(218,true),(219,true)],[(186,false),(187,false)],[(187,false),(152,true),(153,true)],[(187,false),(184,true),(185,true)],[(187,false),(188,true),(189,true)],[(187,false),(220,true),(221,true)],[(188,false),(189,false)],[(189,false),(186,true),(187,true)],[(189,false),(190,true),(191,true)],[(189,false),(222,true),(223,true)],[(190,false),(191,false)],[(191,false),(188,true),(189,true)],[(191,false),(192,true),(193,true)],[(191,false),(224,true),(225,true)]]

theorem baseBlock5_eq :
    cellBlock5.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock5 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
