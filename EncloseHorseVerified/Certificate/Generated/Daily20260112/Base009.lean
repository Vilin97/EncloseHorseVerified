import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock9 : List Nat := [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]

def baseBlock9 : CNF := [[(288,false)],[(289,false)],[(288,false),(289,false)],[(290,false)],[(291,false)],[(290,false),(291,false)],[(292,false)],[(293,false)],[(292,false),(293,false)],[(294,false)],[(295,false)],[(294,false),(295,false)],[(296,false),(297,false)],[(297,false),(258,true),(259,true)],[(297,false),(298,true),(299,true)],[(297,false),(334,true),(335,true)],[(298,false),(299,false)],[(299,false),(260,true),(261,true)],[(299,false),(296,true),(297,true)],[(299,false),(300,true),(301,true)],[(299,false),(336,true),(337,true)],[(300,false),(301,false)],[(301,false),(262,true),(263,true)],[(301,false),(298,true),(299,true)],[(301,false),(302,true),(303,true)],[(301,false),(338,true),(339,true)],[(303,false)],[(302,false),(303,false)],[(303,false),(300,true),(301,true)],[(303,false),(340,true),(341,true)],[(304,false)],[(305,false)],[(305,false)],[(304,false),(305,false)],[(306,false),(307,false)],[(307,false),(268,true),(269,true)],[(307,false),(344,true),(345,true)],[(308,false)],[(309,false)],[(308,false),(309,false)],[(310,false)],[(311,false)],[(310,false),(311,false)],[(312,false)],[(313,false)],[(312,false),(313,false)],[(314,false)],[(315,false)],[(314,false),(315,false)],[(316,false),(317,false)],[(317,false),(318,true),(319,true)],[(317,false),(354,true),(355,true)],[(318,false),(319,false)],[(319,false),(280,true),(281,true)],[(319,false),(316,true),(317,true)],[(319,false),(320,true),(321,true)],[(319,false),(356,true),(357,true)]]

theorem baseBlock9_eq : cellBlock9.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock9 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
