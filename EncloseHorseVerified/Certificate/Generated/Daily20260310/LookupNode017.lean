import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode016

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m346 : Tree := (.node 2 (.node 1 (.leaf [(2409,false),(2411,true)]) (.leaf [(2410,false),(2412,true)])) (.node 1 (.leaf [(523,true),(2411,true)]) (.node 1 (.leaf [(523,true),(2409,false),(2412,true)]) (.leaf [(523,true),(2410,false),(2413,true)]))))
theorem merge346 : m346.clauses = ScoreNodes.m346 := by rfl

def t346 : Tree := .node 3 (.node 0 t342 t345) m346
theorem eq346 : t346.clauses = ScoreNodes.c346 :=
  cat_eq _ (cat_eq _ eq342 eq345) merge346

def t347 : Tree := .nil
theorem eq347 : t347.clauses = ScoreNodes.c347 := by rfl

def t348 : Tree := .nil
theorem eq348 : t348.clauses = ScoreNodes.c348 := by rfl

def t349 : Tree := .nil
theorem eq349 : t349.clauses = ScoreNodes.c349 := by rfl

def m350 : Tree := (.node 1 (.leaf [(533,true),(2414,true)]) (.node 1 (.leaf [(531,true),(2414,true)]) (.leaf [(531,true),(533,true),(2415,true)])))
theorem merge350 : m350.clauses = ScoreNodes.m350 := by rfl

def t350 : Tree := .node 0 (.node 0 t348 t349) m350
theorem eq350 : t350.clauses = ScoreNodes.c350 :=
  cat_eq _ (cat_eq _ eq348 eq349) merge350

def m351 : Tree := (.node 2 (.node 1 (.leaf [(2414,false),(2416,true)]) (.leaf [(2415,false),(2417,true)])) (.node 1 (.leaf [(529,true),(2416,true)]) (.node 1 (.leaf [(529,true),(2414,false),(2417,true)]) (.leaf [(529,true),(2415,false),(2418,true)]))))
theorem merge351 : m351.clauses = ScoreNodes.m351 := by rfl

def t351 : Tree := .node 3 (.node 0 t347 t350) m351
theorem eq351 : t351.clauses = ScoreNodes.c351 :=
  cat_eq _ (cat_eq _ eq347 eq350) merge351

def m352 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2416,false),(2419,true)]) (.node 1 (.leaf [(2417,false),(2420,true)]) (.leaf [(2418,false),(2421,true)]))) (.node 2 (.node 1 (.leaf [(2411,false),(2419,true)]) (.leaf [(2411,false),(2416,false),(2420,true)])) (.node 1 (.leaf [(2411,false),(2417,false),(2421,true)]) (.leaf [(2411,false),(2418,false),(2422,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2412,false),(2420,true)]) (.leaf [(2412,false),(2416,false),(2421,true)])) (.node 1 (.leaf [(2412,false),(2417,false),(2422,true)]) (.leaf [(2412,false),(2418,false),(2423,true)]))) (.node 2 (.node 1 (.leaf [(2413,false),(2421,true)]) (.leaf [(2413,false),(2416,false),(2422,true)])) (.node 1 (.leaf [(2413,false),(2417,false),(2423,true)]) (.leaf [(2413,false),(2418,false),(2424,true)])))))
theorem merge352 : m352.clauses = ScoreNodes.m352 := by rfl

def t352 : Tree := .node 16 (.node 8 t346 t351) m352
theorem eq352 : t352.clauses = ScoreNodes.c352 :=
  cat_eq _ (cat_eq _ eq346 eq351) merge352

def t353 : Tree := .nil
theorem eq353 : t353.clauses = ScoreNodes.c353 := by rfl

def t354 : Tree := .nil
theorem eq354 : t354.clauses = ScoreNodes.c354 := by rfl

def t355 : Tree := .nil
theorem eq355 : t355.clauses = ScoreNodes.c355 := by rfl

def m356 : Tree := (.node 1 (.leaf [(539,true),(2425,true)]) (.node 1 (.leaf [(537,true),(2425,true)]) (.leaf [(537,true),(539,true),(2426,true)])))
theorem merge356 : m356.clauses = ScoreNodes.m356 := by rfl

def t356 : Tree := .node 0 (.node 0 t354 t355) m356
theorem eq356 : t356.clauses = ScoreNodes.c356 :=
  cat_eq _ (cat_eq _ eq354 eq355) merge356

def m357 : Tree := (.node 2 (.node 1 (.leaf [(2425,false),(2427,true)]) (.leaf [(2426,false),(2428,true)])) (.node 1 (.leaf [(535,true),(2427,true)]) (.node 1 (.leaf [(535,true),(2425,false),(2428,true)]) (.leaf [(535,true),(2426,false),(2429,true)]))))
theorem merge357 : m357.clauses = ScoreNodes.m357 := by rfl

def t357 : Tree := .node 3 (.node 0 t353 t356) m357
theorem eq357 : t357.clauses = ScoreNodes.c357 :=
  cat_eq _ (cat_eq _ eq353 eq356) merge357

def t358 : Tree := .nil
theorem eq358 : t358.clauses = ScoreNodes.c358 := by rfl

def t359 : Tree := .nil
theorem eq359 : t359.clauses = ScoreNodes.c359 := by rfl

def t360 : Tree := .nil
theorem eq360 : t360.clauses = ScoreNodes.c360 := by rfl

def m361 : Tree := (.node 1 (.leaf [(557,true),(2430,true)]) (.node 1 (.leaf [(555,true),(2430,true)]) (.leaf [(555,true),(557,true),(2431,true)])))
theorem merge361 : m361.clauses = ScoreNodes.m361 := by rfl

def t361 : Tree := .node 0 (.node 0 t359 t360) m361
theorem eq361 : t361.clauses = ScoreNodes.c361 :=
  cat_eq _ (cat_eq _ eq359 eq360) merge361

def m362 : Tree := (.node 2 (.node 1 (.leaf [(2430,false),(2432,true)]) (.leaf [(2431,false),(2433,true)])) (.node 1 (.leaf [(541,true),(2432,true)]) (.node 1 (.leaf [(541,true),(2430,false),(2433,true)]) (.leaf [(541,true),(2431,false),(2434,true)]))))
theorem merge362 : m362.clauses = ScoreNodes.m362 := by rfl

def t362 : Tree := .node 3 (.node 0 t358 t361) m362
theorem eq362 : t362.clauses = ScoreNodes.c362 :=
  cat_eq _ (cat_eq _ eq358 eq361) merge362

def m363 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2432,false),(2435,true)]) (.node 1 (.leaf [(2433,false),(2436,true)]) (.leaf [(2434,false),(2437,true)]))) (.node 2 (.node 1 (.leaf [(2427,false),(2435,true)]) (.leaf [(2427,false),(2432,false),(2436,true)])) (.node 1 (.leaf [(2427,false),(2433,false),(2437,true)]) (.leaf [(2427,false),(2434,false),(2438,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2428,false),(2436,true)]) (.leaf [(2428,false),(2432,false),(2437,true)])) (.node 1 (.leaf [(2428,false),(2433,false),(2438,true)]) (.leaf [(2428,false),(2434,false),(2439,true)]))) (.node 2 (.node 1 (.leaf [(2429,false),(2437,true)]) (.leaf [(2429,false),(2432,false),(2438,true)])) (.node 1 (.leaf [(2429,false),(2433,false),(2439,true)]) (.leaf [(2429,false),(2434,false),(2440,true)])))))
theorem merge363 : m363.clauses = ScoreNodes.m363 := by rfl

def t363 : Tree := .node 16 (.node 8 t357 t362) m363
theorem eq363 : t363.clauses = ScoreNodes.c363 :=
  cat_eq _ (cat_eq _ eq357 eq362) merge363

def m364 : Tree := (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2435,false),(2441,true)]) (.node 1 (.leaf [(2436,false),(2442,true)]) (.leaf [(2437,false),(2443,true)]))) (.node 1 (.leaf [(2438,false),(2444,true)]) (.node 1 (.leaf [(2439,false),(2445,true)]) (.leaf [(2440,false),(2446,true)])))) (.node 3 (.node 1 (.leaf [(2419,false),(2441,true)]) (.node 1 (.leaf [(2419,false),(2435,false),(2442,true)]) (.leaf [(2419,false),(2436,false),(2443,true)]))) (.node 1 (.leaf [(2419,false),(2437,false),(2444,true)]) (.node 1 (.leaf [(2419,false),(2438,false),(2445,true)]) (.leaf [(2419,false),(2439,false),(2446,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2419,false),(2440,false),(2447,true)]) (.node 1 (.leaf [(2420,false),(2442,true)]) (.leaf [(2420,false),(2435,false),(2443,true)]))) (.node 1 (.leaf [(2420,false),(2436,false),(2444,true)]) (.node 1 (.leaf [(2420,false),(2437,false),(2445,true)]) (.leaf [(2420,false),(2438,false),(2446,true)])))) (.node 3 (.node 1 (.leaf [(2420,false),(2439,false),(2447,true)]) (.node 1 (.leaf [(2420,false),(2440,false),(2448,true)]) (.leaf [(2421,false),(2443,true)]))) (.node 1 (.leaf [(2421,false),(2435,false),(2444,true)]) (.node 1 (.leaf [(2421,false),(2436,false),(2445,true)]) (.leaf [(2421,false),(2437,false),(2446,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2421,false),(2438,false),(2447,true)]) (.node 1 (.leaf [(2421,false),(2439,false),(2448,true)]) (.leaf [(2421,false),(2440,false),(2449,true)]))) (.node 1 (.leaf [(2422,false),(2444,true)]) (.node 1 (.leaf [(2422,false),(2435,false),(2445,true)]) (.leaf [(2422,false),(2436,false),(2446,true)])))) (.node 3 (.node 1 (.leaf [(2422,false),(2437,false),(2447,true)]) (.node 1 (.leaf [(2422,false),(2438,false),(2448,true)]) (.leaf [(2422,false),(2439,false),(2449,true)]))) (.node 1 (.leaf [(2422,false),(2440,false),(2450,true)]) (.node 1 (.leaf [(2423,false),(2445,true)]) (.leaf [(2423,false),(2435,false),(2446,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2423,false),(2436,false),(2447,true)]) (.node 1 (.leaf [(2423,false),(2437,false),(2448,true)]) (.leaf [(2423,false),(2438,false),(2449,true)]))) (.node 1 (.leaf [(2423,false),(2439,false),(2450,true)]) (.node 1 (.leaf [(2423,false),(2440,false),(2451,true)]) (.leaf [(2424,false),(2446,true)])))) (.node 3 (.node 1 (.leaf [(2424,false),(2435,false),(2447,true)]) (.node 1 (.leaf [(2424,false),(2436,false),(2448,true)]) (.leaf [(2424,false),(2437,false),(2449,true)]))) (.node 1 (.leaf [(2424,false),(2438,false),(2450,true)]) (.node 1 (.leaf [(2424,false),(2439,false),(2451,true)]) (.leaf [(2424,false),(2440,false),(2452,true)])))))))
theorem merge364 : m364.clauses = ScoreNodes.m364 := by rfl

def t364 : Tree := .node 62 (.node 31 t352 t363) m364
theorem eq364 : t364.clauses = ScoreNodes.c364 :=
  cat_eq _ (cat_eq _ eq352 eq363) merge364


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
