import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode021

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m392 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2794,false),(2796,true)]) (.leaf [(2795,false),(2797,true)])) (.node 1 (.leaf [(2792,false),(2796,true)]) (.leaf [(2792,false),(2794,false),(2797,true)]))) (.node 2 (.node 1 (.leaf [(2792,false),(2795,false),(2798,true)]) (.leaf [(2793,false),(2797,true)])) (.node 1 (.leaf [(2793,false),(2794,false),(2798,true)]) (.leaf [(2793,false),(2795,false),(2799,true)]))))
theorem merge392 : m392.clauses = ScoreNodes.m392 := by rfl

def t392 : Tree := .node 6 (.node 3 t388 t391) m392
theorem eq392 : t392.clauses = ScoreNodes.c392 :=
  cat_eq _ (cat_eq _ eq388 eq391) merge392

def m393 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2796,false),(2800,true)]) (.node 1 (.leaf [(2797,false),(2801,true)]) (.leaf [(2798,false),(2802,true)]))) (.node 1 (.leaf [(2799,false),(2803,true)]) (.node 1 (.leaf [(2788,false),(2800,true)]) (.leaf [(2788,false),(2796,false),(2801,true)])))) (.node 3 (.node 1 (.leaf [(2788,false),(2797,false),(2802,true)]) (.node 1 (.leaf [(2788,false),(2798,false),(2803,true)]) (.leaf [(2788,false),(2799,false),(2804,true)]))) (.node 1 (.leaf [(2789,false),(2801,true)]) (.node 1 (.leaf [(2789,false),(2796,false),(2802,true)]) (.leaf [(2789,false),(2797,false),(2803,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2789,false),(2798,false),(2804,true)]) (.node 1 (.leaf [(2789,false),(2799,false),(2805,true)]) (.leaf [(2790,false),(2802,true)]))) (.node 1 (.leaf [(2790,false),(2796,false),(2803,true)]) (.node 1 (.leaf [(2790,false),(2797,false),(2804,true)]) (.leaf [(2790,false),(2798,false),(2805,true)])))) (.node 3 (.node 1 (.leaf [(2790,false),(2799,false),(2806,true)]) (.node 1 (.leaf [(2791,false),(2803,true)]) (.leaf [(2791,false),(2796,false),(2804,true)]))) (.node 1 (.leaf [(2791,false),(2797,false),(2805,true)]) (.node 1 (.leaf [(2791,false),(2798,false),(2806,true)]) (.leaf [(2791,false),(2799,false),(2807,true)]))))))
theorem merge393 : m393.clauses = ScoreNodes.m393 := by rfl

def t393 : Tree := .node 28 (.node 14 t385 t392) m393
theorem eq393 : t393.clauses = ScoreNodes.c393 :=
  cat_eq _ (cat_eq _ eq385 eq392) merge393

def t394 : Tree := .nil
theorem eq394 : t394.clauses = ScoreNodes.c394 := by rfl

def t395 : Tree := .nil
theorem eq395 : t395.clauses = ScoreNodes.c395 := by rfl

def m396 : Tree := (.node 1 (.leaf [(637,true),(2808,true)]) (.node 1 (.leaf [(635,true),(2808,true)]) (.leaf [(635,true),(637,true),(2809,true)])))
theorem merge396 : m396.clauses = ScoreNodes.m396 := by rfl

def t396 : Tree := .node 0 (.node 0 t394 t395) m396
theorem eq396 : t396.clauses = ScoreNodes.c396 :=
  cat_eq _ (cat_eq _ eq394 eq395) merge396

def t397 : Tree := .nil
theorem eq397 : t397.clauses = ScoreNodes.c397 := by rfl

def t398 : Tree := .nil
theorem eq398 : t398.clauses = ScoreNodes.c398 := by rfl

def m399 : Tree := (.node 1 (.leaf [(641,true),(2810,true)]) (.node 1 (.leaf [(639,true),(2810,true)]) (.leaf [(639,true),(641,true),(2811,true)])))
theorem merge399 : m399.clauses = ScoreNodes.m399 := by rfl

def t399 : Tree := .node 0 (.node 0 t397 t398) m399
theorem eq399 : t399.clauses = ScoreNodes.c399 :=
  cat_eq _ (cat_eq _ eq397 eq398) merge399

def m400 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2810,false),(2812,true)]) (.leaf [(2811,false),(2813,true)])) (.node 1 (.leaf [(2808,false),(2812,true)]) (.leaf [(2808,false),(2810,false),(2813,true)]))) (.node 2 (.node 1 (.leaf [(2808,false),(2811,false),(2814,true)]) (.leaf [(2809,false),(2813,true)])) (.node 1 (.leaf [(2809,false),(2810,false),(2814,true)]) (.leaf [(2809,false),(2811,false),(2815,true)]))))
theorem merge400 : m400.clauses = ScoreNodes.m400 := by rfl

def t400 : Tree := .node 6 (.node 3 t396 t399) m400
theorem eq400 : t400.clauses = ScoreNodes.c400 :=
  cat_eq _ (cat_eq _ eq396 eq399) merge400

def t401 : Tree := .nil
theorem eq401 : t401.clauses = ScoreNodes.c401 := by rfl

def t402 : Tree := .nil
theorem eq402 : t402.clauses = ScoreNodes.c402 := by rfl

def m403 : Tree := (.node 1 (.leaf [(651,true),(2816,true)]) (.node 1 (.leaf [(643,true),(2816,true)]) (.leaf [(643,true),(651,true),(2817,true)])))
theorem merge403 : m403.clauses = ScoreNodes.m403 := by rfl

def t403 : Tree := .node 0 (.node 0 t401 t402) m403
theorem eq403 : t403.clauses = ScoreNodes.c403 :=
  cat_eq _ (cat_eq _ eq401 eq402) merge403

def t404 : Tree := .nil
theorem eq404 : t404.clauses = ScoreNodes.c404 := by rfl

def t405 : Tree := .nil
theorem eq405 : t405.clauses = ScoreNodes.c405 := by rfl

def m406 : Tree := (.node 1 (.leaf [(655,true),(2818,true)]) (.node 1 (.leaf [(653,true),(2818,true)]) (.leaf [(653,true),(655,true),(2819,true)])))
theorem merge406 : m406.clauses = ScoreNodes.m406 := by rfl

def t406 : Tree := .node 0 (.node 0 t404 t405) m406
theorem eq406 : t406.clauses = ScoreNodes.c406 :=
  cat_eq _ (cat_eq _ eq404 eq405) merge406

def m407 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2818,false),(2820,true)]) (.leaf [(2819,false),(2821,true)])) (.node 1 (.leaf [(2816,false),(2820,true)]) (.leaf [(2816,false),(2818,false),(2821,true)]))) (.node 2 (.node 1 (.leaf [(2816,false),(2819,false),(2822,true)]) (.leaf [(2817,false),(2821,true)])) (.node 1 (.leaf [(2817,false),(2818,false),(2822,true)]) (.leaf [(2817,false),(2819,false),(2823,true)]))))
theorem merge407 : m407.clauses = ScoreNodes.m407 := by rfl

def t407 : Tree := .node 6 (.node 3 t403 t406) m407
theorem eq407 : t407.clauses = ScoreNodes.c407 :=
  cat_eq _ (cat_eq _ eq403 eq406) merge407

def m408 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2820,false),(2824,true)]) (.node 1 (.leaf [(2821,false),(2825,true)]) (.leaf [(2822,false),(2826,true)]))) (.node 1 (.leaf [(2823,false),(2827,true)]) (.node 1 (.leaf [(2812,false),(2824,true)]) (.leaf [(2812,false),(2820,false),(2825,true)])))) (.node 3 (.node 1 (.leaf [(2812,false),(2821,false),(2826,true)]) (.node 1 (.leaf [(2812,false),(2822,false),(2827,true)]) (.leaf [(2812,false),(2823,false),(2828,true)]))) (.node 1 (.leaf [(2813,false),(2825,true)]) (.node 1 (.leaf [(2813,false),(2820,false),(2826,true)]) (.leaf [(2813,false),(2821,false),(2827,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2813,false),(2822,false),(2828,true)]) (.node 1 (.leaf [(2813,false),(2823,false),(2829,true)]) (.leaf [(2814,false),(2826,true)]))) (.node 1 (.leaf [(2814,false),(2820,false),(2827,true)]) (.node 1 (.leaf [(2814,false),(2821,false),(2828,true)]) (.leaf [(2814,false),(2822,false),(2829,true)])))) (.node 3 (.node 1 (.leaf [(2814,false),(2823,false),(2830,true)]) (.node 1 (.leaf [(2815,false),(2827,true)]) (.leaf [(2815,false),(2820,false),(2828,true)]))) (.node 1 (.leaf [(2815,false),(2821,false),(2829,true)]) (.node 1 (.leaf [(2815,false),(2822,false),(2830,true)]) (.leaf [(2815,false),(2823,false),(2831,true)]))))))
theorem merge408 : m408.clauses = ScoreNodes.m408 := by rfl

def t408 : Tree := .node 28 (.node 14 t400 t407) m408
theorem eq408 : t408.clauses = ScoreNodes.c408 :=
  cat_eq _ (cat_eq _ eq400 eq407) merge408

def m409 : Tree := (.node 40 (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2824,false),(2832,true)]) (.leaf [(2825,false),(2833,true)])) (.node 1 (.leaf [(2826,false),(2834,true)]) (.node 1 (.leaf [(2827,false),(2835,true)]) (.leaf [(2828,false),(2836,true)])))) (.node 2 (.node 1 (.leaf [(2829,false),(2837,true)]) (.leaf [(2830,false),(2838,true)])) (.node 1 (.leaf [(2831,false),(2839,true)]) (.node 1 (.leaf [(2800,false),(2832,true)]) (.leaf [(2800,false),(2824,false),(2833,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2800,false),(2825,false),(2834,true)]) (.leaf [(2800,false),(2826,false),(2835,true)])) (.node 1 (.leaf [(2800,false),(2827,false),(2836,true)]) (.node 1 (.leaf [(2800,false),(2828,false),(2837,true)]) (.leaf [(2800,false),(2829,false),(2838,true)])))) (.node 2 (.node 1 (.leaf [(2800,false),(2830,false),(2839,true)]) (.leaf [(2800,false),(2831,false),(2840,true)])) (.node 1 (.leaf [(2801,false),(2833,true)]) (.node 1 (.leaf [(2801,false),(2824,false),(2834,true)]) (.leaf [(2801,false),(2825,false),(2835,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2801,false),(2826,false),(2836,true)]) (.leaf [(2801,false),(2827,false),(2837,true)])) (.node 1 (.leaf [(2801,false),(2828,false),(2838,true)]) (.node 1 (.leaf [(2801,false),(2829,false),(2839,true)]) (.leaf [(2801,false),(2830,false),(2840,true)])))) (.node 2 (.node 1 (.leaf [(2801,false),(2831,false),(2841,true)]) (.leaf [(2802,false),(2834,true)])) (.node 1 (.leaf [(2802,false),(2824,false),(2835,true)]) (.node 1 (.leaf [(2802,false),(2825,false),(2836,true)]) (.leaf [(2802,false),(2826,false),(2837,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2802,false),(2827,false),(2838,true)]) (.leaf [(2802,false),(2828,false),(2839,true)])) (.node 1 (.leaf [(2802,false),(2829,false),(2840,true)]) (.node 1 (.leaf [(2802,false),(2830,false),(2841,true)]) (.leaf [(2802,false),(2831,false),(2842,true)])))) (.node 2 (.node 1 (.leaf [(2803,false),(2835,true)]) (.leaf [(2803,false),(2824,false),(2836,true)])) (.node 1 (.leaf [(2803,false),(2825,false),(2837,true)]) (.node 1 (.leaf [(2803,false),(2826,false),(2838,true)]) (.leaf [(2803,false),(2827,false),(2839,true)]))))))) (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2803,false),(2828,false),(2840,true)]) (.leaf [(2803,false),(2829,false),(2841,true)])) (.node 1 (.leaf [(2803,false),(2830,false),(2842,true)]) (.node 1 (.leaf [(2803,false),(2831,false),(2843,true)]) (.leaf [(2804,false),(2836,true)])))) (.node 2 (.node 1 (.leaf [(2804,false),(2824,false),(2837,true)]) (.leaf [(2804,false),(2825,false),(2838,true)])) (.node 1 (.leaf [(2804,false),(2826,false),(2839,true)]) (.node 1 (.leaf [(2804,false),(2827,false),(2840,true)]) (.leaf [(2804,false),(2828,false),(2841,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2804,false),(2829,false),(2842,true)]) (.leaf [(2804,false),(2830,false),(2843,true)])) (.node 1 (.leaf [(2804,false),(2831,false),(2844,true)]) (.node 1 (.leaf [(2805,false),(2837,true)]) (.leaf [(2805,false),(2824,false),(2838,true)])))) (.node 2 (.node 1 (.leaf [(2805,false),(2825,false),(2839,true)]) (.leaf [(2805,false),(2826,false),(2840,true)])) (.node 1 (.leaf [(2805,false),(2827,false),(2841,true)]) (.node 1 (.leaf [(2805,false),(2828,false),(2842,true)]) (.leaf [(2805,false),(2829,false),(2843,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2805,false),(2830,false),(2844,true)]) (.leaf [(2805,false),(2831,false),(2845,true)])) (.node 1 (.leaf [(2806,false),(2838,true)]) (.node 1 (.leaf [(2806,false),(2824,false),(2839,true)]) (.leaf [(2806,false),(2825,false),(2840,true)])))) (.node 2 (.node 1 (.leaf [(2806,false),(2826,false),(2841,true)]) (.leaf [(2806,false),(2827,false),(2842,true)])) (.node 1 (.leaf [(2806,false),(2828,false),(2843,true)]) (.node 1 (.leaf [(2806,false),(2829,false),(2844,true)]) (.leaf [(2806,false),(2830,false),(2845,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2806,false),(2831,false),(2846,true)]) (.leaf [(2807,false),(2839,true)])) (.node 1 (.leaf [(2807,false),(2824,false),(2840,true)]) (.node 1 (.leaf [(2807,false),(2825,false),(2841,true)]) (.leaf [(2807,false),(2826,false),(2842,true)])))) (.node 2 (.node 1 (.leaf [(2807,false),(2827,false),(2843,true)]) (.leaf [(2807,false),(2828,false),(2844,true)])) (.node 1 (.leaf [(2807,false),(2829,false),(2845,true)]) (.node 1 (.leaf [(2807,false),(2830,false),(2846,true)]) (.leaf [(2807,false),(2831,false),(2847,true)]))))))))
theorem merge409 : m409.clauses = ScoreNodes.m409 := by rfl

def t409 : Tree := .node 104 (.node 52 t393 t408) m409
theorem eq409 : t409.clauses = ScoreNodes.c409 :=
  cat_eq _ (cat_eq _ eq393 eq408) merge409


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
