import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode015

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t269 : CounterTree := .leaf (427,false)
def c269 : CNF := []
theorem eq269 : t269.clauses = c269 := rfl
def t270 : CounterTree := .leaf (429,false)
def c270 : CNF := []
theorem eq270 : t270.clauses = c270 := rfl
def t271 : CounterTree := .node [2450,2451] t269 t270
def m271 : CNF := [[(429,true),(2450,true)],[(427,true),(2450,true)],[(427,true),(429,true),(2451,true)]]
theorem merge271 : mergeClauses t269.outputLits t270.outputLits [2450,2451] = m271 := by
  rfl

def c271 : CNF := c269 ++ c270 ++ m271
theorem eq271 : t271.clauses = c271 := by
  change t269.clauses ++ t270.clauses ++ mergeClauses t269.outputLits t270.outputLits [2450,2451] = c271
  exact concat3_congr eq269 eq270 merge271
def t272 : CounterTree := .leaf (431,false)
def c272 : CNF := []
theorem eq272 : t272.clauses = c272 := rfl
def t273 : CounterTree := .leaf (433,false)
def c273 : CNF := []
theorem eq273 : t273.clauses = c273 := rfl
def t274 : CounterTree := .node [2452,2453] t272 t273
def m274 : CNF := [[(433,true),(2452,true)],[(431,true),(2452,true)],[(431,true),(433,true),(2453,true)]]
theorem merge274 : mergeClauses t272.outputLits t273.outputLits [2452,2453] = m274 := by
  rfl

def c274 : CNF := c272 ++ c273 ++ m274
theorem eq274 : t274.clauses = c274 := by
  change t272.clauses ++ t273.clauses ++ mergeClauses t272.outputLits t273.outputLits [2452,2453] = c274
  exact concat3_congr eq272 eq273 merge274
def t275 : CounterTree := .node [2454,2455,2456,2457] t271 t274
def m275 : CNF := [[(2452,false),(2454,true)],[(2453,false),(2455,true)],[(2450,false),(2454,true)],[(2450,false),(2452,false),(2455,true)],[(2450,false),(2453,false),(2456,true)],[(2451,false),(2455,true)],[(2451,false),(2452,false),(2456,true)],[(2451,false),(2453,false),(2457,true)]]
theorem merge275 : mergeClauses t271.outputLits t274.outputLits [2454,2455,2456,2457] = m275 := by
  rfl

def c275 : CNF := c271 ++ c274 ++ m275
theorem eq275 : t275.clauses = c275 := by
  change t271.clauses ++ t274.clauses ++ mergeClauses t271.outputLits t274.outputLits [2454,2455,2456,2457] = c275
  exact concat3_congr eq271 eq274 merge275
def t276 : CounterTree := .leaf (435,false)
def c276 : CNF := []
theorem eq276 : t276.clauses = c276 := rfl
def t277 : CounterTree := .leaf (437,false)
def c277 : CNF := []
theorem eq277 : t277.clauses = c277 := rfl
def t278 : CounterTree := .node [2458,2459] t276 t277
def m278 : CNF := [[(437,true),(2458,true)],[(435,true),(2458,true)],[(435,true),(437,true),(2459,true)]]
theorem merge278 : mergeClauses t276.outputLits t277.outputLits [2458,2459] = m278 := by
  rfl

def c278 : CNF := c276 ++ c277 ++ m278
theorem eq278 : t278.clauses = c278 := by
  change t276.clauses ++ t277.clauses ++ mergeClauses t276.outputLits t277.outputLits [2458,2459] = c278
  exact concat3_congr eq276 eq277 merge278
def t279 : CounterTree := .leaf (439,false)
def c279 : CNF := []
theorem eq279 : t279.clauses = c279 := rfl
def t280 : CounterTree := .leaf (441,false)
def c280 : CNF := []
theorem eq280 : t280.clauses = c280 := rfl
def t281 : CounterTree := .node [2460,2461] t279 t280
def m281 : CNF := [[(441,true),(2460,true)],[(439,true),(2460,true)],[(439,true),(441,true),(2461,true)]]
theorem merge281 : mergeClauses t279.outputLits t280.outputLits [2460,2461] = m281 := by
  rfl

def c281 : CNF := c279 ++ c280 ++ m281
theorem eq281 : t281.clauses = c281 := by
  change t279.clauses ++ t280.clauses ++ mergeClauses t279.outputLits t280.outputLits [2460,2461] = c281
  exact concat3_congr eq279 eq280 merge281
def t282 : CounterTree := .node [2462,2463,2464,2465] t278 t281
def m282 : CNF := [[(2460,false),(2462,true)],[(2461,false),(2463,true)],[(2458,false),(2462,true)],[(2458,false),(2460,false),(2463,true)],[(2458,false),(2461,false),(2464,true)],[(2459,false),(2463,true)],[(2459,false),(2460,false),(2464,true)],[(2459,false),(2461,false),(2465,true)]]
theorem merge282 : mergeClauses t278.outputLits t281.outputLits [2462,2463,2464,2465] = m282 := by
  rfl

def c282 : CNF := c278 ++ c281 ++ m282
theorem eq282 : t282.clauses = c282 := by
  change t278.clauses ++ t281.clauses ++ mergeClauses t278.outputLits t281.outputLits [2462,2463,2464,2465] = c282
  exact concat3_congr eq278 eq281 merge282
def t283 : CounterTree := .node [2466,2467,2468,2469,2470,2471,2472,2473] t275 t282
def m283 : CNF := [[(2462,false),(2466,true)],[(2463,false),(2467,true)],[(2464,false),(2468,true)],[(2465,false),(2469,true)],[(2454,false),(2466,true)],[(2454,false),(2462,false),(2467,true)],[(2454,false),(2463,false),(2468,true)],[(2454,false),(2464,false),(2469,true)],[(2454,false),(2465,false),(2470,true)],[(2455,false),(2467,true)],[(2455,false),(2462,false),(2468,true)],[(2455,false),(2463,false),(2469,true)],[(2455,false),(2464,false),(2470,true)],[(2455,false),(2465,false),(2471,true)],[(2456,false),(2468,true)],[(2456,false),(2462,false),(2469,true)],[(2456,false),(2463,false),(2470,true)],[(2456,false),(2464,false),(2471,true)],[(2456,false),(2465,false),(2472,true)],[(2457,false),(2469,true)],[(2457,false),(2462,false),(2470,true)],[(2457,false),(2463,false),(2471,true)],[(2457,false),(2464,false),(2472,true)],[(2457,false),(2465,false),(2473,true)]]
theorem merge283 : mergeClauses t275.outputLits t282.outputLits [2466,2467,2468,2469,2470,2471,2472,2473] = m283 := by
  rfl

def c283 : CNF := c275 ++ c282 ++ m283
theorem eq283 : t283.clauses = c283 := by
  change t275.clauses ++ t282.clauses ++ mergeClauses t275.outputLits t282.outputLits [2466,2467,2468,2469,2470,2471,2472,2473] = c283
  exact concat3_congr eq275 eq282 merge283
def t284 : CounterTree := .node [2474,2475,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488] t268 t283
def m284 : CNF := [[(2466,false),(2474,true)],[(2467,false),(2475,true)],[(2468,false),(2476,true)],[(2469,false),(2477,true)],[(2470,false),(2478,true)],[(2471,false),(2479,true)],[(2472,false),(2480,true)],[(2473,false),(2481,true)],[(2443,false),(2474,true)],[(2443,false),(2466,false),(2475,true)],[(2443,false),(2467,false),(2476,true)],[(2443,false),(2468,false),(2477,true)],[(2443,false),(2469,false),(2478,true)],[(2443,false),(2470,false),(2479,true)],[(2443,false),(2471,false),(2480,true)],[(2443,false),(2472,false),(2481,true)],[(2443,false),(2473,false),(2482,true)],[(2444,false),(2475,true)],[(2444,false),(2466,false),(2476,true)],[(2444,false),(2467,false),(2477,true)],[(2444,false),(2468,false),(2478,true)],[(2444,false),(2469,false),(2479,true)],[(2444,false),(2470,false),(2480,true)],[(2444,false),(2471,false),(2481,true)],[(2444,false),(2472,false),(2482,true)],[(2444,false),(2473,false),(2483,true)],[(2445,false),(2476,true)],[(2445,false),(2466,false),(2477,true)],[(2445,false),(2467,false),(2478,true)],[(2445,false),(2468,false),(2479,true)],[(2445,false),(2469,false),(2480,true)],[(2445,false),(2470,false),(2481,true)],[(2445,false),(2471,false),(2482,true)],[(2445,false),(2472,false),(2483,true)],[(2445,false),(2473,false),(2484,true)],[(2446,false),(2477,true)],[(2446,false),(2466,false),(2478,true)],[(2446,false),(2467,false),(2479,true)],[(2446,false),(2468,false),(2480,true)],[(2446,false),(2469,false),(2481,true)],[(2446,false),(2470,false),(2482,true)],[(2446,false),(2471,false),(2483,true)],[(2446,false),(2472,false),(2484,true)],[(2446,false),(2473,false),(2485,true)],[(2447,false),(2478,true)],[(2447,false),(2466,false),(2479,true)],[(2447,false),(2467,false),(2480,true)],[(2447,false),(2468,false),(2481,true)],[(2447,false),(2469,false),(2482,true)],[(2447,false),(2470,false),(2483,true)],[(2447,false),(2471,false),(2484,true)],[(2447,false),(2472,false),(2485,true)],[(2447,false),(2473,false),(2486,true)],[(2448,false),(2479,true)],[(2448,false),(2466,false),(2480,true)],[(2448,false),(2467,false),(2481,true)],[(2448,false),(2468,false),(2482,true)],[(2448,false),(2469,false),(2483,true)],[(2448,false),(2470,false),(2484,true)],[(2448,false),(2471,false),(2485,true)],[(2448,false),(2472,false),(2486,true)],[(2448,false),(2473,false),(2487,true)],[(2449,false),(2480,true)],[(2449,false),(2466,false),(2481,true)],[(2449,false),(2467,false),(2482,true)],[(2449,false),(2468,false),(2483,true)],[(2449,false),(2469,false),(2484,true)],[(2449,false),(2470,false),(2485,true)],[(2449,false),(2471,false),(2486,true)],[(2449,false),(2472,false),(2487,true)],[(2449,false),(2473,false),(2488,true)]]
theorem merge284 : mergeClauses t268.outputLits t283.outputLits [2474,2475,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488] = m284 := by
  rfl

def c284 : CNF := c268 ++ c283 ++ m284
theorem eq284 : t284.clauses = c284 := by
  change t268.clauses ++ t283.clauses ++ mergeClauses t268.outputLits t283.outputLits [2474,2475,2476,2477,2478,2479,2480,2481,2482,2483,2484,2485,2486,2487,2488] = c284
  exact concat3_congr eq268 eq283 merge284
def t285 : CounterTree := .leaf (443,false)
def c285 : CNF := []
theorem eq285 : t285.clauses = c285 := rfl
def t286 : CounterTree := .leaf (445,false)
def c286 : CNF := []
theorem eq286 : t286.clauses = c286 := rfl
def t287 : CounterTree := .node [2489,2490] t285 t286
def m287 : CNF := [[(445,true),(2489,true)],[(443,true),(2489,true)],[(443,true),(445,true),(2490,true)]]
theorem merge287 : mergeClauses t285.outputLits t286.outputLits [2489,2490] = m287 := by
  rfl

def c287 : CNF := c285 ++ c286 ++ m287
theorem eq287 : t287.clauses = c287 := by
  change t285.clauses ++ t286.clauses ++ mergeClauses t285.outputLits t286.outputLits [2489,2490] = c287
  exact concat3_congr eq285 eq286 merge287
def t288 : CounterTree := .leaf (447,false)
def c288 : CNF := []
theorem eq288 : t288.clauses = c288 := rfl
def t289 : CounterTree := .leaf (457,false)
def c289 : CNF := []
theorem eq289 : t289.clauses = c289 := rfl
def t290 : CounterTree := .node [2491,2492] t288 t289
def m290 : CNF := [[(457,true),(2491,true)],[(447,true),(2491,true)],[(447,true),(457,true),(2492,true)]]
theorem merge290 : mergeClauses t288.outputLits t289.outputLits [2491,2492] = m290 := by
  rfl

def c290 : CNF := c288 ++ c289 ++ m290
theorem eq290 : t290.clauses = c290 := by
  change t288.clauses ++ t289.clauses ++ mergeClauses t288.outputLits t289.outputLits [2491,2492] = c290
  exact concat3_congr eq288 eq289 merge290

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
