import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode013

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def t283 : Tree := .nil
theorem eq283 : t283.clauses = ScoreNodes.c283 := by rfl

def t284 : Tree := .nil
theorem eq284 : t284.clauses = ScoreNodes.c284 := by rfl

def t285 : Tree := .nil
theorem eq285 : t285.clauses = ScoreNodes.c285 := by rfl

def m286 : Tree := (.node 1 (.leaf [(439,true),(2271,true)]) (.node 1 (.leaf [(437,true),(2271,true)]) (.leaf [(437,true),(439,true),(2272,true)])))
theorem merge286 : m286.clauses = ScoreNodes.m286 := by rfl

def t286 : Tree := .node 0 (.node 0 t284 t285) m286
theorem eq286 : t286.clauses = ScoreNodes.c286 :=
  cat_eq _ (cat_eq _ eq284 eq285) merge286

def m287 : Tree := (.node 2 (.node 1 (.leaf [(2271,false),(2273,true)]) (.leaf [(2272,false),(2274,true)])) (.node 1 (.leaf [(431,true),(2273,true)]) (.node 1 (.leaf [(431,true),(2271,false),(2274,true)]) (.leaf [(431,true),(2272,false),(2275,true)]))))
theorem merge287 : m287.clauses = ScoreNodes.m287 := by rfl

def t287 : Tree := .node 3 (.node 0 t283 t286) m287
theorem eq287 : t287.clauses = ScoreNodes.c287 :=
  cat_eq _ (cat_eq _ eq283 eq286) merge287

def t288 : Tree := .nil
theorem eq288 : t288.clauses = ScoreNodes.c288 := by rfl

def t289 : Tree := .nil
theorem eq289 : t289.clauses = ScoreNodes.c289 := by rfl

def t290 : Tree := .nil
theorem eq290 : t290.clauses = ScoreNodes.c290 := by rfl

def m291 : Tree := (.node 1 (.leaf [(449,true),(2276,true)]) (.node 1 (.leaf [(447,true),(2276,true)]) (.leaf [(447,true),(449,true),(2277,true)])))
theorem merge291 : m291.clauses = ScoreNodes.m291 := by rfl

def t291 : Tree := .node 0 (.node 0 t289 t290) m291
theorem eq291 : t291.clauses = ScoreNodes.c291 :=
  cat_eq _ (cat_eq _ eq289 eq290) merge291

def m292 : Tree := (.node 2 (.node 1 (.leaf [(2276,false),(2278,true)]) (.leaf [(2277,false),(2279,true)])) (.node 1 (.leaf [(445,true),(2278,true)]) (.node 1 (.leaf [(445,true),(2276,false),(2279,true)]) (.leaf [(445,true),(2277,false),(2280,true)]))))
theorem merge292 : m292.clauses = ScoreNodes.m292 := by rfl

def t292 : Tree := .node 3 (.node 0 t288 t291) m292
theorem eq292 : t292.clauses = ScoreNodes.c292 :=
  cat_eq _ (cat_eq _ eq288 eq291) merge292

def m293 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2278,false),(2281,true)]) (.node 1 (.leaf [(2279,false),(2282,true)]) (.leaf [(2280,false),(2283,true)]))) (.node 2 (.node 1 (.leaf [(2273,false),(2281,true)]) (.leaf [(2273,false),(2278,false),(2282,true)])) (.node 1 (.leaf [(2273,false),(2279,false),(2283,true)]) (.leaf [(2273,false),(2280,false),(2284,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2274,false),(2282,true)]) (.leaf [(2274,false),(2278,false),(2283,true)])) (.node 1 (.leaf [(2274,false),(2279,false),(2284,true)]) (.leaf [(2274,false),(2280,false),(2285,true)]))) (.node 2 (.node 1 (.leaf [(2275,false),(2283,true)]) (.leaf [(2275,false),(2278,false),(2284,true)])) (.node 1 (.leaf [(2275,false),(2279,false),(2285,true)]) (.leaf [(2275,false),(2280,false),(2286,true)])))))
theorem merge293 : m293.clauses = ScoreNodes.m293 := by rfl

def t293 : Tree := .node 16 (.node 8 t287 t292) m293
theorem eq293 : t293.clauses = ScoreNodes.c293 :=
  cat_eq _ (cat_eq _ eq287 eq292) merge293

def m294 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2281,false),(2287,true)]) (.leaf [(2282,false),(2288,true)])) (.node 1 (.leaf [(2283,false),(2289,true)]) (.node 1 (.leaf [(2284,false),(2290,true)]) (.leaf [(2285,false),(2291,true)])))) (.node 2 (.node 1 (.leaf [(2286,false),(2292,true)]) (.leaf [(2266,false),(2287,true)])) (.node 1 (.leaf [(2266,false),(2281,false),(2288,true)]) (.node 1 (.leaf [(2266,false),(2282,false),(2289,true)]) (.leaf [(2266,false),(2283,false),(2290,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2266,false),(2284,false),(2291,true)]) (.leaf [(2266,false),(2285,false),(2292,true)])) (.node 1 (.leaf [(2266,false),(2286,false),(2293,true)]) (.node 1 (.leaf [(2267,false),(2288,true)]) (.leaf [(2267,false),(2281,false),(2289,true)])))) (.node 2 (.node 1 (.leaf [(2267,false),(2282,false),(2290,true)]) (.leaf [(2267,false),(2283,false),(2291,true)])) (.node 1 (.leaf [(2267,false),(2284,false),(2292,true)]) (.node 1 (.leaf [(2267,false),(2285,false),(2293,true)]) (.leaf [(2267,false),(2286,false),(2294,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2268,false),(2289,true)]) (.leaf [(2268,false),(2281,false),(2290,true)])) (.node 1 (.leaf [(2268,false),(2282,false),(2291,true)]) (.node 1 (.leaf [(2268,false),(2283,false),(2292,true)]) (.leaf [(2268,false),(2284,false),(2293,true)])))) (.node 2 (.node 1 (.leaf [(2268,false),(2285,false),(2294,true)]) (.leaf [(2268,false),(2286,false),(2295,true)])) (.node 1 (.leaf [(2269,false),(2290,true)]) (.node 1 (.leaf [(2269,false),(2281,false),(2291,true)]) (.leaf [(2269,false),(2282,false),(2292,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2269,false),(2283,false),(2293,true)]) (.leaf [(2269,false),(2284,false),(2294,true)])) (.node 1 (.leaf [(2269,false),(2285,false),(2295,true)]) (.node 1 (.leaf [(2269,false),(2286,false),(2296,true)]) (.leaf [(2270,false),(2291,true)])))) (.node 3 (.node 1 (.leaf [(2270,false),(2281,false),(2292,true)]) (.node 1 (.leaf [(2270,false),(2282,false),(2293,true)]) (.leaf [(2270,false),(2283,false),(2294,true)]))) (.node 1 (.leaf [(2270,false),(2284,false),(2295,true)]) (.node 1 (.leaf [(2270,false),(2285,false),(2296,true)]) (.leaf [(2270,false),(2286,false),(2297,true)])))))))
theorem merge294 : m294.clauses = ScoreNodes.m294 := by rfl

def t294 : Tree := .node 53 (.node 22 t282 t293) m294
theorem eq294 : t294.clauses = ScoreNodes.c294 :=
  cat_eq _ (cat_eq _ eq282 eq293) merge294

def t295 : Tree := .nil
theorem eq295 : t295.clauses = ScoreNodes.c295 := by rfl

def t296 : Tree := .nil
theorem eq296 : t296.clauses = ScoreNodes.c296 := by rfl

def t297 : Tree := .nil
theorem eq297 : t297.clauses = ScoreNodes.c297 := by rfl

def m298 : Tree := (.node 1 (.leaf [(455,true),(2298,true)]) (.node 1 (.leaf [(453,true),(2298,true)]) (.leaf [(453,true),(455,true),(2299,true)])))
theorem merge298 : m298.clauses = ScoreNodes.m298 := by rfl

def t298 : Tree := .node 0 (.node 0 t296 t297) m298
theorem eq298 : t298.clauses = ScoreNodes.c298 :=
  cat_eq _ (cat_eq _ eq296 eq297) merge298

def m299 : Tree := (.node 2 (.node 1 (.leaf [(2298,false),(2300,true)]) (.leaf [(2299,false),(2301,true)])) (.node 1 (.leaf [(451,true),(2300,true)]) (.node 1 (.leaf [(451,true),(2298,false),(2301,true)]) (.leaf [(451,true),(2299,false),(2302,true)]))))
theorem merge299 : m299.clauses = ScoreNodes.m299 := by rfl

def t299 : Tree := .node 3 (.node 0 t295 t298) m299
theorem eq299 : t299.clauses = ScoreNodes.c299 :=
  cat_eq _ (cat_eq _ eq295 eq298) merge299

def t300 : Tree := .nil
theorem eq300 : t300.clauses = ScoreNodes.c300 := by rfl

def t301 : Tree := .nil
theorem eq301 : t301.clauses = ScoreNodes.c301 := by rfl

def t302 : Tree := .nil
theorem eq302 : t302.clauses = ScoreNodes.c302 := by rfl

def m303 : Tree := (.node 1 (.leaf [(461,true),(2303,true)]) (.node 1 (.leaf [(459,true),(2303,true)]) (.leaf [(459,true),(461,true),(2304,true)])))
theorem merge303 : m303.clauses = ScoreNodes.m303 := by rfl

def t303 : Tree := .node 0 (.node 0 t301 t302) m303
theorem eq303 : t303.clauses = ScoreNodes.c303 :=
  cat_eq _ (cat_eq _ eq301 eq302) merge303

def m304 : Tree := (.node 2 (.node 1 (.leaf [(2303,false),(2305,true)]) (.leaf [(2304,false),(2306,true)])) (.node 1 (.leaf [(457,true),(2305,true)]) (.node 1 (.leaf [(457,true),(2303,false),(2306,true)]) (.leaf [(457,true),(2304,false),(2307,true)]))))
theorem merge304 : m304.clauses = ScoreNodes.m304 := by rfl

def t304 : Tree := .node 3 (.node 0 t300 t303) m304
theorem eq304 : t304.clauses = ScoreNodes.c304 :=
  cat_eq _ (cat_eq _ eq300 eq303) merge304


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
