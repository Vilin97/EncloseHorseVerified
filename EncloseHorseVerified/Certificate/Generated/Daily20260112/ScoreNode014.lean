import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode013

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t230 : CounterTree := .node [2339,2340,2341,2342] t226 t229
def m230 : CNF := [[(2337,false),(2339,true)],[(2338,false),(2340,true)],[(2335,false),(2339,true)],[(2335,false),(2337,false),(2340,true)],[(2335,false),(2338,false),(2341,true)],[(2336,false),(2340,true)],[(2336,false),(2337,false),(2341,true)],[(2336,false),(2338,false),(2342,true)]]
theorem merge230 : mergeClauses t226.outputLits t229.outputLits [2339,2340,2341,2342] = m230 := by
  rfl

def c230 : CNF := c226 ++ c229 ++ m230
theorem eq230 : t230.clauses = c230 := by
  change t226.clauses ++ t229.clauses ++ mergeClauses t226.outputLits t229.outputLits [2339,2340,2341,2342] = c230
  exact concat3_congr eq226 eq229 merge230
def t231 : CounterTree := .leaf (377,false)
def c231 : CNF := []
theorem eq231 : t231.clauses = c231 := rfl
def t232 : CounterTree := .leaf (379,false)
def c232 : CNF := []
theorem eq232 : t232.clauses = c232 := rfl
def t233 : CounterTree := .node [2343,2344] t231 t232
def m233 : CNF := [[(379,true),(2343,true)],[(377,true),(2343,true)],[(377,true),(379,true),(2344,true)]]
theorem merge233 : mergeClauses t231.outputLits t232.outputLits [2343,2344] = m233 := by
  rfl

def c233 : CNF := c231 ++ c232 ++ m233
theorem eq233 : t233.clauses = c233 := by
  change t231.clauses ++ t232.clauses ++ mergeClauses t231.outputLits t232.outputLits [2343,2344] = c233
  exact concat3_congr eq231 eq232 merge233
def t234 : CounterTree := .leaf (383,false)
def c234 : CNF := []
theorem eq234 : t234.clauses = c234 := rfl
def t235 : CounterTree := .leaf (385,false)
def c235 : CNF := []
theorem eq235 : t235.clauses = c235 := rfl
def t236 : CounterTree := .node [2345,2346] t234 t235
def m236 : CNF := [[(385,true),(2345,true)],[(383,true),(2345,true)],[(383,true),(385,true),(2346,true)]]
theorem merge236 : mergeClauses t234.outputLits t235.outputLits [2345,2346] = m236 := by
  rfl

def c236 : CNF := c234 ++ c235 ++ m236
theorem eq236 : t236.clauses = c236 := by
  change t234.clauses ++ t235.clauses ++ mergeClauses t234.outputLits t235.outputLits [2345,2346] = c236
  exact concat3_congr eq234 eq235 merge236
def t237 : CounterTree := .node [2347,2348,2349,2350] t233 t236
def m237 : CNF := [[(2345,false),(2347,true)],[(2346,false),(2348,true)],[(2343,false),(2347,true)],[(2343,false),(2345,false),(2348,true)],[(2343,false),(2346,false),(2349,true)],[(2344,false),(2348,true)],[(2344,false),(2345,false),(2349,true)],[(2344,false),(2346,false),(2350,true)]]
theorem merge237 : mergeClauses t233.outputLits t236.outputLits [2347,2348,2349,2350] = m237 := by
  rfl

def c237 : CNF := c233 ++ c236 ++ m237
theorem eq237 : t237.clauses = c237 := by
  change t233.clauses ++ t236.clauses ++ mergeClauses t233.outputLits t236.outputLits [2347,2348,2349,2350] = c237
  exact concat3_congr eq233 eq236 merge237
def t238 : CounterTree := .node [2351,2352,2353,2354,2355,2356,2357,2358] t230 t237
def m238 : CNF := [[(2347,false),(2351,true)],[(2348,false),(2352,true)],[(2349,false),(2353,true)],[(2350,false),(2354,true)],[(2339,false),(2351,true)],[(2339,false),(2347,false),(2352,true)],[(2339,false),(2348,false),(2353,true)],[(2339,false),(2349,false),(2354,true)],[(2339,false),(2350,false),(2355,true)],[(2340,false),(2352,true)],[(2340,false),(2347,false),(2353,true)],[(2340,false),(2348,false),(2354,true)],[(2340,false),(2349,false),(2355,true)],[(2340,false),(2350,false),(2356,true)],[(2341,false),(2353,true)],[(2341,false),(2347,false),(2354,true)],[(2341,false),(2348,false),(2355,true)],[(2341,false),(2349,false),(2356,true)],[(2341,false),(2350,false),(2357,true)],[(2342,false),(2354,true)],[(2342,false),(2347,false),(2355,true)],[(2342,false),(2348,false),(2356,true)],[(2342,false),(2349,false),(2357,true)],[(2342,false),(2350,false),(2358,true)]]
theorem merge238 : mergeClauses t230.outputLits t237.outputLits [2351,2352,2353,2354,2355,2356,2357,2358] = m238 := by
  rfl

def c238 : CNF := c230 ++ c237 ++ m238
theorem eq238 : t238.clauses = c238 := by
  change t230.clauses ++ t237.clauses ++ mergeClauses t230.outputLits t237.outputLits [2351,2352,2353,2354,2355,2356,2357,2358] = c238
  exact concat3_congr eq230 eq237 merge238
def t239 : CounterTree := .leaf (387,false)
def c239 : CNF := []
theorem eq239 : t239.clauses = c239 := rfl
def t240 : CounterTree := .leaf (391,false)
def c240 : CNF := []
theorem eq240 : t240.clauses = c240 := rfl
def t241 : CounterTree := .node [2359,2360] t239 t240
def m241 : CNF := [[(391,true),(2359,true)],[(387,true),(2359,true)],[(387,true),(391,true),(2360,true)]]
theorem merge241 : mergeClauses t239.outputLits t240.outputLits [2359,2360] = m241 := by
  rfl

def c241 : CNF := c239 ++ c240 ++ m241
theorem eq241 : t241.clauses = c241 := by
  change t239.clauses ++ t240.clauses ++ mergeClauses t239.outputLits t240.outputLits [2359,2360] = c241
  exact concat3_congr eq239 eq240 merge241
def t242 : CounterTree := .leaf (393,false)
def c242 : CNF := []
theorem eq242 : t242.clauses = c242 := rfl
def t243 : CounterTree := .leaf (395,false)
def c243 : CNF := []
theorem eq243 : t243.clauses = c243 := rfl
def t244 : CounterTree := .node [2361,2362] t242 t243
def m244 : CNF := [[(395,true),(2361,true)],[(393,true),(2361,true)],[(393,true),(395,true),(2362,true)]]
theorem merge244 : mergeClauses t242.outputLits t243.outputLits [2361,2362] = m244 := by
  rfl

def c244 : CNF := c242 ++ c243 ++ m244
theorem eq244 : t244.clauses = c244 := by
  change t242.clauses ++ t243.clauses ++ mergeClauses t242.outputLits t243.outputLits [2361,2362] = c244
  exact concat3_congr eq242 eq243 merge244
def t245 : CounterTree := .node [2363,2364,2365,2366] t241 t244
def m245 : CNF := [[(2361,false),(2363,true)],[(2362,false),(2364,true)],[(2359,false),(2363,true)],[(2359,false),(2361,false),(2364,true)],[(2359,false),(2362,false),(2365,true)],[(2360,false),(2364,true)],[(2360,false),(2361,false),(2365,true)],[(2360,false),(2362,false),(2366,true)]]
theorem merge245 : mergeClauses t241.outputLits t244.outputLits [2363,2364,2365,2366] = m245 := by
  rfl

def c245 : CNF := c241 ++ c244 ++ m245
theorem eq245 : t245.clauses = c245 := by
  change t241.clauses ++ t244.clauses ++ mergeClauses t241.outputLits t244.outputLits [2363,2364,2365,2366] = c245
  exact concat3_congr eq241 eq244 merge245
def t246 : CounterTree := .leaf (397,false)
def c246 : CNF := []
theorem eq246 : t246.clauses = c246 := rfl
def t247 : CounterTree := .leaf (399,false)
def c247 : CNF := []
theorem eq247 : t247.clauses = c247 := rfl
def t248 : CounterTree := .node [2367,2368] t246 t247
def m248 : CNF := [[(399,true),(2367,true)],[(397,true),(2367,true)],[(397,true),(399,true),(2368,true)]]
theorem merge248 : mergeClauses t246.outputLits t247.outputLits [2367,2368] = m248 := by
  rfl

def c248 : CNF := c246 ++ c247 ++ m248
theorem eq248 : t248.clauses = c248 := by
  change t246.clauses ++ t247.clauses ++ mergeClauses t246.outputLits t247.outputLits [2367,2368] = c248
  exact concat3_congr eq246 eq247 merge248
def t249 : CounterTree := .leaf (401,false)
def c249 : CNF := []
theorem eq249 : t249.clauses = c249 := rfl
def t250 : CounterTree := .leaf (403,false)
def c250 : CNF := []
theorem eq250 : t250.clauses = c250 := rfl
def t251 : CounterTree := .node [2369,2370] t249 t250
def m251 : CNF := [[(403,true),(2369,true)],[(401,true),(2369,true)],[(401,true),(403,true),(2370,true)]]
theorem merge251 : mergeClauses t249.outputLits t250.outputLits [2369,2370] = m251 := by
  rfl

def c251 : CNF := c249 ++ c250 ++ m251
theorem eq251 : t251.clauses = c251 := by
  change t249.clauses ++ t250.clauses ++ mergeClauses t249.outputLits t250.outputLits [2369,2370] = c251
  exact concat3_congr eq249 eq250 merge251

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
