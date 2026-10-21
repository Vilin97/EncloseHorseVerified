import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode009

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t203 : CounterTree := .node [2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039] t191 t202
def m203 : CNF := [[(2023,false),(2029,true)],[(2024,false),(2030,true)],[(2025,false),(2031,true)],[(2026,false),(2032,true)],[(2027,false),(2033,true)],[(2028,false),(2034,true)],[(2008,false),(2029,true)],[(2008,false),(2023,false),(2030,true)],[(2008,false),(2024,false),(2031,true)],[(2008,false),(2025,false),(2032,true)],[(2008,false),(2026,false),(2033,true)],[(2008,false),(2027,false),(2034,true)],[(2008,false),(2028,false),(2035,true)],[(2009,false),(2030,true)],[(2009,false),(2023,false),(2031,true)],[(2009,false),(2024,false),(2032,true)],[(2009,false),(2025,false),(2033,true)],[(2009,false),(2026,false),(2034,true)],[(2009,false),(2027,false),(2035,true)],[(2009,false),(2028,false),(2036,true)],[(2010,false),(2031,true)],[(2010,false),(2023,false),(2032,true)],[(2010,false),(2024,false),(2033,true)],[(2010,false),(2025,false),(2034,true)],[(2010,false),(2026,false),(2035,true)],[(2010,false),(2027,false),(2036,true)],[(2010,false),(2028,false),(2037,true)],[(2011,false),(2032,true)],[(2011,false),(2023,false),(2033,true)],[(2011,false),(2024,false),(2034,true)],[(2011,false),(2025,false),(2035,true)],[(2011,false),(2026,false),(2036,true)],[(2011,false),(2027,false),(2037,true)],[(2011,false),(2028,false),(2038,true)],[(2012,false),(2033,true)],[(2012,false),(2023,false),(2034,true)],[(2012,false),(2024,false),(2035,true)],[(2012,false),(2025,false),(2036,true)],[(2012,false),(2026,false),(2037,true)],[(2012,false),(2027,false),(2038,true)],[(2012,false),(2028,false),(2039,true)]]
theorem merge203 : mergeClauses t191.outputLits t202.outputLits [2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039] = m203 := by rfl

def c203 : CNF := c191 ++ c202 ++ m203
theorem eq203 : t203.clauses = c203 := by
  change t191.clauses ++ t202.clauses ++ mergeClauses t191.outputLits t202.outputLits [2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039] = c203
  exact concat3_congr eq191 eq202 merge203

def t204 : CounterTree := .leaf (311,false)
def c204 : CNF := []
theorem eq204 : t204.clauses = c204 := rfl

def t205 : CounterTree := .leaf (313,false)
def c205 : CNF := []
theorem eq205 : t205.clauses = c205 := rfl

def t206 : CounterTree := .leaf (315,false)
def c206 : CNF := []
theorem eq206 : t206.clauses = c206 := rfl

def t207 : CounterTree := .node [2040,2041] t205 t206
def m207 : CNF := [[(315,true),(2040,true)],[(313,true),(2040,true)],[(313,true),(315,true),(2041,true)]]
theorem merge207 : mergeClauses t205.outputLits t206.outputLits [2040,2041] = m207 := by rfl

def c207 : CNF := c205 ++ c206 ++ m207
theorem eq207 : t207.clauses = c207 := by
  change t205.clauses ++ t206.clauses ++ mergeClauses t205.outputLits t206.outputLits [2040,2041] = c207
  exact concat3_congr eq205 eq206 merge207

def t208 : CounterTree := .node [2042,2043,2044] t204 t207
def m208 : CNF := [[(2040,false),(2042,true)],[(2041,false),(2043,true)],[(311,true),(2042,true)],[(311,true),(2040,false),(2043,true)],[(311,true),(2041,false),(2044,true)]]
theorem merge208 : mergeClauses t204.outputLits t207.outputLits [2042,2043,2044] = m208 := by rfl

def c208 : CNF := c204 ++ c207 ++ m208
theorem eq208 : t208.clauses = c208 := by
  change t204.clauses ++ t207.clauses ++ mergeClauses t204.outputLits t207.outputLits [2042,2043,2044] = c208
  exact concat3_congr eq204 eq207 merge208

def t209 : CounterTree := .leaf (317,false)
def c209 : CNF := []
theorem eq209 : t209.clauses = c209 := rfl

def t210 : CounterTree := .leaf (329,false)
def c210 : CNF := []
theorem eq210 : t210.clauses = c210 := rfl

def t211 : CounterTree := .leaf (331,false)
def c211 : CNF := []
theorem eq211 : t211.clauses = c211 := rfl

def t212 : CounterTree := .node [2045,2046] t210 t211
def m212 : CNF := [[(331,true),(2045,true)],[(329,true),(2045,true)],[(329,true),(331,true),(2046,true)]]
theorem merge212 : mergeClauses t210.outputLits t211.outputLits [2045,2046] = m212 := by rfl

def c212 : CNF := c210 ++ c211 ++ m212
theorem eq212 : t212.clauses = c212 := by
  change t210.clauses ++ t211.clauses ++ mergeClauses t210.outputLits t211.outputLits [2045,2046] = c212
  exact concat3_congr eq210 eq211 merge212

def t213 : CounterTree := .node [2047,2048,2049] t209 t212
def m213 : CNF := [[(2045,false),(2047,true)],[(2046,false),(2048,true)],[(317,true),(2047,true)],[(317,true),(2045,false),(2048,true)],[(317,true),(2046,false),(2049,true)]]
theorem merge213 : mergeClauses t209.outputLits t212.outputLits [2047,2048,2049] = m213 := by rfl

def c213 : CNF := c209 ++ c212 ++ m213
theorem eq213 : t213.clauses = c213 := by
  change t209.clauses ++ t212.clauses ++ mergeClauses t209.outputLits t212.outputLits [2047,2048,2049] = c213
  exact concat3_congr eq209 eq212 merge213

def t214 : CounterTree := .node [2050,2051,2052,2053,2054,2055] t208 t213
def m214 : CNF := [[(2047,false),(2050,true)],[(2048,false),(2051,true)],[(2049,false),(2052,true)],[(2042,false),(2050,true)],[(2042,false),(2047,false),(2051,true)],[(2042,false),(2048,false),(2052,true)],[(2042,false),(2049,false),(2053,true)],[(2043,false),(2051,true)],[(2043,false),(2047,false),(2052,true)],[(2043,false),(2048,false),(2053,true)],[(2043,false),(2049,false),(2054,true)],[(2044,false),(2052,true)],[(2044,false),(2047,false),(2053,true)],[(2044,false),(2048,false),(2054,true)],[(2044,false),(2049,false),(2055,true)]]
theorem merge214 : mergeClauses t208.outputLits t213.outputLits [2050,2051,2052,2053,2054,2055] = m214 := by rfl

def c214 : CNF := c208 ++ c213 ++ m214
theorem eq214 : t214.clauses = c214 := by
  change t208.clauses ++ t213.clauses ++ mergeClauses t208.outputLits t213.outputLits [2050,2051,2052,2053,2054,2055] = c214
  exact concat3_congr eq208 eq213 merge214

def t215 : CounterTree := .leaf (335,false)
def c215 : CNF := []
theorem eq215 : t215.clauses = c215 := rfl

def t216 : CounterTree := .leaf (337,false)
def c216 : CNF := []
theorem eq216 : t216.clauses = c216 := rfl

def t217 : CounterTree := .leaf (339,false)
def c217 : CNF := []
theorem eq217 : t217.clauses = c217 := rfl

def t218 : CounterTree := .node [2056,2057] t216 t217
def m218 : CNF := [[(339,true),(2056,true)],[(337,true),(2056,true)],[(337,true),(339,true),(2057,true)]]
theorem merge218 : mergeClauses t216.outputLits t217.outputLits [2056,2057] = m218 := by rfl

def c218 : CNF := c216 ++ c217 ++ m218
theorem eq218 : t218.clauses = c218 := by
  change t216.clauses ++ t217.clauses ++ mergeClauses t216.outputLits t217.outputLits [2056,2057] = c218
  exact concat3_congr eq216 eq217 merge218

def t219 : CounterTree := .node [2058,2059,2060] t215 t218
def m219 : CNF := [[(2056,false),(2058,true)],[(2057,false),(2059,true)],[(335,true),(2058,true)],[(335,true),(2056,false),(2059,true)],[(335,true),(2057,false),(2060,true)]]
theorem merge219 : mergeClauses t215.outputLits t218.outputLits [2058,2059,2060] = m219 := by rfl

def c219 : CNF := c215 ++ c218 ++ m219
theorem eq219 : t219.clauses = c219 := by
  change t215.clauses ++ t218.clauses ++ mergeClauses t215.outputLits t218.outputLits [2058,2059,2060] = c219
  exact concat3_congr eq215 eq218 merge219

def t220 : CounterTree := .leaf (343,false)
def c220 : CNF := []
theorem eq220 : t220.clauses = c220 := rfl

def t221 : CounterTree := .leaf (345,false)
def c221 : CNF := []
theorem eq221 : t221.clauses = c221 := rfl

def t222 : CounterTree := .leaf (347,false)
def c222 : CNF := []
theorem eq222 : t222.clauses = c222 := rfl

def t223 : CounterTree := .node [2061,2062] t221 t222
def m223 : CNF := [[(347,true),(2061,true)],[(345,true),(2061,true)],[(345,true),(347,true),(2062,true)]]
theorem merge223 : mergeClauses t221.outputLits t222.outputLits [2061,2062] = m223 := by rfl

def c223 : CNF := c221 ++ c222 ++ m223
theorem eq223 : t223.clauses = c223 := by
  change t221.clauses ++ t222.clauses ++ mergeClauses t221.outputLits t222.outputLits [2061,2062] = c223
  exact concat3_congr eq221 eq222 merge223

def t224 : CounterTree := .node [2063,2064,2065] t220 t223
def m224 : CNF := [[(2061,false),(2063,true)],[(2062,false),(2064,true)],[(343,true),(2063,true)],[(343,true),(2061,false),(2064,true)],[(343,true),(2062,false),(2065,true)]]
theorem merge224 : mergeClauses t220.outputLits t223.outputLits [2063,2064,2065] = m224 := by rfl

def c224 : CNF := c220 ++ c223 ++ m224
theorem eq224 : t224.clauses = c224 := by
  change t220.clauses ++ t223.clauses ++ mergeClauses t220.outputLits t223.outputLits [2063,2064,2065] = c224
  exact concat3_congr eq220 eq223 merge224


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
