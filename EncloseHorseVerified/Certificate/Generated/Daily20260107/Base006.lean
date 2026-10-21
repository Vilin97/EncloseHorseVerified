import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock6 : List Nat := [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]

def baseBlock6 : CNF := [[(192,false)],[(193,false)],[(193,false)],[(192,false),(193,false)],[(194,false),(195,false)],[(195,false),(170,true),(171,true)],[(195,false),(196,true),(197,true)],[(195,false),(218,true),(219,true)],[(196,false),(197,false)],[(197,false),(172,true),(173,true)],[(197,false),(194,true),(195,true)],[(197,false),(198,true),(199,true)],[(197,false),(220,true),(221,true)],[(198,false),(199,false)],[(199,false),(174,true),(175,true)],[(199,false),(196,true),(197,true)],[(199,false),(200,true),(201,true)],[(199,false),(222,true),(223,true)],[(200,false),(201,false)],[(201,false),(198,true),(199,true)],[(201,false),(202,true),(203,true)],[(201,false),(224,true),(225,true)],[(202,false),(203,false)],[(203,false),(200,true),(201,true)],[(203,false),(204,true),(205,true)],[(203,false),(226,true),(227,true)],[(204,false),(205,false)],[(205,false),(180,true),(181,true)],[(205,false),(202,true),(203,true)],[(205,false),(206,true),(207,true)],[(206,false),(207,false)],[(207,false),(204,true),(205,true)],[(207,false),(208,true),(209,true)],[(208,false),(209,false)],[(209,false),(184,true),(185,true)],[(209,false),(206,true),(207,true)],[(209,false),(210,true),(211,true)],[(209,false),(232,true),(233,true)],[(210,false),(211,false)],[(211,false),(186,true),(187,true)],[(211,false),(208,true),(209,true)],[(211,false),(212,true),(213,true)],[(211,false),(234,true),(235,true)],[(212,false),(213,false)],[(213,false),(188,true),(189,true)],[(213,false),(210,true),(211,true)],[(213,false),(214,true),(215,true)],[(213,false),(236,true),(237,true)],[(215,false)],[(214,false),(215,false)],[(215,false),(190,true),(191,true)],[(215,false),(212,true),(213,true)],[(216,false)],[(217,false)],[(217,false)],[(216,false),(217,false)],[(218,false),(219,false)],[(219,false),(194,true),(195,true)],[(219,false),(220,true),(221,true)],[(219,false),(242,true),(243,true)],[(220,false),(221,false)],[(221,false),(196,true),(197,true)],[(221,false),(218,true),(219,true)],[(221,false),(222,true),(223,true)],[(222,false),(223,false)],[(223,false),(198,true),(199,true)],[(223,false),(220,true),(221,true)],[(223,false),(224,true),(225,true)]]

theorem baseBlock6_eq :
    cellBlock6.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock6 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
