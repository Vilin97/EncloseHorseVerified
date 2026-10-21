import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode013

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t283 : CounterTree := .leaf (431,false)
def c283 : CNF := []
theorem eq283 : t283.clauses = c283 := rfl

def t284 : CounterTree := .leaf (437,false)
def c284 : CNF := []
theorem eq284 : t284.clauses = c284 := rfl

def t285 : CounterTree := .leaf (439,false)
def c285 : CNF := []
theorem eq285 : t285.clauses = c285 := rfl

def t286 : CounterTree := .node [2271,2272] t284 t285
def m286 : CNF := [[(439,true),(2271,true)],[(437,true),(2271,true)],[(437,true),(439,true),(2272,true)]]
theorem merge286 : mergeClauses t284.outputLits t285.outputLits [2271,2272] = m286 := by rfl

def c286 : CNF := c284 ++ c285 ++ m286
theorem eq286 : t286.clauses = c286 := by
  change t284.clauses ++ t285.clauses ++ mergeClauses t284.outputLits t285.outputLits [2271,2272] = c286
  exact concat3_congr eq284 eq285 merge286

def t287 : CounterTree := .node [2273,2274,2275] t283 t286
def m287 : CNF := [[(2271,false),(2273,true)],[(2272,false),(2274,true)],[(431,true),(2273,true)],[(431,true),(2271,false),(2274,true)],[(431,true),(2272,false),(2275,true)]]
theorem merge287 : mergeClauses t283.outputLits t286.outputLits [2273,2274,2275] = m287 := by rfl

def c287 : CNF := c283 ++ c286 ++ m287
theorem eq287 : t287.clauses = c287 := by
  change t283.clauses ++ t286.clauses ++ mergeClauses t283.outputLits t286.outputLits [2273,2274,2275] = c287
  exact concat3_congr eq283 eq286 merge287

def t288 : CounterTree := .leaf (445,false)
def c288 : CNF := []
theorem eq288 : t288.clauses = c288 := rfl

def t289 : CounterTree := .leaf (447,false)
def c289 : CNF := []
theorem eq289 : t289.clauses = c289 := rfl

def t290 : CounterTree := .leaf (449,false)
def c290 : CNF := []
theorem eq290 : t290.clauses = c290 := rfl

def t291 : CounterTree := .node [2276,2277] t289 t290
def m291 : CNF := [[(449,true),(2276,true)],[(447,true),(2276,true)],[(447,true),(449,true),(2277,true)]]
theorem merge291 : mergeClauses t289.outputLits t290.outputLits [2276,2277] = m291 := by rfl

def c291 : CNF := c289 ++ c290 ++ m291
theorem eq291 : t291.clauses = c291 := by
  change t289.clauses ++ t290.clauses ++ mergeClauses t289.outputLits t290.outputLits [2276,2277] = c291
  exact concat3_congr eq289 eq290 merge291

def t292 : CounterTree := .node [2278,2279,2280] t288 t291
def m292 : CNF := [[(2276,false),(2278,true)],[(2277,false),(2279,true)],[(445,true),(2278,true)],[(445,true),(2276,false),(2279,true)],[(445,true),(2277,false),(2280,true)]]
theorem merge292 : mergeClauses t288.outputLits t291.outputLits [2278,2279,2280] = m292 := by rfl

def c292 : CNF := c288 ++ c291 ++ m292
theorem eq292 : t292.clauses = c292 := by
  change t288.clauses ++ t291.clauses ++ mergeClauses t288.outputLits t291.outputLits [2278,2279,2280] = c292
  exact concat3_congr eq288 eq291 merge292

def t293 : CounterTree := .node [2281,2282,2283,2284,2285,2286] t287 t292
def m293 : CNF := [[(2278,false),(2281,true)],[(2279,false),(2282,true)],[(2280,false),(2283,true)],[(2273,false),(2281,true)],[(2273,false),(2278,false),(2282,true)],[(2273,false),(2279,false),(2283,true)],[(2273,false),(2280,false),(2284,true)],[(2274,false),(2282,true)],[(2274,false),(2278,false),(2283,true)],[(2274,false),(2279,false),(2284,true)],[(2274,false),(2280,false),(2285,true)],[(2275,false),(2283,true)],[(2275,false),(2278,false),(2284,true)],[(2275,false),(2279,false),(2285,true)],[(2275,false),(2280,false),(2286,true)]]
theorem merge293 : mergeClauses t287.outputLits t292.outputLits [2281,2282,2283,2284,2285,2286] = m293 := by rfl

def c293 : CNF := c287 ++ c292 ++ m293
theorem eq293 : t293.clauses = c293 := by
  change t287.clauses ++ t292.clauses ++ mergeClauses t287.outputLits t292.outputLits [2281,2282,2283,2284,2285,2286] = c293
  exact concat3_congr eq287 eq292 merge293

def t294 : CounterTree := .node [2287,2288,2289,2290,2291,2292,2293,2294,2295,2296,2297] t282 t293
def m294 : CNF := [[(2281,false),(2287,true)],[(2282,false),(2288,true)],[(2283,false),(2289,true)],[(2284,false),(2290,true)],[(2285,false),(2291,true)],[(2286,false),(2292,true)],[(2266,false),(2287,true)],[(2266,false),(2281,false),(2288,true)],[(2266,false),(2282,false),(2289,true)],[(2266,false),(2283,false),(2290,true)],[(2266,false),(2284,false),(2291,true)],[(2266,false),(2285,false),(2292,true)],[(2266,false),(2286,false),(2293,true)],[(2267,false),(2288,true)],[(2267,false),(2281,false),(2289,true)],[(2267,false),(2282,false),(2290,true)],[(2267,false),(2283,false),(2291,true)],[(2267,false),(2284,false),(2292,true)],[(2267,false),(2285,false),(2293,true)],[(2267,false),(2286,false),(2294,true)],[(2268,false),(2289,true)],[(2268,false),(2281,false),(2290,true)],[(2268,false),(2282,false),(2291,true)],[(2268,false),(2283,false),(2292,true)],[(2268,false),(2284,false),(2293,true)],[(2268,false),(2285,false),(2294,true)],[(2268,false),(2286,false),(2295,true)],[(2269,false),(2290,true)],[(2269,false),(2281,false),(2291,true)],[(2269,false),(2282,false),(2292,true)],[(2269,false),(2283,false),(2293,true)],[(2269,false),(2284,false),(2294,true)],[(2269,false),(2285,false),(2295,true)],[(2269,false),(2286,false),(2296,true)],[(2270,false),(2291,true)],[(2270,false),(2281,false),(2292,true)],[(2270,false),(2282,false),(2293,true)],[(2270,false),(2283,false),(2294,true)],[(2270,false),(2284,false),(2295,true)],[(2270,false),(2285,false),(2296,true)],[(2270,false),(2286,false),(2297,true)]]
theorem merge294 : mergeClauses t282.outputLits t293.outputLits [2287,2288,2289,2290,2291,2292,2293,2294,2295,2296,2297] = m294 := by rfl

def c294 : CNF := c282 ++ c293 ++ m294
theorem eq294 : t294.clauses = c294 := by
  change t282.clauses ++ t293.clauses ++ mergeClauses t282.outputLits t293.outputLits [2287,2288,2289,2290,2291,2292,2293,2294,2295,2296,2297] = c294
  exact concat3_congr eq282 eq293 merge294

def t295 : CounterTree := .leaf (451,false)
def c295 : CNF := []
theorem eq295 : t295.clauses = c295 := rfl

def t296 : CounterTree := .leaf (453,false)
def c296 : CNF := []
theorem eq296 : t296.clauses = c296 := rfl

def t297 : CounterTree := .leaf (455,false)
def c297 : CNF := []
theorem eq297 : t297.clauses = c297 := rfl

def t298 : CounterTree := .node [2298,2299] t296 t297
def m298 : CNF := [[(455,true),(2298,true)],[(453,true),(2298,true)],[(453,true),(455,true),(2299,true)]]
theorem merge298 : mergeClauses t296.outputLits t297.outputLits [2298,2299] = m298 := by rfl

def c298 : CNF := c296 ++ c297 ++ m298
theorem eq298 : t298.clauses = c298 := by
  change t296.clauses ++ t297.clauses ++ mergeClauses t296.outputLits t297.outputLits [2298,2299] = c298
  exact concat3_congr eq296 eq297 merge298

def t299 : CounterTree := .node [2300,2301,2302] t295 t298
def m299 : CNF := [[(2298,false),(2300,true)],[(2299,false),(2301,true)],[(451,true),(2300,true)],[(451,true),(2298,false),(2301,true)],[(451,true),(2299,false),(2302,true)]]
theorem merge299 : mergeClauses t295.outputLits t298.outputLits [2300,2301,2302] = m299 := by rfl

def c299 : CNF := c295 ++ c298 ++ m299
theorem eq299 : t299.clauses = c299 := by
  change t295.clauses ++ t298.clauses ++ mergeClauses t295.outputLits t298.outputLits [2300,2301,2302] = c299
  exact concat3_congr eq295 eq298 merge299

def t300 : CounterTree := .leaf (457,false)
def c300 : CNF := []
theorem eq300 : t300.clauses = c300 := rfl

def t301 : CounterTree := .leaf (459,false)
def c301 : CNF := []
theorem eq301 : t301.clauses = c301 := rfl

def t302 : CounterTree := .leaf (461,false)
def c302 : CNF := []
theorem eq302 : t302.clauses = c302 := rfl

def t303 : CounterTree := .node [2303,2304] t301 t302
def m303 : CNF := [[(461,true),(2303,true)],[(459,true),(2303,true)],[(459,true),(461,true),(2304,true)]]
theorem merge303 : mergeClauses t301.outputLits t302.outputLits [2303,2304] = m303 := by rfl

def c303 : CNF := c301 ++ c302 ++ m303
theorem eq303 : t303.clauses = c303 := by
  change t301.clauses ++ t302.clauses ++ mergeClauses t301.outputLits t302.outputLits [2303,2304] = c303
  exact concat3_congr eq301 eq302 merge303

def t304 : CounterTree := .node [2305,2306,2307] t300 t303
def m304 : CNF := [[(2303,false),(2305,true)],[(2304,false),(2306,true)],[(457,true),(2305,true)],[(457,true),(2303,false),(2306,true)],[(457,true),(2304,false),(2307,true)]]
theorem merge304 : mergeClauses t300.outputLits t303.outputLits [2305,2306,2307] = m304 := by rfl

def c304 : CNF := c300 ++ c303 ++ m304
theorem eq304 : t304.clauses = c304 := by
  change t300.clauses ++ t303.clauses ++ mergeClauses t300.outputLits t303.outputLits [2305,2306,2307] = c304
  exact concat3_congr eq300 eq303 merge304


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
