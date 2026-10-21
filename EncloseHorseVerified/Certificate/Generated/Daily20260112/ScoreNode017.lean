import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode016

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t291 : CounterTree := .node [2493,2494,2495,2496] t287 t290
def m291 : CNF := [[(2491,false),(2493,true)],[(2492,false),(2494,true)],[(2489,false),(2493,true)],[(2489,false),(2491,false),(2494,true)],[(2489,false),(2492,false),(2495,true)],[(2490,false),(2494,true)],[(2490,false),(2491,false),(2495,true)],[(2490,false),(2492,false),(2496,true)]]
theorem merge291 : mergeClauses t287.outputLits t290.outputLits [2493,2494,2495,2496] = m291 := by
  rfl

def c291 : CNF := c287 ++ c290 ++ m291
theorem eq291 : t291.clauses = c291 := by
  change t287.clauses ++ t290.clauses ++ mergeClauses t287.outputLits t290.outputLits [2493,2494,2495,2496] = c291
  exact concat3_congr eq287 eq290 merge291
def t292 : CounterTree := .leaf (459,false)
def c292 : CNF := []
theorem eq292 : t292.clauses = c292 := rfl
def t293 : CounterTree := .leaf (461,false)
def c293 : CNF := []
theorem eq293 : t293.clauses = c293 := rfl
def t294 : CounterTree := .node [2497,2498] t292 t293
def m294 : CNF := [[(461,true),(2497,true)],[(459,true),(2497,true)],[(459,true),(461,true),(2498,true)]]
theorem merge294 : mergeClauses t292.outputLits t293.outputLits [2497,2498] = m294 := by
  rfl

def c294 : CNF := c292 ++ c293 ++ m294
theorem eq294 : t294.clauses = c294 := by
  change t292.clauses ++ t293.clauses ++ mergeClauses t292.outputLits t293.outputLits [2497,2498] = c294
  exact concat3_congr eq292 eq293 merge294
def t295 : CounterTree := .leaf (463,false)
def c295 : CNF := []
theorem eq295 : t295.clauses = c295 := rfl
def t296 : CounterTree := .leaf (465,false)
def c296 : CNF := []
theorem eq296 : t296.clauses = c296 := rfl
def t297 : CounterTree := .node [2499,2500] t295 t296
def m297 : CNF := [[(465,true),(2499,true)],[(463,true),(2499,true)],[(463,true),(465,true),(2500,true)]]
theorem merge297 : mergeClauses t295.outputLits t296.outputLits [2499,2500] = m297 := by
  rfl

def c297 : CNF := c295 ++ c296 ++ m297
theorem eq297 : t297.clauses = c297 := by
  change t295.clauses ++ t296.clauses ++ mergeClauses t295.outputLits t296.outputLits [2499,2500] = c297
  exact concat3_congr eq295 eq296 merge297
def t298 : CounterTree := .node [2501,2502,2503,2504] t294 t297
def m298 : CNF := [[(2499,false),(2501,true)],[(2500,false),(2502,true)],[(2497,false),(2501,true)],[(2497,false),(2499,false),(2502,true)],[(2497,false),(2500,false),(2503,true)],[(2498,false),(2502,true)],[(2498,false),(2499,false),(2503,true)],[(2498,false),(2500,false),(2504,true)]]
theorem merge298 : mergeClauses t294.outputLits t297.outputLits [2501,2502,2503,2504] = m298 := by
  rfl

def c298 : CNF := c294 ++ c297 ++ m298
theorem eq298 : t298.clauses = c298 := by
  change t294.clauses ++ t297.clauses ++ mergeClauses t294.outputLits t297.outputLits [2501,2502,2503,2504] = c298
  exact concat3_congr eq294 eq297 merge298
def t299 : CounterTree := .node [2505,2506,2507,2508,2509,2510,2511,2512] t291 t298
def m299 : CNF := [[(2501,false),(2505,true)],[(2502,false),(2506,true)],[(2503,false),(2507,true)],[(2504,false),(2508,true)],[(2493,false),(2505,true)],[(2493,false),(2501,false),(2506,true)],[(2493,false),(2502,false),(2507,true)],[(2493,false),(2503,false),(2508,true)],[(2493,false),(2504,false),(2509,true)],[(2494,false),(2506,true)],[(2494,false),(2501,false),(2507,true)],[(2494,false),(2502,false),(2508,true)],[(2494,false),(2503,false),(2509,true)],[(2494,false),(2504,false),(2510,true)],[(2495,false),(2507,true)],[(2495,false),(2501,false),(2508,true)],[(2495,false),(2502,false),(2509,true)],[(2495,false),(2503,false),(2510,true)],[(2495,false),(2504,false),(2511,true)],[(2496,false),(2508,true)],[(2496,false),(2501,false),(2509,true)],[(2496,false),(2502,false),(2510,true)],[(2496,false),(2503,false),(2511,true)],[(2496,false),(2504,false),(2512,true)]]
theorem merge299 : mergeClauses t291.outputLits t298.outputLits [2505,2506,2507,2508,2509,2510,2511,2512] = m299 := by
  rfl

def c299 : CNF := c291 ++ c298 ++ m299
theorem eq299 : t299.clauses = c299 := by
  change t291.clauses ++ t298.clauses ++ mergeClauses t291.outputLits t298.outputLits [2505,2506,2507,2508,2509,2510,2511,2512] = c299
  exact concat3_congr eq291 eq298 merge299
def t300 : CounterTree := .leaf (467,false)
def c300 : CNF := []
theorem eq300 : t300.clauses = c300 := rfl
def t301 : CounterTree := .leaf (473,false)
def c301 : CNF := []
theorem eq301 : t301.clauses = c301 := rfl
def t302 : CounterTree := .node [2513,2514] t300 t301
def m302 : CNF := [[(473,true),(2513,true)],[(467,true),(2513,true)],[(467,true),(473,true),(2514,true)]]
theorem merge302 : mergeClauses t300.outputLits t301.outputLits [2513,2514] = m302 := by
  rfl

def c302 : CNF := c300 ++ c301 ++ m302
theorem eq302 : t302.clauses = c302 := by
  change t300.clauses ++ t301.clauses ++ mergeClauses t300.outputLits t301.outputLits [2513,2514] = c302
  exact concat3_congr eq300 eq301 merge302
def t303 : CounterTree := .leaf (475,false)
def c303 : CNF := []
theorem eq303 : t303.clauses = c303 := rfl
def t304 : CounterTree := .leaf (477,false)
def c304 : CNF := []
theorem eq304 : t304.clauses = c304 := rfl
def t305 : CounterTree := .node [2515,2516] t303 t304
def m305 : CNF := [[(477,true),(2515,true)],[(475,true),(2515,true)],[(475,true),(477,true),(2516,true)]]
theorem merge305 : mergeClauses t303.outputLits t304.outputLits [2515,2516] = m305 := by
  rfl

def c305 : CNF := c303 ++ c304 ++ m305
theorem eq305 : t305.clauses = c305 := by
  change t303.clauses ++ t304.clauses ++ mergeClauses t303.outputLits t304.outputLits [2515,2516] = c305
  exact concat3_congr eq303 eq304 merge305
def t306 : CounterTree := .node [2517,2518,2519,2520] t302 t305
def m306 : CNF := [[(2515,false),(2517,true)],[(2516,false),(2518,true)],[(2513,false),(2517,true)],[(2513,false),(2515,false),(2518,true)],[(2513,false),(2516,false),(2519,true)],[(2514,false),(2518,true)],[(2514,false),(2515,false),(2519,true)],[(2514,false),(2516,false),(2520,true)]]
theorem merge306 : mergeClauses t302.outputLits t305.outputLits [2517,2518,2519,2520] = m306 := by
  rfl

def c306 : CNF := c302 ++ c305 ++ m306
theorem eq306 : t306.clauses = c306 := by
  change t302.clauses ++ t305.clauses ++ mergeClauses t302.outputLits t305.outputLits [2517,2518,2519,2520] = c306
  exact concat3_congr eq302 eq305 merge306
def t307 : CounterTree := .leaf (479,false)
def c307 : CNF := []
theorem eq307 : t307.clauses = c307 := rfl
def t308 : CounterTree := .leaf (483,false)
def c308 : CNF := []
theorem eq308 : t308.clauses = c308 := rfl
def t309 : CounterTree := .node [2521,2522] t307 t308
def m309 : CNF := [[(483,true),(2521,true)],[(479,true),(2521,true)],[(479,true),(483,true),(2522,true)]]
theorem merge309 : mergeClauses t307.outputLits t308.outputLits [2521,2522] = m309 := by
  rfl

def c309 : CNF := c307 ++ c308 ++ m309
theorem eq309 : t309.clauses = c309 := by
  change t307.clauses ++ t308.clauses ++ mergeClauses t307.outputLits t308.outputLits [2521,2522] = c309
  exact concat3_congr eq307 eq308 merge309
def t310 : CounterTree := .leaf (485,false)
def c310 : CNF := []
theorem eq310 : t310.clauses = c310 := rfl
def t311 : CounterTree := .leaf (497,false)
def c311 : CNF := []
theorem eq311 : t311.clauses = c311 := rfl
def t312 : CounterTree := .node [2523,2524] t310 t311
def m312 : CNF := [[(497,true),(2523,true)],[(485,true),(2523,true)],[(485,true),(497,true),(2524,true)]]
theorem merge312 : mergeClauses t310.outputLits t311.outputLits [2523,2524] = m312 := by
  rfl

def c312 : CNF := c310 ++ c311 ++ m312
theorem eq312 : t312.clauses = c312 := by
  change t310.clauses ++ t311.clauses ++ mergeClauses t310.outputLits t311.outputLits [2523,2524] = c312
  exact concat3_congr eq310 eq311 merge312

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
