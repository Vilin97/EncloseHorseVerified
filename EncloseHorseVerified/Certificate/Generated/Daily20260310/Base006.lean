import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock6 : List Nat := [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]

def baseBlock6 : CNF := [[(192,false),(193,false)],[(193,false),(190,true),(191,true)],[(193,false),(194,true),(195,true)],[(193,false),(226,true),(227,true)],[(194,false),(195,false)],[(195,false),(192,true),(193,true)],[(195,false),(228,true),(229,true)],[(196,false)],[(197,false)],[(196,false),(197,false)],[(198,false),(199,false)],[(199,false),(164,true),(165,true)],[(199,false),(200,true),(201,true)],[(199,false),(232,true),(233,true)],[(200,false),(201,false)],[(201,false),(166,true),(167,true)],[(201,false),(198,true),(199,true)],[(201,false),(234,true),(235,true)],[(202,false)],[(203,false)],[(203,false)],[(202,false),(203,false)],[(204,false)],[(205,false)],[(205,false)],[(204,false),(205,false)],[(206,false),(207,false)],[(207,false),(172,true),(173,true)],[(207,false),(208,true),(209,true)],[(207,false),(240,true),(241,true)],[(208,false),(209,false)],[(209,false),(174,true),(175,true)],[(209,false),(206,true),(207,true)],[(209,false),(242,true),(243,true)],[(210,false)],[(211,false)],[(210,false),(211,false)],[(212,false),(213,false)],[(213,false),(178,true),(179,true)],[(213,false),(214,true),(215,true)],[(213,false),(246,true),(247,true)],[(214,false),(215,false)],[(215,false),(180,true),(181,true)],[(215,false),(212,true),(213,true)],[(215,false),(216,true),(217,true)],[(215,false),(248,true),(249,true)],[(216,false),(217,false)],[(217,false),(182,true),(183,true)],[(217,false),(214,true),(215,true)],[(217,false),(218,true),(219,true)],[(218,false),(219,false)],[(219,false),(184,true),(185,true)],[(219,false),(216,true),(217,true)],[(219,false),(220,true),(221,true)],[(220,false),(221,false)],[(221,false),(186,true),(187,true)],[(221,false),(218,true),(219,true)],[(221,false),(222,true),(223,true)],[(222,false),(223,false)],[(223,false),(188,true),(189,true)],[(223,false),(220,true),(221,true)],[(223,false),(224,true),(225,true)]]

theorem baseBlock6_eq :
    cellBlock6.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock6 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
