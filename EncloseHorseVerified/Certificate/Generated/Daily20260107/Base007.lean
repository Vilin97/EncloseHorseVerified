import EncloseHorseVerified.Certificate.Generated.Daily20260107.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def cellBlock7 : List Nat := [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]

def baseBlock7 : CNF := [[(224,false),(225,false)],[(225,false),(200,true),(201,true)],[(225,false),(222,true),(223,true)],[(225,false),(226,true),(227,true)],[(225,false),(248,true),(249,true)],[(226,false),(227,false)],[(227,false),(202,true),(203,true)],[(227,false),(224,true),(225,true)],[(227,false),(250,true),(251,true)],[(228,false)],[(229,false)],[(228,false),(229,false)],[(230,false)],[(231,false)],[(230,false),(231,false)],[(232,false),(233,false)],[(233,false),(208,true),(209,true)],[(233,false),(234,true),(235,true)],[(233,false),(256,true),(257,true)],[(234,false),(235,false)],[(235,false),(210,true),(211,true)],[(235,false),(232,true),(233,true)],[(235,false),(236,true),(237,true)],[(235,false),(258,true),(259,true)],[(236,false),(237,false)],[(237,false),(212,true),(213,true)],[(237,false),(234,true),(235,true)],[(237,false),(260,true),(261,true)],[(238,false)],[(239,false)],[(239,false)],[(238,false),(239,false)],[(241,false)],[(240,false),(241,false)],[(241,false),(242,true),(243,true)],[(242,false),(243,false)],[(243,false),(218,true),(219,true)],[(243,false),(240,true),(241,true)],[(243,false),(266,true),(267,true)],[(244,false)],[(245,false)],[(244,false),(245,false)],[(246,false)],[(247,false)],[(246,false),(247,false)],[(248,false),(249,false)],[(249,false),(224,true),(225,true)],[(249,false),(250,true),(251,true)],[(249,false),(272,true),(273,true)],[(250,false),(251,false)],[(251,false),(226,true),(227,true)],[(251,false),(248,true),(249,true)],[(251,false),(274,true),(275,true)],[(252,false)],[(253,false)],[(252,false),(253,false)],[(254,false)],[(255,false)],[(254,false),(255,false)]]

theorem baseBlock7_eq :
    cellBlock7.flatMap (cellClauses DailyLevels.daily20260107 Input.staticCells) = baseBlock7 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260107
