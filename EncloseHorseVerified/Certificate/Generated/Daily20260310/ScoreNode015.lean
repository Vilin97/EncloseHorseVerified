import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode014

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t305 : CounterTree := .node [2308,2309,2310,2311,2312,2313] t299 t304
def m305 : CNF := [[(2305,false),(2308,true)],[(2306,false),(2309,true)],[(2307,false),(2310,true)],[(2300,false),(2308,true)],[(2300,false),(2305,false),(2309,true)],[(2300,false),(2306,false),(2310,true)],[(2300,false),(2307,false),(2311,true)],[(2301,false),(2309,true)],[(2301,false),(2305,false),(2310,true)],[(2301,false),(2306,false),(2311,true)],[(2301,false),(2307,false),(2312,true)],[(2302,false),(2310,true)],[(2302,false),(2305,false),(2311,true)],[(2302,false),(2306,false),(2312,true)],[(2302,false),(2307,false),(2313,true)]]
theorem merge305 : mergeClauses t299.outputLits t304.outputLits [2308,2309,2310,2311,2312,2313] = m305 := by rfl

def c305 : CNF := c299 ++ c304 ++ m305
theorem eq305 : t305.clauses = c305 := by
  change t299.clauses ++ t304.clauses ++ mergeClauses t299.outputLits t304.outputLits [2308,2309,2310,2311,2312,2313] = c305
  exact concat3_congr eq299 eq304 merge305

def t306 : CounterTree := .leaf (463,false)
def c306 : CNF := []
theorem eq306 : t306.clauses = c306 := rfl

def t307 : CounterTree := .leaf (465,false)
def c307 : CNF := []
theorem eq307 : t307.clauses = c307 := rfl

def t308 : CounterTree := .leaf (467,false)
def c308 : CNF := []
theorem eq308 : t308.clauses = c308 := rfl

def t309 : CounterTree := .node [2314,2315] t307 t308
def m309 : CNF := [[(467,true),(2314,true)],[(465,true),(2314,true)],[(465,true),(467,true),(2315,true)]]
theorem merge309 : mergeClauses t307.outputLits t308.outputLits [2314,2315] = m309 := by rfl

def c309 : CNF := c307 ++ c308 ++ m309
theorem eq309 : t309.clauses = c309 := by
  change t307.clauses ++ t308.clauses ++ mergeClauses t307.outputLits t308.outputLits [2314,2315] = c309
  exact concat3_congr eq307 eq308 merge309

def t310 : CounterTree := .node [2316,2317,2318] t306 t309
def m310 : CNF := [[(2314,false),(2316,true)],[(2315,false),(2317,true)],[(463,true),(2316,true)],[(463,true),(2314,false),(2317,true)],[(463,true),(2315,false),(2318,true)]]
theorem merge310 : mergeClauses t306.outputLits t309.outputLits [2316,2317,2318] = m310 := by rfl

def c310 : CNF := c306 ++ c309 ++ m310
theorem eq310 : t310.clauses = c310 := by
  change t306.clauses ++ t309.clauses ++ mergeClauses t306.outputLits t309.outputLits [2316,2317,2318] = c310
  exact concat3_congr eq306 eq309 merge310

def t311 : CounterTree := .leaf (469,false)
def c311 : CNF := []
theorem eq311 : t311.clauses = c311 := rfl

def t312 : CounterTree := .leaf (471,false)
def c312 : CNF := []
theorem eq312 : t312.clauses = c312 := rfl

def t313 : CounterTree := .leaf (473,false)
def c313 : CNF := []
theorem eq313 : t313.clauses = c313 := rfl

def t314 : CounterTree := .node [2319,2320] t312 t313
def m314 : CNF := [[(473,true),(2319,true)],[(471,true),(2319,true)],[(471,true),(473,true),(2320,true)]]
theorem merge314 : mergeClauses t312.outputLits t313.outputLits [2319,2320] = m314 := by rfl

def c314 : CNF := c312 ++ c313 ++ m314
theorem eq314 : t314.clauses = c314 := by
  change t312.clauses ++ t313.clauses ++ mergeClauses t312.outputLits t313.outputLits [2319,2320] = c314
  exact concat3_congr eq312 eq313 merge314

def t315 : CounterTree := .node [2321,2322,2323] t311 t314
def m315 : CNF := [[(2319,false),(2321,true)],[(2320,false),(2322,true)],[(469,true),(2321,true)],[(469,true),(2319,false),(2322,true)],[(469,true),(2320,false),(2323,true)]]
theorem merge315 : mergeClauses t311.outputLits t314.outputLits [2321,2322,2323] = m315 := by rfl

def c315 : CNF := c311 ++ c314 ++ m315
theorem eq315 : t315.clauses = c315 := by
  change t311.clauses ++ t314.clauses ++ mergeClauses t311.outputLits t314.outputLits [2321,2322,2323] = c315
  exact concat3_congr eq311 eq314 merge315

def t316 : CounterTree := .node [2324,2325,2326,2327,2328,2329] t310 t315
def m316 : CNF := [[(2321,false),(2324,true)],[(2322,false),(2325,true)],[(2323,false),(2326,true)],[(2316,false),(2324,true)],[(2316,false),(2321,false),(2325,true)],[(2316,false),(2322,false),(2326,true)],[(2316,false),(2323,false),(2327,true)],[(2317,false),(2325,true)],[(2317,false),(2321,false),(2326,true)],[(2317,false),(2322,false),(2327,true)],[(2317,false),(2323,false),(2328,true)],[(2318,false),(2326,true)],[(2318,false),(2321,false),(2327,true)],[(2318,false),(2322,false),(2328,true)],[(2318,false),(2323,false),(2329,true)]]
theorem merge316 : mergeClauses t310.outputLits t315.outputLits [2324,2325,2326,2327,2328,2329] = m316 := by rfl

def c316 : CNF := c310 ++ c315 ++ m316
theorem eq316 : t316.clauses = c316 := by
  change t310.clauses ++ t315.clauses ++ mergeClauses t310.outputLits t315.outputLits [2324,2325,2326,2327,2328,2329] = c316
  exact concat3_congr eq310 eq315 merge316

def t317 : CounterTree := .node [2330,2331,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341] t305 t316
def m317 : CNF := [[(2324,false),(2330,true)],[(2325,false),(2331,true)],[(2326,false),(2332,true)],[(2327,false),(2333,true)],[(2328,false),(2334,true)],[(2329,false),(2335,true)],[(2308,false),(2330,true)],[(2308,false),(2324,false),(2331,true)],[(2308,false),(2325,false),(2332,true)],[(2308,false),(2326,false),(2333,true)],[(2308,false),(2327,false),(2334,true)],[(2308,false),(2328,false),(2335,true)],[(2308,false),(2329,false),(2336,true)],[(2309,false),(2331,true)],[(2309,false),(2324,false),(2332,true)],[(2309,false),(2325,false),(2333,true)],[(2309,false),(2326,false),(2334,true)],[(2309,false),(2327,false),(2335,true)],[(2309,false),(2328,false),(2336,true)],[(2309,false),(2329,false),(2337,true)],[(2310,false),(2332,true)],[(2310,false),(2324,false),(2333,true)],[(2310,false),(2325,false),(2334,true)],[(2310,false),(2326,false),(2335,true)],[(2310,false),(2327,false),(2336,true)],[(2310,false),(2328,false),(2337,true)],[(2310,false),(2329,false),(2338,true)],[(2311,false),(2333,true)],[(2311,false),(2324,false),(2334,true)],[(2311,false),(2325,false),(2335,true)],[(2311,false),(2326,false),(2336,true)],[(2311,false),(2327,false),(2337,true)],[(2311,false),(2328,false),(2338,true)],[(2311,false),(2329,false),(2339,true)],[(2312,false),(2334,true)],[(2312,false),(2324,false),(2335,true)],[(2312,false),(2325,false),(2336,true)],[(2312,false),(2326,false),(2337,true)],[(2312,false),(2327,false),(2338,true)],[(2312,false),(2328,false),(2339,true)],[(2312,false),(2329,false),(2340,true)],[(2313,false),(2335,true)],[(2313,false),(2324,false),(2336,true)],[(2313,false),(2325,false),(2337,true)],[(2313,false),(2326,false),(2338,true)],[(2313,false),(2327,false),(2339,true)],[(2313,false),(2328,false),(2340,true)],[(2313,false),(2329,false),(2341,true)]]
theorem merge317 : mergeClauses t305.outputLits t316.outputLits [2330,2331,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341] = m317 := by rfl

def c317 : CNF := c305 ++ c316 ++ m317
theorem eq317 : t317.clauses = c317 := by
  change t305.clauses ++ t316.clauses ++ mergeClauses t305.outputLits t316.outputLits [2330,2331,2332,2333,2334,2335,2336,2337,2338,2339,2340,2341] = c317
  exact concat3_congr eq305 eq316 merge317

def t318 : CounterTree := .node [2342,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2362,2363,2364] t294 t317
def m318 : CNF := [[(2330,false),(2342,true)],[(2331,false),(2343,true)],[(2332,false),(2344,true)],[(2333,false),(2345,true)],[(2334,false),(2346,true)],[(2335,false),(2347,true)],[(2336,false),(2348,true)],[(2337,false),(2349,true)],[(2338,false),(2350,true)],[(2339,false),(2351,true)],[(2340,false),(2352,true)],[(2341,false),(2353,true)],[(2287,false),(2342,true)],[(2287,false),(2330,false),(2343,true)],[(2287,false),(2331,false),(2344,true)],[(2287,false),(2332,false),(2345,true)],[(2287,false),(2333,false),(2346,true)],[(2287,false),(2334,false),(2347,true)],[(2287,false),(2335,false),(2348,true)],[(2287,false),(2336,false),(2349,true)],[(2287,false),(2337,false),(2350,true)],[(2287,false),(2338,false),(2351,true)],[(2287,false),(2339,false),(2352,true)],[(2287,false),(2340,false),(2353,true)],[(2287,false),(2341,false),(2354,true)],[(2288,false),(2343,true)],[(2288,false),(2330,false),(2344,true)],[(2288,false),(2331,false),(2345,true)],[(2288,false),(2332,false),(2346,true)],[(2288,false),(2333,false),(2347,true)],[(2288,false),(2334,false),(2348,true)],[(2288,false),(2335,false),(2349,true)],[(2288,false),(2336,false),(2350,true)],[(2288,false),(2337,false),(2351,true)],[(2288,false),(2338,false),(2352,true)],[(2288,false),(2339,false),(2353,true)],[(2288,false),(2340,false),(2354,true)],[(2288,false),(2341,false),(2355,true)],[(2289,false),(2344,true)],[(2289,false),(2330,false),(2345,true)],[(2289,false),(2331,false),(2346,true)],[(2289,false),(2332,false),(2347,true)],[(2289,false),(2333,false),(2348,true)],[(2289,false),(2334,false),(2349,true)],[(2289,false),(2335,false),(2350,true)],[(2289,false),(2336,false),(2351,true)],[(2289,false),(2337,false),(2352,true)],[(2289,false),(2338,false),(2353,true)],[(2289,false),(2339,false),(2354,true)],[(2289,false),(2340,false),(2355,true)],[(2289,false),(2341,false),(2356,true)],[(2290,false),(2345,true)],[(2290,false),(2330,false),(2346,true)],[(2290,false),(2331,false),(2347,true)],[(2290,false),(2332,false),(2348,true)],[(2290,false),(2333,false),(2349,true)],[(2290,false),(2334,false),(2350,true)],[(2290,false),(2335,false),(2351,true)],[(2290,false),(2336,false),(2352,true)],[(2290,false),(2337,false),(2353,true)],[(2290,false),(2338,false),(2354,true)],[(2290,false),(2339,false),(2355,true)],[(2290,false),(2340,false),(2356,true)],[(2290,false),(2341,false),(2357,true)],[(2291,false),(2346,true)],[(2291,false),(2330,false),(2347,true)],[(2291,false),(2331,false),(2348,true)],[(2291,false),(2332,false),(2349,true)],[(2291,false),(2333,false),(2350,true)],[(2291,false),(2334,false),(2351,true)],[(2291,false),(2335,false),(2352,true)],[(2291,false),(2336,false),(2353,true)],[(2291,false),(2337,false),(2354,true)],[(2291,false),(2338,false),(2355,true)],[(2291,false),(2339,false),(2356,true)],[(2291,false),(2340,false),(2357,true)],[(2291,false),(2341,false),(2358,true)],[(2292,false),(2347,true)],[(2292,false),(2330,false),(2348,true)],[(2292,false),(2331,false),(2349,true)],[(2292,false),(2332,false),(2350,true)],[(2292,false),(2333,false),(2351,true)],[(2292,false),(2334,false),(2352,true)],[(2292,false),(2335,false),(2353,true)],[(2292,false),(2336,false),(2354,true)],[(2292,false),(2337,false),(2355,true)],[(2292,false),(2338,false),(2356,true)],[(2292,false),(2339,false),(2357,true)],[(2292,false),(2340,false),(2358,true)],[(2292,false),(2341,false),(2359,true)],[(2293,false),(2348,true)],[(2293,false),(2330,false),(2349,true)],[(2293,false),(2331,false),(2350,true)],[(2293,false),(2332,false),(2351,true)],[(2293,false),(2333,false),(2352,true)],[(2293,false),(2334,false),(2353,true)],[(2293,false),(2335,false),(2354,true)],[(2293,false),(2336,false),(2355,true)],[(2293,false),(2337,false),(2356,true)],[(2293,false),(2338,false),(2357,true)],[(2293,false),(2339,false),(2358,true)],[(2293,false),(2340,false),(2359,true)],[(2293,false),(2341,false),(2360,true)],[(2294,false),(2349,true)],[(2294,false),(2330,false),(2350,true)],[(2294,false),(2331,false),(2351,true)],[(2294,false),(2332,false),(2352,true)],[(2294,false),(2333,false),(2353,true)],[(2294,false),(2334,false),(2354,true)],[(2294,false),(2335,false),(2355,true)],[(2294,false),(2336,false),(2356,true)],[(2294,false),(2337,false),(2357,true)],[(2294,false),(2338,false),(2358,true)],[(2294,false),(2339,false),(2359,true)],[(2294,false),(2340,false),(2360,true)],[(2294,false),(2341,false),(2361,true)],[(2295,false),(2350,true)],[(2295,false),(2330,false),(2351,true)],[(2295,false),(2331,false),(2352,true)],[(2295,false),(2332,false),(2353,true)],[(2295,false),(2333,false),(2354,true)],[(2295,false),(2334,false),(2355,true)],[(2295,false),(2335,false),(2356,true)],[(2295,false),(2336,false),(2357,true)],[(2295,false),(2337,false),(2358,true)],[(2295,false),(2338,false),(2359,true)],[(2295,false),(2339,false),(2360,true)],[(2295,false),(2340,false),(2361,true)],[(2295,false),(2341,false),(2362,true)],[(2296,false),(2351,true)],[(2296,false),(2330,false),(2352,true)],[(2296,false),(2331,false),(2353,true)],[(2296,false),(2332,false),(2354,true)],[(2296,false),(2333,false),(2355,true)],[(2296,false),(2334,false),(2356,true)],[(2296,false),(2335,false),(2357,true)],[(2296,false),(2336,false),(2358,true)],[(2296,false),(2337,false),(2359,true)],[(2296,false),(2338,false),(2360,true)],[(2296,false),(2339,false),(2361,true)],[(2296,false),(2340,false),(2362,true)],[(2296,false),(2341,false),(2363,true)],[(2297,false),(2352,true)],[(2297,false),(2330,false),(2353,true)],[(2297,false),(2331,false),(2354,true)],[(2297,false),(2332,false),(2355,true)],[(2297,false),(2333,false),(2356,true)],[(2297,false),(2334,false),(2357,true)],[(2297,false),(2335,false),(2358,true)],[(2297,false),(2336,false),(2359,true)],[(2297,false),(2337,false),(2360,true)],[(2297,false),(2338,false),(2361,true)],[(2297,false),(2339,false),(2362,true)],[(2297,false),(2340,false),(2363,true)],[(2297,false),(2341,false),(2364,true)]]
theorem merge318 : mergeClauses t294.outputLits t317.outputLits [2342,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2362,2363,2364] = m318 := by rfl

def c318 : CNF := c294 ++ c317 ++ m318
theorem eq318 : t318.clauses = c318 := by
  change t294.clauses ++ t317.clauses ++ mergeClauses t294.outputLits t317.outputLits [2342,2343,2344,2345,2346,2347,2348,2349,2350,2351,2352,2353,2354,2355,2356,2357,2358,2359,2360,2361,2362,2363,2364] = c318
  exact concat3_congr eq294 eq317 merge318

def t319 : CounterTree := .leaf (479,false)
def c319 : CNF := []
theorem eq319 : t319.clauses = c319 := rfl

def t320 : CounterTree := .leaf (491,false)
def c320 : CNF := []
theorem eq320 : t320.clauses = c320 := rfl

def t321 : CounterTree := .leaf (493,false)
def c321 : CNF := []
theorem eq321 : t321.clauses = c321 := rfl

def t322 : CounterTree := .node [2365,2366] t320 t321
def m322 : CNF := [[(493,true),(2365,true)],[(491,true),(2365,true)],[(491,true),(493,true),(2366,true)]]
theorem merge322 : mergeClauses t320.outputLits t321.outputLits [2365,2366] = m322 := by rfl

def c322 : CNF := c320 ++ c321 ++ m322
theorem eq322 : t322.clauses = c322 := by
  change t320.clauses ++ t321.clauses ++ mergeClauses t320.outputLits t321.outputLits [2365,2366] = c322
  exact concat3_congr eq320 eq321 merge322

def t323 : CounterTree := .node [2367,2368,2369] t319 t322
def m323 : CNF := [[(2365,false),(2367,true)],[(2366,false),(2368,true)],[(479,true),(2367,true)],[(479,true),(2365,false),(2368,true)],[(479,true),(2366,false),(2369,true)]]
theorem merge323 : mergeClauses t319.outputLits t322.outputLits [2367,2368,2369] = m323 := by rfl

def c323 : CNF := c319 ++ c322 ++ m323
theorem eq323 : t323.clauses = c323 := by
  change t319.clauses ++ t322.clauses ++ mergeClauses t319.outputLits t322.outputLits [2367,2368,2369] = c323
  exact concat3_congr eq319 eq322 merge323


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
