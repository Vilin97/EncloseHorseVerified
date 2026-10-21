import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode018

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t330 : CounterTree := .node [2643,2644,2645,2646,2647,2648,2649] t322 t329
def m330 : CNF := [[(2639,false),(2643,true)],[(2640,false),(2644,true)],[(2641,false),(2645,true)],[(2642,false),(2646,true)],[(2632,false),(2643,true)],[(2632,false),(2639,false),(2644,true)],[(2632,false),(2640,false),(2645,true)],[(2632,false),(2641,false),(2646,true)],[(2632,false),(2642,false),(2647,true)],[(2633,false),(2644,true)],[(2633,false),(2639,false),(2645,true)],[(2633,false),(2640,false),(2646,true)],[(2633,false),(2641,false),(2647,true)],[(2633,false),(2642,false),(2648,true)],[(2634,false),(2645,true)],[(2634,false),(2639,false),(2646,true)],[(2634,false),(2640,false),(2647,true)],[(2634,false),(2641,false),(2648,true)],[(2634,false),(2642,false),(2649,true)]]
theorem merge330 : mergeClauses t322.outputLits t329.outputLits [2643,2644,2645,2646,2647,2648,2649] = m330 := by
  rfl

def c330 : CNF := c322 ++ c329 ++ m330
theorem eq330 : t330.clauses = c330 := by
  change t322.clauses ++ t329.clauses ++ mergeClauses t322.outputLits t329.outputLits [2643,2644,2645,2646,2647,2648,2649] = c330
  exact concat3_congr eq322 eq329 merge330
def t331 : CounterTree := .leaf (531,false)
def c331 : CNF := []
theorem eq331 : t331.clauses = c331 := rfl
def t332 : CounterTree := .leaf (537,false)
def c332 : CNF := []
theorem eq332 : t332.clauses = c332 := rfl
def t333 : CounterTree := .node [2650,2651] t331 t332
def m333 : CNF := [[(537,true),(2650,true)],[(531,true),(2650,true)],[(531,true),(537,true),(2651,true)]]
theorem merge333 : mergeClauses t331.outputLits t332.outputLits [2650,2651] = m333 := by
  rfl

def c333 : CNF := c331 ++ c332 ++ m333
theorem eq333 : t333.clauses = c333 := by
  change t331.clauses ++ t332.clauses ++ mergeClauses t331.outputLits t332.outputLits [2650,2651] = c333
  exact concat3_congr eq331 eq332 merge333
def t334 : CounterTree := .leaf (551,false)
def c334 : CNF := []
theorem eq334 : t334.clauses = c334 := rfl
def t335 : CounterTree := .leaf (553,false)
def c335 : CNF := []
theorem eq335 : t335.clauses = c335 := rfl
def t336 : CounterTree := .node [2652,2653] t334 t335
def m336 : CNF := [[(553,true),(2652,true)],[(551,true),(2652,true)],[(551,true),(553,true),(2653,true)]]
theorem merge336 : mergeClauses t334.outputLits t335.outputLits [2652,2653] = m336 := by
  rfl

def c336 : CNF := c334 ++ c335 ++ m336
theorem eq336 : t336.clauses = c336 := by
  change t334.clauses ++ t335.clauses ++ mergeClauses t334.outputLits t335.outputLits [2652,2653] = c336
  exact concat3_congr eq334 eq335 merge336
def t337 : CounterTree := .node [2654,2655,2656,2657] t333 t336
def m337 : CNF := [[(2652,false),(2654,true)],[(2653,false),(2655,true)],[(2650,false),(2654,true)],[(2650,false),(2652,false),(2655,true)],[(2650,false),(2653,false),(2656,true)],[(2651,false),(2655,true)],[(2651,false),(2652,false),(2656,true)],[(2651,false),(2653,false),(2657,true)]]
theorem merge337 : mergeClauses t333.outputLits t336.outputLits [2654,2655,2656,2657] = m337 := by
  rfl

def c337 : CNF := c333 ++ c336 ++ m337
theorem eq337 : t337.clauses = c337 := by
  change t333.clauses ++ t336.clauses ++ mergeClauses t333.outputLits t336.outputLits [2654,2655,2656,2657] = c337
  exact concat3_congr eq333 eq336 merge337
def t338 : CounterTree := .leaf (561,false)
def c338 : CNF := []
theorem eq338 : t338.clauses = c338 := rfl
def t339 : CounterTree := .leaf (563,false)
def c339 : CNF := []
theorem eq339 : t339.clauses = c339 := rfl
def t340 : CounterTree := .node [2658,2659] t338 t339
def m340 : CNF := [[(563,true),(2658,true)],[(561,true),(2658,true)],[(561,true),(563,true),(2659,true)]]
theorem merge340 : mergeClauses t338.outputLits t339.outputLits [2658,2659] = m340 := by
  rfl

def c340 : CNF := c338 ++ c339 ++ m340
theorem eq340 : t340.clauses = c340 := by
  change t338.clauses ++ t339.clauses ++ mergeClauses t338.outputLits t339.outputLits [2658,2659] = c340
  exact concat3_congr eq338 eq339 merge340
def t341 : CounterTree := .leaf (565,false)
def c341 : CNF := []
theorem eq341 : t341.clauses = c341 := rfl
def t342 : CounterTree := .leaf (567,false)
def c342 : CNF := []
theorem eq342 : t342.clauses = c342 := rfl
def t343 : CounterTree := .node [2660,2661] t341 t342
def m343 : CNF := [[(567,true),(2660,true)],[(565,true),(2660,true)],[(565,true),(567,true),(2661,true)]]
theorem merge343 : mergeClauses t341.outputLits t342.outputLits [2660,2661] = m343 := by
  rfl

def c343 : CNF := c341 ++ c342 ++ m343
theorem eq343 : t343.clauses = c343 := by
  change t341.clauses ++ t342.clauses ++ mergeClauses t341.outputLits t342.outputLits [2660,2661] = c343
  exact concat3_congr eq341 eq342 merge343
def t344 : CounterTree := .node [2662,2663,2664,2665] t340 t343
def m344 : CNF := [[(2660,false),(2662,true)],[(2661,false),(2663,true)],[(2658,false),(2662,true)],[(2658,false),(2660,false),(2663,true)],[(2658,false),(2661,false),(2664,true)],[(2659,false),(2663,true)],[(2659,false),(2660,false),(2664,true)],[(2659,false),(2661,false),(2665,true)]]
theorem merge344 : mergeClauses t340.outputLits t343.outputLits [2662,2663,2664,2665] = m344 := by
  rfl

def c344 : CNF := c340 ++ c343 ++ m344
theorem eq344 : t344.clauses = c344 := by
  change t340.clauses ++ t343.clauses ++ mergeClauses t340.outputLits t343.outputLits [2662,2663,2664,2665] = c344
  exact concat3_congr eq340 eq343 merge344
def t345 : CounterTree := .node [2666,2667,2668,2669,2670,2671,2672,2673] t337 t344
def m345 : CNF := [[(2662,false),(2666,true)],[(2663,false),(2667,true)],[(2664,false),(2668,true)],[(2665,false),(2669,true)],[(2654,false),(2666,true)],[(2654,false),(2662,false),(2667,true)],[(2654,false),(2663,false),(2668,true)],[(2654,false),(2664,false),(2669,true)],[(2654,false),(2665,false),(2670,true)],[(2655,false),(2667,true)],[(2655,false),(2662,false),(2668,true)],[(2655,false),(2663,false),(2669,true)],[(2655,false),(2664,false),(2670,true)],[(2655,false),(2665,false),(2671,true)],[(2656,false),(2668,true)],[(2656,false),(2662,false),(2669,true)],[(2656,false),(2663,false),(2670,true)],[(2656,false),(2664,false),(2671,true)],[(2656,false),(2665,false),(2672,true)],[(2657,false),(2669,true)],[(2657,false),(2662,false),(2670,true)],[(2657,false),(2663,false),(2671,true)],[(2657,false),(2664,false),(2672,true)],[(2657,false),(2665,false),(2673,true)]]
theorem merge345 : mergeClauses t337.outputLits t344.outputLits [2666,2667,2668,2669,2670,2671,2672,2673] = m345 := by
  rfl

def c345 : CNF := c337 ++ c344 ++ m345
theorem eq345 : t345.clauses = c345 := by
  change t337.clauses ++ t344.clauses ++ mergeClauses t337.outputLits t344.outputLits [2666,2667,2668,2669,2670,2671,2672,2673] = c345
  exact concat3_congr eq337 eq344 merge345
def t346 : CounterTree := .node [2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688] t330 t345
def m346 : CNF := [[(2666,false),(2674,true)],[(2667,false),(2675,true)],[(2668,false),(2676,true)],[(2669,false),(2677,true)],[(2670,false),(2678,true)],[(2671,false),(2679,true)],[(2672,false),(2680,true)],[(2673,false),(2681,true)],[(2643,false),(2674,true)],[(2643,false),(2666,false),(2675,true)],[(2643,false),(2667,false),(2676,true)],[(2643,false),(2668,false),(2677,true)],[(2643,false),(2669,false),(2678,true)],[(2643,false),(2670,false),(2679,true)],[(2643,false),(2671,false),(2680,true)],[(2643,false),(2672,false),(2681,true)],[(2643,false),(2673,false),(2682,true)],[(2644,false),(2675,true)],[(2644,false),(2666,false),(2676,true)],[(2644,false),(2667,false),(2677,true)],[(2644,false),(2668,false),(2678,true)],[(2644,false),(2669,false),(2679,true)],[(2644,false),(2670,false),(2680,true)],[(2644,false),(2671,false),(2681,true)],[(2644,false),(2672,false),(2682,true)],[(2644,false),(2673,false),(2683,true)],[(2645,false),(2676,true)],[(2645,false),(2666,false),(2677,true)],[(2645,false),(2667,false),(2678,true)],[(2645,false),(2668,false),(2679,true)],[(2645,false),(2669,false),(2680,true)],[(2645,false),(2670,false),(2681,true)],[(2645,false),(2671,false),(2682,true)],[(2645,false),(2672,false),(2683,true)],[(2645,false),(2673,false),(2684,true)],[(2646,false),(2677,true)],[(2646,false),(2666,false),(2678,true)],[(2646,false),(2667,false),(2679,true)],[(2646,false),(2668,false),(2680,true)],[(2646,false),(2669,false),(2681,true)],[(2646,false),(2670,false),(2682,true)],[(2646,false),(2671,false),(2683,true)],[(2646,false),(2672,false),(2684,true)],[(2646,false),(2673,false),(2685,true)],[(2647,false),(2678,true)],[(2647,false),(2666,false),(2679,true)],[(2647,false),(2667,false),(2680,true)],[(2647,false),(2668,false),(2681,true)],[(2647,false),(2669,false),(2682,true)],[(2647,false),(2670,false),(2683,true)],[(2647,false),(2671,false),(2684,true)],[(2647,false),(2672,false),(2685,true)],[(2647,false),(2673,false),(2686,true)],[(2648,false),(2679,true)],[(2648,false),(2666,false),(2680,true)],[(2648,false),(2667,false),(2681,true)],[(2648,false),(2668,false),(2682,true)],[(2648,false),(2669,false),(2683,true)],[(2648,false),(2670,false),(2684,true)],[(2648,false),(2671,false),(2685,true)],[(2648,false),(2672,false),(2686,true)],[(2648,false),(2673,false),(2687,true)],[(2649,false),(2680,true)],[(2649,false),(2666,false),(2681,true)],[(2649,false),(2667,false),(2682,true)],[(2649,false),(2668,false),(2683,true)],[(2649,false),(2669,false),(2684,true)],[(2649,false),(2670,false),(2685,true)],[(2649,false),(2671,false),(2686,true)],[(2649,false),(2672,false),(2687,true)],[(2649,false),(2673,false),(2688,true)]]
theorem merge346 : mergeClauses t330.outputLits t345.outputLits [2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688] = m346 := by
  rfl

def c346 : CNF := c330 ++ c345 ++ m346
theorem eq346 : t346.clauses = c346 := by
  change t330.clauses ++ t345.clauses ++ mergeClauses t330.outputLits t345.outputLits [2674,2675,2676,2677,2678,2679,2680,2681,2682,2683,2684,2685,2686,2687,2688] = c346
  exact concat3_congr eq330 eq345 merge346
def t347 : CounterTree := .leaf (569,false)
def c347 : CNF := []
theorem eq347 : t347.clauses = c347 := rfl
def t348 : CounterTree := .leaf (575,false)
def c348 : CNF := []
theorem eq348 : t348.clauses = c348 := rfl
def t349 : CounterTree := .node [2689,2690] t347 t348
def m349 : CNF := [[(575,true),(2689,true)],[(569,true),(2689,true)],[(569,true),(575,true),(2690,true)]]
theorem merge349 : mergeClauses t347.outputLits t348.outputLits [2689,2690] = m349 := by
  rfl

def c349 : CNF := c347 ++ c348 ++ m349
theorem eq349 : t349.clauses = c349 := by
  change t347.clauses ++ t348.clauses ++ mergeClauses t347.outputLits t348.outputLits [2689,2690] = c349
  exact concat3_congr eq347 eq348 merge349

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
