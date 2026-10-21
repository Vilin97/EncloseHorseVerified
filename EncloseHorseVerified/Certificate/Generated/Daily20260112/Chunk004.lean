import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk003

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix4 : List TreeAction := [
  .add 2025 [(81,true),(1676,true)] [1011],
  .add 2026 [(83,true),(1678,true)] [1012],
  .add 2027 [(83,true),(1691,true)] [1015],
  .add 2028 [(89,true),(1693,true)] [1016],
  .add 2029 [(89,true),(1699,true)] [1019],
  .add 2030 [(91,true),(1701,true)] [1020],
  .add 2031 [(91,true),(1730,true)] [1026],
  .add 2032 [(95,true),(1732,true)] [1028],
  .add 2033 [(95,true),(1738,true)] [1033],
  .add 2034 [(1824,true)] [2023,1067],
]

theorem transition4 : runPrefix prefix4 state4 depth = some state5 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
