import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock9 : List Nat := [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]

def baseBlock9 : CNF := [[(288,false)],[(288,false),(289,false)],[(289,false),(286,true),(287,true)],[(289,false),(290,true),(291,true)],[(290,false),(291,false)],[(291,false),(288,true),(289,true)],[(291,false),(292,true),(293,true)],[(292,false),(293,false)],[(293,false),(290,true),(291,true)],[(293,false),(294,true),(295,true)],[(294,false),(295,false)],[(295,false),(260,true),(261,true)],[(295,false),(292,true),(293,true)],[(295,false),(296,true),(297,true)],[(295,false),(328,true),(329,true)],[(296,false),(297,false)],[(297,false),(262,true),(263,true)],[(297,false),(294,true),(295,true)],[(297,false),(298,true),(299,true)],[(297,false),(330,true),(331,true)],[(298,false),(299,false)],[(299,false),(264,true),(265,true)],[(299,false),(296,true),(297,true)],[(299,false),(300,true),(301,true)],[(300,false),(301,false)],[(301,false),(266,true),(267,true)],[(301,false),(298,true),(299,true)],[(301,false),(302,true),(303,true)],[(301,false),(334,true),(335,true)],[(302,false),(303,false)],[(303,false),(268,true),(269,true)],[(303,false),(300,true),(301,true)],[(303,false),(336,true),(337,true)],[(304,false)],[(305,false)],[(305,false)],[(304,false),(305,false)],[(307,false)],[(306,false),(307,false)],[(307,false),(272,true),(273,true)],[(307,false),(308,true),(309,true)],[(308,false),(309,false)],[(309,false),(274,true),(275,true)],[(309,false),(306,true),(307,true)],[(309,false),(310,true),(311,true)],[(309,false),(342,true),(343,true)],[(310,false),(311,false)],[(311,false),(276,true),(277,true)],[(311,false),(308,true),(309,true)],[(311,false),(312,true),(313,true)],[(311,false),(344,true),(345,true)],[(312,false),(313,false)],[(313,false),(310,true),(311,true)],[(313,false),(314,true),(315,true)],[(313,false),(346,true),(347,true)],[(314,false),(315,false)],[(315,false),(280,true),(281,true)],[(315,false),(312,true),(313,true)],[(315,false),(316,true),(317,true)],[(315,false),(348,true),(349,true)],[(316,false),(317,false)],[(317,false),(282,true),(283,true)],[(317,false),(314,true),(315,true)],[(317,false),(350,true),(351,true)],[(318,false)],[(319,false)],[(318,false),(319,false)]]

theorem baseBlock9_eq :
    cellBlock9.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock9 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
