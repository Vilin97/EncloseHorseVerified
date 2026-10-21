import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode019

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t350 : CounterTree := .leaf (577,false)
def c350 : CNF := []
theorem eq350 : t350.clauses = c350 := rfl
def t351 : CounterTree := .leaf (589,false)
def c351 : CNF := []
theorem eq351 : t351.clauses = c351 := rfl
def t352 : CounterTree := .node [2691,2692] t350 t351
def m352 : CNF := [[(589,true),(2691,true)],[(577,true),(2691,true)],[(577,true),(589,true),(2692,true)]]
theorem merge352 : mergeClauses t350.outputLits t351.outputLits [2691,2692] = m352 := by
  rfl

def c352 : CNF := c350 ++ c351 ++ m352
theorem eq352 : t352.clauses = c352 := by
  change t350.clauses ++ t351.clauses ++ mergeClauses t350.outputLits t351.outputLits [2691,2692] = c352
  exact concat3_congr eq350 eq351 merge352
def t353 : CounterTree := .node [2693,2694,2695,2696] t349 t352
def m353 : CNF := [[(2691,false),(2693,true)],[(2692,false),(2694,true)],[(2689,false),(2693,true)],[(2689,false),(2691,false),(2694,true)],[(2689,false),(2692,false),(2695,true)],[(2690,false),(2694,true)],[(2690,false),(2691,false),(2695,true)],[(2690,false),(2692,false),(2696,true)]]
theorem merge353 : mergeClauses t349.outputLits t352.outputLits [2693,2694,2695,2696] = m353 := by
  rfl

def c353 : CNF := c349 ++ c352 ++ m353
theorem eq353 : t353.clauses = c353 := by
  change t349.clauses ++ t352.clauses ++ mergeClauses t349.outputLits t352.outputLits [2693,2694,2695,2696] = c353
  exact concat3_congr eq349 eq352 merge353
def t354 : CounterTree := .leaf (591,false)
def c354 : CNF := []
theorem eq354 : t354.clauses = c354 := rfl
def t355 : CounterTree := .leaf (597,false)
def c355 : CNF := []
theorem eq355 : t355.clauses = c355 := rfl
def t356 : CounterTree := .node [2697,2698] t354 t355
def m356 : CNF := [[(597,true),(2697,true)],[(591,true),(2697,true)],[(591,true),(597,true),(2698,true)]]
theorem merge356 : mergeClauses t354.outputLits t355.outputLits [2697,2698] = m356 := by
  rfl

def c356 : CNF := c354 ++ c355 ++ m356
theorem eq356 : t356.clauses = c356 := by
  change t354.clauses ++ t355.clauses ++ mergeClauses t354.outputLits t355.outputLits [2697,2698] = c356
  exact concat3_congr eq354 eq355 merge356
def t357 : CounterTree := .leaf (599,false)
def c357 : CNF := []
theorem eq357 : t357.clauses = c357 := rfl
def t358 : CounterTree := .leaf (601,false)
def c358 : CNF := []
theorem eq358 : t358.clauses = c358 := rfl
def t359 : CounterTree := .node [2699,2700] t357 t358
def m359 : CNF := [[(601,true),(2699,true)],[(599,true),(2699,true)],[(599,true),(601,true),(2700,true)]]
theorem merge359 : mergeClauses t357.outputLits t358.outputLits [2699,2700] = m359 := by
  rfl

def c359 : CNF := c357 ++ c358 ++ m359
theorem eq359 : t359.clauses = c359 := by
  change t357.clauses ++ t358.clauses ++ mergeClauses t357.outputLits t358.outputLits [2699,2700] = c359
  exact concat3_congr eq357 eq358 merge359
def t360 : CounterTree := .node [2701,2702,2703,2704] t356 t359
def m360 : CNF := [[(2699,false),(2701,true)],[(2700,false),(2702,true)],[(2697,false),(2701,true)],[(2697,false),(2699,false),(2702,true)],[(2697,false),(2700,false),(2703,true)],[(2698,false),(2702,true)],[(2698,false),(2699,false),(2703,true)],[(2698,false),(2700,false),(2704,true)]]
theorem merge360 : mergeClauses t356.outputLits t359.outputLits [2701,2702,2703,2704] = m360 := by
  rfl

def c360 : CNF := c356 ++ c359 ++ m360
theorem eq360 : t360.clauses = c360 := by
  change t356.clauses ++ t359.clauses ++ mergeClauses t356.outputLits t359.outputLits [2701,2702,2703,2704] = c360
  exact concat3_congr eq356 eq359 merge360
def t361 : CounterTree := .node [2705,2706,2707,2708,2709,2710,2711,2712] t353 t360
def m361 : CNF := [[(2701,false),(2705,true)],[(2702,false),(2706,true)],[(2703,false),(2707,true)],[(2704,false),(2708,true)],[(2693,false),(2705,true)],[(2693,false),(2701,false),(2706,true)],[(2693,false),(2702,false),(2707,true)],[(2693,false),(2703,false),(2708,true)],[(2693,false),(2704,false),(2709,true)],[(2694,false),(2706,true)],[(2694,false),(2701,false),(2707,true)],[(2694,false),(2702,false),(2708,true)],[(2694,false),(2703,false),(2709,true)],[(2694,false),(2704,false),(2710,true)],[(2695,false),(2707,true)],[(2695,false),(2701,false),(2708,true)],[(2695,false),(2702,false),(2709,true)],[(2695,false),(2703,false),(2710,true)],[(2695,false),(2704,false),(2711,true)],[(2696,false),(2708,true)],[(2696,false),(2701,false),(2709,true)],[(2696,false),(2702,false),(2710,true)],[(2696,false),(2703,false),(2711,true)],[(2696,false),(2704,false),(2712,true)]]
theorem merge361 : mergeClauses t353.outputLits t360.outputLits [2705,2706,2707,2708,2709,2710,2711,2712] = m361 := by
  rfl

def c361 : CNF := c353 ++ c360 ++ m361
theorem eq361 : t361.clauses = c361 := by
  change t353.clauses ++ t360.clauses ++ mergeClauses t353.outputLits t360.outputLits [2705,2706,2707,2708,2709,2710,2711,2712] = c361
  exact concat3_congr eq353 eq360 merge361
def t362 : CounterTree := .leaf (603,false)
def c362 : CNF := []
theorem eq362 : t362.clauses = c362 := rfl
def t363 : CounterTree := .leaf (605,false)
def c363 : CNF := []
theorem eq363 : t363.clauses = c363 := rfl
def t364 : CounterTree := .node [2713,2714] t362 t363
def m364 : CNF := [[(605,true),(2713,true)],[(603,true),(2713,true)],[(603,true),(605,true),(2714,true)]]
theorem merge364 : mergeClauses t362.outputLits t363.outputLits [2713,2714] = m364 := by
  rfl

def c364 : CNF := c362 ++ c363 ++ m364
theorem eq364 : t364.clauses = c364 := by
  change t362.clauses ++ t363.clauses ++ mergeClauses t362.outputLits t363.outputLits [2713,2714] = c364
  exact concat3_congr eq362 eq363 merge364
def t365 : CounterTree := .leaf (607,false)
def c365 : CNF := []
theorem eq365 : t365.clauses = c365 := rfl
def t366 : CounterTree := .leaf (609,false)
def c366 : CNF := []
theorem eq366 : t366.clauses = c366 := rfl
def t367 : CounterTree := .node [2715,2716] t365 t366
def m367 : CNF := [[(609,true),(2715,true)],[(607,true),(2715,true)],[(607,true),(609,true),(2716,true)]]
theorem merge367 : mergeClauses t365.outputLits t366.outputLits [2715,2716] = m367 := by
  rfl

def c367 : CNF := c365 ++ c366 ++ m367
theorem eq367 : t367.clauses = c367 := by
  change t365.clauses ++ t366.clauses ++ mergeClauses t365.outputLits t366.outputLits [2715,2716] = c367
  exact concat3_congr eq365 eq366 merge367
def t368 : CounterTree := .node [2717,2718,2719,2720] t364 t367
def m368 : CNF := [[(2715,false),(2717,true)],[(2716,false),(2718,true)],[(2713,false),(2717,true)],[(2713,false),(2715,false),(2718,true)],[(2713,false),(2716,false),(2719,true)],[(2714,false),(2718,true)],[(2714,false),(2715,false),(2719,true)],[(2714,false),(2716,false),(2720,true)]]
theorem merge368 : mergeClauses t364.outputLits t367.outputLits [2717,2718,2719,2720] = m368 := by
  rfl

def c368 : CNF := c364 ++ c367 ++ m368
theorem eq368 : t368.clauses = c368 := by
  change t364.clauses ++ t367.clauses ++ mergeClauses t364.outputLits t367.outputLits [2717,2718,2719,2720] = c368
  exact concat3_congr eq364 eq367 merge368
def t369 : CounterTree := .leaf (611,false)
def c369 : CNF := []
theorem eq369 : t369.clauses = c369 := rfl
def t370 : CounterTree := .leaf (613,false)
def c370 : CNF := []
theorem eq370 : t370.clauses = c370 := rfl
def t371 : CounterTree := .node [2721,2722] t369 t370
def m371 : CNF := [[(613,true),(2721,true)],[(611,true),(2721,true)],[(611,true),(613,true),(2722,true)]]
theorem merge371 : mergeClauses t369.outputLits t370.outputLits [2721,2722] = m371 := by
  rfl

def c371 : CNF := c369 ++ c370 ++ m371
theorem eq371 : t371.clauses = c371 := by
  change t369.clauses ++ t370.clauses ++ mergeClauses t369.outputLits t370.outputLits [2721,2722] = c371
  exact concat3_congr eq369 eq370 merge371

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
