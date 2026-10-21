import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode016

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t346 : CounterTree := .node [2411,2412,2413] t342 t345
def m346 : CNF := [[(2409,false),(2411,true)],[(2410,false),(2412,true)],[(523,true),(2411,true)],[(523,true),(2409,false),(2412,true)],[(523,true),(2410,false),(2413,true)]]
theorem merge346 : mergeClauses t342.outputLits t345.outputLits [2411,2412,2413] = m346 := by rfl

def c346 : CNF := c342 ++ c345 ++ m346
theorem eq346 : t346.clauses = c346 := by
  change t342.clauses ++ t345.clauses ++ mergeClauses t342.outputLits t345.outputLits [2411,2412,2413] = c346
  exact concat3_congr eq342 eq345 merge346

def t347 : CounterTree := .leaf (529,false)
def c347 : CNF := []
theorem eq347 : t347.clauses = c347 := rfl

def t348 : CounterTree := .leaf (531,false)
def c348 : CNF := []
theorem eq348 : t348.clauses = c348 := rfl

def t349 : CounterTree := .leaf (533,false)
def c349 : CNF := []
theorem eq349 : t349.clauses = c349 := rfl

def t350 : CounterTree := .node [2414,2415] t348 t349
def m350 : CNF := [[(533,true),(2414,true)],[(531,true),(2414,true)],[(531,true),(533,true),(2415,true)]]
theorem merge350 : mergeClauses t348.outputLits t349.outputLits [2414,2415] = m350 := by rfl

def c350 : CNF := c348 ++ c349 ++ m350
theorem eq350 : t350.clauses = c350 := by
  change t348.clauses ++ t349.clauses ++ mergeClauses t348.outputLits t349.outputLits [2414,2415] = c350
  exact concat3_congr eq348 eq349 merge350

def t351 : CounterTree := .node [2416,2417,2418] t347 t350
def m351 : CNF := [[(2414,false),(2416,true)],[(2415,false),(2417,true)],[(529,true),(2416,true)],[(529,true),(2414,false),(2417,true)],[(529,true),(2415,false),(2418,true)]]
theorem merge351 : mergeClauses t347.outputLits t350.outputLits [2416,2417,2418] = m351 := by rfl

def c351 : CNF := c347 ++ c350 ++ m351
theorem eq351 : t351.clauses = c351 := by
  change t347.clauses ++ t350.clauses ++ mergeClauses t347.outputLits t350.outputLits [2416,2417,2418] = c351
  exact concat3_congr eq347 eq350 merge351

def t352 : CounterTree := .node [2419,2420,2421,2422,2423,2424] t346 t351
def m352 : CNF := [[(2416,false),(2419,true)],[(2417,false),(2420,true)],[(2418,false),(2421,true)],[(2411,false),(2419,true)],[(2411,false),(2416,false),(2420,true)],[(2411,false),(2417,false),(2421,true)],[(2411,false),(2418,false),(2422,true)],[(2412,false),(2420,true)],[(2412,false),(2416,false),(2421,true)],[(2412,false),(2417,false),(2422,true)],[(2412,false),(2418,false),(2423,true)],[(2413,false),(2421,true)],[(2413,false),(2416,false),(2422,true)],[(2413,false),(2417,false),(2423,true)],[(2413,false),(2418,false),(2424,true)]]
theorem merge352 : mergeClauses t346.outputLits t351.outputLits [2419,2420,2421,2422,2423,2424] = m352 := by rfl

def c352 : CNF := c346 ++ c351 ++ m352
theorem eq352 : t352.clauses = c352 := by
  change t346.clauses ++ t351.clauses ++ mergeClauses t346.outputLits t351.outputLits [2419,2420,2421,2422,2423,2424] = c352
  exact concat3_congr eq346 eq351 merge352

def t353 : CounterTree := .leaf (535,false)
def c353 : CNF := []
theorem eq353 : t353.clauses = c353 := rfl

def t354 : CounterTree := .leaf (537,false)
def c354 : CNF := []
theorem eq354 : t354.clauses = c354 := rfl

def t355 : CounterTree := .leaf (539,false)
def c355 : CNF := []
theorem eq355 : t355.clauses = c355 := rfl

def t356 : CounterTree := .node [2425,2426] t354 t355
def m356 : CNF := [[(539,true),(2425,true)],[(537,true),(2425,true)],[(537,true),(539,true),(2426,true)]]
theorem merge356 : mergeClauses t354.outputLits t355.outputLits [2425,2426] = m356 := by rfl

def c356 : CNF := c354 ++ c355 ++ m356
theorem eq356 : t356.clauses = c356 := by
  change t354.clauses ++ t355.clauses ++ mergeClauses t354.outputLits t355.outputLits [2425,2426] = c356
  exact concat3_congr eq354 eq355 merge356

def t357 : CounterTree := .node [2427,2428,2429] t353 t356
def m357 : CNF := [[(2425,false),(2427,true)],[(2426,false),(2428,true)],[(535,true),(2427,true)],[(535,true),(2425,false),(2428,true)],[(535,true),(2426,false),(2429,true)]]
theorem merge357 : mergeClauses t353.outputLits t356.outputLits [2427,2428,2429] = m357 := by rfl

def c357 : CNF := c353 ++ c356 ++ m357
theorem eq357 : t357.clauses = c357 := by
  change t353.clauses ++ t356.clauses ++ mergeClauses t353.outputLits t356.outputLits [2427,2428,2429] = c357
  exact concat3_congr eq353 eq356 merge357

def t358 : CounterTree := .leaf (541,false)
def c358 : CNF := []
theorem eq358 : t358.clauses = c358 := rfl

def t359 : CounterTree := .leaf (555,false)
def c359 : CNF := []
theorem eq359 : t359.clauses = c359 := rfl

def t360 : CounterTree := .leaf (557,false)
def c360 : CNF := []
theorem eq360 : t360.clauses = c360 := rfl

def t361 : CounterTree := .node [2430,2431] t359 t360
def m361 : CNF := [[(557,true),(2430,true)],[(555,true),(2430,true)],[(555,true),(557,true),(2431,true)]]
theorem merge361 : mergeClauses t359.outputLits t360.outputLits [2430,2431] = m361 := by rfl

def c361 : CNF := c359 ++ c360 ++ m361
theorem eq361 : t361.clauses = c361 := by
  change t359.clauses ++ t360.clauses ++ mergeClauses t359.outputLits t360.outputLits [2430,2431] = c361
  exact concat3_congr eq359 eq360 merge361

def t362 : CounterTree := .node [2432,2433,2434] t358 t361
def m362 : CNF := [[(2430,false),(2432,true)],[(2431,false),(2433,true)],[(541,true),(2432,true)],[(541,true),(2430,false),(2433,true)],[(541,true),(2431,false),(2434,true)]]
theorem merge362 : mergeClauses t358.outputLits t361.outputLits [2432,2433,2434] = m362 := by rfl

def c362 : CNF := c358 ++ c361 ++ m362
theorem eq362 : t362.clauses = c362 := by
  change t358.clauses ++ t361.clauses ++ mergeClauses t358.outputLits t361.outputLits [2432,2433,2434] = c362
  exact concat3_congr eq358 eq361 merge362

def t363 : CounterTree := .node [2435,2436,2437,2438,2439,2440] t357 t362
def m363 : CNF := [[(2432,false),(2435,true)],[(2433,false),(2436,true)],[(2434,false),(2437,true)],[(2427,false),(2435,true)],[(2427,false),(2432,false),(2436,true)],[(2427,false),(2433,false),(2437,true)],[(2427,false),(2434,false),(2438,true)],[(2428,false),(2436,true)],[(2428,false),(2432,false),(2437,true)],[(2428,false),(2433,false),(2438,true)],[(2428,false),(2434,false),(2439,true)],[(2429,false),(2437,true)],[(2429,false),(2432,false),(2438,true)],[(2429,false),(2433,false),(2439,true)],[(2429,false),(2434,false),(2440,true)]]
theorem merge363 : mergeClauses t357.outputLits t362.outputLits [2435,2436,2437,2438,2439,2440] = m363 := by rfl

def c363 : CNF := c357 ++ c362 ++ m363
theorem eq363 : t363.clauses = c363 := by
  change t357.clauses ++ t362.clauses ++ mergeClauses t357.outputLits t362.outputLits [2435,2436,2437,2438,2439,2440] = c363
  exact concat3_congr eq357 eq362 merge363

def t364 : CounterTree := .node [2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452] t352 t363
def m364 : CNF := [[(2435,false),(2441,true)],[(2436,false),(2442,true)],[(2437,false),(2443,true)],[(2438,false),(2444,true)],[(2439,false),(2445,true)],[(2440,false),(2446,true)],[(2419,false),(2441,true)],[(2419,false),(2435,false),(2442,true)],[(2419,false),(2436,false),(2443,true)],[(2419,false),(2437,false),(2444,true)],[(2419,false),(2438,false),(2445,true)],[(2419,false),(2439,false),(2446,true)],[(2419,false),(2440,false),(2447,true)],[(2420,false),(2442,true)],[(2420,false),(2435,false),(2443,true)],[(2420,false),(2436,false),(2444,true)],[(2420,false),(2437,false),(2445,true)],[(2420,false),(2438,false),(2446,true)],[(2420,false),(2439,false),(2447,true)],[(2420,false),(2440,false),(2448,true)],[(2421,false),(2443,true)],[(2421,false),(2435,false),(2444,true)],[(2421,false),(2436,false),(2445,true)],[(2421,false),(2437,false),(2446,true)],[(2421,false),(2438,false),(2447,true)],[(2421,false),(2439,false),(2448,true)],[(2421,false),(2440,false),(2449,true)],[(2422,false),(2444,true)],[(2422,false),(2435,false),(2445,true)],[(2422,false),(2436,false),(2446,true)],[(2422,false),(2437,false),(2447,true)],[(2422,false),(2438,false),(2448,true)],[(2422,false),(2439,false),(2449,true)],[(2422,false),(2440,false),(2450,true)],[(2423,false),(2445,true)],[(2423,false),(2435,false),(2446,true)],[(2423,false),(2436,false),(2447,true)],[(2423,false),(2437,false),(2448,true)],[(2423,false),(2438,false),(2449,true)],[(2423,false),(2439,false),(2450,true)],[(2423,false),(2440,false),(2451,true)],[(2424,false),(2446,true)],[(2424,false),(2435,false),(2447,true)],[(2424,false),(2436,false),(2448,true)],[(2424,false),(2437,false),(2449,true)],[(2424,false),(2438,false),(2450,true)],[(2424,false),(2439,false),(2451,true)],[(2424,false),(2440,false),(2452,true)]]
theorem merge364 : mergeClauses t352.outputLits t363.outputLits [2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452] = m364 := by rfl

def c364 : CNF := c352 ++ c363 ++ m364
theorem eq364 : t364.clauses = c364 := by
  change t352.clauses ++ t363.clauses ++ mergeClauses t352.outputLits t363.outputLits [2441,2442,2443,2444,2445,2446,2447,2448,2449,2450,2451,2452] = c364
  exact concat3_congr eq352 eq363 merge364


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
