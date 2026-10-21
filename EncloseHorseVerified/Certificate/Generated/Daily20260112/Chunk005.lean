import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk004

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix5 : List TreeAction := [
  .add 2035 [(1796,false),(1828,true)] [2023,1068],
  .add 2036 [(127,true),(1891,true)] [1083],
  .add 2037 [(129,true),(1899,true)] [1087],
  .add 2038 [(133,true),(1930,true)] [1098],
  .add 2039 [(2050,true)] [84,1164],
  .add 2040 [(223,true),(2051,true)] [84,1165],
  .add 2041 [(2052,true)] [2040,1166],
  .add 2042 [(2048,false),(2053,true)] [2040,1168],
  .add 2043 [(2049,false),(2054,true)] [2040,1170],
  .add 2044 [(2064,true)] [2042,1176],
]

theorem transition5 : runPrefix prefix5 state5 depth = some state6 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
