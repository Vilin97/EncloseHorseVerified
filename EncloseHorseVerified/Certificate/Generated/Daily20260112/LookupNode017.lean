import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode016

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m291 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2491,false),(2493,true)]) (.leaf [(2492,false),(2494,true)])) (.node 1 (.leaf [(2489,false),(2493,true)]) (.leaf [(2489,false),(2491,false),(2494,true)]))) (.node 2 (.node 1 (.leaf [(2489,false),(2492,false),(2495,true)]) (.leaf [(2490,false),(2494,true)])) (.node 1 (.leaf [(2490,false),(2491,false),(2495,true)]) (.leaf [(2490,false),(2492,false),(2496,true)]))))
theorem merge291 : m291.clauses = ScoreNodes.m291 := by rfl

def t291 : Tree := .node 6 (.node 3 t287 t290) m291
theorem eq291 : t291.clauses = ScoreNodes.c291 :=
  cat_eq _ (cat_eq _ eq287 eq290) merge291

def t292 : Tree := .nil
theorem eq292 : t292.clauses = ScoreNodes.c292 := by rfl

def t293 : Tree := .nil
theorem eq293 : t293.clauses = ScoreNodes.c293 := by rfl

def m294 : Tree := (.node 1 (.leaf [(461,true),(2497,true)]) (.node 1 (.leaf [(459,true),(2497,true)]) (.leaf [(459,true),(461,true),(2498,true)])))
theorem merge294 : m294.clauses = ScoreNodes.m294 := by rfl

def t294 : Tree := .node 0 (.node 0 t292 t293) m294
theorem eq294 : t294.clauses = ScoreNodes.c294 :=
  cat_eq _ (cat_eq _ eq292 eq293) merge294

def t295 : Tree := .nil
theorem eq295 : t295.clauses = ScoreNodes.c295 := by rfl

def t296 : Tree := .nil
theorem eq296 : t296.clauses = ScoreNodes.c296 := by rfl

def m297 : Tree := (.node 1 (.leaf [(465,true),(2499,true)]) (.node 1 (.leaf [(463,true),(2499,true)]) (.leaf [(463,true),(465,true),(2500,true)])))
theorem merge297 : m297.clauses = ScoreNodes.m297 := by rfl

def t297 : Tree := .node 0 (.node 0 t295 t296) m297
theorem eq297 : t297.clauses = ScoreNodes.c297 :=
  cat_eq _ (cat_eq _ eq295 eq296) merge297

def m298 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2499,false),(2501,true)]) (.leaf [(2500,false),(2502,true)])) (.node 1 (.leaf [(2497,false),(2501,true)]) (.leaf [(2497,false),(2499,false),(2502,true)]))) (.node 2 (.node 1 (.leaf [(2497,false),(2500,false),(2503,true)]) (.leaf [(2498,false),(2502,true)])) (.node 1 (.leaf [(2498,false),(2499,false),(2503,true)]) (.leaf [(2498,false),(2500,false),(2504,true)]))))
theorem merge298 : m298.clauses = ScoreNodes.m298 := by rfl

def t298 : Tree := .node 6 (.node 3 t294 t297) m298
theorem eq298 : t298.clauses = ScoreNodes.c298 :=
  cat_eq _ (cat_eq _ eq294 eq297) merge298

def m299 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2501,false),(2505,true)]) (.node 1 (.leaf [(2502,false),(2506,true)]) (.leaf [(2503,false),(2507,true)]))) (.node 1 (.leaf [(2504,false),(2508,true)]) (.node 1 (.leaf [(2493,false),(2505,true)]) (.leaf [(2493,false),(2501,false),(2506,true)])))) (.node 3 (.node 1 (.leaf [(2493,false),(2502,false),(2507,true)]) (.node 1 (.leaf [(2493,false),(2503,false),(2508,true)]) (.leaf [(2493,false),(2504,false),(2509,true)]))) (.node 1 (.leaf [(2494,false),(2506,true)]) (.node 1 (.leaf [(2494,false),(2501,false),(2507,true)]) (.leaf [(2494,false),(2502,false),(2508,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2494,false),(2503,false),(2509,true)]) (.node 1 (.leaf [(2494,false),(2504,false),(2510,true)]) (.leaf [(2495,false),(2507,true)]))) (.node 1 (.leaf [(2495,false),(2501,false),(2508,true)]) (.node 1 (.leaf [(2495,false),(2502,false),(2509,true)]) (.leaf [(2495,false),(2503,false),(2510,true)])))) (.node 3 (.node 1 (.leaf [(2495,false),(2504,false),(2511,true)]) (.node 1 (.leaf [(2496,false),(2508,true)]) (.leaf [(2496,false),(2501,false),(2509,true)]))) (.node 1 (.leaf [(2496,false),(2502,false),(2510,true)]) (.node 1 (.leaf [(2496,false),(2503,false),(2511,true)]) (.leaf [(2496,false),(2504,false),(2512,true)]))))))
theorem merge299 : m299.clauses = ScoreNodes.m299 := by rfl

def t299 : Tree := .node 28 (.node 14 t291 t298) m299
theorem eq299 : t299.clauses = ScoreNodes.c299 :=
  cat_eq _ (cat_eq _ eq291 eq298) merge299

def t300 : Tree := .nil
theorem eq300 : t300.clauses = ScoreNodes.c300 := by rfl

def t301 : Tree := .nil
theorem eq301 : t301.clauses = ScoreNodes.c301 := by rfl

def m302 : Tree := (.node 1 (.leaf [(473,true),(2513,true)]) (.node 1 (.leaf [(467,true),(2513,true)]) (.leaf [(467,true),(473,true),(2514,true)])))
theorem merge302 : m302.clauses = ScoreNodes.m302 := by rfl

def t302 : Tree := .node 0 (.node 0 t300 t301) m302
theorem eq302 : t302.clauses = ScoreNodes.c302 :=
  cat_eq _ (cat_eq _ eq300 eq301) merge302

def t303 : Tree := .nil
theorem eq303 : t303.clauses = ScoreNodes.c303 := by rfl

def t304 : Tree := .nil
theorem eq304 : t304.clauses = ScoreNodes.c304 := by rfl

def m305 : Tree := (.node 1 (.leaf [(477,true),(2515,true)]) (.node 1 (.leaf [(475,true),(2515,true)]) (.leaf [(475,true),(477,true),(2516,true)])))
theorem merge305 : m305.clauses = ScoreNodes.m305 := by rfl

def t305 : Tree := .node 0 (.node 0 t303 t304) m305
theorem eq305 : t305.clauses = ScoreNodes.c305 :=
  cat_eq _ (cat_eq _ eq303 eq304) merge305

def m306 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2515,false),(2517,true)]) (.leaf [(2516,false),(2518,true)])) (.node 1 (.leaf [(2513,false),(2517,true)]) (.leaf [(2513,false),(2515,false),(2518,true)]))) (.node 2 (.node 1 (.leaf [(2513,false),(2516,false),(2519,true)]) (.leaf [(2514,false),(2518,true)])) (.node 1 (.leaf [(2514,false),(2515,false),(2519,true)]) (.leaf [(2514,false),(2516,false),(2520,true)]))))
theorem merge306 : m306.clauses = ScoreNodes.m306 := by rfl

def t306 : Tree := .node 6 (.node 3 t302 t305) m306
theorem eq306 : t306.clauses = ScoreNodes.c306 :=
  cat_eq _ (cat_eq _ eq302 eq305) merge306

def t307 : Tree := .nil
theorem eq307 : t307.clauses = ScoreNodes.c307 := by rfl

def t308 : Tree := .nil
theorem eq308 : t308.clauses = ScoreNodes.c308 := by rfl

def m309 : Tree := (.node 1 (.leaf [(483,true),(2521,true)]) (.node 1 (.leaf [(479,true),(2521,true)]) (.leaf [(479,true),(483,true),(2522,true)])))
theorem merge309 : m309.clauses = ScoreNodes.m309 := by rfl

def t309 : Tree := .node 0 (.node 0 t307 t308) m309
theorem eq309 : t309.clauses = ScoreNodes.c309 :=
  cat_eq _ (cat_eq _ eq307 eq308) merge309

def t310 : Tree := .nil
theorem eq310 : t310.clauses = ScoreNodes.c310 := by rfl

def t311 : Tree := .nil
theorem eq311 : t311.clauses = ScoreNodes.c311 := by rfl

def m312 : Tree := (.node 1 (.leaf [(497,true),(2523,true)]) (.node 1 (.leaf [(485,true),(2523,true)]) (.leaf [(485,true),(497,true),(2524,true)])))
theorem merge312 : m312.clauses = ScoreNodes.m312 := by rfl

def t312 : Tree := .node 0 (.node 0 t310 t311) m312
theorem eq312 : t312.clauses = ScoreNodes.c312 :=
  cat_eq _ (cat_eq _ eq310 eq311) merge312


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
