import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock7 : List Nat := [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]

def baseBlock7 : CNF := [[(224,false)],[(225,false)],[(224,false),(225,false)],[(226,false)],[(227,false)],[(227,false)],[(226,false),(227,false)],[(229,false)],[(228,false),(229,false)],[(229,false),(230,true),(231,true)],[(229,false),(266,true),(267,true)],[(230,false),(231,false)],[(231,false),(192,true),(193,true)],[(231,false),(228,true),(229,true)],[(231,false),(232,true),(233,true)],[(231,false),(268,true),(269,true)],[(232,false),(233,false)],[(233,false),(194,true),(195,true)],[(233,false),(230,true),(231,true)],[(234,false)],[(235,false)],[(234,false),(235,false)],[(236,false)],[(237,false)],[(236,false),(237,false)],[(238,false)],[(239,false)],[(238,false),(239,false)],[(240,false)],[(241,false)],[(240,false),(241,false)],[(242,false),(243,false)],[(243,false),(204,true),(205,true)],[(243,false),(244,true),(245,true)],[(243,false),(280,true),(281,true)],[(244,false),(245,false)],[(245,false),(242,true),(243,true)],[(245,false),(246,true),(247,true)],[(245,false),(282,true),(283,true)],[(246,false),(247,false)],[(247,false),(208,true),(209,true)],[(247,false),(244,true),(245,true)],[(247,false),(248,true),(249,true)],[(247,false),(284,true),(285,true)],[(248,false),(249,false)],[(249,false),(210,true),(211,true)],[(249,false),(246,true),(247,true)],[(249,false),(250,true),(251,true)],[(250,false),(251,false)],[(251,false),(212,true),(213,true)],[(251,false),(248,true),(249,true)],[(252,false)],[(253,false)],[(252,false),(253,false)],[(254,false)],[(255,false)],[(254,false),(255,false)]]

theorem baseBlock7_eq : cellBlock7.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock7 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
