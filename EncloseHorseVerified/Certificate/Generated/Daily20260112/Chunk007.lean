import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk006

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix7 : List TreeAction := [
  .add 2055 [(301,true),(2123,true)] [114,1219],
  .add 2056 [(2124,true)] [2055,1220],
  .add 2057 [(2120,false),(2125,true)] [2055,1222],
  .add 2058 [(2121,false),(2126,true)] [2055,1224],
  .add 2059 [(2128,true)] [2057,1226],
  .add 2060 [(2116,false),(2129,true)] [2057,1230],
  .add 2061 [(2137,true)] [2054,2060,1235],
  .add 2062 [(2129,false),(2138,true)] [2054,1236],
  .add 2063 [(2130,false),(2139,true)] [2054,1237],
  .add 2064 [(2131,false),(2140,true)] [2054,1238],
]

theorem transition7 : runPrefix prefix7 state7 depth = some state8 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
