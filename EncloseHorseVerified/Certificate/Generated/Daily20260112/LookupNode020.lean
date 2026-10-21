import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode019

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t350 : Tree := .nil
theorem eq350 : t350.clauses = ScoreNodes.c350 := by rfl

def t351 : Tree := .nil
theorem eq351 : t351.clauses = ScoreNodes.c351 := by rfl

def m352 : Tree := (.node 1 (.leaf [(589,true),(2691,true)]) (.node 1 (.leaf [(577,true),(2691,true)]) (.leaf [(577,true),(589,true),(2692,true)])))
theorem merge352 : m352.clauses = ScoreNodes.m352 := by rfl

def t352 : Tree := .node 0 (.node 0 t350 t351) m352
theorem eq352 : t352.clauses = ScoreNodes.c352 :=
  cat_eq _ (cat_eq _ eq350 eq351) merge352

def m353 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2691,false),(2693,true)]) (.leaf [(2692,false),(2694,true)])) (.node 1 (.leaf [(2689,false),(2693,true)]) (.leaf [(2689,false),(2691,false),(2694,true)]))) (.node 2 (.node 1 (.leaf [(2689,false),(2692,false),(2695,true)]) (.leaf [(2690,false),(2694,true)])) (.node 1 (.leaf [(2690,false),(2691,false),(2695,true)]) (.leaf [(2690,false),(2692,false),(2696,true)]))))
theorem merge353 : m353.clauses = ScoreNodes.m353 := by rfl

def t353 : Tree := .node 6 (.node 3 t349 t352) m353
theorem eq353 : t353.clauses = ScoreNodes.c353 :=
  cat_eq _ (cat_eq _ eq349 eq352) merge353

def t354 : Tree := .nil
theorem eq354 : t354.clauses = ScoreNodes.c354 := by rfl

def t355 : Tree := .nil
theorem eq355 : t355.clauses = ScoreNodes.c355 := by rfl

def m356 : Tree := (.node 1 (.leaf [(597,true),(2697,true)]) (.node 1 (.leaf [(591,true),(2697,true)]) (.leaf [(591,true),(597,true),(2698,true)])))
theorem merge356 : m356.clauses = ScoreNodes.m356 := by rfl

def t356 : Tree := .node 0 (.node 0 t354 t355) m356
theorem eq356 : t356.clauses = ScoreNodes.c356 :=
  cat_eq _ (cat_eq _ eq354 eq355) merge356

def t357 : Tree := .nil
theorem eq357 : t357.clauses = ScoreNodes.c357 := by rfl

def t358 : Tree := .nil
theorem eq358 : t358.clauses = ScoreNodes.c358 := by rfl

def m359 : Tree := (.node 1 (.leaf [(601,true),(2699,true)]) (.node 1 (.leaf [(599,true),(2699,true)]) (.leaf [(599,true),(601,true),(2700,true)])))
theorem merge359 : m359.clauses = ScoreNodes.m359 := by rfl

def t359 : Tree := .node 0 (.node 0 t357 t358) m359
theorem eq359 : t359.clauses = ScoreNodes.c359 :=
  cat_eq _ (cat_eq _ eq357 eq358) merge359

def m360 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2699,false),(2701,true)]) (.leaf [(2700,false),(2702,true)])) (.node 1 (.leaf [(2697,false),(2701,true)]) (.leaf [(2697,false),(2699,false),(2702,true)]))) (.node 2 (.node 1 (.leaf [(2697,false),(2700,false),(2703,true)]) (.leaf [(2698,false),(2702,true)])) (.node 1 (.leaf [(2698,false),(2699,false),(2703,true)]) (.leaf [(2698,false),(2700,false),(2704,true)]))))
theorem merge360 : m360.clauses = ScoreNodes.m360 := by rfl

def t360 : Tree := .node 6 (.node 3 t356 t359) m360
theorem eq360 : t360.clauses = ScoreNodes.c360 :=
  cat_eq _ (cat_eq _ eq356 eq359) merge360

def m361 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2701,false),(2705,true)]) (.node 1 (.leaf [(2702,false),(2706,true)]) (.leaf [(2703,false),(2707,true)]))) (.node 1 (.leaf [(2704,false),(2708,true)]) (.node 1 (.leaf [(2693,false),(2705,true)]) (.leaf [(2693,false),(2701,false),(2706,true)])))) (.node 3 (.node 1 (.leaf [(2693,false),(2702,false),(2707,true)]) (.node 1 (.leaf [(2693,false),(2703,false),(2708,true)]) (.leaf [(2693,false),(2704,false),(2709,true)]))) (.node 1 (.leaf [(2694,false),(2706,true)]) (.node 1 (.leaf [(2694,false),(2701,false),(2707,true)]) (.leaf [(2694,false),(2702,false),(2708,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2694,false),(2703,false),(2709,true)]) (.node 1 (.leaf [(2694,false),(2704,false),(2710,true)]) (.leaf [(2695,false),(2707,true)]))) (.node 1 (.leaf [(2695,false),(2701,false),(2708,true)]) (.node 1 (.leaf [(2695,false),(2702,false),(2709,true)]) (.leaf [(2695,false),(2703,false),(2710,true)])))) (.node 3 (.node 1 (.leaf [(2695,false),(2704,false),(2711,true)]) (.node 1 (.leaf [(2696,false),(2708,true)]) (.leaf [(2696,false),(2701,false),(2709,true)]))) (.node 1 (.leaf [(2696,false),(2702,false),(2710,true)]) (.node 1 (.leaf [(2696,false),(2703,false),(2711,true)]) (.leaf [(2696,false),(2704,false),(2712,true)]))))))
theorem merge361 : m361.clauses = ScoreNodes.m361 := by rfl

def t361 : Tree := .node 28 (.node 14 t353 t360) m361
theorem eq361 : t361.clauses = ScoreNodes.c361 :=
  cat_eq _ (cat_eq _ eq353 eq360) merge361

def t362 : Tree := .nil
theorem eq362 : t362.clauses = ScoreNodes.c362 := by rfl

def t363 : Tree := .nil
theorem eq363 : t363.clauses = ScoreNodes.c363 := by rfl

def m364 : Tree := (.node 1 (.leaf [(605,true),(2713,true)]) (.node 1 (.leaf [(603,true),(2713,true)]) (.leaf [(603,true),(605,true),(2714,true)])))
theorem merge364 : m364.clauses = ScoreNodes.m364 := by rfl

def t364 : Tree := .node 0 (.node 0 t362 t363) m364
theorem eq364 : t364.clauses = ScoreNodes.c364 :=
  cat_eq _ (cat_eq _ eq362 eq363) merge364

def t365 : Tree := .nil
theorem eq365 : t365.clauses = ScoreNodes.c365 := by rfl

def t366 : Tree := .nil
theorem eq366 : t366.clauses = ScoreNodes.c366 := by rfl

def m367 : Tree := (.node 1 (.leaf [(609,true),(2715,true)]) (.node 1 (.leaf [(607,true),(2715,true)]) (.leaf [(607,true),(609,true),(2716,true)])))
theorem merge367 : m367.clauses = ScoreNodes.m367 := by rfl

def t367 : Tree := .node 0 (.node 0 t365 t366) m367
theorem eq367 : t367.clauses = ScoreNodes.c367 :=
  cat_eq _ (cat_eq _ eq365 eq366) merge367

def m368 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2715,false),(2717,true)]) (.leaf [(2716,false),(2718,true)])) (.node 1 (.leaf [(2713,false),(2717,true)]) (.leaf [(2713,false),(2715,false),(2718,true)]))) (.node 2 (.node 1 (.leaf [(2713,false),(2716,false),(2719,true)]) (.leaf [(2714,false),(2718,true)])) (.node 1 (.leaf [(2714,false),(2715,false),(2719,true)]) (.leaf [(2714,false),(2716,false),(2720,true)]))))
theorem merge368 : m368.clauses = ScoreNodes.m368 := by rfl

def t368 : Tree := .node 6 (.node 3 t364 t367) m368
theorem eq368 : t368.clauses = ScoreNodes.c368 :=
  cat_eq _ (cat_eq _ eq364 eq367) merge368

def t369 : Tree := .nil
theorem eq369 : t369.clauses = ScoreNodes.c369 := by rfl

def t370 : Tree := .nil
theorem eq370 : t370.clauses = ScoreNodes.c370 := by rfl

def m371 : Tree := (.node 1 (.leaf [(613,true),(2721,true)]) (.node 1 (.leaf [(611,true),(2721,true)]) (.leaf [(611,true),(613,true),(2722,true)])))
theorem merge371 : m371.clauses = ScoreNodes.m371 := by rfl

def t371 : Tree := .node 0 (.node 0 t369 t370) m371
theorem eq371 : t371.clauses = ScoreNodes.c371 :=
  cat_eq _ (cat_eq _ eq369 eq370) merge371


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
