import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk077

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix78 : List TreeAction := [
  .add 2765 [(1481,false)] [2765,2764,2744],
  .add 2766 [(1468,false)] [2766,913],
  .add 2767 [(1375,false)] [2766,2501,923],
  .add 2768 [(1467,false)] [2766,2566,915],
  .add 2769 [(1386,true),(637,false)] [2766,2769,2542,800,2283,287,2287,2757,898,919,904,2288,828,2474,807,295,805],
  .add 2770 [(1351,true)] [2542,2766,2767,2769,2755,767,2280,281,2770,809,2731,919,2691,735,2474,2688,2681,741,788,779,757,759,2734,749],
  .add 2771 [(1353,true)] [2771,769],
  .add 2772 [(1307,false)] [2771,2542,2768,2525],
  .add 2773 [(1356,true)] [2772,773],
  .add 2774 [(1304,false)] [2773,722],
]

theorem transition78 : runPrefix prefix78 state78 depth = some state79 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
