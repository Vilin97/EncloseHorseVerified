import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk005

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix6 : List TreeAction := [
  .add 2045 [(2060,false),(2065,true)] [2042,1177],
  .add 2046 [(2061,false),(2066,true)] [2042,1178],
  .add 2047 [(2072,true)] [2045,1187],
  .add 2048 [(2098,true)] [101,1201],
  .add 2049 [(263,true),(2099,true)] [101,1202],
  .add 2050 [(2100,true)] [2049,1203],
  .add 2051 [(2096,false),(2101,true)] [2049,1205],
  .add 2052 [(2097,false),(2102,true)] [2049,1207],
  .add 2053 [(2104,true)] [2051,1209],
  .add 2054 [(2122,true)] [114,1218],
]

theorem transition6 : runPrefix prefix6 state6 depth = some state7 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
