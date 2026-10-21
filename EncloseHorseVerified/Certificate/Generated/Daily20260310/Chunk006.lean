import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk005
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix6 : List TreeAction := [
  .add 5544 [(2444,false),(2457,true)] [5522,4559],
  .add 5545 [(2399,false),(2457,true)] [5537,4562],
  .add 5546 [(2401,false),(2459,true)] [5537,4565],
  .add 5547 [(2402,false),(2460,true)] [5537,4569],
  .add 5548 [(2404,false),(2462,true)] [5537,4577],
  .add 5549 [(2408,false),(2466,true)] [5537,4591],
  .add 5550 [(2477,true)] [5542,4594],
  .add 5551 [(2478,true)] [5543,4595],
  .add 5552 [(2479,true)] [5544,4596],
  .add 5553 [(2342,false),(2480,true)] [5544,4603],
  .add 5554 [(2343,false),(2481,true)] [5544,4608],
  .add 5555 [(2344,false),(2481,true)] [5543,4614],
  .add 5556 [(2344,false),(2482,true)] [5544,4615],
  .add 5557 [(2345,false),(2483,true)] [5544,4618],
  .add 5558 [(2346,false),(2484,true)] [5544,4624],
  .add 5559 [(2347,false),(2485,true)] [5544,4627],
  .add 5560 [(2348,false),(2486,true)] [5544,4635],
  .add 5561 [(2349,false),(2487,true)] [5544,4641],
  .add 5562 [(2352,false),(2488,true)] [5542,4651],
  .add 5563 [(2352,false),(2490,true)] [5544,4652],
  .add 5564 [(2353,false),(2491,true)] [5544,4663],
  .add 5565 [(2354,false),(2491,true)] [5543,4668],
  .add 5566 [(2354,false),(2492,true)] [5544,4669],
  .add 5567 [(2355,false),(2493,true)] [5544,4677],
  .add 5568 [(2526,true)] [5553,4719],
  .add 5569 [(2486,false),(2534,true)] [5489,4727],
  .add 5570 [(2490,false),(2538,true)] [5489,4728],
  .add 5571 [(2498,false),(2546,true)] [5489,4729],
  .add 5572 [(2502,false),(2550,true)] [5489,4730],
  .add 5573 [(2503,false),(2551,true)] [5489,4731],
  .add 5574 [(2504,false),(2552,true)] [5489,4732],
  .add 5575 [(2509,false),(2557,true)] [5489,4733],
  .add 5576 [(2511,false),(2559,true)] [5489,4734],
  .add 5577 [(2513,false),(2561,true)] [5489,4735],
  .add 5578 [(2528,true)] [5490,5553,4736],
  .add 5579 [(2481,false),(2530,true)] [5490,4737],
  .add 5580 [(2494,false),(2543,true)] [5490,4738],
  .add 5581 [(2497,false),(2546,true)] [5490,4739],
  .add 5582 [(2500,false),(2549,true)] [5490,4740],
  .add 5583 [(2501,false),(2550,true)] [5490,4741],
  .add 5584 [(2502,false),(2551,true)] [5490,4742],
  .add 5585 [(2504,false),(2553,true)] [5490,4743],
  .add 5586 [(2505,false),(2554,true)] [5490,4744],
  .add 5587 [(2508,false),(2557,true)] [5490,4745],
  .add 5588 [(2509,false),(2558,true)] [5490,4746],
  .add 5589 [(2511,false),(2560,true)] [5490,4747],
  .add 5590 [(2513,false),(2562,true)] [5490,4748],
  .add 5591 [(2515,false),(2564,true)] [5490,4749],
  .add 5592 [(2519,false),(2568,true)] [5490,4750],
  .add 5593 [(2529,true)] [5494,5553,4751],
]

theorem transition6 : RupBits.runPrefix prefix6 state6 depth = some state7 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
