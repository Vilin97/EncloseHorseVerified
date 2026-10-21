import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk006
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix7 : List TreeAction := [
  .add 5594 [(2486,false),(2536,true)] [5494,4752],
  .add 5595 [(2488,false),(2538,true)] [5494,4753],
  .add 5596 [(2490,false),(2540,true)] [5494,4754],
  .add 5597 [(2493,false),(2543,true)] [5494,4755],
  .add 5598 [(2494,false),(2544,true)] [5494,4756],
  .add 5599 [(2495,false),(2545,true)] [5494,4757],
  .add 5600 [(2497,false),(2547,true)] [5494,4758],
  .add 5601 [(2498,false),(2548,true)] [5494,4759],
  .add 5602 [(2500,false),(2550,true)] [5494,4760],
  .add 5603 [(2501,false),(2551,true)] [5494,4761],
  .add 5604 [(2504,false),(2554,true)] [5494,4762],
  .add 5605 [(2506,false),(2556,true)] [5494,4763],
  .add 5606 [(2507,false),(2557,true)] [5494,4764],
  .add 5607 [(2509,false),(2559,true)] [5494,4765],
  .add 5608 [(2511,false),(2561,true)] [5494,4766],
  .add 5609 [(2513,false),(2563,true)] [5494,4767],
  .add 5610 [(2515,false),(2565,true)] [5494,4768],
  .add 5611 [(2519,false),(2569,true)] [5494,4769],
  .add 5612 [(2521,false),(2571,true)] [5494,4770],
  .add 5613 [(2216,false),(2530,true)] [5553,4771],
  .add 5614 [(2217,false),(2530,true)] [5552,4783],
  .add 5615 [(2217,false),(2531,true)] [5553,4784],
  .add 5616 [(2218,false),(2530,true)] [5551,4802],
  .add 5617 [(2218,false),(2532,true)] [5553,4803],
  .add 5618 [(2219,false),(2533,true)] [5553,4817],
  .add 5619 [(2220,false),(2534,true)] [5553,4834],
  .add 5620 [(2221,false),(2535,true)] [5553,4852],
  .add 5621 [(2222,false),(2536,true)] [5553,4872],
  .add 5622 [(2223,false),(2537,true)] [5553,4894],
  .add 5623 [(2224,false),(2538,true)] [5553,4909],
  .add 5624 [(2225,false),(2539,true)] [5553,4918],
  .add 5625 [(2226,false),(2540,true)] [5553,4928],
  .add 5626 [(2228,false),(2542,true)] [5553,4952],
  .add 5627 [(2229,false),(2543,true)] [5553,4964],
  .add 5628 [(2230,false),(2544,true)] [5553,4974],
  .add 5629 [(2231,false),(2545,true)] [5553,4982],
  .add 5630 [(2232,false),(2545,true)] [5552,4993],
  .add 5631 [(2232,false),(2546,true)] [5553,4994],
  .add 5632 [(2233,false),(2546,true)] [5552,4999],
  .add 5633 [(2233,false),(2547,true)] [5553,5000],
  .add 5634 [(2234,false),(2546,true)] [5551,5015],
  .add 5635 [(2234,false),(2548,true)] [5553,5016],
  .add 5636 [(2235,false),(2549,true)] [5553,5028],
  .add 5637 [(2236,false),(2550,true)] [5553,5036],
  .add 5638 [(2237,false),(2551,true)] [5553,5044],
  .add 5639 [(2239,false),(2553,true)] [5553,5053],
  .add 5640 [(2240,false),(2553,true)] [5552,5060],
  .add 5641 [(2240,false),(2554,true)] [5553,5061],
  .add 5642 [(2241,false),(2554,true)] [5552,5068],
  .add 5643 [(2241,false),(2555,true)] [5553,5069],
]

theorem transition7 : RupBits.runPrefix prefix7 state7 depth = some state8 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
