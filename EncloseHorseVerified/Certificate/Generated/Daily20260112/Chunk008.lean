import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk007

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix8 : List TreeAction := [
  .add 2065 [(2132,false),(2141,true)] [2054,1239],
  .add 2066 [(2154,true)] [2048,2062,1249],
  .add 2067 [(2138,false),(2155,true)] [2048,1250],
  .add 2068 [(2139,false),(2156,true)] [2048,1251],
  .add 2069 [(2140,false),(2157,true)] [2048,1252],
  .add 2070 [(2143,false),(2160,true)] [2048,1253],
  .add 2071 [(2073,false),(2155,true)] [2062,1254],
  .add 2072 [(2074,false),(2156,true)] [2062,1261],
  .add 2073 [(2075,false),(2157,true)] [2062,1264],
  .add 2074 [(2186,true)] [2067,1274],
]

theorem transition8 : runPrefix prefix8 state8 depth = some state9 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
