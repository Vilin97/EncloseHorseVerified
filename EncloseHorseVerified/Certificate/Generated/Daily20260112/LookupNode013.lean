import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode012

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t208 : Tree := .nil
theorem eq208 : t208.clauses = ScoreNodes.c208 := by rfl

def t209 : Tree := .nil
theorem eq209 : t209.clauses = ScoreNodes.c209 := by rfl

def m210 : Tree := (.node 1 (.leaf [(339,true),(2296,true)]) (.node 1 (.leaf [(337,true),(2296,true)]) (.leaf [(337,true),(339,true),(2297,true)])))
theorem merge210 : m210.clauses = ScoreNodes.m210 := by rfl

def t210 : Tree := .node 0 (.node 0 t208 t209) m210
theorem eq210 : t210.clauses = ScoreNodes.c210 :=
  cat_eq _ (cat_eq _ eq208 eq209) merge210

def t211 : Tree := .nil
theorem eq211 : t211.clauses = ScoreNodes.c211 := by rfl

def t212 : Tree := .nil
theorem eq212 : t212.clauses = ScoreNodes.c212 := by rfl

def m213 : Tree := (.node 1 (.leaf [(345,true),(2298,true)]) (.node 1 (.leaf [(341,true),(2298,true)]) (.leaf [(341,true),(345,true),(2299,true)])))
theorem merge213 : m213.clauses = ScoreNodes.m213 := by rfl

def t213 : Tree := .node 0 (.node 0 t211 t212) m213
theorem eq213 : t213.clauses = ScoreNodes.c213 :=
  cat_eq _ (cat_eq _ eq211 eq212) merge213

def m214 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2298,false),(2300,true)]) (.leaf [(2299,false),(2301,true)])) (.node 1 (.leaf [(2296,false),(2300,true)]) (.leaf [(2296,false),(2298,false),(2301,true)]))) (.node 2 (.node 1 (.leaf [(2296,false),(2299,false),(2302,true)]) (.leaf [(2297,false),(2301,true)])) (.node 1 (.leaf [(2297,false),(2298,false),(2302,true)]) (.leaf [(2297,false),(2299,false),(2303,true)]))))
theorem merge214 : m214.clauses = ScoreNodes.m214 := by rfl

def t214 : Tree := .node 6 (.node 3 t210 t213) m214
theorem eq214 : t214.clauses = ScoreNodes.c214 :=
  cat_eq _ (cat_eq _ eq210 eq213) merge214

def t215 : Tree := .nil
theorem eq215 : t215.clauses = ScoreNodes.c215 := by rfl

def t216 : Tree := .nil
theorem eq216 : t216.clauses = ScoreNodes.c216 := by rfl

def m217 : Tree := (.node 1 (.leaf [(355,true),(2304,true)]) (.node 1 (.leaf [(353,true),(2304,true)]) (.leaf [(353,true),(355,true),(2305,true)])))
theorem merge217 : m217.clauses = ScoreNodes.m217 := by rfl

def t217 : Tree := .node 0 (.node 0 t215 t216) m217
theorem eq217 : t217.clauses = ScoreNodes.c217 :=
  cat_eq _ (cat_eq _ eq215 eq216) merge217

def t218 : Tree := .nil
theorem eq218 : t218.clauses = ScoreNodes.c218 := by rfl

def t219 : Tree := .nil
theorem eq219 : t219.clauses = ScoreNodes.c219 := by rfl

def m220 : Tree := (.node 1 (.leaf [(359,true),(2306,true)]) (.node 1 (.leaf [(357,true),(2306,true)]) (.leaf [(357,true),(359,true),(2307,true)])))
theorem merge220 : m220.clauses = ScoreNodes.m220 := by rfl

def t220 : Tree := .node 0 (.node 0 t218 t219) m220
theorem eq220 : t220.clauses = ScoreNodes.c220 :=
  cat_eq _ (cat_eq _ eq218 eq219) merge220

def m221 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2306,false),(2308,true)]) (.leaf [(2307,false),(2309,true)])) (.node 1 (.leaf [(2304,false),(2308,true)]) (.leaf [(2304,false),(2306,false),(2309,true)]))) (.node 2 (.node 1 (.leaf [(2304,false),(2307,false),(2310,true)]) (.leaf [(2305,false),(2309,true)])) (.node 1 (.leaf [(2305,false),(2306,false),(2310,true)]) (.leaf [(2305,false),(2307,false),(2311,true)]))))
theorem merge221 : m221.clauses = ScoreNodes.m221 := by rfl

def t221 : Tree := .node 6 (.node 3 t217 t220) m221
theorem eq221 : t221.clauses = ScoreNodes.c221 :=
  cat_eq _ (cat_eq _ eq217 eq220) merge221

def m222 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2308,false),(2312,true)]) (.node 1 (.leaf [(2309,false),(2313,true)]) (.leaf [(2310,false),(2314,true)]))) (.node 1 (.leaf [(2311,false),(2315,true)]) (.node 1 (.leaf [(2300,false),(2312,true)]) (.leaf [(2300,false),(2308,false),(2313,true)])))) (.node 3 (.node 1 (.leaf [(2300,false),(2309,false),(2314,true)]) (.node 1 (.leaf [(2300,false),(2310,false),(2315,true)]) (.leaf [(2300,false),(2311,false),(2316,true)]))) (.node 1 (.leaf [(2301,false),(2313,true)]) (.node 1 (.leaf [(2301,false),(2308,false),(2314,true)]) (.leaf [(2301,false),(2309,false),(2315,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2301,false),(2310,false),(2316,true)]) (.node 1 (.leaf [(2301,false),(2311,false),(2317,true)]) (.leaf [(2302,false),(2314,true)]))) (.node 1 (.leaf [(2302,false),(2308,false),(2315,true)]) (.node 1 (.leaf [(2302,false),(2309,false),(2316,true)]) (.leaf [(2302,false),(2310,false),(2317,true)])))) (.node 3 (.node 1 (.leaf [(2302,false),(2311,false),(2318,true)]) (.node 1 (.leaf [(2303,false),(2315,true)]) (.leaf [(2303,false),(2308,false),(2316,true)]))) (.node 1 (.leaf [(2303,false),(2309,false),(2317,true)]) (.node 1 (.leaf [(2303,false),(2310,false),(2318,true)]) (.leaf [(2303,false),(2311,false),(2319,true)]))))))
theorem merge222 : m222.clauses = ScoreNodes.m222 := by rfl

def t222 : Tree := .node 28 (.node 14 t214 t221) m222
theorem eq222 : t222.clauses = ScoreNodes.c222 :=
  cat_eq _ (cat_eq _ eq214 eq221) merge222

def m223 : Tree := (.node 35 (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(2312,false),(2320,true)]) (.leaf [(2313,false),(2321,true)])) (.node 1 (.leaf [(2314,false),(2322,true)]) (.leaf [(2315,false),(2323,true)]))) (.node 2 (.node 1 (.leaf [(2316,false),(2324,true)]) (.leaf [(2317,false),(2325,true)])) (.node 1 (.leaf [(2318,false),(2326,true)]) (.leaf [(2319,false),(2327,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2289,false),(2320,true)]) (.leaf [(2289,false),(2312,false),(2321,true)])) (.node 1 (.leaf [(2289,false),(2313,false),(2322,true)]) (.leaf [(2289,false),(2314,false),(2323,true)]))) (.node 2 (.node 1 (.leaf [(2289,false),(2315,false),(2324,true)]) (.leaf [(2289,false),(2316,false),(2325,true)])) (.node 1 (.leaf [(2289,false),(2317,false),(2326,true)]) (.node 1 (.leaf [(2289,false),(2318,false),(2327,true)]) (.leaf [(2289,false),(2319,false),(2328,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2290,false),(2321,true)]) (.leaf [(2290,false),(2312,false),(2322,true)])) (.node 1 (.leaf [(2290,false),(2313,false),(2323,true)]) (.leaf [(2290,false),(2314,false),(2324,true)]))) (.node 2 (.node 1 (.leaf [(2290,false),(2315,false),(2325,true)]) (.leaf [(2290,false),(2316,false),(2326,true)])) (.node 1 (.leaf [(2290,false),(2317,false),(2327,true)]) (.node 1 (.leaf [(2290,false),(2318,false),(2328,true)]) (.leaf [(2290,false),(2319,false),(2329,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2291,false),(2322,true)]) (.leaf [(2291,false),(2312,false),(2323,true)])) (.node 1 (.leaf [(2291,false),(2313,false),(2324,true)]) (.leaf [(2291,false),(2314,false),(2325,true)]))) (.node 2 (.node 1 (.leaf [(2291,false),(2315,false),(2326,true)]) (.leaf [(2291,false),(2316,false),(2327,true)])) (.node 1 (.leaf [(2291,false),(2317,false),(2328,true)]) (.node 1 (.leaf [(2291,false),(2318,false),(2329,true)]) (.leaf [(2291,false),(2319,false),(2330,true)]))))))) (.node 18 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2292,false),(2323,true)]) (.leaf [(2292,false),(2312,false),(2324,true)])) (.node 1 (.leaf [(2292,false),(2313,false),(2325,true)]) (.leaf [(2292,false),(2314,false),(2326,true)]))) (.node 2 (.node 1 (.leaf [(2292,false),(2315,false),(2327,true)]) (.leaf [(2292,false),(2316,false),(2328,true)])) (.node 1 (.leaf [(2292,false),(2317,false),(2329,true)]) (.node 1 (.leaf [(2292,false),(2318,false),(2330,true)]) (.leaf [(2292,false),(2319,false),(2331,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2293,false),(2324,true)]) (.leaf [(2293,false),(2312,false),(2325,true)])) (.node 1 (.leaf [(2293,false),(2313,false),(2326,true)]) (.leaf [(2293,false),(2314,false),(2327,true)]))) (.node 2 (.node 1 (.leaf [(2293,false),(2315,false),(2328,true)]) (.leaf [(2293,false),(2316,false),(2329,true)])) (.node 1 (.leaf [(2293,false),(2317,false),(2330,true)]) (.node 1 (.leaf [(2293,false),(2318,false),(2331,true)]) (.leaf [(2293,false),(2319,false),(2332,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2294,false),(2325,true)]) (.leaf [(2294,false),(2312,false),(2326,true)])) (.node 1 (.leaf [(2294,false),(2313,false),(2327,true)]) (.leaf [(2294,false),(2314,false),(2328,true)]))) (.node 2 (.node 1 (.leaf [(2294,false),(2315,false),(2329,true)]) (.leaf [(2294,false),(2316,false),(2330,true)])) (.node 1 (.leaf [(2294,false),(2317,false),(2331,true)]) (.node 1 (.leaf [(2294,false),(2318,false),(2332,true)]) (.leaf [(2294,false),(2319,false),(2333,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(2295,false),(2326,true)]) (.leaf [(2295,false),(2312,false),(2327,true)])) (.node 1 (.leaf [(2295,false),(2313,false),(2328,true)]) (.leaf [(2295,false),(2314,false),(2329,true)]))) (.node 2 (.node 1 (.leaf [(2295,false),(2315,false),(2330,true)]) (.leaf [(2295,false),(2316,false),(2331,true)])) (.node 1 (.leaf [(2295,false),(2317,false),(2332,true)]) (.node 1 (.leaf [(2295,false),(2318,false),(2333,true)]) (.leaf [(2295,false),(2319,false),(2334,true)]))))))))
theorem merge223 : m223.clauses = ScoreNodes.m223 := by rfl

def t223 : Tree := .node 93 (.node 41 t207 t222) m223
theorem eq223 : t223.clauses = ScoreNodes.c223 :=
  cat_eq _ (cat_eq _ eq207 eq222) merge223

def t224 : Tree := .nil
theorem eq224 : t224.clauses = ScoreNodes.c224 := by rfl

def t225 : Tree := .nil
theorem eq225 : t225.clauses = ScoreNodes.c225 := by rfl

def m226 : Tree := (.node 1 (.leaf [(363,true),(2335,true)]) (.node 1 (.leaf [(361,true),(2335,true)]) (.leaf [(361,true),(363,true),(2336,true)])))
theorem merge226 : m226.clauses = ScoreNodes.m226 := by rfl

def t226 : Tree := .node 0 (.node 0 t224 t225) m226
theorem eq226 : t226.clauses = ScoreNodes.c226 :=
  cat_eq _ (cat_eq _ eq224 eq225) merge226

def t227 : Tree := .nil
theorem eq227 : t227.clauses = ScoreNodes.c227 := by rfl

def t228 : Tree := .nil
theorem eq228 : t228.clauses = ScoreNodes.c228 := by rfl

def m229 : Tree := (.node 1 (.leaf [(373,true),(2337,true)]) (.node 1 (.leaf [(371,true),(2337,true)]) (.leaf [(371,true),(373,true),(2338,true)])))
theorem merge229 : m229.clauses = ScoreNodes.m229 := by rfl

def t229 : Tree := .node 0 (.node 0 t227 t228) m229
theorem eq229 : t229.clauses = ScoreNodes.c229 :=
  cat_eq _ (cat_eq _ eq227 eq228) merge229


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
