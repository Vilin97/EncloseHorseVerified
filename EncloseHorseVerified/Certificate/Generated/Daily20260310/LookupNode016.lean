import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode015

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def t324 : Tree := .nil
theorem eq324 : t324.clauses = ScoreNodes.c324 := by rfl

def t325 : Tree := .nil
theorem eq325 : t325.clauses = ScoreNodes.c325 := by rfl

def t326 : Tree := .nil
theorem eq326 : t326.clauses = ScoreNodes.c326 := by rfl

def m327 : Tree := (.node 1 (.leaf [(507,true),(2370,true)]) (.node 1 (.leaf [(499,true),(2370,true)]) (.leaf [(499,true),(507,true),(2371,true)])))
theorem merge327 : m327.clauses = ScoreNodes.m327 := by rfl

def t327 : Tree := .node 0 (.node 0 t325 t326) m327
theorem eq327 : t327.clauses = ScoreNodes.c327 :=
  cat_eq _ (cat_eq _ eq325 eq326) merge327

def m328 : Tree := (.node 2 (.node 1 (.leaf [(2370,false),(2372,true)]) (.leaf [(2371,false),(2373,true)])) (.node 1 (.leaf [(495,true),(2372,true)]) (.node 1 (.leaf [(495,true),(2370,false),(2373,true)]) (.leaf [(495,true),(2371,false),(2374,true)]))))
theorem merge328 : m328.clauses = ScoreNodes.m328 := by rfl

def t328 : Tree := .node 3 (.node 0 t324 t327) m328
theorem eq328 : t328.clauses = ScoreNodes.c328 :=
  cat_eq _ (cat_eq _ eq324 eq327) merge328

def m329 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2372,false),(2375,true)]) (.node 1 (.leaf [(2373,false),(2376,true)]) (.leaf [(2374,false),(2377,true)]))) (.node 2 (.node 1 (.leaf [(2367,false),(2375,true)]) (.leaf [(2367,false),(2372,false),(2376,true)])) (.node 1 (.leaf [(2367,false),(2373,false),(2377,true)]) (.leaf [(2367,false),(2374,false),(2378,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2368,false),(2376,true)]) (.leaf [(2368,false),(2372,false),(2377,true)])) (.node 1 (.leaf [(2368,false),(2373,false),(2378,true)]) (.leaf [(2368,false),(2374,false),(2379,true)]))) (.node 2 (.node 1 (.leaf [(2369,false),(2377,true)]) (.leaf [(2369,false),(2372,false),(2378,true)])) (.node 1 (.leaf [(2369,false),(2373,false),(2379,true)]) (.leaf [(2369,false),(2374,false),(2380,true)])))))
theorem merge329 : m329.clauses = ScoreNodes.m329 := by rfl

def t329 : Tree := .node 16 (.node 8 t323 t328) m329
theorem eq329 : t329.clauses = ScoreNodes.c329 :=
  cat_eq _ (cat_eq _ eq323 eq328) merge329

def t330 : Tree := .nil
theorem eq330 : t330.clauses = ScoreNodes.c330 := by rfl

def t331 : Tree := .nil
theorem eq331 : t331.clauses = ScoreNodes.c331 := by rfl

def t332 : Tree := .nil
theorem eq332 : t332.clauses = ScoreNodes.c332 := by rfl

def m333 : Tree := (.node 1 (.leaf [(515,true),(2381,true)]) (.node 1 (.leaf [(513,true),(2381,true)]) (.leaf [(513,true),(515,true),(2382,true)])))
theorem merge333 : m333.clauses = ScoreNodes.m333 := by rfl

def t333 : Tree := .node 0 (.node 0 t331 t332) m333
theorem eq333 : t333.clauses = ScoreNodes.c333 :=
  cat_eq _ (cat_eq _ eq331 eq332) merge333

def m334 : Tree := (.node 2 (.node 1 (.leaf [(2381,false),(2383,true)]) (.leaf [(2382,false),(2384,true)])) (.node 1 (.leaf [(509,true),(2383,true)]) (.node 1 (.leaf [(509,true),(2381,false),(2384,true)]) (.leaf [(509,true),(2382,false),(2385,true)]))))
theorem merge334 : m334.clauses = ScoreNodes.m334 := by rfl

def t334 : Tree := .node 3 (.node 0 t330 t333) m334
theorem eq334 : t334.clauses = ScoreNodes.c334 :=
  cat_eq _ (cat_eq _ eq330 eq333) merge334

def t335 : Tree := .nil
theorem eq335 : t335.clauses = ScoreNodes.c335 := by rfl

def t336 : Tree := .nil
theorem eq336 : t336.clauses = ScoreNodes.c336 := by rfl

def t337 : Tree := .nil
theorem eq337 : t337.clauses = ScoreNodes.c337 := by rfl

def m338 : Tree := (.node 1 (.leaf [(521,true),(2386,true)]) (.node 1 (.leaf [(519,true),(2386,true)]) (.leaf [(519,true),(521,true),(2387,true)])))
theorem merge338 : m338.clauses = ScoreNodes.m338 := by rfl

def t338 : Tree := .node 0 (.node 0 t336 t337) m338
theorem eq338 : t338.clauses = ScoreNodes.c338 :=
  cat_eq _ (cat_eq _ eq336 eq337) merge338

def m339 : Tree := (.node 2 (.node 1 (.leaf [(2386,false),(2388,true)]) (.leaf [(2387,false),(2389,true)])) (.node 1 (.leaf [(517,true),(2388,true)]) (.node 1 (.leaf [(517,true),(2386,false),(2389,true)]) (.leaf [(517,true),(2387,false),(2390,true)]))))
theorem merge339 : m339.clauses = ScoreNodes.m339 := by rfl

def t339 : Tree := .node 3 (.node 0 t335 t338) m339
theorem eq339 : t339.clauses = ScoreNodes.c339 :=
  cat_eq _ (cat_eq _ eq335 eq338) merge339

def m340 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2388,false),(2391,true)]) (.node 1 (.leaf [(2389,false),(2392,true)]) (.leaf [(2390,false),(2393,true)]))) (.node 2 (.node 1 (.leaf [(2383,false),(2391,true)]) (.leaf [(2383,false),(2388,false),(2392,true)])) (.node 1 (.leaf [(2383,false),(2389,false),(2393,true)]) (.leaf [(2383,false),(2390,false),(2394,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2384,false),(2392,true)]) (.leaf [(2384,false),(2388,false),(2393,true)])) (.node 1 (.leaf [(2384,false),(2389,false),(2394,true)]) (.leaf [(2384,false),(2390,false),(2395,true)]))) (.node 2 (.node 1 (.leaf [(2385,false),(2393,true)]) (.leaf [(2385,false),(2388,false),(2394,true)])) (.node 1 (.leaf [(2385,false),(2389,false),(2395,true)]) (.leaf [(2385,false),(2390,false),(2396,true)])))))
theorem merge340 : m340.clauses = ScoreNodes.m340 := by rfl

def t340 : Tree := .node 16 (.node 8 t334 t339) m340
theorem eq340 : t340.clauses = ScoreNodes.c340 :=
  cat_eq _ (cat_eq _ eq334 eq339) merge340

def m341 : Tree := (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2391,false),(2397,true)]) (.node 1 (.leaf [(2392,false),(2398,true)]) (.leaf [(2393,false),(2399,true)]))) (.node 1 (.leaf [(2394,false),(2400,true)]) (.node 1 (.leaf [(2395,false),(2401,true)]) (.leaf [(2396,false),(2402,true)])))) (.node 3 (.node 1 (.leaf [(2375,false),(2397,true)]) (.node 1 (.leaf [(2375,false),(2391,false),(2398,true)]) (.leaf [(2375,false),(2392,false),(2399,true)]))) (.node 1 (.leaf [(2375,false),(2393,false),(2400,true)]) (.node 1 (.leaf [(2375,false),(2394,false),(2401,true)]) (.leaf [(2375,false),(2395,false),(2402,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2375,false),(2396,false),(2403,true)]) (.node 1 (.leaf [(2376,false),(2398,true)]) (.leaf [(2376,false),(2391,false),(2399,true)]))) (.node 1 (.leaf [(2376,false),(2392,false),(2400,true)]) (.node 1 (.leaf [(2376,false),(2393,false),(2401,true)]) (.leaf [(2376,false),(2394,false),(2402,true)])))) (.node 3 (.node 1 (.leaf [(2376,false),(2395,false),(2403,true)]) (.node 1 (.leaf [(2376,false),(2396,false),(2404,true)]) (.leaf [(2377,false),(2399,true)]))) (.node 1 (.leaf [(2377,false),(2391,false),(2400,true)]) (.node 1 (.leaf [(2377,false),(2392,false),(2401,true)]) (.leaf [(2377,false),(2393,false),(2402,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2377,false),(2394,false),(2403,true)]) (.node 1 (.leaf [(2377,false),(2395,false),(2404,true)]) (.leaf [(2377,false),(2396,false),(2405,true)]))) (.node 1 (.leaf [(2378,false),(2400,true)]) (.node 1 (.leaf [(2378,false),(2391,false),(2401,true)]) (.leaf [(2378,false),(2392,false),(2402,true)])))) (.node 3 (.node 1 (.leaf [(2378,false),(2393,false),(2403,true)]) (.node 1 (.leaf [(2378,false),(2394,false),(2404,true)]) (.leaf [(2378,false),(2395,false),(2405,true)]))) (.node 1 (.leaf [(2378,false),(2396,false),(2406,true)]) (.node 1 (.leaf [(2379,false),(2401,true)]) (.leaf [(2379,false),(2391,false),(2402,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2379,false),(2392,false),(2403,true)]) (.node 1 (.leaf [(2379,false),(2393,false),(2404,true)]) (.leaf [(2379,false),(2394,false),(2405,true)]))) (.node 1 (.leaf [(2379,false),(2395,false),(2406,true)]) (.node 1 (.leaf [(2379,false),(2396,false),(2407,true)]) (.leaf [(2380,false),(2402,true)])))) (.node 3 (.node 1 (.leaf [(2380,false),(2391,false),(2403,true)]) (.node 1 (.leaf [(2380,false),(2392,false),(2404,true)]) (.leaf [(2380,false),(2393,false),(2405,true)]))) (.node 1 (.leaf [(2380,false),(2394,false),(2406,true)]) (.node 1 (.leaf [(2380,false),(2395,false),(2407,true)]) (.leaf [(2380,false),(2396,false),(2408,true)])))))))
theorem merge341 : m341.clauses = ScoreNodes.m341 := by rfl

def t341 : Tree := .node 62 (.node 31 t329 t340) m341
theorem eq341 : t341.clauses = ScoreNodes.c341 :=
  cat_eq _ (cat_eq _ eq329 eq340) merge341

def t342 : Tree := .nil
theorem eq342 : t342.clauses = ScoreNodes.c342 := by rfl

def t343 : Tree := .nil
theorem eq343 : t343.clauses = ScoreNodes.c343 := by rfl

def t344 : Tree := .nil
theorem eq344 : t344.clauses = ScoreNodes.c344 := by rfl

def m345 : Tree := (.node 1 (.leaf [(527,true),(2409,true)]) (.node 1 (.leaf [(525,true),(2409,true)]) (.leaf [(525,true),(527,true),(2410,true)])))
theorem merge345 : m345.clauses = ScoreNodes.m345 := by rfl

def t345 : Tree := .node 0 (.node 0 t343 t344) m345
theorem eq345 : t345.clauses = ScoreNodes.c345 :=
  cat_eq _ (cat_eq _ eq343 eq344) merge345


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
