import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreMerge368Row009
import EncloseHorseVerified.Certificate.MergeRows

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def rows368_10 : List (Nat × Clause) := [(80,[(1994,false)]),(81,[(1995,false)]),(82,[(1996,false)]),(83,[(1997,false)]),(84,[(1998,false)]),(85,[(1999,false)]),(86,[(2000,false)])]
def rowCNF368_10 : CNF := [[(1994,false),(2689,true)],[(1994,false),(2524,false),(2690,true)],[(1994,false),(2525,false),(2691,true)],[(1994,false),(2526,false),(2692,true)],[(1994,false),(2527,false),(2693,true)],[(1994,false),(2528,false),(2694,true)],[(1994,false),(2529,false),(2695,true)],[(1995,false),(2690,true)],[(1995,false),(2524,false),(2691,true)],[(1995,false),(2525,false),(2692,true)],[(1995,false),(2526,false),(2693,true)],[(1995,false),(2527,false),(2694,true)],[(1995,false),(2528,false),(2695,true)],[(1996,false),(2691,true)],[(1996,false),(2524,false),(2692,true)],[(1996,false),(2525,false),(2693,true)],[(1996,false),(2526,false),(2694,true)],[(1996,false),(2527,false),(2695,true)],[(1997,false),(2692,true)],[(1997,false),(2524,false),(2693,true)],[(1997,false),(2525,false),(2694,true)],[(1997,false),(2526,false),(2695,true)],[(1998,false),(2693,true)],[(1998,false),(2524,false),(2694,true)],[(1998,false),(2525,false),(2695,true)],[(1999,false),(2694,true)],[(1999,false),(2524,false),(2695,true)],[(2000,false),(2695,true)]]
theorem rowEq368_10 : mergeRows rows368_10 t367.outputLits [2610,2611,2612,2613,2614,2615,2616,2617,2618,2619,2620,2621,2622,2623,2624,2625,2626,2627,2628,2629,2630,2631,2632,2633,2634,2635,2636,2637,2638,2639,2640,2641,2642,2643,2644,2645,2646,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2660,2661,2662,2663,2664,2665,2666,2667,2668,2669,2670,2671,2672,2673,2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688,2689,2690,2691,2692,2693,2694,2695] = rowCNF368_10 := by rfl

end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
