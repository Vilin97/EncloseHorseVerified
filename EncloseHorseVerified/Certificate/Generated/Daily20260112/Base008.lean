import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock8 : List Nat := [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]

def baseBlock8 : CNF := [[(256,false),(257,false)],[(257,false),(218,true),(219,true)],[(257,false),(258,true),(259,true)],[(258,false),(259,false)],[(259,false),(220,true),(221,true)],[(259,false),(256,true),(257,true)],[(259,false),(260,true),(261,true)],[(259,false),(296,true),(297,true)],[(260,false),(261,false)],[(261,false),(222,true),(223,true)],[(261,false),(258,true),(259,true)],[(261,false),(262,true),(263,true)],[(261,false),(298,true),(299,true)],[(262,false),(263,false)],[(263,false),(260,true),(261,true)],[(263,false),(300,true),(301,true)],[(264,false)],[(265,false)],[(265,false)],[(264,false),(265,false)],[(267,false)],[(266,false),(267,false)],[(267,false),(228,true),(229,true)],[(267,false),(268,true),(269,true)],[(268,false),(269,false)],[(269,false),(230,true),(231,true)],[(269,false),(266,true),(267,true)],[(269,false),(306,true),(307,true)],[(270,false)],[(271,false)],[(270,false),(271,false)],[(272,false)],[(273,false)],[(272,false),(273,false)],[(274,false)],[(275,false)],[(274,false),(275,false)],[(276,false)],[(277,false)],[(276,false),(277,false)],[(278,false)],[(279,false)],[(278,false),(279,false)],[(280,false),(281,false)],[(281,false),(242,true),(243,true)],[(281,false),(282,true),(283,true)],[(281,false),(318,true),(319,true)],[(282,false),(283,false)],[(283,false),(244,true),(245,true)],[(283,false),(280,true),(281,true)],[(283,false),(284,true),(285,true)],[(283,false),(320,true),(321,true)],[(284,false),(285,false)],[(285,false),(246,true),(247,true)],[(285,false),(282,true),(283,true)],[(285,false),(322,true),(323,true)],[(286,false)],[(287,false)],[(286,false),(287,false)]]

theorem baseBlock8_eq : cellBlock8.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock8 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
