import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode021

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t392 : CounterTree := .node [2796,2797,2798,2799] t388 t391
def m392 : CNF := [[(2794,false),(2796,true)],[(2795,false),(2797,true)],[(2792,false),(2796,true)],[(2792,false),(2794,false),(2797,true)],[(2792,false),(2795,false),(2798,true)],[(2793,false),(2797,true)],[(2793,false),(2794,false),(2798,true)],[(2793,false),(2795,false),(2799,true)]]
theorem merge392 : mergeClauses t388.outputLits t391.outputLits [2796,2797,2798,2799] = m392 := by
  rfl

def c392 : CNF := c388 ++ c391 ++ m392
theorem eq392 : t392.clauses = c392 := by
  change t388.clauses ++ t391.clauses ++ mergeClauses t388.outputLits t391.outputLits [2796,2797,2798,2799] = c392
  exact concat3_congr eq388 eq391 merge392
def t393 : CounterTree := .node [2800,2801,2802,2803,2804,2805,2806,2807] t385 t392
def m393 : CNF := [[(2796,false),(2800,true)],[(2797,false),(2801,true)],[(2798,false),(2802,true)],[(2799,false),(2803,true)],[(2788,false),(2800,true)],[(2788,false),(2796,false),(2801,true)],[(2788,false),(2797,false),(2802,true)],[(2788,false),(2798,false),(2803,true)],[(2788,false),(2799,false),(2804,true)],[(2789,false),(2801,true)],[(2789,false),(2796,false),(2802,true)],[(2789,false),(2797,false),(2803,true)],[(2789,false),(2798,false),(2804,true)],[(2789,false),(2799,false),(2805,true)],[(2790,false),(2802,true)],[(2790,false),(2796,false),(2803,true)],[(2790,false),(2797,false),(2804,true)],[(2790,false),(2798,false),(2805,true)],[(2790,false),(2799,false),(2806,true)],[(2791,false),(2803,true)],[(2791,false),(2796,false),(2804,true)],[(2791,false),(2797,false),(2805,true)],[(2791,false),(2798,false),(2806,true)],[(2791,false),(2799,false),(2807,true)]]
theorem merge393 : mergeClauses t385.outputLits t392.outputLits [2800,2801,2802,2803,2804,2805,2806,2807] = m393 := by
  rfl

def c393 : CNF := c385 ++ c392 ++ m393
theorem eq393 : t393.clauses = c393 := by
  change t385.clauses ++ t392.clauses ++ mergeClauses t385.outputLits t392.outputLits [2800,2801,2802,2803,2804,2805,2806,2807] = c393
  exact concat3_congr eq385 eq392 merge393
def t394 : CounterTree := .leaf (635,false)
def c394 : CNF := []
theorem eq394 : t394.clauses = c394 := rfl
def t395 : CounterTree := .leaf (637,false)
def c395 : CNF := []
theorem eq395 : t395.clauses = c395 := rfl
def t396 : CounterTree := .node [2808,2809] t394 t395
def m396 : CNF := [[(637,true),(2808,true)],[(635,true),(2808,true)],[(635,true),(637,true),(2809,true)]]
theorem merge396 : mergeClauses t394.outputLits t395.outputLits [2808,2809] = m396 := by
  rfl

def c396 : CNF := c394 ++ c395 ++ m396
theorem eq396 : t396.clauses = c396 := by
  change t394.clauses ++ t395.clauses ++ mergeClauses t394.outputLits t395.outputLits [2808,2809] = c396
  exact concat3_congr eq394 eq395 merge396
def t397 : CounterTree := .leaf (639,false)
def c397 : CNF := []
theorem eq397 : t397.clauses = c397 := rfl
def t398 : CounterTree := .leaf (641,false)
def c398 : CNF := []
theorem eq398 : t398.clauses = c398 := rfl
def t399 : CounterTree := .node [2810,2811] t397 t398
def m399 : CNF := [[(641,true),(2810,true)],[(639,true),(2810,true)],[(639,true),(641,true),(2811,true)]]
theorem merge399 : mergeClauses t397.outputLits t398.outputLits [2810,2811] = m399 := by
  rfl

def c399 : CNF := c397 ++ c398 ++ m399
theorem eq399 : t399.clauses = c399 := by
  change t397.clauses ++ t398.clauses ++ mergeClauses t397.outputLits t398.outputLits [2810,2811] = c399
  exact concat3_congr eq397 eq398 merge399
def t400 : CounterTree := .node [2812,2813,2814,2815] t396 t399
def m400 : CNF := [[(2810,false),(2812,true)],[(2811,false),(2813,true)],[(2808,false),(2812,true)],[(2808,false),(2810,false),(2813,true)],[(2808,false),(2811,false),(2814,true)],[(2809,false),(2813,true)],[(2809,false),(2810,false),(2814,true)],[(2809,false),(2811,false),(2815,true)]]
theorem merge400 : mergeClauses t396.outputLits t399.outputLits [2812,2813,2814,2815] = m400 := by
  rfl

def c400 : CNF := c396 ++ c399 ++ m400
theorem eq400 : t400.clauses = c400 := by
  change t396.clauses ++ t399.clauses ++ mergeClauses t396.outputLits t399.outputLits [2812,2813,2814,2815] = c400
  exact concat3_congr eq396 eq399 merge400
def t401 : CounterTree := .leaf (643,false)
def c401 : CNF := []
theorem eq401 : t401.clauses = c401 := rfl
def t402 : CounterTree := .leaf (651,false)
def c402 : CNF := []
theorem eq402 : t402.clauses = c402 := rfl
def t403 : CounterTree := .node [2816,2817] t401 t402
def m403 : CNF := [[(651,true),(2816,true)],[(643,true),(2816,true)],[(643,true),(651,true),(2817,true)]]
theorem merge403 : mergeClauses t401.outputLits t402.outputLits [2816,2817] = m403 := by
  rfl

def c403 : CNF := c401 ++ c402 ++ m403
theorem eq403 : t403.clauses = c403 := by
  change t401.clauses ++ t402.clauses ++ mergeClauses t401.outputLits t402.outputLits [2816,2817] = c403
  exact concat3_congr eq401 eq402 merge403
def t404 : CounterTree := .leaf (653,false)
def c404 : CNF := []
theorem eq404 : t404.clauses = c404 := rfl
def t405 : CounterTree := .leaf (655,false)
def c405 : CNF := []
theorem eq405 : t405.clauses = c405 := rfl
def t406 : CounterTree := .node [2818,2819] t404 t405
def m406 : CNF := [[(655,true),(2818,true)],[(653,true),(2818,true)],[(653,true),(655,true),(2819,true)]]
theorem merge406 : mergeClauses t404.outputLits t405.outputLits [2818,2819] = m406 := by
  rfl

def c406 : CNF := c404 ++ c405 ++ m406
theorem eq406 : t406.clauses = c406 := by
  change t404.clauses ++ t405.clauses ++ mergeClauses t404.outputLits t405.outputLits [2818,2819] = c406
  exact concat3_congr eq404 eq405 merge406
def t407 : CounterTree := .node [2820,2821,2822,2823] t403 t406
def m407 : CNF := [[(2818,false),(2820,true)],[(2819,false),(2821,true)],[(2816,false),(2820,true)],[(2816,false),(2818,false),(2821,true)],[(2816,false),(2819,false),(2822,true)],[(2817,false),(2821,true)],[(2817,false),(2818,false),(2822,true)],[(2817,false),(2819,false),(2823,true)]]
theorem merge407 : mergeClauses t403.outputLits t406.outputLits [2820,2821,2822,2823] = m407 := by
  rfl

def c407 : CNF := c403 ++ c406 ++ m407
theorem eq407 : t407.clauses = c407 := by
  change t403.clauses ++ t406.clauses ++ mergeClauses t403.outputLits t406.outputLits [2820,2821,2822,2823] = c407
  exact concat3_congr eq403 eq406 merge407
def t408 : CounterTree := .node [2824,2825,2826,2827,2828,2829,2830,2831] t400 t407
def m408 : CNF := [[(2820,false),(2824,true)],[(2821,false),(2825,true)],[(2822,false),(2826,true)],[(2823,false),(2827,true)],[(2812,false),(2824,true)],[(2812,false),(2820,false),(2825,true)],[(2812,false),(2821,false),(2826,true)],[(2812,false),(2822,false),(2827,true)],[(2812,false),(2823,false),(2828,true)],[(2813,false),(2825,true)],[(2813,false),(2820,false),(2826,true)],[(2813,false),(2821,false),(2827,true)],[(2813,false),(2822,false),(2828,true)],[(2813,false),(2823,false),(2829,true)],[(2814,false),(2826,true)],[(2814,false),(2820,false),(2827,true)],[(2814,false),(2821,false),(2828,true)],[(2814,false),(2822,false),(2829,true)],[(2814,false),(2823,false),(2830,true)],[(2815,false),(2827,true)],[(2815,false),(2820,false),(2828,true)],[(2815,false),(2821,false),(2829,true)],[(2815,false),(2822,false),(2830,true)],[(2815,false),(2823,false),(2831,true)]]
theorem merge408 : mergeClauses t400.outputLits t407.outputLits [2824,2825,2826,2827,2828,2829,2830,2831] = m408 := by
  rfl

def c408 : CNF := c400 ++ c407 ++ m408
theorem eq408 : t408.clauses = c408 := by
  change t400.clauses ++ t407.clauses ++ mergeClauses t400.outputLits t407.outputLits [2824,2825,2826,2827,2828,2829,2830,2831] = c408
  exact concat3_congr eq400 eq407 merge408
def t409 : CounterTree := .node [2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847] t393 t408
def m409 : CNF := [[(2824,false),(2832,true)],[(2825,false),(2833,true)],[(2826,false),(2834,true)],[(2827,false),(2835,true)],[(2828,false),(2836,true)],[(2829,false),(2837,true)],[(2830,false),(2838,true)],[(2831,false),(2839,true)],[(2800,false),(2832,true)],[(2800,false),(2824,false),(2833,true)],[(2800,false),(2825,false),(2834,true)],[(2800,false),(2826,false),(2835,true)],[(2800,false),(2827,false),(2836,true)],[(2800,false),(2828,false),(2837,true)],[(2800,false),(2829,false),(2838,true)],[(2800,false),(2830,false),(2839,true)],[(2800,false),(2831,false),(2840,true)],[(2801,false),(2833,true)],[(2801,false),(2824,false),(2834,true)],[(2801,false),(2825,false),(2835,true)],[(2801,false),(2826,false),(2836,true)],[(2801,false),(2827,false),(2837,true)],[(2801,false),(2828,false),(2838,true)],[(2801,false),(2829,false),(2839,true)],[(2801,false),(2830,false),(2840,true)],[(2801,false),(2831,false),(2841,true)],[(2802,false),(2834,true)],[(2802,false),(2824,false),(2835,true)],[(2802,false),(2825,false),(2836,true)],[(2802,false),(2826,false),(2837,true)],[(2802,false),(2827,false),(2838,true)],[(2802,false),(2828,false),(2839,true)],[(2802,false),(2829,false),(2840,true)],[(2802,false),(2830,false),(2841,true)],[(2802,false),(2831,false),(2842,true)],[(2803,false),(2835,true)],[(2803,false),(2824,false),(2836,true)],[(2803,false),(2825,false),(2837,true)],[(2803,false),(2826,false),(2838,true)],[(2803,false),(2827,false),(2839,true)],[(2803,false),(2828,false),(2840,true)],[(2803,false),(2829,false),(2841,true)],[(2803,false),(2830,false),(2842,true)],[(2803,false),(2831,false),(2843,true)],[(2804,false),(2836,true)],[(2804,false),(2824,false),(2837,true)],[(2804,false),(2825,false),(2838,true)],[(2804,false),(2826,false),(2839,true)],[(2804,false),(2827,false),(2840,true)],[(2804,false),(2828,false),(2841,true)],[(2804,false),(2829,false),(2842,true)],[(2804,false),(2830,false),(2843,true)],[(2804,false),(2831,false),(2844,true)],[(2805,false),(2837,true)],[(2805,false),(2824,false),(2838,true)],[(2805,false),(2825,false),(2839,true)],[(2805,false),(2826,false),(2840,true)],[(2805,false),(2827,false),(2841,true)],[(2805,false),(2828,false),(2842,true)],[(2805,false),(2829,false),(2843,true)],[(2805,false),(2830,false),(2844,true)],[(2805,false),(2831,false),(2845,true)],[(2806,false),(2838,true)],[(2806,false),(2824,false),(2839,true)],[(2806,false),(2825,false),(2840,true)],[(2806,false),(2826,false),(2841,true)],[(2806,false),(2827,false),(2842,true)],[(2806,false),(2828,false),(2843,true)],[(2806,false),(2829,false),(2844,true)],[(2806,false),(2830,false),(2845,true)],[(2806,false),(2831,false),(2846,true)],[(2807,false),(2839,true)],[(2807,false),(2824,false),(2840,true)],[(2807,false),(2825,false),(2841,true)],[(2807,false),(2826,false),(2842,true)],[(2807,false),(2827,false),(2843,true)],[(2807,false),(2828,false),(2844,true)],[(2807,false),(2829,false),(2845,true)],[(2807,false),(2830,false),(2846,true)],[(2807,false),(2831,false),(2847,true)]]
theorem merge409 : mergeClauses t393.outputLits t408.outputLits [2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847] = m409 := by
  rfl

def c409 : CNF := c393 ++ c408 ++ m409
theorem eq409 : t409.clauses = c409 := by
  change t393.clauses ++ t408.clauses ++ mergeClauses t393.outputLits t408.outputLits [2832,2833,2834,2835,2836,2837,2838,2839,2840,2841,2842,2843,2844,2845,2846,2847] = c409
  exact concat3_congr eq393 eq408 merge409

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
