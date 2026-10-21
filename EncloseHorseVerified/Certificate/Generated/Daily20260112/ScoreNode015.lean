import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode014

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t252 : CounterTree := .node [2371,2372,2373,2374] t248 t251
def m252 : CNF := [[(2369,false),(2371,true)],[(2370,false),(2372,true)],[(2367,false),(2371,true)],[(2367,false),(2369,false),(2372,true)],[(2367,false),(2370,false),(2373,true)],[(2368,false),(2372,true)],[(2368,false),(2369,false),(2373,true)],[(2368,false),(2370,false),(2374,true)]]
theorem merge252 : mergeClauses t248.outputLits t251.outputLits [2371,2372,2373,2374] = m252 := by
  rfl

def c252 : CNF := c248 ++ c251 ++ m252
theorem eq252 : t252.clauses = c252 := by
  change t248.clauses ++ t251.clauses ++ mergeClauses t248.outputLits t251.outputLits [2371,2372,2373,2374] = c252
  exact concat3_congr eq248 eq251 merge252
def t253 : CounterTree := .node [2375,2376,2377,2378,2379,2380,2381,2382] t245 t252
def m253 : CNF := [[(2371,false),(2375,true)],[(2372,false),(2376,true)],[(2373,false),(2377,true)],[(2374,false),(2378,true)],[(2363,false),(2375,true)],[(2363,false),(2371,false),(2376,true)],[(2363,false),(2372,false),(2377,true)],[(2363,false),(2373,false),(2378,true)],[(2363,false),(2374,false),(2379,true)],[(2364,false),(2376,true)],[(2364,false),(2371,false),(2377,true)],[(2364,false),(2372,false),(2378,true)],[(2364,false),(2373,false),(2379,true)],[(2364,false),(2374,false),(2380,true)],[(2365,false),(2377,true)],[(2365,false),(2371,false),(2378,true)],[(2365,false),(2372,false),(2379,true)],[(2365,false),(2373,false),(2380,true)],[(2365,false),(2374,false),(2381,true)],[(2366,false),(2378,true)],[(2366,false),(2371,false),(2379,true)],[(2366,false),(2372,false),(2380,true)],[(2366,false),(2373,false),(2381,true)],[(2366,false),(2374,false),(2382,true)]]
theorem merge253 : mergeClauses t245.outputLits t252.outputLits [2375,2376,2377,2378,2379,2380,2381,2382] = m253 := by
  rfl

def c253 : CNF := c245 ++ c252 ++ m253
theorem eq253 : t253.clauses = c253 := by
  change t245.clauses ++ t252.clauses ++ mergeClauses t245.outputLits t252.outputLits [2375,2376,2377,2378,2379,2380,2381,2382] = c253
  exact concat3_congr eq245 eq252 merge253
def t254 : CounterTree := .node [2383,2384,2385,2386,2387,2388,2389,2390,2391,2392,2393,2394,2395,2396,2397,2398] t238 t253
def m254 : CNF := [[(2375,false),(2383,true)],[(2376,false),(2384,true)],[(2377,false),(2385,true)],[(2378,false),(2386,true)],[(2379,false),(2387,true)],[(2380,false),(2388,true)],[(2381,false),(2389,true)],[(2382,false),(2390,true)],[(2351,false),(2383,true)],[(2351,false),(2375,false),(2384,true)],[(2351,false),(2376,false),(2385,true)],[(2351,false),(2377,false),(2386,true)],[(2351,false),(2378,false),(2387,true)],[(2351,false),(2379,false),(2388,true)],[(2351,false),(2380,false),(2389,true)],[(2351,false),(2381,false),(2390,true)],[(2351,false),(2382,false),(2391,true)],[(2352,false),(2384,true)],[(2352,false),(2375,false),(2385,true)],[(2352,false),(2376,false),(2386,true)],[(2352,false),(2377,false),(2387,true)],[(2352,false),(2378,false),(2388,true)],[(2352,false),(2379,false),(2389,true)],[(2352,false),(2380,false),(2390,true)],[(2352,false),(2381,false),(2391,true)],[(2352,false),(2382,false),(2392,true)],[(2353,false),(2385,true)],[(2353,false),(2375,false),(2386,true)],[(2353,false),(2376,false),(2387,true)],[(2353,false),(2377,false),(2388,true)],[(2353,false),(2378,false),(2389,true)],[(2353,false),(2379,false),(2390,true)],[(2353,false),(2380,false),(2391,true)],[(2353,false),(2381,false),(2392,true)],[(2353,false),(2382,false),(2393,true)],[(2354,false),(2386,true)],[(2354,false),(2375,false),(2387,true)],[(2354,false),(2376,false),(2388,true)],[(2354,false),(2377,false),(2389,true)],[(2354,false),(2378,false),(2390,true)],[(2354,false),(2379,false),(2391,true)],[(2354,false),(2380,false),(2392,true)],[(2354,false),(2381,false),(2393,true)],[(2354,false),(2382,false),(2394,true)],[(2355,false),(2387,true)],[(2355,false),(2375,false),(2388,true)],[(2355,false),(2376,false),(2389,true)],[(2355,false),(2377,false),(2390,true)],[(2355,false),(2378,false),(2391,true)],[(2355,false),(2379,false),(2392,true)],[(2355,false),(2380,false),(2393,true)],[(2355,false),(2381,false),(2394,true)],[(2355,false),(2382,false),(2395,true)],[(2356,false),(2388,true)],[(2356,false),(2375,false),(2389,true)],[(2356,false),(2376,false),(2390,true)],[(2356,false),(2377,false),(2391,true)],[(2356,false),(2378,false),(2392,true)],[(2356,false),(2379,false),(2393,true)],[(2356,false),(2380,false),(2394,true)],[(2356,false),(2381,false),(2395,true)],[(2356,false),(2382,false),(2396,true)],[(2357,false),(2389,true)],[(2357,false),(2375,false),(2390,true)],[(2357,false),(2376,false),(2391,true)],[(2357,false),(2377,false),(2392,true)],[(2357,false),(2378,false),(2393,true)],[(2357,false),(2379,false),(2394,true)],[(2357,false),(2380,false),(2395,true)],[(2357,false),(2381,false),(2396,true)],[(2357,false),(2382,false),(2397,true)],[(2358,false),(2390,true)],[(2358,false),(2375,false),(2391,true)],[(2358,false),(2376,false),(2392,true)],[(2358,false),(2377,false),(2393,true)],[(2358,false),(2378,false),(2394,true)],[(2358,false),(2379,false),(2395,true)],[(2358,false),(2380,false),(2396,true)],[(2358,false),(2381,false),(2397,true)],[(2358,false),(2382,false),(2398,true)]]
theorem merge254 : mergeClauses t238.outputLits t253.outputLits [2383,2384,2385,2386,2387,2388,2389,2390,2391,2392,2393,2394,2395,2396,2397,2398] = m254 := by
  rfl

def c254 : CNF := c238 ++ c253 ++ m254
theorem eq254 : t254.clauses = c254 := by
  change t238.clauses ++ t253.clauses ++ mergeClauses t238.outputLits t253.outputLits [2383,2384,2385,2386,2387,2388,2389,2390,2391,2392,2393,2394,2395,2396,2397,2398] = c254
  exact concat3_congr eq238 eq253 merge254
def t255 : CounterTree := .node [2399,2400,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429] t223 t254
def m255 : CNF := [[(2383,false),(2399,true)],[(2384,false),(2400,true)],[(2385,false),(2401,true)],[(2386,false),(2402,true)],[(2387,false),(2403,true)],[(2388,false),(2404,true)],[(2389,false),(2405,true)],[(2390,false),(2406,true)],[(2391,false),(2407,true)],[(2392,false),(2408,true)],[(2393,false),(2409,true)],[(2394,false),(2410,true)],[(2395,false),(2411,true)],[(2396,false),(2412,true)],[(2397,false),(2413,true)],[(2398,false),(2414,true)],[(2320,false),(2399,true)],[(2320,false),(2383,false),(2400,true)],[(2320,false),(2384,false),(2401,true)],[(2320,false),(2385,false),(2402,true)],[(2320,false),(2386,false),(2403,true)],[(2320,false),(2387,false),(2404,true)],[(2320,false),(2388,false),(2405,true)],[(2320,false),(2389,false),(2406,true)],[(2320,false),(2390,false),(2407,true)],[(2320,false),(2391,false),(2408,true)],[(2320,false),(2392,false),(2409,true)],[(2320,false),(2393,false),(2410,true)],[(2320,false),(2394,false),(2411,true)],[(2320,false),(2395,false),(2412,true)],[(2320,false),(2396,false),(2413,true)],[(2320,false),(2397,false),(2414,true)],[(2320,false),(2398,false),(2415,true)],[(2321,false),(2400,true)],[(2321,false),(2383,false),(2401,true)],[(2321,false),(2384,false),(2402,true)],[(2321,false),(2385,false),(2403,true)],[(2321,false),(2386,false),(2404,true)],[(2321,false),(2387,false),(2405,true)],[(2321,false),(2388,false),(2406,true)],[(2321,false),(2389,false),(2407,true)],[(2321,false),(2390,false),(2408,true)],[(2321,false),(2391,false),(2409,true)],[(2321,false),(2392,false),(2410,true)],[(2321,false),(2393,false),(2411,true)],[(2321,false),(2394,false),(2412,true)],[(2321,false),(2395,false),(2413,true)],[(2321,false),(2396,false),(2414,true)],[(2321,false),(2397,false),(2415,true)],[(2321,false),(2398,false),(2416,true)],[(2322,false),(2401,true)],[(2322,false),(2383,false),(2402,true)],[(2322,false),(2384,false),(2403,true)],[(2322,false),(2385,false),(2404,true)],[(2322,false),(2386,false),(2405,true)],[(2322,false),(2387,false),(2406,true)],[(2322,false),(2388,false),(2407,true)],[(2322,false),(2389,false),(2408,true)],[(2322,false),(2390,false),(2409,true)],[(2322,false),(2391,false),(2410,true)],[(2322,false),(2392,false),(2411,true)],[(2322,false),(2393,false),(2412,true)],[(2322,false),(2394,false),(2413,true)],[(2322,false),(2395,false),(2414,true)],[(2322,false),(2396,false),(2415,true)],[(2322,false),(2397,false),(2416,true)],[(2322,false),(2398,false),(2417,true)],[(2323,false),(2402,true)],[(2323,false),(2383,false),(2403,true)],[(2323,false),(2384,false),(2404,true)],[(2323,false),(2385,false),(2405,true)],[(2323,false),(2386,false),(2406,true)],[(2323,false),(2387,false),(2407,true)],[(2323,false),(2388,false),(2408,true)],[(2323,false),(2389,false),(2409,true)],[(2323,false),(2390,false),(2410,true)],[(2323,false),(2391,false),(2411,true)],[(2323,false),(2392,false),(2412,true)],[(2323,false),(2393,false),(2413,true)],[(2323,false),(2394,false),(2414,true)],[(2323,false),(2395,false),(2415,true)],[(2323,false),(2396,false),(2416,true)],[(2323,false),(2397,false),(2417,true)],[(2323,false),(2398,false),(2418,true)],[(2324,false),(2403,true)],[(2324,false),(2383,false),(2404,true)],[(2324,false),(2384,false),(2405,true)],[(2324,false),(2385,false),(2406,true)],[(2324,false),(2386,false),(2407,true)],[(2324,false),(2387,false),(2408,true)],[(2324,false),(2388,false),(2409,true)],[(2324,false),(2389,false),(2410,true)],[(2324,false),(2390,false),(2411,true)],[(2324,false),(2391,false),(2412,true)],[(2324,false),(2392,false),(2413,true)],[(2324,false),(2393,false),(2414,true)],[(2324,false),(2394,false),(2415,true)],[(2324,false),(2395,false),(2416,true)],[(2324,false),(2396,false),(2417,true)],[(2324,false),(2397,false),(2418,true)],[(2324,false),(2398,false),(2419,true)],[(2325,false),(2404,true)],[(2325,false),(2383,false),(2405,true)],[(2325,false),(2384,false),(2406,true)],[(2325,false),(2385,false),(2407,true)],[(2325,false),(2386,false),(2408,true)],[(2325,false),(2387,false),(2409,true)],[(2325,false),(2388,false),(2410,true)],[(2325,false),(2389,false),(2411,true)],[(2325,false),(2390,false),(2412,true)],[(2325,false),(2391,false),(2413,true)],[(2325,false),(2392,false),(2414,true)],[(2325,false),(2393,false),(2415,true)],[(2325,false),(2394,false),(2416,true)],[(2325,false),(2395,false),(2417,true)],[(2325,false),(2396,false),(2418,true)],[(2325,false),(2397,false),(2419,true)],[(2325,false),(2398,false),(2420,true)],[(2326,false),(2405,true)],[(2326,false),(2383,false),(2406,true)],[(2326,false),(2384,false),(2407,true)],[(2326,false),(2385,false),(2408,true)],[(2326,false),(2386,false),(2409,true)],[(2326,false),(2387,false),(2410,true)],[(2326,false),(2388,false),(2411,true)],[(2326,false),(2389,false),(2412,true)],[(2326,false),(2390,false),(2413,true)],[(2326,false),(2391,false),(2414,true)],[(2326,false),(2392,false),(2415,true)],[(2326,false),(2393,false),(2416,true)],[(2326,false),(2394,false),(2417,true)],[(2326,false),(2395,false),(2418,true)],[(2326,false),(2396,false),(2419,true)],[(2326,false),(2397,false),(2420,true)],[(2326,false),(2398,false),(2421,true)],[(2327,false),(2406,true)],[(2327,false),(2383,false),(2407,true)],[(2327,false),(2384,false),(2408,true)],[(2327,false),(2385,false),(2409,true)],[(2327,false),(2386,false),(2410,true)],[(2327,false),(2387,false),(2411,true)],[(2327,false),(2388,false),(2412,true)],[(2327,false),(2389,false),(2413,true)],[(2327,false),(2390,false),(2414,true)],[(2327,false),(2391,false),(2415,true)],[(2327,false),(2392,false),(2416,true)],[(2327,false),(2393,false),(2417,true)],[(2327,false),(2394,false),(2418,true)],[(2327,false),(2395,false),(2419,true)],[(2327,false),(2396,false),(2420,true)],[(2327,false),(2397,false),(2421,true)],[(2327,false),(2398,false),(2422,true)],[(2328,false),(2407,true)],[(2328,false),(2383,false),(2408,true)],[(2328,false),(2384,false),(2409,true)],[(2328,false),(2385,false),(2410,true)],[(2328,false),(2386,false),(2411,true)],[(2328,false),(2387,false),(2412,true)],[(2328,false),(2388,false),(2413,true)],[(2328,false),(2389,false),(2414,true)],[(2328,false),(2390,false),(2415,true)],[(2328,false),(2391,false),(2416,true)],[(2328,false),(2392,false),(2417,true)],[(2328,false),(2393,false),(2418,true)],[(2328,false),(2394,false),(2419,true)],[(2328,false),(2395,false),(2420,true)],[(2328,false),(2396,false),(2421,true)],[(2328,false),(2397,false),(2422,true)],[(2328,false),(2398,false),(2423,true)],[(2329,false),(2408,true)],[(2329,false),(2383,false),(2409,true)],[(2329,false),(2384,false),(2410,true)],[(2329,false),(2385,false),(2411,true)],[(2329,false),(2386,false),(2412,true)],[(2329,false),(2387,false),(2413,true)],[(2329,false),(2388,false),(2414,true)],[(2329,false),(2389,false),(2415,true)],[(2329,false),(2390,false),(2416,true)],[(2329,false),(2391,false),(2417,true)],[(2329,false),(2392,false),(2418,true)],[(2329,false),(2393,false),(2419,true)],[(2329,false),(2394,false),(2420,true)],[(2329,false),(2395,false),(2421,true)],[(2329,false),(2396,false),(2422,true)],[(2329,false),(2397,false),(2423,true)],[(2329,false),(2398,false),(2424,true)],[(2330,false),(2409,true)],[(2330,false),(2383,false),(2410,true)],[(2330,false),(2384,false),(2411,true)],[(2330,false),(2385,false),(2412,true)],[(2330,false),(2386,false),(2413,true)],[(2330,false),(2387,false),(2414,true)],[(2330,false),(2388,false),(2415,true)],[(2330,false),(2389,false),(2416,true)],[(2330,false),(2390,false),(2417,true)],[(2330,false),(2391,false),(2418,true)],[(2330,false),(2392,false),(2419,true)],[(2330,false),(2393,false),(2420,true)],[(2330,false),(2394,false),(2421,true)],[(2330,false),(2395,false),(2422,true)],[(2330,false),(2396,false),(2423,true)],[(2330,false),(2397,false),(2424,true)],[(2330,false),(2398,false),(2425,true)],[(2331,false),(2410,true)],[(2331,false),(2383,false),(2411,true)],[(2331,false),(2384,false),(2412,true)],[(2331,false),(2385,false),(2413,true)],[(2331,false),(2386,false),(2414,true)],[(2331,false),(2387,false),(2415,true)],[(2331,false),(2388,false),(2416,true)],[(2331,false),(2389,false),(2417,true)],[(2331,false),(2390,false),(2418,true)],[(2331,false),(2391,false),(2419,true)],[(2331,false),(2392,false),(2420,true)],[(2331,false),(2393,false),(2421,true)],[(2331,false),(2394,false),(2422,true)],[(2331,false),(2395,false),(2423,true)],[(2331,false),(2396,false),(2424,true)],[(2331,false),(2397,false),(2425,true)],[(2331,false),(2398,false),(2426,true)],[(2332,false),(2411,true)],[(2332,false),(2383,false),(2412,true)],[(2332,false),(2384,false),(2413,true)],[(2332,false),(2385,false),(2414,true)],[(2332,false),(2386,false),(2415,true)],[(2332,false),(2387,false),(2416,true)],[(2332,false),(2388,false),(2417,true)],[(2332,false),(2389,false),(2418,true)],[(2332,false),(2390,false),(2419,true)],[(2332,false),(2391,false),(2420,true)],[(2332,false),(2392,false),(2421,true)],[(2332,false),(2393,false),(2422,true)],[(2332,false),(2394,false),(2423,true)],[(2332,false),(2395,false),(2424,true)],[(2332,false),(2396,false),(2425,true)],[(2332,false),(2397,false),(2426,true)],[(2332,false),(2398,false),(2427,true)],[(2333,false),(2412,true)],[(2333,false),(2383,false),(2413,true)],[(2333,false),(2384,false),(2414,true)],[(2333,false),(2385,false),(2415,true)],[(2333,false),(2386,false),(2416,true)],[(2333,false),(2387,false),(2417,true)],[(2333,false),(2388,false),(2418,true)],[(2333,false),(2389,false),(2419,true)],[(2333,false),(2390,false),(2420,true)],[(2333,false),(2391,false),(2421,true)],[(2333,false),(2392,false),(2422,true)],[(2333,false),(2393,false),(2423,true)],[(2333,false),(2394,false),(2424,true)],[(2333,false),(2395,false),(2425,true)],[(2333,false),(2396,false),(2426,true)],[(2333,false),(2397,false),(2427,true)],[(2333,false),(2398,false),(2428,true)],[(2334,false),(2413,true)],[(2334,false),(2383,false),(2414,true)],[(2334,false),(2384,false),(2415,true)],[(2334,false),(2385,false),(2416,true)],[(2334,false),(2386,false),(2417,true)],[(2334,false),(2387,false),(2418,true)],[(2334,false),(2388,false),(2419,true)],[(2334,false),(2389,false),(2420,true)],[(2334,false),(2390,false),(2421,true)],[(2334,false),(2391,false),(2422,true)],[(2334,false),(2392,false),(2423,true)],[(2334,false),(2393,false),(2424,true)],[(2334,false),(2394,false),(2425,true)],[(2334,false),(2395,false),(2426,true)],[(2334,false),(2396,false),(2427,true)],[(2334,false),(2397,false),(2428,true)],[(2334,false),(2398,false),(2429,true)]]
theorem merge255 : mergeClauses t223.outputLits t254.outputLits [2399,2400,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429] = m255 := by
  rfl

def c255 : CNF := c223 ++ c254 ++ m255
theorem eq255 : t255.clauses = c255 := by
  change t223.clauses ++ t254.clauses ++ mergeClauses t223.outputLits t254.outputLits [2399,2400,2401,2402,2403,2404,2405,2406,2407,2408,2409,2410,2411,2412,2413,2414,2415,2416,2417,2418,2419,2420,2421,2422,2423,2424,2425,2426,2427,2428,2429] = c255
  exact concat3_congr eq223 eq254 merge255
def t256 : CounterTree := .leaf (405,false)
def c256 : CNF := []
theorem eq256 : t256.clauses = c256 := rfl
def t257 : CounterTree := .leaf (407,false)
def c257 : CNF := []
theorem eq257 : t257.clauses = c257 := rfl
def t258 : CounterTree := .leaf (409,false)
def c258 : CNF := []
theorem eq258 : t258.clauses = c258 := rfl
def t259 : CounterTree := .node [2430,2431] t257 t258
def m259 : CNF := [[(409,true),(2430,true)],[(407,true),(2430,true)],[(407,true),(409,true),(2431,true)]]
theorem merge259 : mergeClauses t257.outputLits t258.outputLits [2430,2431] = m259 := by
  rfl

def c259 : CNF := c257 ++ c258 ++ m259
theorem eq259 : t259.clauses = c259 := by
  change t257.clauses ++ t258.clauses ++ mergeClauses t257.outputLits t258.outputLits [2430,2431] = c259
  exact concat3_congr eq257 eq258 merge259
def t260 : CounterTree := .node [2432,2433,2434] t256 t259
def m260 : CNF := [[(2430,false),(2432,true)],[(2431,false),(2433,true)],[(405,true),(2432,true)],[(405,true),(2430,false),(2433,true)],[(405,true),(2431,false),(2434,true)]]
theorem merge260 : mergeClauses t256.outputLits t259.outputLits [2432,2433,2434] = m260 := by
  rfl

def c260 : CNF := c256 ++ c259 ++ m260
theorem eq260 : t260.clauses = c260 := by
  change t256.clauses ++ t259.clauses ++ mergeClauses t256.outputLits t259.outputLits [2432,2433,2434] = c260
  exact concat3_congr eq256 eq259 merge260
def t261 : CounterTree := .leaf (417,false)
def c261 : CNF := []
theorem eq261 : t261.clauses = c261 := rfl
def t262 : CounterTree := .leaf (421,false)
def c262 : CNF := []
theorem eq262 : t262.clauses = c262 := rfl
def t263 : CounterTree := .node [2435,2436] t261 t262
def m263 : CNF := [[(421,true),(2435,true)],[(417,true),(2435,true)],[(417,true),(421,true),(2436,true)]]
theorem merge263 : mergeClauses t261.outputLits t262.outputLits [2435,2436] = m263 := by
  rfl

def c263 : CNF := c261 ++ c262 ++ m263
theorem eq263 : t263.clauses = c263 := by
  change t261.clauses ++ t262.clauses ++ mergeClauses t261.outputLits t262.outputLits [2435,2436] = c263
  exact concat3_congr eq261 eq262 merge263
def t264 : CounterTree := .leaf (423,false)
def c264 : CNF := []
theorem eq264 : t264.clauses = c264 := rfl
def t265 : CounterTree := .leaf (425,false)
def c265 : CNF := []
theorem eq265 : t265.clauses = c265 := rfl
def t266 : CounterTree := .node [2437,2438] t264 t265
def m266 : CNF := [[(425,true),(2437,true)],[(423,true),(2437,true)],[(423,true),(425,true),(2438,true)]]
theorem merge266 : mergeClauses t264.outputLits t265.outputLits [2437,2438] = m266 := by
  rfl

def c266 : CNF := c264 ++ c265 ++ m266
theorem eq266 : t266.clauses = c266 := by
  change t264.clauses ++ t265.clauses ++ mergeClauses t264.outputLits t265.outputLits [2437,2438] = c266
  exact concat3_congr eq264 eq265 merge266
def t267 : CounterTree := .node [2439,2440,2441,2442] t263 t266
def m267 : CNF := [[(2437,false),(2439,true)],[(2438,false),(2440,true)],[(2435,false),(2439,true)],[(2435,false),(2437,false),(2440,true)],[(2435,false),(2438,false),(2441,true)],[(2436,false),(2440,true)],[(2436,false),(2437,false),(2441,true)],[(2436,false),(2438,false),(2442,true)]]
theorem merge267 : mergeClauses t263.outputLits t266.outputLits [2439,2440,2441,2442] = m267 := by
  rfl

def c267 : CNF := c263 ++ c266 ++ m267
theorem eq267 : t267.clauses = c267 := by
  change t263.clauses ++ t266.clauses ++ mergeClauses t263.outputLits t266.outputLits [2439,2440,2441,2442] = c267
  exact concat3_congr eq263 eq266 merge267
def t268 : CounterTree := .node [2443,2444,2445,2446,2447,2448,2449] t260 t267
def m268 : CNF := [[(2439,false),(2443,true)],[(2440,false),(2444,true)],[(2441,false),(2445,true)],[(2442,false),(2446,true)],[(2432,false),(2443,true)],[(2432,false),(2439,false),(2444,true)],[(2432,false),(2440,false),(2445,true)],[(2432,false),(2441,false),(2446,true)],[(2432,false),(2442,false),(2447,true)],[(2433,false),(2444,true)],[(2433,false),(2439,false),(2445,true)],[(2433,false),(2440,false),(2446,true)],[(2433,false),(2441,false),(2447,true)],[(2433,false),(2442,false),(2448,true)],[(2434,false),(2445,true)],[(2434,false),(2439,false),(2446,true)],[(2434,false),(2440,false),(2447,true)],[(2434,false),(2441,false),(2448,true)],[(2434,false),(2442,false),(2449,true)]]
theorem merge268 : mergeClauses t260.outputLits t267.outputLits [2443,2444,2445,2446,2447,2448,2449] = m268 := by
  rfl

def c268 : CNF := c260 ++ c267 ++ m268
theorem eq268 : t268.clauses = c268 := by
  change t260.clauses ++ t267.clauses ++ mergeClauses t260.outputLits t267.outputLits [2443,2444,2445,2446,2447,2448,2449] = c268
  exact concat3_congr eq260 eq267 merge268

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
