import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk004
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix5 : List TreeAction := [
  .add 5494 [(2191,false),(2216,true)] [5458,4033],
  .add 5495 [(2192,false),(2217,true)] [5458,4034],
  .add 5496 [(2193,false),(2218,true)] [5458,4035],
  .add 5497 [(2194,false),(2219,true)] [5458,4036],
  .add 5498 [(2195,false),(2220,true)] [5458,4037],
  .add 5499 [(2196,false),(2221,true)] [5458,4038],
  .add 5500 [(2204,false),(2229,true)] [5458,4039],
  .add 5501 [(2211,false),(2236,true)] [5458,4040],
  .add 5502 [(2086,false),(2216,true)] [5485,4041],
  .add 5503 [(2087,false),(2217,true)] [5485,4049],
  .add 5504 [(2088,false),(2218,true)] [5485,4058],
  .add 5505 [(2089,false),(2219,true)] [5485,4071],
  .add 5506 [(2090,false),(2220,true)] [5485,4082],
  .add 5507 [(2091,false),(2221,true)] [5485,4096],
  .add 5508 [(2092,false),(2222,true)] [5485,4106],
  .add 5509 [(2093,false),(2223,true)] [5485,4118],
  .add 5510 [(2094,false),(2224,true)] [5485,4137],
  .add 5511 [(2095,false),(2225,true)] [5485,4149],
  .add 5512 [(2096,false),(2226,true)] [5485,4164],
  .add 5513 [(2097,false),(2227,true)] [5485,4172],
  .add 5514 [(2098,false),(2228,true)] [5485,4179],
  .add 5515 [(2383,true)] [514,4463],
  .add 5516 [(2381,false),(2384,true)] [514,4464],
  .add 5517 [(2382,false),(2385,true)] [514,4465],
  .add 5518 [(2391,true)] [5516,4472],
  .add 5519 [(2388,false),(2392,true)] [5516,4473],
  .add 5520 [(2389,false),(2393,true)] [5516,4474],
  .add 5521 [(2397,true)] [5519,4480],
  .add 5522 [(2375,false),(2398,true)] [5519,4484],
  .add 5523 [(2376,false),(2399,true)] [5519,4488],
  .add 5524 [(2378,false),(2401,true)] [5519,4495],
  .add 5525 [(2379,false),(2402,true)] [5519,4499],
  .add 5526 [(2380,false),(2403,true)] [5519,4503],
  .add 5527 [(2430,true)] [549,4529],
  .add 5528 [(2431,true)] [548,549,4530],
  .add 5529 [(2432,true)] [5528,4531],
  .add 5530 [(2433,true)] [5529,4532],
  .add 5531 [(541,true),(2434,true)] [5529,4533],
  .add 5532 [(2435,true)] [5530,4534],
  .add 5533 [(2436,true)] [5531,4535],
  .add 5534 [(2427,false),(2437,true)] [5531,4537],
  .add 5535 [(2441,true)] [5533,4540],
  .add 5536 [(2442,true)] [5534,4541],
  .add 5537 [(2419,false),(2443,true)] [5534,4544],
  .add 5538 [(2420,false),(2444,true)] [5534,4546],
  .add 5539 [(2424,false),(2447,true)] [5533,4550],
  .add 5540 [(2424,false),(2448,true)] [5534,4551],
  .add 5541 [(2453,true)] [5536,4555],
  .add 5542 [(2454,true)] [5537,4556],
  .add 5543 [(2455,true)] [5522,5537,4558],
]

theorem transition5 : RupBits.runPrefix prefix5 state5 depth = some state6 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
