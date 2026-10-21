import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode013

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m230 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2337,false),(2339,true)]) (.leaf [(2338,false),(2340,true)])) (.node 1 (.leaf [(2335,false),(2339,true)]) (.leaf [(2335,false),(2337,false),(2340,true)]))) (.node 2 (.node 1 (.leaf [(2335,false),(2338,false),(2341,true)]) (.leaf [(2336,false),(2340,true)])) (.node 1 (.leaf [(2336,false),(2337,false),(2341,true)]) (.leaf [(2336,false),(2338,false),(2342,true)]))))
theorem merge230 : m230.clauses = ScoreNodes.m230 := by rfl

def t230 : Tree := .node 6 (.node 3 t226 t229) m230
theorem eq230 : t230.clauses = ScoreNodes.c230 :=
  cat_eq _ (cat_eq _ eq226 eq229) merge230

def t231 : Tree := .nil
theorem eq231 : t231.clauses = ScoreNodes.c231 := by rfl

def t232 : Tree := .nil
theorem eq232 : t232.clauses = ScoreNodes.c232 := by rfl

def m233 : Tree := (.node 1 (.leaf [(379,true),(2343,true)]) (.node 1 (.leaf [(377,true),(2343,true)]) (.leaf [(377,true),(379,true),(2344,true)])))
theorem merge233 : m233.clauses = ScoreNodes.m233 := by rfl

def t233 : Tree := .node 0 (.node 0 t231 t232) m233
theorem eq233 : t233.clauses = ScoreNodes.c233 :=
  cat_eq _ (cat_eq _ eq231 eq232) merge233

def t234 : Tree := .nil
theorem eq234 : t234.clauses = ScoreNodes.c234 := by rfl

def t235 : Tree := .nil
theorem eq235 : t235.clauses = ScoreNodes.c235 := by rfl

def m236 : Tree := (.node 1 (.leaf [(385,true),(2345,true)]) (.node 1 (.leaf [(383,true),(2345,true)]) (.leaf [(383,true),(385,true),(2346,true)])))
theorem merge236 : m236.clauses = ScoreNodes.m236 := by rfl

def t236 : Tree := .node 0 (.node 0 t234 t235) m236
theorem eq236 : t236.clauses = ScoreNodes.c236 :=
  cat_eq _ (cat_eq _ eq234 eq235) merge236

def m237 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2345,false),(2347,true)]) (.leaf [(2346,false),(2348,true)])) (.node 1 (.leaf [(2343,false),(2347,true)]) (.leaf [(2343,false),(2345,false),(2348,true)]))) (.node 2 (.node 1 (.leaf [(2343,false),(2346,false),(2349,true)]) (.leaf [(2344,false),(2348,true)])) (.node 1 (.leaf [(2344,false),(2345,false),(2349,true)]) (.leaf [(2344,false),(2346,false),(2350,true)]))))
theorem merge237 : m237.clauses = ScoreNodes.m237 := by rfl

def t237 : Tree := .node 6 (.node 3 t233 t236) m237
theorem eq237 : t237.clauses = ScoreNodes.c237 :=
  cat_eq _ (cat_eq _ eq233 eq236) merge237

def m238 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2347,false),(2351,true)]) (.node 1 (.leaf [(2348,false),(2352,true)]) (.leaf [(2349,false),(2353,true)]))) (.node 1 (.leaf [(2350,false),(2354,true)]) (.node 1 (.leaf [(2339,false),(2351,true)]) (.leaf [(2339,false),(2347,false),(2352,true)])))) (.node 3 (.node 1 (.leaf [(2339,false),(2348,false),(2353,true)]) (.node 1 (.leaf [(2339,false),(2349,false),(2354,true)]) (.leaf [(2339,false),(2350,false),(2355,true)]))) (.node 1 (.leaf [(2340,false),(2352,true)]) (.node 1 (.leaf [(2340,false),(2347,false),(2353,true)]) (.leaf [(2340,false),(2348,false),(2354,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2340,false),(2349,false),(2355,true)]) (.node 1 (.leaf [(2340,false),(2350,false),(2356,true)]) (.leaf [(2341,false),(2353,true)]))) (.node 1 (.leaf [(2341,false),(2347,false),(2354,true)]) (.node 1 (.leaf [(2341,false),(2348,false),(2355,true)]) (.leaf [(2341,false),(2349,false),(2356,true)])))) (.node 3 (.node 1 (.leaf [(2341,false),(2350,false),(2357,true)]) (.node 1 (.leaf [(2342,false),(2354,true)]) (.leaf [(2342,false),(2347,false),(2355,true)]))) (.node 1 (.leaf [(2342,false),(2348,false),(2356,true)]) (.node 1 (.leaf [(2342,false),(2349,false),(2357,true)]) (.leaf [(2342,false),(2350,false),(2358,true)]))))))
theorem merge238 : m238.clauses = ScoreNodes.m238 := by rfl

def t238 : Tree := .node 28 (.node 14 t230 t237) m238
theorem eq238 : t238.clauses = ScoreNodes.c238 :=
  cat_eq _ (cat_eq _ eq230 eq237) merge238

def t239 : Tree := .nil
theorem eq239 : t239.clauses = ScoreNodes.c239 := by rfl

def t240 : Tree := .nil
theorem eq240 : t240.clauses = ScoreNodes.c240 := by rfl

def m241 : Tree := (.node 1 (.leaf [(391,true),(2359,true)]) (.node 1 (.leaf [(387,true),(2359,true)]) (.leaf [(387,true),(391,true),(2360,true)])))
theorem merge241 : m241.clauses = ScoreNodes.m241 := by rfl

def t241 : Tree := .node 0 (.node 0 t239 t240) m241
theorem eq241 : t241.clauses = ScoreNodes.c241 :=
  cat_eq _ (cat_eq _ eq239 eq240) merge241

def t242 : Tree := .nil
theorem eq242 : t242.clauses = ScoreNodes.c242 := by rfl

def t243 : Tree := .nil
theorem eq243 : t243.clauses = ScoreNodes.c243 := by rfl

def m244 : Tree := (.node 1 (.leaf [(395,true),(2361,true)]) (.node 1 (.leaf [(393,true),(2361,true)]) (.leaf [(393,true),(395,true),(2362,true)])))
theorem merge244 : m244.clauses = ScoreNodes.m244 := by rfl

def t244 : Tree := .node 0 (.node 0 t242 t243) m244
theorem eq244 : t244.clauses = ScoreNodes.c244 :=
  cat_eq _ (cat_eq _ eq242 eq243) merge244

def m245 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2361,false),(2363,true)]) (.leaf [(2362,false),(2364,true)])) (.node 1 (.leaf [(2359,false),(2363,true)]) (.leaf [(2359,false),(2361,false),(2364,true)]))) (.node 2 (.node 1 (.leaf [(2359,false),(2362,false),(2365,true)]) (.leaf [(2360,false),(2364,true)])) (.node 1 (.leaf [(2360,false),(2361,false),(2365,true)]) (.leaf [(2360,false),(2362,false),(2366,true)]))))
theorem merge245 : m245.clauses = ScoreNodes.m245 := by rfl

def t245 : Tree := .node 6 (.node 3 t241 t244) m245
theorem eq245 : t245.clauses = ScoreNodes.c245 :=
  cat_eq _ (cat_eq _ eq241 eq244) merge245

def t246 : Tree := .nil
theorem eq246 : t246.clauses = ScoreNodes.c246 := by rfl

def t247 : Tree := .nil
theorem eq247 : t247.clauses = ScoreNodes.c247 := by rfl

def m248 : Tree := (.node 1 (.leaf [(399,true),(2367,true)]) (.node 1 (.leaf [(397,true),(2367,true)]) (.leaf [(397,true),(399,true),(2368,true)])))
theorem merge248 : m248.clauses = ScoreNodes.m248 := by rfl

def t248 : Tree := .node 0 (.node 0 t246 t247) m248
theorem eq248 : t248.clauses = ScoreNodes.c248 :=
  cat_eq _ (cat_eq _ eq246 eq247) merge248

def t249 : Tree := .nil
theorem eq249 : t249.clauses = ScoreNodes.c249 := by rfl

def t250 : Tree := .nil
theorem eq250 : t250.clauses = ScoreNodes.c250 := by rfl

def m251 : Tree := (.node 1 (.leaf [(403,true),(2369,true)]) (.node 1 (.leaf [(401,true),(2369,true)]) (.leaf [(401,true),(403,true),(2370,true)])))
theorem merge251 : m251.clauses = ScoreNodes.m251 := by rfl

def t251 : Tree := .node 0 (.node 0 t249 t250) m251
theorem eq251 : t251.clauses = ScoreNodes.c251 :=
  cat_eq _ (cat_eq _ eq249 eq250) merge251


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
