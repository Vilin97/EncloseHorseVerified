import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode020

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t372 : CounterTree := .leaf (615,false)
def c372 : CNF := []
theorem eq372 : t372.clauses = c372 := rfl
def t373 : CounterTree := .leaf (617,false)
def c373 : CNF := []
theorem eq373 : t373.clauses = c373 := rfl
def t374 : CounterTree := .node [2723,2724] t372 t373
def m374 : CNF := [[(617,true),(2723,true)],[(615,true),(2723,true)],[(615,true),(617,true),(2724,true)]]
theorem merge374 : mergeClauses t372.outputLits t373.outputLits [2723,2724] = m374 := by
  rfl

def c374 : CNF := c372 ++ c373 ++ m374
theorem eq374 : t374.clauses = c374 := by
  change t372.clauses ++ t373.clauses ++ mergeClauses t372.outputLits t373.outputLits [2723,2724] = c374
  exact concat3_congr eq372 eq373 merge374
def t375 : CounterTree := .node [2725,2726,2727,2728] t371 t374
def m375 : CNF := [[(2723,false),(2725,true)],[(2724,false),(2726,true)],[(2721,false),(2725,true)],[(2721,false),(2723,false),(2726,true)],[(2721,false),(2724,false),(2727,true)],[(2722,false),(2726,true)],[(2722,false),(2723,false),(2727,true)],[(2722,false),(2724,false),(2728,true)]]
theorem merge375 : mergeClauses t371.outputLits t374.outputLits [2725,2726,2727,2728] = m375 := by
  rfl

def c375 : CNF := c371 ++ c374 ++ m375
theorem eq375 : t375.clauses = c375 := by
  change t371.clauses ++ t374.clauses ++ mergeClauses t371.outputLits t374.outputLits [2725,2726,2727,2728] = c375
  exact concat3_congr eq371 eq374 merge375
def t376 : CounterTree := .node [2729,2730,2731,2732,2733,2734,2735,2736] t368 t375
def m376 : CNF := [[(2725,false),(2729,true)],[(2726,false),(2730,true)],[(2727,false),(2731,true)],[(2728,false),(2732,true)],[(2717,false),(2729,true)],[(2717,false),(2725,false),(2730,true)],[(2717,false),(2726,false),(2731,true)],[(2717,false),(2727,false),(2732,true)],[(2717,false),(2728,false),(2733,true)],[(2718,false),(2730,true)],[(2718,false),(2725,false),(2731,true)],[(2718,false),(2726,false),(2732,true)],[(2718,false),(2727,false),(2733,true)],[(2718,false),(2728,false),(2734,true)],[(2719,false),(2731,true)],[(2719,false),(2725,false),(2732,true)],[(2719,false),(2726,false),(2733,true)],[(2719,false),(2727,false),(2734,true)],[(2719,false),(2728,false),(2735,true)],[(2720,false),(2732,true)],[(2720,false),(2725,false),(2733,true)],[(2720,false),(2726,false),(2734,true)],[(2720,false),(2727,false),(2735,true)],[(2720,false),(2728,false),(2736,true)]]
theorem merge376 : mergeClauses t368.outputLits t375.outputLits [2729,2730,2731,2732,2733,2734,2735,2736] = m376 := by
  rfl

def c376 : CNF := c368 ++ c375 ++ m376
theorem eq376 : t376.clauses = c376 := by
  change t368.clauses ++ t375.clauses ++ mergeClauses t368.outputLits t375.outputLits [2729,2730,2731,2732,2733,2734,2735,2736] = c376
  exact concat3_congr eq368 eq375 merge376
def t377 : CounterTree := .node [2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750,2751,2752] t361 t376
def m377 : CNF := [[(2729,false),(2737,true)],[(2730,false),(2738,true)],[(2731,false),(2739,true)],[(2732,false),(2740,true)],[(2733,false),(2741,true)],[(2734,false),(2742,true)],[(2735,false),(2743,true)],[(2736,false),(2744,true)],[(2705,false),(2737,true)],[(2705,false),(2729,false),(2738,true)],[(2705,false),(2730,false),(2739,true)],[(2705,false),(2731,false),(2740,true)],[(2705,false),(2732,false),(2741,true)],[(2705,false),(2733,false),(2742,true)],[(2705,false),(2734,false),(2743,true)],[(2705,false),(2735,false),(2744,true)],[(2705,false),(2736,false),(2745,true)],[(2706,false),(2738,true)],[(2706,false),(2729,false),(2739,true)],[(2706,false),(2730,false),(2740,true)],[(2706,false),(2731,false),(2741,true)],[(2706,false),(2732,false),(2742,true)],[(2706,false),(2733,false),(2743,true)],[(2706,false),(2734,false),(2744,true)],[(2706,false),(2735,false),(2745,true)],[(2706,false),(2736,false),(2746,true)],[(2707,false),(2739,true)],[(2707,false),(2729,false),(2740,true)],[(2707,false),(2730,false),(2741,true)],[(2707,false),(2731,false),(2742,true)],[(2707,false),(2732,false),(2743,true)],[(2707,false),(2733,false),(2744,true)],[(2707,false),(2734,false),(2745,true)],[(2707,false),(2735,false),(2746,true)],[(2707,false),(2736,false),(2747,true)],[(2708,false),(2740,true)],[(2708,false),(2729,false),(2741,true)],[(2708,false),(2730,false),(2742,true)],[(2708,false),(2731,false),(2743,true)],[(2708,false),(2732,false),(2744,true)],[(2708,false),(2733,false),(2745,true)],[(2708,false),(2734,false),(2746,true)],[(2708,false),(2735,false),(2747,true)],[(2708,false),(2736,false),(2748,true)],[(2709,false),(2741,true)],[(2709,false),(2729,false),(2742,true)],[(2709,false),(2730,false),(2743,true)],[(2709,false),(2731,false),(2744,true)],[(2709,false),(2732,false),(2745,true)],[(2709,false),(2733,false),(2746,true)],[(2709,false),(2734,false),(2747,true)],[(2709,false),(2735,false),(2748,true)],[(2709,false),(2736,false),(2749,true)],[(2710,false),(2742,true)],[(2710,false),(2729,false),(2743,true)],[(2710,false),(2730,false),(2744,true)],[(2710,false),(2731,false),(2745,true)],[(2710,false),(2732,false),(2746,true)],[(2710,false),(2733,false),(2747,true)],[(2710,false),(2734,false),(2748,true)],[(2710,false),(2735,false),(2749,true)],[(2710,false),(2736,false),(2750,true)],[(2711,false),(2743,true)],[(2711,false),(2729,false),(2744,true)],[(2711,false),(2730,false),(2745,true)],[(2711,false),(2731,false),(2746,true)],[(2711,false),(2732,false),(2747,true)],[(2711,false),(2733,false),(2748,true)],[(2711,false),(2734,false),(2749,true)],[(2711,false),(2735,false),(2750,true)],[(2711,false),(2736,false),(2751,true)],[(2712,false),(2744,true)],[(2712,false),(2729,false),(2745,true)],[(2712,false),(2730,false),(2746,true)],[(2712,false),(2731,false),(2747,true)],[(2712,false),(2732,false),(2748,true)],[(2712,false),(2733,false),(2749,true)],[(2712,false),(2734,false),(2750,true)],[(2712,false),(2735,false),(2751,true)],[(2712,false),(2736,false),(2752,true)]]
theorem merge377 : mergeClauses t361.outputLits t376.outputLits [2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750,2751,2752] = m377 := by
  rfl

def c377 : CNF := c361 ++ c376 ++ m377
theorem eq377 : t377.clauses = c377 := by
  change t361.clauses ++ t376.clauses ++ mergeClauses t361.outputLits t376.outputLits [2737,2738,2739,2740,2741,2742,2743,2744,2745,2746,2747,2748,2749,2750,2751,2752] = c377
  exact concat3_congr eq361 eq376 merge377
def t378 : CounterTree := .node [2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,2781,2782,2783] t346 t377
def m378 : CNF := [[(2737,false),(2753,true)],[(2738,false),(2754,true)],[(2739,false),(2755,true)],[(2740,false),(2756,true)],[(2741,false),(2757,true)],[(2742,false),(2758,true)],[(2743,false),(2759,true)],[(2744,false),(2760,true)],[(2745,false),(2761,true)],[(2746,false),(2762,true)],[(2747,false),(2763,true)],[(2748,false),(2764,true)],[(2749,false),(2765,true)],[(2750,false),(2766,true)],[(2751,false),(2767,true)],[(2752,false),(2768,true)],[(2674,false),(2753,true)],[(2674,false),(2737,false),(2754,true)],[(2674,false),(2738,false),(2755,true)],[(2674,false),(2739,false),(2756,true)],[(2674,false),(2740,false),(2757,true)],[(2674,false),(2741,false),(2758,true)],[(2674,false),(2742,false),(2759,true)],[(2674,false),(2743,false),(2760,true)],[(2674,false),(2744,false),(2761,true)],[(2674,false),(2745,false),(2762,true)],[(2674,false),(2746,false),(2763,true)],[(2674,false),(2747,false),(2764,true)],[(2674,false),(2748,false),(2765,true)],[(2674,false),(2749,false),(2766,true)],[(2674,false),(2750,false),(2767,true)],[(2674,false),(2751,false),(2768,true)],[(2674,false),(2752,false),(2769,true)],[(2675,false),(2754,true)],[(2675,false),(2737,false),(2755,true)],[(2675,false),(2738,false),(2756,true)],[(2675,false),(2739,false),(2757,true)],[(2675,false),(2740,false),(2758,true)],[(2675,false),(2741,false),(2759,true)],[(2675,false),(2742,false),(2760,true)],[(2675,false),(2743,false),(2761,true)],[(2675,false),(2744,false),(2762,true)],[(2675,false),(2745,false),(2763,true)],[(2675,false),(2746,false),(2764,true)],[(2675,false),(2747,false),(2765,true)],[(2675,false),(2748,false),(2766,true)],[(2675,false),(2749,false),(2767,true)],[(2675,false),(2750,false),(2768,true)],[(2675,false),(2751,false),(2769,true)],[(2675,false),(2752,false),(2770,true)],[(2676,false),(2755,true)],[(2676,false),(2737,false),(2756,true)],[(2676,false),(2738,false),(2757,true)],[(2676,false),(2739,false),(2758,true)],[(2676,false),(2740,false),(2759,true)],[(2676,false),(2741,false),(2760,true)],[(2676,false),(2742,false),(2761,true)],[(2676,false),(2743,false),(2762,true)],[(2676,false),(2744,false),(2763,true)],[(2676,false),(2745,false),(2764,true)],[(2676,false),(2746,false),(2765,true)],[(2676,false),(2747,false),(2766,true)],[(2676,false),(2748,false),(2767,true)],[(2676,false),(2749,false),(2768,true)],[(2676,false),(2750,false),(2769,true)],[(2676,false),(2751,false),(2770,true)],[(2676,false),(2752,false),(2771,true)],[(2677,false),(2756,true)],[(2677,false),(2737,false),(2757,true)],[(2677,false),(2738,false),(2758,true)],[(2677,false),(2739,false),(2759,true)],[(2677,false),(2740,false),(2760,true)],[(2677,false),(2741,false),(2761,true)],[(2677,false),(2742,false),(2762,true)],[(2677,false),(2743,false),(2763,true)],[(2677,false),(2744,false),(2764,true)],[(2677,false),(2745,false),(2765,true)],[(2677,false),(2746,false),(2766,true)],[(2677,false),(2747,false),(2767,true)],[(2677,false),(2748,false),(2768,true)],[(2677,false),(2749,false),(2769,true)],[(2677,false),(2750,false),(2770,true)],[(2677,false),(2751,false),(2771,true)],[(2677,false),(2752,false),(2772,true)],[(2678,false),(2757,true)],[(2678,false),(2737,false),(2758,true)],[(2678,false),(2738,false),(2759,true)],[(2678,false),(2739,false),(2760,true)],[(2678,false),(2740,false),(2761,true)],[(2678,false),(2741,false),(2762,true)],[(2678,false),(2742,false),(2763,true)],[(2678,false),(2743,false),(2764,true)],[(2678,false),(2744,false),(2765,true)],[(2678,false),(2745,false),(2766,true)],[(2678,false),(2746,false),(2767,true)],[(2678,false),(2747,false),(2768,true)],[(2678,false),(2748,false),(2769,true)],[(2678,false),(2749,false),(2770,true)],[(2678,false),(2750,false),(2771,true)],[(2678,false),(2751,false),(2772,true)],[(2678,false),(2752,false),(2773,true)],[(2679,false),(2758,true)],[(2679,false),(2737,false),(2759,true)],[(2679,false),(2738,false),(2760,true)],[(2679,false),(2739,false),(2761,true)],[(2679,false),(2740,false),(2762,true)],[(2679,false),(2741,false),(2763,true)],[(2679,false),(2742,false),(2764,true)],[(2679,false),(2743,false),(2765,true)],[(2679,false),(2744,false),(2766,true)],[(2679,false),(2745,false),(2767,true)],[(2679,false),(2746,false),(2768,true)],[(2679,false),(2747,false),(2769,true)],[(2679,false),(2748,false),(2770,true)],[(2679,false),(2749,false),(2771,true)],[(2679,false),(2750,false),(2772,true)],[(2679,false),(2751,false),(2773,true)],[(2679,false),(2752,false),(2774,true)],[(2680,false),(2759,true)],[(2680,false),(2737,false),(2760,true)],[(2680,false),(2738,false),(2761,true)],[(2680,false),(2739,false),(2762,true)],[(2680,false),(2740,false),(2763,true)],[(2680,false),(2741,false),(2764,true)],[(2680,false),(2742,false),(2765,true)],[(2680,false),(2743,false),(2766,true)],[(2680,false),(2744,false),(2767,true)],[(2680,false),(2745,false),(2768,true)],[(2680,false),(2746,false),(2769,true)],[(2680,false),(2747,false),(2770,true)],[(2680,false),(2748,false),(2771,true)],[(2680,false),(2749,false),(2772,true)],[(2680,false),(2750,false),(2773,true)],[(2680,false),(2751,false),(2774,true)],[(2680,false),(2752,false),(2775,true)],[(2681,false),(2760,true)],[(2681,false),(2737,false),(2761,true)],[(2681,false),(2738,false),(2762,true)],[(2681,false),(2739,false),(2763,true)],[(2681,false),(2740,false),(2764,true)],[(2681,false),(2741,false),(2765,true)],[(2681,false),(2742,false),(2766,true)],[(2681,false),(2743,false),(2767,true)],[(2681,false),(2744,false),(2768,true)],[(2681,false),(2745,false),(2769,true)],[(2681,false),(2746,false),(2770,true)],[(2681,false),(2747,false),(2771,true)],[(2681,false),(2748,false),(2772,true)],[(2681,false),(2749,false),(2773,true)],[(2681,false),(2750,false),(2774,true)],[(2681,false),(2751,false),(2775,true)],[(2681,false),(2752,false),(2776,true)],[(2682,false),(2761,true)],[(2682,false),(2737,false),(2762,true)],[(2682,false),(2738,false),(2763,true)],[(2682,false),(2739,false),(2764,true)],[(2682,false),(2740,false),(2765,true)],[(2682,false),(2741,false),(2766,true)],[(2682,false),(2742,false),(2767,true)],[(2682,false),(2743,false),(2768,true)],[(2682,false),(2744,false),(2769,true)],[(2682,false),(2745,false),(2770,true)],[(2682,false),(2746,false),(2771,true)],[(2682,false),(2747,false),(2772,true)],[(2682,false),(2748,false),(2773,true)],[(2682,false),(2749,false),(2774,true)],[(2682,false),(2750,false),(2775,true)],[(2682,false),(2751,false),(2776,true)],[(2682,false),(2752,false),(2777,true)],[(2683,false),(2762,true)],[(2683,false),(2737,false),(2763,true)],[(2683,false),(2738,false),(2764,true)],[(2683,false),(2739,false),(2765,true)],[(2683,false),(2740,false),(2766,true)],[(2683,false),(2741,false),(2767,true)],[(2683,false),(2742,false),(2768,true)],[(2683,false),(2743,false),(2769,true)],[(2683,false),(2744,false),(2770,true)],[(2683,false),(2745,false),(2771,true)],[(2683,false),(2746,false),(2772,true)],[(2683,false),(2747,false),(2773,true)],[(2683,false),(2748,false),(2774,true)],[(2683,false),(2749,false),(2775,true)],[(2683,false),(2750,false),(2776,true)],[(2683,false),(2751,false),(2777,true)],[(2683,false),(2752,false),(2778,true)],[(2684,false),(2763,true)],[(2684,false),(2737,false),(2764,true)],[(2684,false),(2738,false),(2765,true)],[(2684,false),(2739,false),(2766,true)],[(2684,false),(2740,false),(2767,true)],[(2684,false),(2741,false),(2768,true)],[(2684,false),(2742,false),(2769,true)],[(2684,false),(2743,false),(2770,true)],[(2684,false),(2744,false),(2771,true)],[(2684,false),(2745,false),(2772,true)],[(2684,false),(2746,false),(2773,true)],[(2684,false),(2747,false),(2774,true)],[(2684,false),(2748,false),(2775,true)],[(2684,false),(2749,false),(2776,true)],[(2684,false),(2750,false),(2777,true)],[(2684,false),(2751,false),(2778,true)],[(2684,false),(2752,false),(2779,true)],[(2685,false),(2764,true)],[(2685,false),(2737,false),(2765,true)],[(2685,false),(2738,false),(2766,true)],[(2685,false),(2739,false),(2767,true)],[(2685,false),(2740,false),(2768,true)],[(2685,false),(2741,false),(2769,true)],[(2685,false),(2742,false),(2770,true)],[(2685,false),(2743,false),(2771,true)],[(2685,false),(2744,false),(2772,true)],[(2685,false),(2745,false),(2773,true)],[(2685,false),(2746,false),(2774,true)],[(2685,false),(2747,false),(2775,true)],[(2685,false),(2748,false),(2776,true)],[(2685,false),(2749,false),(2777,true)],[(2685,false),(2750,false),(2778,true)],[(2685,false),(2751,false),(2779,true)],[(2685,false),(2752,false),(2780,true)],[(2686,false),(2765,true)],[(2686,false),(2737,false),(2766,true)],[(2686,false),(2738,false),(2767,true)],[(2686,false),(2739,false),(2768,true)],[(2686,false),(2740,false),(2769,true)],[(2686,false),(2741,false),(2770,true)],[(2686,false),(2742,false),(2771,true)],[(2686,false),(2743,false),(2772,true)],[(2686,false),(2744,false),(2773,true)],[(2686,false),(2745,false),(2774,true)],[(2686,false),(2746,false),(2775,true)],[(2686,false),(2747,false),(2776,true)],[(2686,false),(2748,false),(2777,true)],[(2686,false),(2749,false),(2778,true)],[(2686,false),(2750,false),(2779,true)],[(2686,false),(2751,false),(2780,true)],[(2686,false),(2752,false),(2781,true)],[(2687,false),(2766,true)],[(2687,false),(2737,false),(2767,true)],[(2687,false),(2738,false),(2768,true)],[(2687,false),(2739,false),(2769,true)],[(2687,false),(2740,false),(2770,true)],[(2687,false),(2741,false),(2771,true)],[(2687,false),(2742,false),(2772,true)],[(2687,false),(2743,false),(2773,true)],[(2687,false),(2744,false),(2774,true)],[(2687,false),(2745,false),(2775,true)],[(2687,false),(2746,false),(2776,true)],[(2687,false),(2747,false),(2777,true)],[(2687,false),(2748,false),(2778,true)],[(2687,false),(2749,false),(2779,true)],[(2687,false),(2750,false),(2780,true)],[(2687,false),(2751,false),(2781,true)],[(2687,false),(2752,false),(2782,true)],[(2688,false),(2767,true)],[(2688,false),(2737,false),(2768,true)],[(2688,false),(2738,false),(2769,true)],[(2688,false),(2739,false),(2770,true)],[(2688,false),(2740,false),(2771,true)],[(2688,false),(2741,false),(2772,true)],[(2688,false),(2742,false),(2773,true)],[(2688,false),(2743,false),(2774,true)],[(2688,false),(2744,false),(2775,true)],[(2688,false),(2745,false),(2776,true)],[(2688,false),(2746,false),(2777,true)],[(2688,false),(2747,false),(2778,true)],[(2688,false),(2748,false),(2779,true)],[(2688,false),(2749,false),(2780,true)],[(2688,false),(2750,false),(2781,true)],[(2688,false),(2751,false),(2782,true)],[(2688,false),(2752,false),(2783,true)]]
theorem merge378 : mergeClauses t346.outputLits t377.outputLits [2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,2781,2782,2783] = m378 := by
  rfl

def c378 : CNF := c346 ++ c377 ++ m378
theorem eq378 : t378.clauses = c378 := by
  change t346.clauses ++ t377.clauses ++ mergeClauses t346.outputLits t377.outputLits [2753,2754,2755,2756,2757,2758,2759,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2774,2775,2776,2777,2778,2779,2780,2781,2782,2783] = c378
  exact concat3_congr eq346 eq377 merge378
def t379 : CounterTree := .leaf (619,false)
def c379 : CNF := []
theorem eq379 : t379.clauses = c379 := rfl
def t380 : CounterTree := .leaf (621,false)
def c380 : CNF := []
theorem eq380 : t380.clauses = c380 := rfl
def t381 : CounterTree := .node [2784,2785] t379 t380
def m381 : CNF := [[(621,true),(2784,true)],[(619,true),(2784,true)],[(619,true),(621,true),(2785,true)]]
theorem merge381 : mergeClauses t379.outputLits t380.outputLits [2784,2785] = m381 := by
  rfl

def c381 : CNF := c379 ++ c380 ++ m381
theorem eq381 : t381.clauses = c381 := by
  change t379.clauses ++ t380.clauses ++ mergeClauses t379.outputLits t380.outputLits [2784,2785] = c381
  exact concat3_congr eq379 eq380 merge381
def t382 : CounterTree := .leaf (623,false)
def c382 : CNF := []
theorem eq382 : t382.clauses = c382 := rfl
def t383 : CounterTree := .leaf (625,false)
def c383 : CNF := []
theorem eq383 : t383.clauses = c383 := rfl
def t384 : CounterTree := .node [2786,2787] t382 t383
def m384 : CNF := [[(625,true),(2786,true)],[(623,true),(2786,true)],[(623,true),(625,true),(2787,true)]]
theorem merge384 : mergeClauses t382.outputLits t383.outputLits [2786,2787] = m384 := by
  rfl

def c384 : CNF := c382 ++ c383 ++ m384
theorem eq384 : t384.clauses = c384 := by
  change t382.clauses ++ t383.clauses ++ mergeClauses t382.outputLits t383.outputLits [2786,2787] = c384
  exact concat3_congr eq382 eq383 merge384
def t385 : CounterTree := .node [2788,2789,2790,2791] t381 t384
def m385 : CNF := [[(2786,false),(2788,true)],[(2787,false),(2789,true)],[(2784,false),(2788,true)],[(2784,false),(2786,false),(2789,true)],[(2784,false),(2787,false),(2790,true)],[(2785,false),(2789,true)],[(2785,false),(2786,false),(2790,true)],[(2785,false),(2787,false),(2791,true)]]
theorem merge385 : mergeClauses t381.outputLits t384.outputLits [2788,2789,2790,2791] = m385 := by
  rfl

def c385 : CNF := c381 ++ c384 ++ m385
theorem eq385 : t385.clauses = c385 := by
  change t381.clauses ++ t384.clauses ++ mergeClauses t381.outputLits t384.outputLits [2788,2789,2790,2791] = c385
  exact concat3_congr eq381 eq384 merge385
def t386 : CounterTree := .leaf (627,false)
def c386 : CNF := []
theorem eq386 : t386.clauses = c386 := rfl
def t387 : CounterTree := .leaf (629,false)
def c387 : CNF := []
theorem eq387 : t387.clauses = c387 := rfl
def t388 : CounterTree := .node [2792,2793] t386 t387
def m388 : CNF := [[(629,true),(2792,true)],[(627,true),(2792,true)],[(627,true),(629,true),(2793,true)]]
theorem merge388 : mergeClauses t386.outputLits t387.outputLits [2792,2793] = m388 := by
  rfl

def c388 : CNF := c386 ++ c387 ++ m388
theorem eq388 : t388.clauses = c388 := by
  change t386.clauses ++ t387.clauses ++ mergeClauses t386.outputLits t387.outputLits [2792,2793] = c388
  exact concat3_congr eq386 eq387 merge388
def t389 : CounterTree := .leaf (631,false)
def c389 : CNF := []
theorem eq389 : t389.clauses = c389 := rfl
def t390 : CounterTree := .leaf (633,false)
def c390 : CNF := []
theorem eq390 : t390.clauses = c390 := rfl
def t391 : CounterTree := .node [2794,2795] t389 t390
def m391 : CNF := [[(633,true),(2794,true)],[(631,true),(2794,true)],[(631,true),(633,true),(2795,true)]]
theorem merge391 : mergeClauses t389.outputLits t390.outputLits [2794,2795] = m391 := by
  rfl

def c391 : CNF := c389 ++ c390 ++ m391
theorem eq391 : t391.clauses = c391 := by
  change t389.clauses ++ t390.clauses ++ mergeClauses t389.outputLits t390.outputLits [2794,2795] = c391
  exact concat3_congr eq389 eq390 merge391

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
