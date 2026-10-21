import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock9 : List Nat := [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]

def baseBlock9 : CNF := [[(288,false)],[(289,false)],[(289,false)],[(288,false),(289,false)],[(290,false),(291,false)],[(291,false),(266,true),(267,true)],[(291,false),(292,true),(293,true)],[(291,false),(314,true),(315,true)],[(292,false),(293,false)],[(293,false),(290,true),(291,true)],[(293,false),(294,true),(295,true)],[(294,false),(295,false)],[(295,false),(270,true),(271,true)],[(295,false),(292,true),(293,true)],[(295,false),(296,true),(297,true)],[(296,false),(297,false)],[(297,false),(272,true),(273,true)],[(297,false),(294,true),(295,true)],[(297,false),(298,true),(299,true)],[(297,false),(320,true),(321,true)],[(298,false),(299,false)],[(299,false),(274,true),(275,true)],[(299,false),(296,true),(297,true)],[(299,false),(300,true),(301,true)],[(300,false),(301,false)],[(301,false),(276,true),(277,true)],[(301,false),(298,true),(299,true)],[(301,false),(302,true),(303,true)],[(301,false),(324,true),(325,true)],[(302,false),(303,false)],[(303,false),(278,true),(279,true)],[(303,false),(300,true),(301,true)],[(303,false),(304,true),(305,true)],[(304,false)],[(304,false),(305,false)],[(305,false),(280,true),(281,true)],[(305,false),(302,true),(303,true)],[(305,false),(306,true),(307,true)],[(305,false),(328,true),(329,true)],[(306,false),(307,false)],[(307,false),(282,true),(283,true)],[(307,false),(304,true),(305,true)],[(307,false),(308,true),(309,true)],[(307,false),(330,true),(331,true)],[(308,false)],[(308,false),(309,false)],[(309,false),(284,true),(285,true)],[(309,false),(306,true),(307,true)],[(309,false),(332,true),(333,true)],[(310,false)],[(311,false)],[(311,false)],[(310,false),(311,false)],[(312,false)],[(313,false)],[(313,false)],[(312,false),(313,false)],[(315,false)],[(314,false),(315,false)],[(315,false),(290,true),(291,true)],[(316,false)],[(317,false)],[(317,false)],[(316,false),(317,false)],[(318,false)],[(319,false)],[(319,false)],[(318,false),(319,false)]]

theorem baseBlock9_eq :
    cellBlock9.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock9 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
