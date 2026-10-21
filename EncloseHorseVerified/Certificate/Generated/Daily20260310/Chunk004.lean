import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk003
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix4 : List TreeAction := [
  .add 5444 [(2056,true)] [346,3647],
  .add 5445 [(337,true),(2057,true)] [346,3648],
  .add 5446 [(2058,true)] [5445,3649],
  .add 5447 [(335,true),(2059,true)] [5445,3651],
  .add 5448 [(2066,true)] [5447,3662],
  .add 5449 [(2063,false),(2067,true)] [5447,3663],
  .add 5450 [(2064,false),(2068,true)] [5447,3664],
  .add 5451 [(2065,false),(2069,true)] [5447,3665],
  .add 5452 [(2072,true)] [5449,3674],
  .add 5453 [(2050,false),(2073,true)] [5449,3679],
  .add 5454 [(2051,false),(2074,true)] [5449,3684],
  .add 5455 [(2052,false),(2075,true)] [5449,3690],
  .add 5456 [(2084,true)] [5453,3708],
  .add 5457 [(2085,true)] [5443,5453,3710],
  .add 5458 [(2073,false),(2086,true)] [5443,3711],
  .add 5459 [(2074,false),(2087,true)] [5443,3712],
  .add 5460 [(2075,false),(2088,true)] [5443,3713],
  .add 5461 [(2076,false),(2089,true)] [5443,3714],
  .add 5462 [(2077,false),(2090,true)] [5443,3715],
  .add 5463 [(2078,false),(2091,true)] [5443,3716],
  .add 5464 [(2079,false),(2092,true)] [5443,3717],
  .add 5465 [(2080,false),(2093,true)] [5443,3718],
  .add 5466 [(2081,false),(2094,true)] [5443,3719],
  .add 5467 [(2083,false),(2096,true)] [5443,3720],
  .add 5468 [(2030,false),(2086,true)] [5453,3721],
  .add 5469 [(2031,false),(2087,true)] [5453,3732],
  .add 5470 [(2033,false),(2089,true)] [5453,3751],
  .add 5471 [(2034,false),(2090,true)] [5453,3759],
  .add 5472 [(2148,true)] [394,3870],
  .add 5473 [(2146,false),(2149,true)] [394,3871],
  .add 5474 [(2147,false),(2150,true)] [394,3872],
  .add 5475 [(2156,true)] [5473,3881],
  .add 5476 [(2153,false),(2157,true)] [5473,3882],
  .add 5477 [(2154,false),(2158,true)] [5473,3883],
  .add 5478 [(2155,false),(2159,true)] [5473,3884],
  .add 5479 [(2178,true)] [5476,3921],
  .add 5480 [(2172,false),(2179,true)] [5476,3922],
  .add 5481 [(2173,false),(2180,true)] [5476,3923],
  .add 5482 [(2174,false),(2181,true)] [5476,3924],
  .add 5483 [(2177,false),(2184,true)] [5476,3925],
  .add 5484 [(2190,true)] [5480,3952],
  .add 5485 [(2135,false),(2191,true)] [5480,3960],
  .add 5486 [(2136,false),(2192,true)] [5480,3967],
  .add 5487 [(2138,false),(2194,true)] [5480,3980],
  .add 5488 [(2213,true)] [5485,4024],
  .add 5489 [(2214,true)] [5457,5485,4028],
  .add 5490 [(2201,false),(2225,true)] [5457,4029],
  .add 5491 [(2204,false),(2228,true)] [5457,4030],
  .add 5492 [(2210,false),(2234,true)] [5457,4031],
  .add 5493 [(2215,true)] [5458,5485,4032],
]

theorem transition4 : RupBits.runPrefix prefix4 state4 depth = some state5 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
