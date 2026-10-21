import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock6 : List Nat := [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]

def baseBlock6 : CNF := [[(192,false),(193,false)],[(193,false),(194,true),(195,true)],[(193,false),(230,true),(231,true)],[(194,false),(195,false)],[(195,false),(192,true),(193,true)],[(195,false),(196,true),(197,true)],[(195,false),(232,true),(233,true)],[(196,false),(197,false)],[(197,false),(194,true),(195,true)],[(197,false),(198,true),(199,true)],[(198,false),(199,false)],[(199,false),(196,true),(197,true)],[(199,false),(200,true),(201,true)],[(200,false),(201,false)],[(201,false),(198,true),(199,true)],[(201,false),(202,true),(203,true)],[(202,false),(203,false)],[(203,false),(200,true),(201,true)],[(203,false),(204,true),(205,true)],[(204,false),(205,false)],[(205,false),(202,true),(203,true)],[(205,false),(242,true),(243,true)],[(206,false)],[(207,false)],[(206,false),(207,false)],[(208,false),(209,false)],[(209,false),(210,true),(211,true)],[(209,false),(246,true),(247,true)],[(210,false),(211,false)],[(211,false),(208,true),(209,true)],[(211,false),(212,true),(213,true)],[(211,false),(248,true),(249,true)],[(212,false),(213,false)],[(213,false),(210,true),(211,true)],[(213,false),(214,true),(215,true)],[(213,false),(250,true),(251,true)],[(214,false),(215,false)],[(215,false),(176,true),(177,true)],[(215,false),(212,true),(213,true)],[(216,false)],[(217,false)],[(216,false),(217,false)],[(218,false),(219,false)],[(219,false),(180,true),(181,true)],[(219,false),(220,true),(221,true)],[(219,false),(256,true),(257,true)],[(220,false),(221,false)],[(221,false),(182,true),(183,true)],[(221,false),(218,true),(219,true)],[(221,false),(222,true),(223,true)],[(221,false),(258,true),(259,true)],[(222,false),(223,false)],[(223,false),(184,true),(185,true)],[(223,false),(220,true),(221,true)],[(223,false),(260,true),(261,true)]]

theorem baseBlock6_eq : cellBlock6.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock6 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
