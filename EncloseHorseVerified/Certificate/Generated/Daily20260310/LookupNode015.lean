import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode014

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m305 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2305,false),(2308,true)]) (.node 1 (.leaf [(2306,false),(2309,true)]) (.leaf [(2307,false),(2310,true)]))) (.node 2 (.node 1 (.leaf [(2300,false),(2308,true)]) (.leaf [(2300,false),(2305,false),(2309,true)])) (.node 1 (.leaf [(2300,false),(2306,false),(2310,true)]) (.leaf [(2300,false),(2307,false),(2311,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2301,false),(2309,true)]) (.leaf [(2301,false),(2305,false),(2310,true)])) (.node 1 (.leaf [(2301,false),(2306,false),(2311,true)]) (.leaf [(2301,false),(2307,false),(2312,true)]))) (.node 2 (.node 1 (.leaf [(2302,false),(2310,true)]) (.leaf [(2302,false),(2305,false),(2311,true)])) (.node 1 (.leaf [(2302,false),(2306,false),(2312,true)]) (.leaf [(2302,false),(2307,false),(2313,true)])))))
theorem merge305 : m305.clauses = ScoreNodes.m305 := by rfl

def t305 : Tree := .node 16 (.node 8 t299 t304) m305
theorem eq305 : t305.clauses = ScoreNodes.c305 :=
  cat_eq _ (cat_eq _ eq299 eq304) merge305

def t306 : Tree := .nil
theorem eq306 : t306.clauses = ScoreNodes.c306 := by rfl

def t307 : Tree := .nil
theorem eq307 : t307.clauses = ScoreNodes.c307 := by rfl

def t308 : Tree := .nil
theorem eq308 : t308.clauses = ScoreNodes.c308 := by rfl

def m309 : Tree := (.node 1 (.leaf [(467,true),(2314,true)]) (.node 1 (.leaf [(465,true),(2314,true)]) (.leaf [(465,true),(467,true),(2315,true)])))
theorem merge309 : m309.clauses = ScoreNodes.m309 := by rfl

def t309 : Tree := .node 0 (.node 0 t307 t308) m309
theorem eq309 : t309.clauses = ScoreNodes.c309 :=
  cat_eq _ (cat_eq _ eq307 eq308) merge309

def m310 : Tree := (.node 2 (.node 1 (.leaf [(2314,false),(2316,true)]) (.leaf [(2315,false),(2317,true)])) (.node 1 (.leaf [(463,true),(2316,true)]) (.node 1 (.leaf [(463,true),(2314,false),(2317,true)]) (.leaf [(463,true),(2315,false),(2318,true)]))))
theorem merge310 : m310.clauses = ScoreNodes.m310 := by rfl

def t310 : Tree := .node 3 (.node 0 t306 t309) m310
theorem eq310 : t310.clauses = ScoreNodes.c310 :=
  cat_eq _ (cat_eq _ eq306 eq309) merge310

def t311 : Tree := .nil
theorem eq311 : t311.clauses = ScoreNodes.c311 := by rfl

def t312 : Tree := .nil
theorem eq312 : t312.clauses = ScoreNodes.c312 := by rfl

def t313 : Tree := .nil
theorem eq313 : t313.clauses = ScoreNodes.c313 := by rfl

def m314 : Tree := (.node 1 (.leaf [(473,true),(2319,true)]) (.node 1 (.leaf [(471,true),(2319,true)]) (.leaf [(471,true),(473,true),(2320,true)])))
theorem merge314 : m314.clauses = ScoreNodes.m314 := by rfl

def t314 : Tree := .node 0 (.node 0 t312 t313) m314
theorem eq314 : t314.clauses = ScoreNodes.c314 :=
  cat_eq _ (cat_eq _ eq312 eq313) merge314

def m315 : Tree := (.node 2 (.node 1 (.leaf [(2319,false),(2321,true)]) (.leaf [(2320,false),(2322,true)])) (.node 1 (.leaf [(469,true),(2321,true)]) (.node 1 (.leaf [(469,true),(2319,false),(2322,true)]) (.leaf [(469,true),(2320,false),(2323,true)]))))
theorem merge315 : m315.clauses = ScoreNodes.m315 := by rfl

def t315 : Tree := .node 3 (.node 0 t311 t314) m315
theorem eq315 : t315.clauses = ScoreNodes.c315 :=
  cat_eq _ (cat_eq _ eq311 eq314) merge315

def m316 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2321,false),(2324,true)]) (.node 1 (.leaf [(2322,false),(2325,true)]) (.leaf [(2323,false),(2326,true)]))) (.node 2 (.node 1 (.leaf [(2316,false),(2324,true)]) (.leaf [(2316,false),(2321,false),(2325,true)])) (.node 1 (.leaf [(2316,false),(2322,false),(2326,true)]) (.leaf [(2316,false),(2323,false),(2327,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2317,false),(2325,true)]) (.leaf [(2317,false),(2321,false),(2326,true)])) (.node 1 (.leaf [(2317,false),(2322,false),(2327,true)]) (.leaf [(2317,false),(2323,false),(2328,true)]))) (.node 2 (.node 1 (.leaf [(2318,false),(2326,true)]) (.leaf [(2318,false),(2321,false),(2327,true)])) (.node 1 (.leaf [(2318,false),(2322,false),(2328,true)]) (.leaf [(2318,false),(2323,false),(2329,true)])))))
theorem merge316 : m316.clauses = ScoreNodes.m316 := by rfl

def t316 : Tree := .node 16 (.node 8 t310 t315) m316
theorem eq316 : t316.clauses = ScoreNodes.c316 :=
  cat_eq _ (cat_eq _ eq310 eq315) merge316

def m317 : Tree := (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2324,false),(2330,true)]) (.node 1 (.leaf [(2325,false),(2331,true)]) (.leaf [(2326,false),(2332,true)]))) (.node 1 (.leaf [(2327,false),(2333,true)]) (.node 1 (.leaf [(2328,false),(2334,true)]) (.leaf [(2329,false),(2335,true)])))) (.node 3 (.node 1 (.leaf [(2308,false),(2330,true)]) (.node 1 (.leaf [(2308,false),(2324,false),(2331,true)]) (.leaf [(2308,false),(2325,false),(2332,true)]))) (.node 1 (.leaf [(2308,false),(2326,false),(2333,true)]) (.node 1 (.leaf [(2308,false),(2327,false),(2334,true)]) (.leaf [(2308,false),(2328,false),(2335,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2308,false),(2329,false),(2336,true)]) (.node 1 (.leaf [(2309,false),(2331,true)]) (.leaf [(2309,false),(2324,false),(2332,true)]))) (.node 1 (.leaf [(2309,false),(2325,false),(2333,true)]) (.node 1 (.leaf [(2309,false),(2326,false),(2334,true)]) (.leaf [(2309,false),(2327,false),(2335,true)])))) (.node 3 (.node 1 (.leaf [(2309,false),(2328,false),(2336,true)]) (.node 1 (.leaf [(2309,false),(2329,false),(2337,true)]) (.leaf [(2310,false),(2332,true)]))) (.node 1 (.leaf [(2310,false),(2324,false),(2333,true)]) (.node 1 (.leaf [(2310,false),(2325,false),(2334,true)]) (.leaf [(2310,false),(2326,false),(2335,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2310,false),(2327,false),(2336,true)]) (.node 1 (.leaf [(2310,false),(2328,false),(2337,true)]) (.leaf [(2310,false),(2329,false),(2338,true)]))) (.node 1 (.leaf [(2311,false),(2333,true)]) (.node 1 (.leaf [(2311,false),(2324,false),(2334,true)]) (.leaf [(2311,false),(2325,false),(2335,true)])))) (.node 3 (.node 1 (.leaf [(2311,false),(2326,false),(2336,true)]) (.node 1 (.leaf [(2311,false),(2327,false),(2337,true)]) (.leaf [(2311,false),(2328,false),(2338,true)]))) (.node 1 (.leaf [(2311,false),(2329,false),(2339,true)]) (.node 1 (.leaf [(2312,false),(2334,true)]) (.leaf [(2312,false),(2324,false),(2335,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2312,false),(2325,false),(2336,true)]) (.node 1 (.leaf [(2312,false),(2326,false),(2337,true)]) (.leaf [(2312,false),(2327,false),(2338,true)]))) (.node 1 (.leaf [(2312,false),(2328,false),(2339,true)]) (.node 1 (.leaf [(2312,false),(2329,false),(2340,true)]) (.leaf [(2313,false),(2335,true)])))) (.node 3 (.node 1 (.leaf [(2313,false),(2324,false),(2336,true)]) (.node 1 (.leaf [(2313,false),(2325,false),(2337,true)]) (.leaf [(2313,false),(2326,false),(2338,true)]))) (.node 1 (.leaf [(2313,false),(2327,false),(2339,true)]) (.node 1 (.leaf [(2313,false),(2328,false),(2340,true)]) (.leaf [(2313,false),(2329,false),(2341,true)])))))))
theorem merge317 : m317.clauses = ScoreNodes.m317 := by rfl

def t317 : Tree := .node 62 (.node 31 t305 t316) m317
theorem eq317 : t317.clauses = ScoreNodes.c317 :=
  cat_eq _ (cat_eq _ eq305 eq316) merge317

def m318 : Tree := (.node 77 (.node 38 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2330,false),(2342,true)]) (.leaf [(2331,false),(2343,true)])) (.node 1 (.leaf [(2332,false),(2344,true)]) (.leaf [(2333,false),(2345,true)]))) (.node 2 (.node 1 (.leaf [(2334,false),(2346,true)]) (.leaf [(2335,false),(2347,true)])) (.node 1 (.leaf [(2336,false),(2348,true)]) (.node 1 (.leaf [(2337,false),(2349,true)]) (.leaf [(2338,false),(2350,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2339,false),(2351,true)]) (.leaf [(2340,false),(2352,true)])) (.node 1 (.leaf [(2341,false),(2353,true)]) (.node 1 (.leaf [(2287,false),(2342,true)]) (.leaf [(2287,false),(2330,false),(2343,true)])))) (.node 2 (.node 1 (.leaf [(2287,false),(2331,false),(2344,true)]) (.leaf [(2287,false),(2332,false),(2345,true)])) (.node 1 (.leaf [(2287,false),(2333,false),(2346,true)]) (.node 1 (.leaf [(2287,false),(2334,false),(2347,true)]) (.leaf [(2287,false),(2335,false),(2348,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2287,false),(2336,false),(2349,true)]) (.leaf [(2287,false),(2337,false),(2350,true)])) (.node 1 (.leaf [(2287,false),(2338,false),(2351,true)]) (.leaf [(2287,false),(2339,false),(2352,true)]))) (.node 2 (.node 1 (.leaf [(2287,false),(2340,false),(2353,true)]) (.leaf [(2287,false),(2341,false),(2354,true)])) (.node 1 (.leaf [(2288,false),(2343,true)]) (.node 1 (.leaf [(2288,false),(2330,false),(2344,true)]) (.leaf [(2288,false),(2331,false),(2345,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2288,false),(2332,false),(2346,true)]) (.leaf [(2288,false),(2333,false),(2347,true)])) (.node 1 (.leaf [(2288,false),(2334,false),(2348,true)]) (.node 1 (.leaf [(2288,false),(2335,false),(2349,true)]) (.leaf [(2288,false),(2336,false),(2350,true)])))) (.node 2 (.node 1 (.leaf [(2288,false),(2337,false),(2351,true)]) (.leaf [(2288,false),(2338,false),(2352,true)])) (.node 1 (.leaf [(2288,false),(2339,false),(2353,true)]) (.node 1 (.leaf [(2288,false),(2340,false),(2354,true)]) (.leaf [(2288,false),(2341,false),(2355,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2289,false),(2344,true)]) (.leaf [(2289,false),(2330,false),(2345,true)])) (.node 1 (.leaf [(2289,false),(2331,false),(2346,true)]) (.leaf [(2289,false),(2332,false),(2347,true)]))) (.node 2 (.node 1 (.leaf [(2289,false),(2333,false),(2348,true)]) (.leaf [(2289,false),(2334,false),(2349,true)])) (.node 1 (.leaf [(2289,false),(2335,false),(2350,true)]) (.node 1 (.leaf [(2289,false),(2336,false),(2351,true)]) (.leaf [(2289,false),(2337,false),(2352,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2289,false),(2338,false),(2353,true)]) (.leaf [(2289,false),(2339,false),(2354,true)])) (.node 1 (.leaf [(2289,false),(2340,false),(2355,true)]) (.node 1 (.leaf [(2289,false),(2341,false),(2356,true)]) (.leaf [(2290,false),(2345,true)])))) (.node 2 (.node 1 (.leaf [(2290,false),(2330,false),(2346,true)]) (.leaf [(2290,false),(2331,false),(2347,true)])) (.node 1 (.leaf [(2290,false),(2332,false),(2348,true)]) (.node 1 (.leaf [(2290,false),(2333,false),(2349,true)]) (.leaf [(2290,false),(2334,false),(2350,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2290,false),(2335,false),(2351,true)]) (.leaf [(2290,false),(2336,false),(2352,true)])) (.node 1 (.leaf [(2290,false),(2337,false),(2353,true)]) (.node 1 (.leaf [(2290,false),(2338,false),(2354,true)]) (.leaf [(2290,false),(2339,false),(2355,true)])))) (.node 2 (.node 1 (.leaf [(2290,false),(2340,false),(2356,true)]) (.leaf [(2290,false),(2341,false),(2357,true)])) (.node 1 (.leaf [(2291,false),(2346,true)]) (.node 1 (.leaf [(2291,false),(2330,false),(2347,true)]) (.leaf [(2291,false),(2331,false),(2348,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2291,false),(2332,false),(2349,true)]) (.leaf [(2291,false),(2333,false),(2350,true)])) (.node 1 (.leaf [(2291,false),(2334,false),(2351,true)]) (.node 1 (.leaf [(2291,false),(2335,false),(2352,true)]) (.leaf [(2291,false),(2336,false),(2353,true)])))) (.node 2 (.node 1 (.leaf [(2291,false),(2337,false),(2354,true)]) (.leaf [(2291,false),(2338,false),(2355,true)])) (.node 1 (.leaf [(2291,false),(2339,false),(2356,true)]) (.node 1 (.leaf [(2291,false),(2340,false),(2357,true)]) (.leaf [(2291,false),(2341,false),(2358,true)])))))))) (.node 39 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2292,false),(2347,true)]) (.leaf [(2292,false),(2330,false),(2348,true)])) (.node 1 (.leaf [(2292,false),(2331,false),(2349,true)]) (.leaf [(2292,false),(2332,false),(2350,true)]))) (.node 2 (.node 1 (.leaf [(2292,false),(2333,false),(2351,true)]) (.leaf [(2292,false),(2334,false),(2352,true)])) (.node 1 (.leaf [(2292,false),(2335,false),(2353,true)]) (.node 1 (.leaf [(2292,false),(2336,false),(2354,true)]) (.leaf [(2292,false),(2337,false),(2355,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2292,false),(2338,false),(2356,true)]) (.leaf [(2292,false),(2339,false),(2357,true)])) (.node 1 (.leaf [(2292,false),(2340,false),(2358,true)]) (.node 1 (.leaf [(2292,false),(2341,false),(2359,true)]) (.leaf [(2293,false),(2348,true)])))) (.node 2 (.node 1 (.leaf [(2293,false),(2330,false),(2349,true)]) (.leaf [(2293,false),(2331,false),(2350,true)])) (.node 1 (.leaf [(2293,false),(2332,false),(2351,true)]) (.node 1 (.leaf [(2293,false),(2333,false),(2352,true)]) (.leaf [(2293,false),(2334,false),(2353,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2293,false),(2335,false),(2354,true)]) (.leaf [(2293,false),(2336,false),(2355,true)])) (.node 1 (.leaf [(2293,false),(2337,false),(2356,true)]) (.node 1 (.leaf [(2293,false),(2338,false),(2357,true)]) (.leaf [(2293,false),(2339,false),(2358,true)])))) (.node 2 (.node 1 (.leaf [(2293,false),(2340,false),(2359,true)]) (.leaf [(2293,false),(2341,false),(2360,true)])) (.node 1 (.leaf [(2294,false),(2349,true)]) (.node 1 (.leaf [(2294,false),(2330,false),(2350,true)]) (.leaf [(2294,false),(2331,false),(2351,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2294,false),(2332,false),(2352,true)]) (.leaf [(2294,false),(2333,false),(2353,true)])) (.node 1 (.leaf [(2294,false),(2334,false),(2354,true)]) (.node 1 (.leaf [(2294,false),(2335,false),(2355,true)]) (.leaf [(2294,false),(2336,false),(2356,true)])))) (.node 2 (.node 1 (.leaf [(2294,false),(2337,false),(2357,true)]) (.leaf [(2294,false),(2338,false),(2358,true)])) (.node 1 (.leaf [(2294,false),(2339,false),(2359,true)]) (.node 1 (.leaf [(2294,false),(2340,false),(2360,true)]) (.leaf [(2294,false),(2341,false),(2361,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2295,false),(2350,true)]) (.leaf [(2295,false),(2330,false),(2351,true)])) (.node 1 (.leaf [(2295,false),(2331,false),(2352,true)]) (.leaf [(2295,false),(2332,false),(2353,true)]))) (.node 2 (.node 1 (.leaf [(2295,false),(2333,false),(2354,true)]) (.leaf [(2295,false),(2334,false),(2355,true)])) (.node 1 (.leaf [(2295,false),(2335,false),(2356,true)]) (.node 1 (.leaf [(2295,false),(2336,false),(2357,true)]) (.leaf [(2295,false),(2337,false),(2358,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2295,false),(2338,false),(2359,true)]) (.leaf [(2295,false),(2339,false),(2360,true)])) (.node 1 (.leaf [(2295,false),(2340,false),(2361,true)]) (.node 1 (.leaf [(2295,false),(2341,false),(2362,true)]) (.leaf [(2296,false),(2351,true)])))) (.node 2 (.node 1 (.leaf [(2296,false),(2330,false),(2352,true)]) (.leaf [(2296,false),(2331,false),(2353,true)])) (.node 1 (.leaf [(2296,false),(2332,false),(2354,true)]) (.node 1 (.leaf [(2296,false),(2333,false),(2355,true)]) (.leaf [(2296,false),(2334,false),(2356,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2296,false),(2335,false),(2357,true)]) (.leaf [(2296,false),(2336,false),(2358,true)])) (.node 1 (.leaf [(2296,false),(2337,false),(2359,true)]) (.node 1 (.leaf [(2296,false),(2338,false),(2360,true)]) (.leaf [(2296,false),(2339,false),(2361,true)])))) (.node 2 (.node 1 (.leaf [(2296,false),(2340,false),(2362,true)]) (.leaf [(2296,false),(2341,false),(2363,true)])) (.node 1 (.leaf [(2297,false),(2352,true)]) (.node 1 (.leaf [(2297,false),(2330,false),(2353,true)]) (.leaf [(2297,false),(2331,false),(2354,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2297,false),(2332,false),(2355,true)]) (.leaf [(2297,false),(2333,false),(2356,true)])) (.node 1 (.leaf [(2297,false),(2334,false),(2357,true)]) (.node 1 (.leaf [(2297,false),(2335,false),(2358,true)]) (.leaf [(2297,false),(2336,false),(2359,true)])))) (.node 2 (.node 1 (.leaf [(2297,false),(2337,false),(2360,true)]) (.leaf [(2297,false),(2338,false),(2361,true)])) (.node 1 (.leaf [(2297,false),(2339,false),(2362,true)]) (.node 1 (.leaf [(2297,false),(2340,false),(2363,true)]) (.leaf [(2297,false),(2341,false),(2364,true)])))))))))
theorem merge318 : m318.clauses = ScoreNodes.m318 := by rfl

def t318 : Tree := .node 204 (.node 94 t294 t317) m318
theorem eq318 : t318.clauses = ScoreNodes.c318 :=
  cat_eq _ (cat_eq _ eq294 eq317) merge318

def t319 : Tree := .nil
theorem eq319 : t319.clauses = ScoreNodes.c319 := by rfl

def t320 : Tree := .nil
theorem eq320 : t320.clauses = ScoreNodes.c320 := by rfl

def t321 : Tree := .nil
theorem eq321 : t321.clauses = ScoreNodes.c321 := by rfl

def m322 : Tree := (.node 1 (.leaf [(493,true),(2365,true)]) (.node 1 (.leaf [(491,true),(2365,true)]) (.leaf [(491,true),(493,true),(2366,true)])))
theorem merge322 : m322.clauses = ScoreNodes.m322 := by rfl

def t322 : Tree := .node 0 (.node 0 t320 t321) m322
theorem eq322 : t322.clauses = ScoreNodes.c322 :=
  cat_eq _ (cat_eq _ eq320 eq321) merge322

def m323 : Tree := (.node 2 (.node 1 (.leaf [(2365,false),(2367,true)]) (.leaf [(2366,false),(2368,true)])) (.node 1 (.leaf [(479,true),(2367,true)]) (.node 1 (.leaf [(479,true),(2365,false),(2368,true)]) (.leaf [(479,true),(2366,false),(2369,true)]))))
theorem merge323 : m323.clauses = ScoreNodes.m323 := by rfl

def t323 : Tree := .node 3 (.node 0 t319 t322) m323
theorem eq323 : t323.clauses = ScoreNodes.c323 :=
  cat_eq _ (cat_eq _ eq319 eq322) merge323


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
