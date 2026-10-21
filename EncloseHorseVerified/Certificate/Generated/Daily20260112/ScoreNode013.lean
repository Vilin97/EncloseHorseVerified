import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode012

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t208 : CounterTree := .leaf (337,false)
def c208 : CNF := []
theorem eq208 : t208.clauses = c208 := rfl
def t209 : CounterTree := .leaf (339,false)
def c209 : CNF := []
theorem eq209 : t209.clauses = c209 := rfl
def t210 : CounterTree := .node [2296,2297] t208 t209
def m210 : CNF := [[(339,true),(2296,true)],[(337,true),(2296,true)],[(337,true),(339,true),(2297,true)]]
theorem merge210 : mergeClauses t208.outputLits t209.outputLits [2296,2297] = m210 := by
  rfl

def c210 : CNF := c208 ++ c209 ++ m210
theorem eq210 : t210.clauses = c210 := by
  change t208.clauses ++ t209.clauses ++ mergeClauses t208.outputLits t209.outputLits [2296,2297] = c210
  exact concat3_congr eq208 eq209 merge210
def t211 : CounterTree := .leaf (341,false)
def c211 : CNF := []
theorem eq211 : t211.clauses = c211 := rfl
def t212 : CounterTree := .leaf (345,false)
def c212 : CNF := []
theorem eq212 : t212.clauses = c212 := rfl
def t213 : CounterTree := .node [2298,2299] t211 t212
def m213 : CNF := [[(345,true),(2298,true)],[(341,true),(2298,true)],[(341,true),(345,true),(2299,true)]]
theorem merge213 : mergeClauses t211.outputLits t212.outputLits [2298,2299] = m213 := by
  rfl

def c213 : CNF := c211 ++ c212 ++ m213
theorem eq213 : t213.clauses = c213 := by
  change t211.clauses ++ t212.clauses ++ mergeClauses t211.outputLits t212.outputLits [2298,2299] = c213
  exact concat3_congr eq211 eq212 merge213
def t214 : CounterTree := .node [2300,2301,2302,2303] t210 t213
def m214 : CNF := [[(2298,false),(2300,true)],[(2299,false),(2301,true)],[(2296,false),(2300,true)],[(2296,false),(2298,false),(2301,true)],[(2296,false),(2299,false),(2302,true)],[(2297,false),(2301,true)],[(2297,false),(2298,false),(2302,true)],[(2297,false),(2299,false),(2303,true)]]
theorem merge214 : mergeClauses t210.outputLits t213.outputLits [2300,2301,2302,2303] = m214 := by
  rfl

def c214 : CNF := c210 ++ c213 ++ m214
theorem eq214 : t214.clauses = c214 := by
  change t210.clauses ++ t213.clauses ++ mergeClauses t210.outputLits t213.outputLits [2300,2301,2302,2303] = c214
  exact concat3_congr eq210 eq213 merge214
def t215 : CounterTree := .leaf (353,false)
def c215 : CNF := []
theorem eq215 : t215.clauses = c215 := rfl
def t216 : CounterTree := .leaf (355,false)
def c216 : CNF := []
theorem eq216 : t216.clauses = c216 := rfl
def t217 : CounterTree := .node [2304,2305] t215 t216
def m217 : CNF := [[(355,true),(2304,true)],[(353,true),(2304,true)],[(353,true),(355,true),(2305,true)]]
theorem merge217 : mergeClauses t215.outputLits t216.outputLits [2304,2305] = m217 := by
  rfl

def c217 : CNF := c215 ++ c216 ++ m217
theorem eq217 : t217.clauses = c217 := by
  change t215.clauses ++ t216.clauses ++ mergeClauses t215.outputLits t216.outputLits [2304,2305] = c217
  exact concat3_congr eq215 eq216 merge217
def t218 : CounterTree := .leaf (357,false)
def c218 : CNF := []
theorem eq218 : t218.clauses = c218 := rfl
def t219 : CounterTree := .leaf (359,false)
def c219 : CNF := []
theorem eq219 : t219.clauses = c219 := rfl
def t220 : CounterTree := .node [2306,2307] t218 t219
def m220 : CNF := [[(359,true),(2306,true)],[(357,true),(2306,true)],[(357,true),(359,true),(2307,true)]]
theorem merge220 : mergeClauses t218.outputLits t219.outputLits [2306,2307] = m220 := by
  rfl

def c220 : CNF := c218 ++ c219 ++ m220
theorem eq220 : t220.clauses = c220 := by
  change t218.clauses ++ t219.clauses ++ mergeClauses t218.outputLits t219.outputLits [2306,2307] = c220
  exact concat3_congr eq218 eq219 merge220
def t221 : CounterTree := .node [2308,2309,2310,2311] t217 t220
def m221 : CNF := [[(2306,false),(2308,true)],[(2307,false),(2309,true)],[(2304,false),(2308,true)],[(2304,false),(2306,false),(2309,true)],[(2304,false),(2307,false),(2310,true)],[(2305,false),(2309,true)],[(2305,false),(2306,false),(2310,true)],[(2305,false),(2307,false),(2311,true)]]
theorem merge221 : mergeClauses t217.outputLits t220.outputLits [2308,2309,2310,2311] = m221 := by
  rfl

def c221 : CNF := c217 ++ c220 ++ m221
theorem eq221 : t221.clauses = c221 := by
  change t217.clauses ++ t220.clauses ++ mergeClauses t217.outputLits t220.outputLits [2308,2309,2310,2311] = c221
  exact concat3_congr eq217 eq220 merge221
def t222 : CounterTree := .node [2312,2313,2314,2315,2316,2317,2318,2319] t214 t221
def m222 : CNF := [[(2308,false),(2312,true)],[(2309,false),(2313,true)],[(2310,false),(2314,true)],[(2311,false),(2315,true)],[(2300,false),(2312,true)],[(2300,false),(2308,false),(2313,true)],[(2300,false),(2309,false),(2314,true)],[(2300,false),(2310,false),(2315,true)],[(2300,false),(2311,false),(2316,true)],[(2301,false),(2313,true)],[(2301,false),(2308,false),(2314,true)],[(2301,false),(2309,false),(2315,true)],[(2301,false),(2310,false),(2316,true)],[(2301,false),(2311,false),(2317,true)],[(2302,false),(2314,true)],[(2302,false),(2308,false),(2315,true)],[(2302,false),(2309,false),(2316,true)],[(2302,false),(2310,false),(2317,true)],[(2302,false),(2311,false),(2318,true)],[(2303,false),(2315,true)],[(2303,false),(2308,false),(2316,true)],[(2303,false),(2309,false),(2317,true)],[(2303,false),(2310,false),(2318,true)],[(2303,false),(2311,false),(2319,true)]]
theorem merge222 : mergeClauses t214.outputLits t221.outputLits [2312,2313,2314,2315,2316,2317,2318,2319] = m222 := by
  rfl

def c222 : CNF := c214 ++ c221 ++ m222
theorem eq222 : t222.clauses = c222 := by
  change t214.clauses ++ t221.clauses ++ mergeClauses t214.outputLits t221.outputLits [2312,2313,2314,2315,2316,2317,2318,2319] = c222
  exact concat3_congr eq214 eq221 merge222
def t223 : CounterTree := .node [2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334] t207 t222
def m223 : CNF := [[(2312,false),(2320,true)],[(2313,false),(2321,true)],[(2314,false),(2322,true)],[(2315,false),(2323,true)],[(2316,false),(2324,true)],[(2317,false),(2325,true)],[(2318,false),(2326,true)],[(2319,false),(2327,true)],[(2289,false),(2320,true)],[(2289,false),(2312,false),(2321,true)],[(2289,false),(2313,false),(2322,true)],[(2289,false),(2314,false),(2323,true)],[(2289,false),(2315,false),(2324,true)],[(2289,false),(2316,false),(2325,true)],[(2289,false),(2317,false),(2326,true)],[(2289,false),(2318,false),(2327,true)],[(2289,false),(2319,false),(2328,true)],[(2290,false),(2321,true)],[(2290,false),(2312,false),(2322,true)],[(2290,false),(2313,false),(2323,true)],[(2290,false),(2314,false),(2324,true)],[(2290,false),(2315,false),(2325,true)],[(2290,false),(2316,false),(2326,true)],[(2290,false),(2317,false),(2327,true)],[(2290,false),(2318,false),(2328,true)],[(2290,false),(2319,false),(2329,true)],[(2291,false),(2322,true)],[(2291,false),(2312,false),(2323,true)],[(2291,false),(2313,false),(2324,true)],[(2291,false),(2314,false),(2325,true)],[(2291,false),(2315,false),(2326,true)],[(2291,false),(2316,false),(2327,true)],[(2291,false),(2317,false),(2328,true)],[(2291,false),(2318,false),(2329,true)],[(2291,false),(2319,false),(2330,true)],[(2292,false),(2323,true)],[(2292,false),(2312,false),(2324,true)],[(2292,false),(2313,false),(2325,true)],[(2292,false),(2314,false),(2326,true)],[(2292,false),(2315,false),(2327,true)],[(2292,false),(2316,false),(2328,true)],[(2292,false),(2317,false),(2329,true)],[(2292,false),(2318,false),(2330,true)],[(2292,false),(2319,false),(2331,true)],[(2293,false),(2324,true)],[(2293,false),(2312,false),(2325,true)],[(2293,false),(2313,false),(2326,true)],[(2293,false),(2314,false),(2327,true)],[(2293,false),(2315,false),(2328,true)],[(2293,false),(2316,false),(2329,true)],[(2293,false),(2317,false),(2330,true)],[(2293,false),(2318,false),(2331,true)],[(2293,false),(2319,false),(2332,true)],[(2294,false),(2325,true)],[(2294,false),(2312,false),(2326,true)],[(2294,false),(2313,false),(2327,true)],[(2294,false),(2314,false),(2328,true)],[(2294,false),(2315,false),(2329,true)],[(2294,false),(2316,false),(2330,true)],[(2294,false),(2317,false),(2331,true)],[(2294,false),(2318,false),(2332,true)],[(2294,false),(2319,false),(2333,true)],[(2295,false),(2326,true)],[(2295,false),(2312,false),(2327,true)],[(2295,false),(2313,false),(2328,true)],[(2295,false),(2314,false),(2329,true)],[(2295,false),(2315,false),(2330,true)],[(2295,false),(2316,false),(2331,true)],[(2295,false),(2317,false),(2332,true)],[(2295,false),(2318,false),(2333,true)],[(2295,false),(2319,false),(2334,true)]]
theorem merge223 : mergeClauses t207.outputLits t222.outputLits [2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334] = m223 := by
  rfl

def c223 : CNF := c207 ++ c222 ++ m223
theorem eq223 : t223.clauses = c223 := by
  change t207.clauses ++ t222.clauses ++ mergeClauses t207.outputLits t222.outputLits [2320,2321,2322,2323,2324,2325,2326,2327,2328,2329,2330,2331,2332,2333,2334] = c223
  exact concat3_congr eq207 eq222 merge223
def t224 : CounterTree := .leaf (361,false)
def c224 : CNF := []
theorem eq224 : t224.clauses = c224 := rfl
def t225 : CounterTree := .leaf (363,false)
def c225 : CNF := []
theorem eq225 : t225.clauses = c225 := rfl
def t226 : CounterTree := .node [2335,2336] t224 t225
def m226 : CNF := [[(363,true),(2335,true)],[(361,true),(2335,true)],[(361,true),(363,true),(2336,true)]]
theorem merge226 : mergeClauses t224.outputLits t225.outputLits [2335,2336] = m226 := by
  rfl

def c226 : CNF := c224 ++ c225 ++ m226
theorem eq226 : t226.clauses = c226 := by
  change t224.clauses ++ t225.clauses ++ mergeClauses t224.outputLits t225.outputLits [2335,2336] = c226
  exact concat3_congr eq224 eq225 merge226
def t227 : CounterTree := .leaf (371,false)
def c227 : CNF := []
theorem eq227 : t227.clauses = c227 := rfl
def t228 : CounterTree := .leaf (373,false)
def c228 : CNF := []
theorem eq228 : t228.clauses = c228 := rfl
def t229 : CounterTree := .node [2337,2338] t227 t228
def m229 : CNF := [[(373,true),(2337,true)],[(371,true),(2337,true)],[(371,true),(373,true),(2338,true)]]
theorem merge229 : mergeClauses t227.outputLits t228.outputLits [2337,2338] = m229 := by
  rfl

def c229 : CNF := c227 ++ c228 ++ m229
theorem eq229 : t229.clauses = c229 := by
  change t227.clauses ++ t228.clauses ++ mergeClauses t227.outputLits t228.outputLits [2337,2338] = c229
  exact concat3_congr eq227 eq228 merge229

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
