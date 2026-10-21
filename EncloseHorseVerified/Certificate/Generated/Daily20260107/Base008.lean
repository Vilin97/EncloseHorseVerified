import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock8 : List Nat := [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]

def baseBlock8 : CNF := [[(256,false)],[(256,false),(257,false)],[(257,false),(232,true),(233,true)],[(257,false),(258,true),(259,true)],[(257,false),(280,true),(281,true)],[(258,false),(259,false)],[(259,false),(234,true),(235,true)],[(259,false),(256,true),(257,true)],[(259,false),(260,true),(261,true)],[(259,false),(282,true),(283,true)],[(260,false)],[(260,false),(261,false)],[(261,false),(236,true),(237,true)],[(261,false),(258,true),(259,true)],[(261,false),(284,true),(285,true)],[(262,false)],[(263,false)],[(263,false)],[(262,false),(263,false)],[(264,false)],[(265,false)],[(265,false)],[(264,false),(265,false)],[(266,false),(267,false)],[(267,false),(242,true),(243,true)],[(267,false),(290,true),(291,true)],[(268,false)],[(269,false)],[(268,false),(269,false)],[(270,false),(271,false)],[(271,false),(272,true),(273,true)],[(271,false),(294,true),(295,true)],[(272,false),(273,false)],[(273,false),(248,true),(249,true)],[(273,false),(270,true),(271,true)],[(273,false),(274,true),(275,true)],[(273,false),(296,true),(297,true)],[(274,false),(275,false)],[(275,false),(250,true),(251,true)],[(275,false),(272,true),(273,true)],[(275,false),(276,true),(277,true)],[(275,false),(298,true),(299,true)],[(276,false),(277,false)],[(277,false),(274,true),(275,true)],[(277,false),(278,true),(279,true)],[(277,false),(300,true),(301,true)],[(278,false),(279,false)],[(279,false),(276,true),(277,true)],[(279,false),(280,true),(281,true)],[(279,false),(302,true),(303,true)],[(280,false),(281,false)],[(281,false),(256,true),(257,true)],[(281,false),(278,true),(279,true)],[(281,false),(282,true),(283,true)],[(281,false),(304,true),(305,true)],[(282,false)],[(282,false),(283,false)],[(283,false),(258,true),(259,true)],[(283,false),(280,true),(281,true)],[(283,false),(284,true),(285,true)],[(283,false),(306,true),(307,true)],[(284,false),(285,false)],[(285,false),(260,true),(261,true)],[(285,false),(282,true),(283,true)],[(285,false),(308,true),(309,true)],[(286,false)],[(287,false)],[(287,false)],[(286,false),(287,false)]]

theorem baseBlock8_eq :
    cellBlock8.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock8 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
