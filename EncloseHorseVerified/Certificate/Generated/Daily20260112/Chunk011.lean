import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk010

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix11 : List TreeAction := [
  .add 2095 [(2297,false),(2302,true)] [2092,1350],
  .add 2096 [(2312,true)] [2094,1352],
  .add 2097 [(2320,true)] [2097,1356],
  .add 2098 [(2290,false),(2322,true)] [2097,1362],
  .add 2099 [(2343,true)] [140,1371],
  .add 2100 [(377,true),(2344,true)] [140,1372],
  .add 2101 [(2347,true)] [2100,1374],
  .add 2102 [(2351,true)] [2102,1377],
  .add 2103 [(2339,false),(2352,true)] [2102,1380],
  .add 2104 [(2340,false),(2353,true)] [2102,1382],
]

theorem transition11 : runPrefix prefix11 state11 depth = some state12 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
