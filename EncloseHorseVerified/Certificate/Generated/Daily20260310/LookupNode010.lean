import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode009

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m203 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2023,false),(2029,true)]) (.leaf [(2024,false),(2030,true)])) (.node 1 (.leaf [(2025,false),(2031,true)]) (.node 1 (.leaf [(2026,false),(2032,true)]) (.leaf [(2027,false),(2033,true)])))) (.node 2 (.node 1 (.leaf [(2028,false),(2034,true)]) (.leaf [(2008,false),(2029,true)])) (.node 1 (.leaf [(2008,false),(2023,false),(2030,true)]) (.node 1 (.leaf [(2008,false),(2024,false),(2031,true)]) (.leaf [(2008,false),(2025,false),(2032,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2008,false),(2026,false),(2033,true)]) (.leaf [(2008,false),(2027,false),(2034,true)])) (.node 1 (.leaf [(2008,false),(2028,false),(2035,true)]) (.node 1 (.leaf [(2009,false),(2030,true)]) (.leaf [(2009,false),(2023,false),(2031,true)])))) (.node 2 (.node 1 (.leaf [(2009,false),(2024,false),(2032,true)]) (.leaf [(2009,false),(2025,false),(2033,true)])) (.node 1 (.leaf [(2009,false),(2026,false),(2034,true)]) (.node 1 (.leaf [(2009,false),(2027,false),(2035,true)]) (.leaf [(2009,false),(2028,false),(2036,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2010,false),(2031,true)]) (.leaf [(2010,false),(2023,false),(2032,true)])) (.node 1 (.leaf [(2010,false),(2024,false),(2033,true)]) (.node 1 (.leaf [(2010,false),(2025,false),(2034,true)]) (.leaf [(2010,false),(2026,false),(2035,true)])))) (.node 2 (.node 1 (.leaf [(2010,false),(2027,false),(2036,true)]) (.leaf [(2010,false),(2028,false),(2037,true)])) (.node 1 (.leaf [(2011,false),(2032,true)]) (.node 1 (.leaf [(2011,false),(2023,false),(2033,true)]) (.leaf [(2011,false),(2024,false),(2034,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2011,false),(2025,false),(2035,true)]) (.leaf [(2011,false),(2026,false),(2036,true)])) (.node 1 (.leaf [(2011,false),(2027,false),(2037,true)]) (.node 1 (.leaf [(2011,false),(2028,false),(2038,true)]) (.leaf [(2012,false),(2033,true)])))) (.node 3 (.node 1 (.leaf [(2012,false),(2023,false),(2034,true)]) (.node 1 (.leaf [(2012,false),(2024,false),(2035,true)]) (.leaf [(2012,false),(2025,false),(2036,true)]))) (.node 1 (.leaf [(2012,false),(2026,false),(2037,true)]) (.node 1 (.leaf [(2012,false),(2027,false),(2038,true)]) (.leaf [(2012,false),(2028,false),(2039,true)])))))))
theorem merge203 : m203.clauses = ScoreNodes.m203 := by rfl

def t203 : Tree := .node 53 (.node 22 t191 t202) m203
theorem eq203 : t203.clauses = ScoreNodes.c203 :=
  cat_eq _ (cat_eq _ eq191 eq202) merge203

def t204 : Tree := .nil
theorem eq204 : t204.clauses = ScoreNodes.c204 := by rfl

def t205 : Tree := .nil
theorem eq205 : t205.clauses = ScoreNodes.c205 := by rfl

def t206 : Tree := .nil
theorem eq206 : t206.clauses = ScoreNodes.c206 := by rfl

def m207 : Tree := (.node 1 (.leaf [(315,true),(2040,true)]) (.node 1 (.leaf [(313,true),(2040,true)]) (.leaf [(313,true),(315,true),(2041,true)])))
theorem merge207 : m207.clauses = ScoreNodes.m207 := by rfl

def t207 : Tree := .node 0 (.node 0 t205 t206) m207
theorem eq207 : t207.clauses = ScoreNodes.c207 :=
  cat_eq _ (cat_eq _ eq205 eq206) merge207

def m208 : Tree := (.node 2 (.node 1 (.leaf [(2040,false),(2042,true)]) (.leaf [(2041,false),(2043,true)])) (.node 1 (.leaf [(311,true),(2042,true)]) (.node 1 (.leaf [(311,true),(2040,false),(2043,true)]) (.leaf [(311,true),(2041,false),(2044,true)]))))
theorem merge208 : m208.clauses = ScoreNodes.m208 := by rfl

def t208 : Tree := .node 3 (.node 0 t204 t207) m208
theorem eq208 : t208.clauses = ScoreNodes.c208 :=
  cat_eq _ (cat_eq _ eq204 eq207) merge208

def t209 : Tree := .nil
theorem eq209 : t209.clauses = ScoreNodes.c209 := by rfl

def t210 : Tree := .nil
theorem eq210 : t210.clauses = ScoreNodes.c210 := by rfl

def t211 : Tree := .nil
theorem eq211 : t211.clauses = ScoreNodes.c211 := by rfl

def m212 : Tree := (.node 1 (.leaf [(331,true),(2045,true)]) (.node 1 (.leaf [(329,true),(2045,true)]) (.leaf [(329,true),(331,true),(2046,true)])))
theorem merge212 : m212.clauses = ScoreNodes.m212 := by rfl

def t212 : Tree := .node 0 (.node 0 t210 t211) m212
theorem eq212 : t212.clauses = ScoreNodes.c212 :=
  cat_eq _ (cat_eq _ eq210 eq211) merge212

def m213 : Tree := (.node 2 (.node 1 (.leaf [(2045,false),(2047,true)]) (.leaf [(2046,false),(2048,true)])) (.node 1 (.leaf [(317,true),(2047,true)]) (.node 1 (.leaf [(317,true),(2045,false),(2048,true)]) (.leaf [(317,true),(2046,false),(2049,true)]))))
theorem merge213 : m213.clauses = ScoreNodes.m213 := by rfl

def t213 : Tree := .node 3 (.node 0 t209 t212) m213
theorem eq213 : t213.clauses = ScoreNodes.c213 :=
  cat_eq _ (cat_eq _ eq209 eq212) merge213

def m214 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2047,false),(2050,true)]) (.node 1 (.leaf [(2048,false),(2051,true)]) (.leaf [(2049,false),(2052,true)]))) (.node 2 (.node 1 (.leaf [(2042,false),(2050,true)]) (.leaf [(2042,false),(2047,false),(2051,true)])) (.node 1 (.leaf [(2042,false),(2048,false),(2052,true)]) (.leaf [(2042,false),(2049,false),(2053,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2043,false),(2051,true)]) (.leaf [(2043,false),(2047,false),(2052,true)])) (.node 1 (.leaf [(2043,false),(2048,false),(2053,true)]) (.leaf [(2043,false),(2049,false),(2054,true)]))) (.node 2 (.node 1 (.leaf [(2044,false),(2052,true)]) (.leaf [(2044,false),(2047,false),(2053,true)])) (.node 1 (.leaf [(2044,false),(2048,false),(2054,true)]) (.leaf [(2044,false),(2049,false),(2055,true)])))))
theorem merge214 : m214.clauses = ScoreNodes.m214 := by rfl

def t214 : Tree := .node 16 (.node 8 t208 t213) m214
theorem eq214 : t214.clauses = ScoreNodes.c214 :=
  cat_eq _ (cat_eq _ eq208 eq213) merge214

def t215 : Tree := .nil
theorem eq215 : t215.clauses = ScoreNodes.c215 := by rfl

def t216 : Tree := .nil
theorem eq216 : t216.clauses = ScoreNodes.c216 := by rfl

def t217 : Tree := .nil
theorem eq217 : t217.clauses = ScoreNodes.c217 := by rfl

def m218 : Tree := (.node 1 (.leaf [(339,true),(2056,true)]) (.node 1 (.leaf [(337,true),(2056,true)]) (.leaf [(337,true),(339,true),(2057,true)])))
theorem merge218 : m218.clauses = ScoreNodes.m218 := by rfl

def t218 : Tree := .node 0 (.node 0 t216 t217) m218
theorem eq218 : t218.clauses = ScoreNodes.c218 :=
  cat_eq _ (cat_eq _ eq216 eq217) merge218

def m219 : Tree := (.node 2 (.node 1 (.leaf [(2056,false),(2058,true)]) (.leaf [(2057,false),(2059,true)])) (.node 1 (.leaf [(335,true),(2058,true)]) (.node 1 (.leaf [(335,true),(2056,false),(2059,true)]) (.leaf [(335,true),(2057,false),(2060,true)]))))
theorem merge219 : m219.clauses = ScoreNodes.m219 := by rfl

def t219 : Tree := .node 3 (.node 0 t215 t218) m219
theorem eq219 : t219.clauses = ScoreNodes.c219 :=
  cat_eq _ (cat_eq _ eq215 eq218) merge219

def t220 : Tree := .nil
theorem eq220 : t220.clauses = ScoreNodes.c220 := by rfl

def t221 : Tree := .nil
theorem eq221 : t221.clauses = ScoreNodes.c221 := by rfl

def t222 : Tree := .nil
theorem eq222 : t222.clauses = ScoreNodes.c222 := by rfl

def m223 : Tree := (.node 1 (.leaf [(347,true),(2061,true)]) (.node 1 (.leaf [(345,true),(2061,true)]) (.leaf [(345,true),(347,true),(2062,true)])))
theorem merge223 : m223.clauses = ScoreNodes.m223 := by rfl

def t223 : Tree := .node 0 (.node 0 t221 t222) m223
theorem eq223 : t223.clauses = ScoreNodes.c223 :=
  cat_eq _ (cat_eq _ eq221 eq222) merge223

def m224 : Tree := (.node 2 (.node 1 (.leaf [(2061,false),(2063,true)]) (.leaf [(2062,false),(2064,true)])) (.node 1 (.leaf [(343,true),(2063,true)]) (.node 1 (.leaf [(343,true),(2061,false),(2064,true)]) (.leaf [(343,true),(2062,false),(2065,true)]))))
theorem merge224 : m224.clauses = ScoreNodes.m224 := by rfl

def t224 : Tree := .node 3 (.node 0 t220 t223) m224
theorem eq224 : t224.clauses = ScoreNodes.c224 :=
  cat_eq _ (cat_eq _ eq220 eq223) merge224


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
