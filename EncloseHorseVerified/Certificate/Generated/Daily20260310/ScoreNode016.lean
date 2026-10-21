import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode015

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t324 : CounterTree := .leaf (495,false)
def c324 : CNF := []
theorem eq324 : t324.clauses = c324 := rfl

def t325 : CounterTree := .leaf (499,false)
def c325 : CNF := []
theorem eq325 : t325.clauses = c325 := rfl

def t326 : CounterTree := .leaf (507,false)
def c326 : CNF := []
theorem eq326 : t326.clauses = c326 := rfl

def t327 : CounterTree := .node [2370,2371] t325 t326
def m327 : CNF := [[(507,true),(2370,true)],[(499,true),(2370,true)],[(499,true),(507,true),(2371,true)]]
theorem merge327 : mergeClauses t325.outputLits t326.outputLits [2370,2371] = m327 := by rfl

def c327 : CNF := c325 ++ c326 ++ m327
theorem eq327 : t327.clauses = c327 := by
  change t325.clauses ++ t326.clauses ++ mergeClauses t325.outputLits t326.outputLits [2370,2371] = c327
  exact concat3_congr eq325 eq326 merge327

def t328 : CounterTree := .node [2372,2373,2374] t324 t327
def m328 : CNF := [[(2370,false),(2372,true)],[(2371,false),(2373,true)],[(495,true),(2372,true)],[(495,true),(2370,false),(2373,true)],[(495,true),(2371,false),(2374,true)]]
theorem merge328 : mergeClauses t324.outputLits t327.outputLits [2372,2373,2374] = m328 := by rfl

def c328 : CNF := c324 ++ c327 ++ m328
theorem eq328 : t328.clauses = c328 := by
  change t324.clauses ++ t327.clauses ++ mergeClauses t324.outputLits t327.outputLits [2372,2373,2374] = c328
  exact concat3_congr eq324 eq327 merge328

def t329 : CounterTree := .node [2375,2376,2377,2378,2379,2380] t323 t328
def m329 : CNF := [[(2372,false),(2375,true)],[(2373,false),(2376,true)],[(2374,false),(2377,true)],[(2367,false),(2375,true)],[(2367,false),(2372,false),(2376,true)],[(2367,false),(2373,false),(2377,true)],[(2367,false),(2374,false),(2378,true)],[(2368,false),(2376,true)],[(2368,false),(2372,false),(2377,true)],[(2368,false),(2373,false),(2378,true)],[(2368,false),(2374,false),(2379,true)],[(2369,false),(2377,true)],[(2369,false),(2372,false),(2378,true)],[(2369,false),(2373,false),(2379,true)],[(2369,false),(2374,false),(2380,true)]]
theorem merge329 : mergeClauses t323.outputLits t328.outputLits [2375,2376,2377,2378,2379,2380] = m329 := by rfl

def c329 : CNF := c323 ++ c328 ++ m329
theorem eq329 : t329.clauses = c329 := by
  change t323.clauses ++ t328.clauses ++ mergeClauses t323.outputLits t328.outputLits [2375,2376,2377,2378,2379,2380] = c329
  exact concat3_congr eq323 eq328 merge329

def t330 : CounterTree := .leaf (509,false)
def c330 : CNF := []
theorem eq330 : t330.clauses = c330 := rfl

def t331 : CounterTree := .leaf (513,false)
def c331 : CNF := []
theorem eq331 : t331.clauses = c331 := rfl

def t332 : CounterTree := .leaf (515,false)
def c332 : CNF := []
theorem eq332 : t332.clauses = c332 := rfl

def t333 : CounterTree := .node [2381,2382] t331 t332
def m333 : CNF := [[(515,true),(2381,true)],[(513,true),(2381,true)],[(513,true),(515,true),(2382,true)]]
theorem merge333 : mergeClauses t331.outputLits t332.outputLits [2381,2382] = m333 := by rfl

def c333 : CNF := c331 ++ c332 ++ m333
theorem eq333 : t333.clauses = c333 := by
  change t331.clauses ++ t332.clauses ++ mergeClauses t331.outputLits t332.outputLits [2381,2382] = c333
  exact concat3_congr eq331 eq332 merge333

def t334 : CounterTree := .node [2383,2384,2385] t330 t333
def m334 : CNF := [[(2381,false),(2383,true)],[(2382,false),(2384,true)],[(509,true),(2383,true)],[(509,true),(2381,false),(2384,true)],[(509,true),(2382,false),(2385,true)]]
theorem merge334 : mergeClauses t330.outputLits t333.outputLits [2383,2384,2385] = m334 := by rfl

def c334 : CNF := c330 ++ c333 ++ m334
theorem eq334 : t334.clauses = c334 := by
  change t330.clauses ++ t333.clauses ++ mergeClauses t330.outputLits t333.outputLits [2383,2384,2385] = c334
  exact concat3_congr eq330 eq333 merge334

def t335 : CounterTree := .leaf (517,false)
def c335 : CNF := []
theorem eq335 : t335.clauses = c335 := rfl

def t336 : CounterTree := .leaf (519,false)
def c336 : CNF := []
theorem eq336 : t336.clauses = c336 := rfl

def t337 : CounterTree := .leaf (521,false)
def c337 : CNF := []
theorem eq337 : t337.clauses = c337 := rfl

def t338 : CounterTree := .node [2386,2387] t336 t337
def m338 : CNF := [[(521,true),(2386,true)],[(519,true),(2386,true)],[(519,true),(521,true),(2387,true)]]
theorem merge338 : mergeClauses t336.outputLits t337.outputLits [2386,2387] = m338 := by rfl

def c338 : CNF := c336 ++ c337 ++ m338
theorem eq338 : t338.clauses = c338 := by
  change t336.clauses ++ t337.clauses ++ mergeClauses t336.outputLits t337.outputLits [2386,2387] = c338
  exact concat3_congr eq336 eq337 merge338

def t339 : CounterTree := .node [2388,2389,2390] t335 t338
def m339 : CNF := [[(2386,false),(2388,true)],[(2387,false),(2389,true)],[(517,true),(2388,true)],[(517,true),(2386,false),(2389,true)],[(517,true),(2387,false),(2390,true)]]
theorem merge339 : mergeClauses t335.outputLits t338.outputLits [2388,2389,2390] = m339 := by rfl

def c339 : CNF := c335 ++ c338 ++ m339
theorem eq339 : t339.clauses = c339 := by
  change t335.clauses ++ t338.clauses ++ mergeClauses t335.outputLits t338.outputLits [2388,2389,2390] = c339
  exact concat3_congr eq335 eq338 merge339

def t340 : CounterTree := .node [2391,2392,2393,2394,2395,2396] t334 t339
def m340 : CNF := [[(2388,false),(2391,true)],[(2389,false),(2392,true)],[(2390,false),(2393,true)],[(2383,false),(2391,true)],[(2383,false),(2388,false),(2392,true)],[(2383,false),(2389,false),(2393,true)],[(2383,false),(2390,false),(2394,true)],[(2384,false),(2392,true)],[(2384,false),(2388,false),(2393,true)],[(2384,false),(2389,false),(2394,true)],[(2384,false),(2390,false),(2395,true)],[(2385,false),(2393,true)],[(2385,false),(2388,false),(2394,true)],[(2385,false),(2389,false),(2395,true)],[(2385,false),(2390,false),(2396,true)]]
theorem merge340 : mergeClauses t334.outputLits t339.outputLits [2391,2392,2393,2394,2395,2396] = m340 := by rfl

def c340 : CNF := c334 ++ c339 ++ m340
theorem eq340 : t340.clauses = c340 := by
  change t334.clauses ++ t339.clauses ++ mergeClauses t334.outputLits t339.outputLits [2391,2392,2393,2394,2395,2396] = c340
  exact concat3_congr eq334 eq339 merge340

def t341 : CounterTree := .node [2397,2398,2399,2400,2401,2402,2403,2404,2405,2406,2407,2408] t329 t340
def m341 : CNF := [[(2391,false),(2397,true)],[(2392,false),(2398,true)],[(2393,false),(2399,true)],[(2394,false),(2400,true)],[(2395,false),(2401,true)],[(2396,false),(2402,true)],[(2375,false),(2397,true)],[(2375,false),(2391,false),(2398,true)],[(2375,false),(2392,false),(2399,true)],[(2375,false),(2393,false),(2400,true)],[(2375,false),(2394,false),(2401,true)],[(2375,false),(2395,false),(2402,true)],[(2375,false),(2396,false),(2403,true)],[(2376,false),(2398,true)],[(2376,false),(2391,false),(2399,true)],[(2376,false),(2392,false),(2400,true)],[(2376,false),(2393,false),(2401,true)],[(2376,false),(2394,false),(2402,true)],[(2376,false),(2395,false),(2403,true)],[(2376,false),(2396,false),(2404,true)],[(2377,false),(2399,true)],[(2377,false),(2391,false),(2400,true)],[(2377,false),(2392,false),(2401,true)],[(2377,false),(2393,false),(2402,true)],[(2377,false),(2394,false),(2403,true)],[(2377,false),(2395,false),(2404,true)],[(2377,false),(2396,false),(2405,true)],[(2378,false),(2400,true)],[(2378,false),(2391,false),(2401,true)],[(2378,false),(2392,false),(2402,true)],[(2378,false),(2393,false),(2403,true)],[(2378,false),(2394,false),(2404,true)],[(2378,false),(2395,false),(2405,true)],[(2378,false),(2396,false),(2406,true)],[(2379,false),(2401,true)],[(2379,false),(2391,false),(2402,true)],[(2379,false),(2392,false),(2403,true)],[(2379,false),(2393,false),(2404,true)],[(2379,false),(2394,false),(2405,true)],[(2379,false),(2395,false),(2406,true)],[(2379,false),(2396,false),(2407,true)],[(2380,false),(2402,true)],[(2380,false),(2391,false),(2403,true)],[(2380,false),(2392,false),(2404,true)],[(2380,false),(2393,false),(2405,true)],[(2380,false),(2394,false),(2406,true)],[(2380,false),(2395,false),(2407,true)],[(2380,false),(2396,false),(2408,true)]]
theorem merge341 : mergeClauses t329.outputLits t340.outputLits [2397,2398,2399,2400,2401,2402,2403,2404,2405,2406,2407,2408] = m341 := by rfl

def c341 : CNF := c329 ++ c340 ++ m341
theorem eq341 : t341.clauses = c341 := by
  change t329.clauses ++ t340.clauses ++ mergeClauses t329.outputLits t340.outputLits [2397,2398,2399,2400,2401,2402,2403,2404,2405,2406,2407,2408] = c341
  exact concat3_congr eq329 eq340 merge341

def t342 : CounterTree := .leaf (523,false)
def c342 : CNF := []
theorem eq342 : t342.clauses = c342 := rfl

def t343 : CounterTree := .leaf (525,false)
def c343 : CNF := []
theorem eq343 : t343.clauses = c343 := rfl

def t344 : CounterTree := .leaf (527,false)
def c344 : CNF := []
theorem eq344 : t344.clauses = c344 := rfl

def t345 : CounterTree := .node [2409,2410] t343 t344
def m345 : CNF := [[(527,true),(2409,true)],[(525,true),(2409,true)],[(525,true),(527,true),(2410,true)]]
theorem merge345 : mergeClauses t343.outputLits t344.outputLits [2409,2410] = m345 := by rfl

def c345 : CNF := c343 ++ c344 ++ m345
theorem eq345 : t345.clauses = c345 := by
  change t343.clauses ++ t344.clauses ++ mergeClauses t343.outputLits t344.outputLits [2409,2410] = c345
  exact concat3_congr eq343 eq344 merge345


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
