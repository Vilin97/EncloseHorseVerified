import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk015

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix16 : List TreeAction := [
  .add 2145 [(2404,false),(2590,true)] [2128,1491],
  .add 2146 [(2404,false),(2591,true)] [2129,1492],
  .add 2147 [(2405,false),(2592,true)] [2129,1494],
  .add 2148 [(2406,false),(2593,true)] [2129,1497],
  .add 2149 [(2407,false),(2594,true)] [2129,1500],
  .add 2150 [(2650,true)] [211,1515],
  .add 2151 [(537,true),(2651,true)] [211,1516],
  .add 2152 [(2654,true)] [2151,1518],
  .add 2153 [(2666,true)] [2153,1534],
  .add 2154 [(2662,false),(2667,true)] [2153,1535],
]

theorem transition16 : runPrefix prefix16 state16 depth = some state17 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
