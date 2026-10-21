import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk008

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix9 : List TreeAction := [
  .add 2075 [(1994,false),(2188,true)] [2067,1285],
  .add 2076 [(2000,false),(2194,true)] [2067,1288],
  .add 2077 [(2001,false),(2195,true)] [2067,1291],
  .add 2078 [(2233,true)] [2035,2075,1304],
  .add 2079 [(2187,false),(2234,true)] [2035,1305],
  .add 2080 [(2188,false),(2235,true)] [2035,1306],
  .add 2081 [(2189,false),(2236,true)] [2035,1307],
  .add 2082 [(2190,false),(2237,true)] [2035,1308],
  .add 2083 [(2191,false),(2238,true)] [2035,1309],
  .add 2084 [(2192,false),(2239,true)] [2035,1310],
]

theorem transition9 : runPrefix prefix9 state9 depth = some state10 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
