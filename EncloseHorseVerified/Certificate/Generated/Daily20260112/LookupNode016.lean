import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode015

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t269 : Tree := .nil
theorem eq269 : t269.clauses = ScoreNodes.c269 := by rfl

def t270 : Tree := .nil
theorem eq270 : t270.clauses = ScoreNodes.c270 := by rfl

def m271 : Tree := (.node 1 (.leaf [(429,true),(2450,true)]) (.node 1 (.leaf [(427,true),(2450,true)]) (.leaf [(427,true),(429,true),(2451,true)])))
theorem merge271 : m271.clauses = ScoreNodes.m271 := by rfl

def t271 : Tree := .node 0 (.node 0 t269 t270) m271
theorem eq271 : t271.clauses = ScoreNodes.c271 :=
  cat_eq _ (cat_eq _ eq269 eq270) merge271

def t272 : Tree := .nil
theorem eq272 : t272.clauses = ScoreNodes.c272 := by rfl

def t273 : Tree := .nil
theorem eq273 : t273.clauses = ScoreNodes.c273 := by rfl

def m274 : Tree := (.node 1 (.leaf [(433,true),(2452,true)]) (.node 1 (.leaf [(431,true),(2452,true)]) (.leaf [(431,true),(433,true),(2453,true)])))
theorem merge274 : m274.clauses = ScoreNodes.m274 := by rfl

def t274 : Tree := .node 0 (.node 0 t272 t273) m274
theorem eq274 : t274.clauses = ScoreNodes.c274 :=
  cat_eq _ (cat_eq _ eq272 eq273) merge274

def m275 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2452,false),(2454,true)]) (.leaf [(2453,false),(2455,true)])) (.node 1 (.leaf [(2450,false),(2454,true)]) (.leaf [(2450,false),(2452,false),(2455,true)]))) (.node 2 (.node 1 (.leaf [(2450,false),(2453,false),(2456,true)]) (.leaf [(2451,false),(2455,true)])) (.node 1 (.leaf [(2451,false),(2452,false),(2456,true)]) (.leaf [(2451,false),(2453,false),(2457,true)]))))
theorem merge275 : m275.clauses = ScoreNodes.m275 := by rfl

def t275 : Tree := .node 6 (.node 3 t271 t274) m275
theorem eq275 : t275.clauses = ScoreNodes.c275 :=
  cat_eq _ (cat_eq _ eq271 eq274) merge275

def t276 : Tree := .nil
theorem eq276 : t276.clauses = ScoreNodes.c276 := by rfl

def t277 : Tree := .nil
theorem eq277 : t277.clauses = ScoreNodes.c277 := by rfl

def m278 : Tree := (.node 1 (.leaf [(437,true),(2458,true)]) (.node 1 (.leaf [(435,true),(2458,true)]) (.leaf [(435,true),(437,true),(2459,true)])))
theorem merge278 : m278.clauses = ScoreNodes.m278 := by rfl

def t278 : Tree := .node 0 (.node 0 t276 t277) m278
theorem eq278 : t278.clauses = ScoreNodes.c278 :=
  cat_eq _ (cat_eq _ eq276 eq277) merge278

def t279 : Tree := .nil
theorem eq279 : t279.clauses = ScoreNodes.c279 := by rfl

def t280 : Tree := .nil
theorem eq280 : t280.clauses = ScoreNodes.c280 := by rfl

def m281 : Tree := (.node 1 (.leaf [(441,true),(2460,true)]) (.node 1 (.leaf [(439,true),(2460,true)]) (.leaf [(439,true),(441,true),(2461,true)])))
theorem merge281 : m281.clauses = ScoreNodes.m281 := by rfl

def t281 : Tree := .node 0 (.node 0 t279 t280) m281
theorem eq281 : t281.clauses = ScoreNodes.c281 :=
  cat_eq _ (cat_eq _ eq279 eq280) merge281

def m282 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2460,false),(2462,true)]) (.leaf [(2461,false),(2463,true)])) (.node 1 (.leaf [(2458,false),(2462,true)]) (.leaf [(2458,false),(2460,false),(2463,true)]))) (.node 2 (.node 1 (.leaf [(2458,false),(2461,false),(2464,true)]) (.leaf [(2459,false),(2463,true)])) (.node 1 (.leaf [(2459,false),(2460,false),(2464,true)]) (.leaf [(2459,false),(2461,false),(2465,true)]))))
theorem merge282 : m282.clauses = ScoreNodes.m282 := by rfl

def t282 : Tree := .node 6 (.node 3 t278 t281) m282
theorem eq282 : t282.clauses = ScoreNodes.c282 :=
  cat_eq _ (cat_eq _ eq278 eq281) merge282

def m283 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2462,false),(2466,true)]) (.node 1 (.leaf [(2463,false),(2467,true)]) (.leaf [(2464,false),(2468,true)]))) (.node 1 (.leaf [(2465,false),(2469,true)]) (.node 1 (.leaf [(2454,false),(2466,true)]) (.leaf [(2454,false),(2462,false),(2467,true)])))) (.node 3 (.node 1 (.leaf [(2454,false),(2463,false),(2468,true)]) (.node 1 (.leaf [(2454,false),(2464,false),(2469,true)]) (.leaf [(2454,false),(2465,false),(2470,true)]))) (.node 1 (.leaf [(2455,false),(2467,true)]) (.node 1 (.leaf [(2455,false),(2462,false),(2468,true)]) (.leaf [(2455,false),(2463,false),(2469,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2455,false),(2464,false),(2470,true)]) (.node 1 (.leaf [(2455,false),(2465,false),(2471,true)]) (.leaf [(2456,false),(2468,true)]))) (.node 1 (.leaf [(2456,false),(2462,false),(2469,true)]) (.node 1 (.leaf [(2456,false),(2463,false),(2470,true)]) (.leaf [(2456,false),(2464,false),(2471,true)])))) (.node 3 (.node 1 (.leaf [(2456,false),(2465,false),(2472,true)]) (.node 1 (.leaf [(2457,false),(2469,true)]) (.leaf [(2457,false),(2462,false),(2470,true)]))) (.node 1 (.leaf [(2457,false),(2463,false),(2471,true)]) (.node 1 (.leaf [(2457,false),(2464,false),(2472,true)]) (.leaf [(2457,false),(2465,false),(2473,true)]))))))
theorem merge283 : m283.clauses = ScoreNodes.m283 := by rfl

def t283 : Tree := .node 28 (.node 14 t275 t282) m283
theorem eq283 : t283.clauses = ScoreNodes.c283 :=
  cat_eq _ (cat_eq _ eq275 eq282) merge283

def m284 : Tree := (.node 35 (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(2466,false),(2474,true)]) (.leaf [(2467,false),(2475,true)])) (.node 1 (.leaf [(2468,false),(2476,true)]) (.leaf [(2469,false),(2477,true)]))) (.node 2 (.node 1 (.leaf [(2470,false),(2478,true)]) (.leaf [(2471,false),(2479,true)])) (.node 1 (.leaf [(2472,false),(2480,true)]) (.leaf [(2473,false),(2481,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2443,false),(2474,true)]) (.leaf [(2443,false),(2466,false),(2475,true)])) (.node 1 (.leaf [(2443,false),(2467,false),(2476,true)]) (.leaf [(2443,false),(2468,false),(2477,true)]))) (.node 2 (.node 1 (.leaf [(2443,false),(2469,false),(2478,true)]) (.leaf [(2443,false),(2470,false),(2479,true)])) (.node 1 (.leaf [(2443,false),(2471,false),(2480,true)]) (.node 1 (.leaf [(2443,false),(2472,false),(2481,true)]) (.leaf [(2443,false),(2473,false),(2482,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2444,false),(2475,true)]) (.leaf [(2444,false),(2466,false),(2476,true)])) (.node 1 (.leaf [(2444,false),(2467,false),(2477,true)]) (.leaf [(2444,false),(2468,false),(2478,true)]))) (.node 2 (.node 1 (.leaf [(2444,false),(2469,false),(2479,true)]) (.leaf [(2444,false),(2470,false),(2480,true)])) (.node 1 (.leaf [(2444,false),(2471,false),(2481,true)]) (.node 1 (.leaf [(2444,false),(2472,false),(2482,true)]) (.leaf [(2444,false),(2473,false),(2483,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2445,false),(2476,true)]) (.leaf [(2445,false),(2466,false),(2477,true)])) (.node 1 (.leaf [(2445,false),(2467,false),(2478,true)]) (.leaf [(2445,false),(2468,false),(2479,true)]))) (.node 2 (.node 1 (.leaf [(2445,false),(2469,false),(2480,true)]) (.leaf [(2445,false),(2470,false),(2481,true)])) (.node 1 (.leaf [(2445,false),(2471,false),(2482,true)]) (.node 1 (.leaf [(2445,false),(2472,false),(2483,true)]) (.leaf [(2445,false),(2473,false),(2484,true)]))))))) (.node 18 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2446,false),(2477,true)]) (.leaf [(2446,false),(2466,false),(2478,true)])) (.node 1 (.leaf [(2446,false),(2467,false),(2479,true)]) (.leaf [(2446,false),(2468,false),(2480,true)]))) (.node 2 (.node 1 (.leaf [(2446,false),(2469,false),(2481,true)]) (.leaf [(2446,false),(2470,false),(2482,true)])) (.node 1 (.leaf [(2446,false),(2471,false),(2483,true)]) (.node 1 (.leaf [(2446,false),(2472,false),(2484,true)]) (.leaf [(2446,false),(2473,false),(2485,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2447,false),(2478,true)]) (.leaf [(2447,false),(2466,false),(2479,true)])) (.node 1 (.leaf [(2447,false),(2467,false),(2480,true)]) (.leaf [(2447,false),(2468,false),(2481,true)]))) (.node 2 (.node 1 (.leaf [(2447,false),(2469,false),(2482,true)]) (.leaf [(2447,false),(2470,false),(2483,true)])) (.node 1 (.leaf [(2447,false),(2471,false),(2484,true)]) (.node 1 (.leaf [(2447,false),(2472,false),(2485,true)]) (.leaf [(2447,false),(2473,false),(2486,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2448,false),(2479,true)]) (.leaf [(2448,false),(2466,false),(2480,true)])) (.node 1 (.leaf [(2448,false),(2467,false),(2481,true)]) (.leaf [(2448,false),(2468,false),(2482,true)]))) (.node 2 (.node 1 (.leaf [(2448,false),(2469,false),(2483,true)]) (.leaf [(2448,false),(2470,false),(2484,true)])) (.node 1 (.leaf [(2448,false),(2471,false),(2485,true)]) (.node 1 (.leaf [(2448,false),(2472,false),(2486,true)]) (.leaf [(2448,false),(2473,false),(2487,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2449,false),(2480,true)]) (.leaf [(2449,false),(2466,false),(2481,true)])) (.node 1 (.leaf [(2449,false),(2467,false),(2482,true)]) (.leaf [(2449,false),(2468,false),(2483,true)]))) (.node 2 (.node 1 (.leaf [(2449,false),(2469,false),(2484,true)]) (.leaf [(2449,false),(2470,false),(2485,true)])) (.node 1 (.leaf [(2449,false),(2471,false),(2486,true)]) (.node 1 (.leaf [(2449,false),(2472,false),(2487,true)]) (.leaf [(2449,false),(2473,false),(2488,true)]))))))))
theorem merge284 : m284.clauses = ScoreNodes.m284 := by rfl

def t284 : Tree := .node 93 (.node 41 t268 t283) m284
theorem eq284 : t284.clauses = ScoreNodes.c284 :=
  cat_eq _ (cat_eq _ eq268 eq283) merge284

def t285 : Tree := .nil
theorem eq285 : t285.clauses = ScoreNodes.c285 := by rfl

def t286 : Tree := .nil
theorem eq286 : t286.clauses = ScoreNodes.c286 := by rfl

def m287 : Tree := (.node 1 (.leaf [(445,true),(2489,true)]) (.node 1 (.leaf [(443,true),(2489,true)]) (.leaf [(443,true),(445,true),(2490,true)])))
theorem merge287 : m287.clauses = ScoreNodes.m287 := by rfl

def t287 : Tree := .node 0 (.node 0 t285 t286) m287
theorem eq287 : t287.clauses = ScoreNodes.c287 :=
  cat_eq _ (cat_eq _ eq285 eq286) merge287

def t288 : Tree := .nil
theorem eq288 : t288.clauses = ScoreNodes.c288 := by rfl

def t289 : Tree := .nil
theorem eq289 : t289.clauses = ScoreNodes.c289 := by rfl

def m290 : Tree := (.node 1 (.leaf [(457,true),(2491,true)]) (.node 1 (.leaf [(447,true),(2491,true)]) (.leaf [(447,true),(457,true),(2492,true)])))
theorem merge290 : m290.clauses = ScoreNodes.m290 := by rfl

def t290 : Tree := .node 0 (.node 0 t288 t289) m290
theorem eq290 : t290.clauses = ScoreNodes.c290 :=
  cat_eq _ (cat_eq _ eq288 eq289) merge290


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
