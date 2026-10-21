import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode018

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m330 : Tree := (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2639,false),(2643,true)]) (.leaf [(2640,false),(2644,true)])) (.node 1 (.leaf [(2641,false),(2645,true)]) (.leaf [(2642,false),(2646,true)]))) (.node 2 (.node 1 (.leaf [(2632,false),(2643,true)]) (.leaf [(2632,false),(2639,false),(2644,true)])) (.node 1 (.leaf [(2632,false),(2640,false),(2645,true)]) (.node 1 (.leaf [(2632,false),(2641,false),(2646,true)]) (.leaf [(2632,false),(2642,false),(2647,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2633,false),(2644,true)]) (.leaf [(2633,false),(2639,false),(2645,true)])) (.node 1 (.leaf [(2633,false),(2640,false),(2646,true)]) (.node 1 (.leaf [(2633,false),(2641,false),(2647,true)]) (.leaf [(2633,false),(2642,false),(2648,true)])))) (.node 2 (.node 1 (.leaf [(2634,false),(2645,true)]) (.leaf [(2634,false),(2639,false),(2646,true)])) (.node 1 (.leaf [(2634,false),(2640,false),(2647,true)]) (.node 1 (.leaf [(2634,false),(2641,false),(2648,true)]) (.leaf [(2634,false),(2642,false),(2649,true)]))))))
theorem merge330 : m330.clauses = ScoreNodes.m330 := by rfl

def t330 : Tree := .node 22 (.node 8 t322 t329) m330
theorem eq330 : t330.clauses = ScoreNodes.c330 :=
  cat_eq _ (cat_eq _ eq322 eq329) merge330

def t331 : Tree := .nil
theorem eq331 : t331.clauses = ScoreNodes.c331 := by rfl

def t332 : Tree := .nil
theorem eq332 : t332.clauses = ScoreNodes.c332 := by rfl

def m333 : Tree := (.node 1 (.leaf [(537,true),(2650,true)]) (.node 1 (.leaf [(531,true),(2650,true)]) (.leaf [(531,true),(537,true),(2651,true)])))
theorem merge333 : m333.clauses = ScoreNodes.m333 := by rfl

def t333 : Tree := .node 0 (.node 0 t331 t332) m333
theorem eq333 : t333.clauses = ScoreNodes.c333 :=
  cat_eq _ (cat_eq _ eq331 eq332) merge333

def t334 : Tree := .nil
theorem eq334 : t334.clauses = ScoreNodes.c334 := by rfl

def t335 : Tree := .nil
theorem eq335 : t335.clauses = ScoreNodes.c335 := by rfl

def m336 : Tree := (.node 1 (.leaf [(553,true),(2652,true)]) (.node 1 (.leaf [(551,true),(2652,true)]) (.leaf [(551,true),(553,true),(2653,true)])))
theorem merge336 : m336.clauses = ScoreNodes.m336 := by rfl

def t336 : Tree := .node 0 (.node 0 t334 t335) m336
theorem eq336 : t336.clauses = ScoreNodes.c336 :=
  cat_eq _ (cat_eq _ eq334 eq335) merge336

def m337 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2652,false),(2654,true)]) (.leaf [(2653,false),(2655,true)])) (.node 1 (.leaf [(2650,false),(2654,true)]) (.leaf [(2650,false),(2652,false),(2655,true)]))) (.node 2 (.node 1 (.leaf [(2650,false),(2653,false),(2656,true)]) (.leaf [(2651,false),(2655,true)])) (.node 1 (.leaf [(2651,false),(2652,false),(2656,true)]) (.leaf [(2651,false),(2653,false),(2657,true)]))))
theorem merge337 : m337.clauses = ScoreNodes.m337 := by rfl

def t337 : Tree := .node 6 (.node 3 t333 t336) m337
theorem eq337 : t337.clauses = ScoreNodes.c337 :=
  cat_eq _ (cat_eq _ eq333 eq336) merge337

def t338 : Tree := .nil
theorem eq338 : t338.clauses = ScoreNodes.c338 := by rfl

def t339 : Tree := .nil
theorem eq339 : t339.clauses = ScoreNodes.c339 := by rfl

def m340 : Tree := (.node 1 (.leaf [(563,true),(2658,true)]) (.node 1 (.leaf [(561,true),(2658,true)]) (.leaf [(561,true),(563,true),(2659,true)])))
theorem merge340 : m340.clauses = ScoreNodes.m340 := by rfl

def t340 : Tree := .node 0 (.node 0 t338 t339) m340
theorem eq340 : t340.clauses = ScoreNodes.c340 :=
  cat_eq _ (cat_eq _ eq338 eq339) merge340

def t341 : Tree := .nil
theorem eq341 : t341.clauses = ScoreNodes.c341 := by rfl

def t342 : Tree := .nil
theorem eq342 : t342.clauses = ScoreNodes.c342 := by rfl

def m343 : Tree := (.node 1 (.leaf [(567,true),(2660,true)]) (.node 1 (.leaf [(565,true),(2660,true)]) (.leaf [(565,true),(567,true),(2661,true)])))
theorem merge343 : m343.clauses = ScoreNodes.m343 := by rfl

def t343 : Tree := .node 0 (.node 0 t341 t342) m343
theorem eq343 : t343.clauses = ScoreNodes.c343 :=
  cat_eq _ (cat_eq _ eq341 eq342) merge343

def m344 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2660,false),(2662,true)]) (.leaf [(2661,false),(2663,true)])) (.node 1 (.leaf [(2658,false),(2662,true)]) (.leaf [(2658,false),(2660,false),(2663,true)]))) (.node 2 (.node 1 (.leaf [(2658,false),(2661,false),(2664,true)]) (.leaf [(2659,false),(2663,true)])) (.node 1 (.leaf [(2659,false),(2660,false),(2664,true)]) (.leaf [(2659,false),(2661,false),(2665,true)]))))
theorem merge344 : m344.clauses = ScoreNodes.m344 := by rfl

def t344 : Tree := .node 6 (.node 3 t340 t343) m344
theorem eq344 : t344.clauses = ScoreNodes.c344 :=
  cat_eq _ (cat_eq _ eq340 eq343) merge344

def m345 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2662,false),(2666,true)]) (.node 1 (.leaf [(2663,false),(2667,true)]) (.leaf [(2664,false),(2668,true)]))) (.node 1 (.leaf [(2665,false),(2669,true)]) (.node 1 (.leaf [(2654,false),(2666,true)]) (.leaf [(2654,false),(2662,false),(2667,true)])))) (.node 3 (.node 1 (.leaf [(2654,false),(2663,false),(2668,true)]) (.node 1 (.leaf [(2654,false),(2664,false),(2669,true)]) (.leaf [(2654,false),(2665,false),(2670,true)]))) (.node 1 (.leaf [(2655,false),(2667,true)]) (.node 1 (.leaf [(2655,false),(2662,false),(2668,true)]) (.leaf [(2655,false),(2663,false),(2669,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2655,false),(2664,false),(2670,true)]) (.node 1 (.leaf [(2655,false),(2665,false),(2671,true)]) (.leaf [(2656,false),(2668,true)]))) (.node 1 (.leaf [(2656,false),(2662,false),(2669,true)]) (.node 1 (.leaf [(2656,false),(2663,false),(2670,true)]) (.leaf [(2656,false),(2664,false),(2671,true)])))) (.node 3 (.node 1 (.leaf [(2656,false),(2665,false),(2672,true)]) (.node 1 (.leaf [(2657,false),(2669,true)]) (.leaf [(2657,false),(2662,false),(2670,true)]))) (.node 1 (.leaf [(2657,false),(2663,false),(2671,true)]) (.node 1 (.leaf [(2657,false),(2664,false),(2672,true)]) (.leaf [(2657,false),(2665,false),(2673,true)]))))))
theorem merge345 : m345.clauses = ScoreNodes.m345 := by rfl

def t345 : Tree := .node 28 (.node 14 t337 t344) m345
theorem eq345 : t345.clauses = ScoreNodes.c345 :=
  cat_eq _ (cat_eq _ eq337 eq344) merge345

def m346 : Tree := (.node 35 (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(2666,false),(2674,true)]) (.leaf [(2667,false),(2675,true)])) (.node 1 (.leaf [(2668,false),(2676,true)]) (.leaf [(2669,false),(2677,true)]))) (.node 2 (.node 1 (.leaf [(2670,false),(2678,true)]) (.leaf [(2671,false),(2679,true)])) (.node 1 (.leaf [(2672,false),(2680,true)]) (.leaf [(2673,false),(2681,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2643,false),(2674,true)]) (.leaf [(2643,false),(2666,false),(2675,true)])) (.node 1 (.leaf [(2643,false),(2667,false),(2676,true)]) (.leaf [(2643,false),(2668,false),(2677,true)]))) (.node 2 (.node 1 (.leaf [(2643,false),(2669,false),(2678,true)]) (.leaf [(2643,false),(2670,false),(2679,true)])) (.node 1 (.leaf [(2643,false),(2671,false),(2680,true)]) (.node 1 (.leaf [(2643,false),(2672,false),(2681,true)]) (.leaf [(2643,false),(2673,false),(2682,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2644,false),(2675,true)]) (.leaf [(2644,false),(2666,false),(2676,true)])) (.node 1 (.leaf [(2644,false),(2667,false),(2677,true)]) (.leaf [(2644,false),(2668,false),(2678,true)]))) (.node 2 (.node 1 (.leaf [(2644,false),(2669,false),(2679,true)]) (.leaf [(2644,false),(2670,false),(2680,true)])) (.node 1 (.leaf [(2644,false),(2671,false),(2681,true)]) (.node 1 (.leaf [(2644,false),(2672,false),(2682,true)]) (.leaf [(2644,false),(2673,false),(2683,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2645,false),(2676,true)]) (.leaf [(2645,false),(2666,false),(2677,true)])) (.node 1 (.leaf [(2645,false),(2667,false),(2678,true)]) (.leaf [(2645,false),(2668,false),(2679,true)]))) (.node 2 (.node 1 (.leaf [(2645,false),(2669,false),(2680,true)]) (.leaf [(2645,false),(2670,false),(2681,true)])) (.node 1 (.leaf [(2645,false),(2671,false),(2682,true)]) (.node 1 (.leaf [(2645,false),(2672,false),(2683,true)]) (.leaf [(2645,false),(2673,false),(2684,true)]))))))) (.node 18 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2646,false),(2677,true)]) (.leaf [(2646,false),(2666,false),(2678,true)])) (.node 1 (.leaf [(2646,false),(2667,false),(2679,true)]) (.leaf [(2646,false),(2668,false),(2680,true)]))) (.node 2 (.node 1 (.leaf [(2646,false),(2669,false),(2681,true)]) (.leaf [(2646,false),(2670,false),(2682,true)])) (.node 1 (.leaf [(2646,false),(2671,false),(2683,true)]) (.node 1 (.leaf [(2646,false),(2672,false),(2684,true)]) (.leaf [(2646,false),(2673,false),(2685,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2647,false),(2678,true)]) (.leaf [(2647,false),(2666,false),(2679,true)])) (.node 1 (.leaf [(2647,false),(2667,false),(2680,true)]) (.leaf [(2647,false),(2668,false),(2681,true)]))) (.node 2 (.node 1 (.leaf [(2647,false),(2669,false),(2682,true)]) (.leaf [(2647,false),(2670,false),(2683,true)])) (.node 1 (.leaf [(2647,false),(2671,false),(2684,true)]) (.node 1 (.leaf [(2647,false),(2672,false),(2685,true)]) (.leaf [(2647,false),(2673,false),(2686,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2648,false),(2679,true)]) (.leaf [(2648,false),(2666,false),(2680,true)])) (.node 1 (.leaf [(2648,false),(2667,false),(2681,true)]) (.leaf [(2648,false),(2668,false),(2682,true)]))) (.node 2 (.node 1 (.leaf [(2648,false),(2669,false),(2683,true)]) (.leaf [(2648,false),(2670,false),(2684,true)])) (.node 1 (.leaf [(2648,false),(2671,false),(2685,true)]) (.node 1 (.leaf [(2648,false),(2672,false),(2686,true)]) (.leaf [(2648,false),(2673,false),(2687,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2649,false),(2680,true)]) (.leaf [(2649,false),(2666,false),(2681,true)])) (.node 1 (.leaf [(2649,false),(2667,false),(2682,true)]) (.leaf [(2649,false),(2668,false),(2683,true)]))) (.node 2 (.node 1 (.leaf [(2649,false),(2669,false),(2684,true)]) (.leaf [(2649,false),(2670,false),(2685,true)])) (.node 1 (.leaf [(2649,false),(2671,false),(2686,true)]) (.node 1 (.leaf [(2649,false),(2672,false),(2687,true)]) (.leaf [(2649,false),(2673,false),(2688,true)]))))))))
theorem merge346 : m346.clauses = ScoreNodes.m346 := by rfl

def t346 : Tree := .node 93 (.node 41 t330 t345) m346
theorem eq346 : t346.clauses = ScoreNodes.c346 :=
  cat_eq _ (cat_eq _ eq330 eq345) merge346

def t347 : Tree := .nil
theorem eq347 : t347.clauses = ScoreNodes.c347 := by rfl

def t348 : Tree := .nil
theorem eq348 : t348.clauses = ScoreNodes.c348 := by rfl

def m349 : Tree := (.node 1 (.leaf [(575,true),(2689,true)]) (.node 1 (.leaf [(569,true),(2689,true)]) (.leaf [(569,true),(575,true),(2690,true)])))
theorem merge349 : m349.clauses = ScoreNodes.m349 := by rfl

def t349 : Tree := .node 0 (.node 0 t347 t348) m349
theorem eq349 : t349.clauses = ScoreNodes.c349 :=
  cat_eq _ (cat_eq _ eq347 eq348) merge349


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
