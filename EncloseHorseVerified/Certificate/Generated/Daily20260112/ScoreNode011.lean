import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode010

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t171 : CounterTree := .leaf (263,false)
def c171 : CNF := []
theorem eq171 : t171.clauses = c171 := rfl
def t172 : CounterTree := .leaf (267,false)
def c172 : CNF := []
theorem eq172 : t172.clauses = c172 := rfl
def t173 : CounterTree := .node [2098,2099] t171 t172
def m173 : CNF := [[(267,true),(2098,true)],[(263,true),(2098,true)],[(263,true),(267,true),(2099,true)]]
theorem merge173 : mergeClauses t171.outputLits t172.outputLits [2098,2099] = m173 := by
  rfl

def c173 : CNF := c171 ++ c172 ++ m173
theorem eq173 : t173.clauses = c173 := by
  change t171.clauses ++ t172.clauses ++ mergeClauses t171.outputLits t172.outputLits [2098,2099] = c173
  exact concat3_congr eq171 eq172 merge173
def t174 : CounterTree := .node [2100,2101,2102,2103] t170 t173
def m174 : CNF := [[(2098,false),(2100,true)],[(2099,false),(2101,true)],[(2096,false),(2100,true)],[(2096,false),(2098,false),(2101,true)],[(2096,false),(2099,false),(2102,true)],[(2097,false),(2101,true)],[(2097,false),(2098,false),(2102,true)],[(2097,false),(2099,false),(2103,true)]]
theorem merge174 : mergeClauses t170.outputLits t173.outputLits [2100,2101,2102,2103] = m174 := by
  rfl

def c174 : CNF := c170 ++ c173 ++ m174
theorem eq174 : t174.clauses = c174 := by
  change t170.clauses ++ t173.clauses ++ mergeClauses t170.outputLits t173.outputLits [2100,2101,2102,2103] = c174
  exact concat3_congr eq170 eq173 merge174
def t175 : CounterTree := .node [2104,2105,2106,2107,2108,2109,2110,2111] t167 t174
def m175 : CNF := [[(2100,false),(2104,true)],[(2101,false),(2105,true)],[(2102,false),(2106,true)],[(2103,false),(2107,true)],[(2092,false),(2104,true)],[(2092,false),(2100,false),(2105,true)],[(2092,false),(2101,false),(2106,true)],[(2092,false),(2102,false),(2107,true)],[(2092,false),(2103,false),(2108,true)],[(2093,false),(2105,true)],[(2093,false),(2100,false),(2106,true)],[(2093,false),(2101,false),(2107,true)],[(2093,false),(2102,false),(2108,true)],[(2093,false),(2103,false),(2109,true)],[(2094,false),(2106,true)],[(2094,false),(2100,false),(2107,true)],[(2094,false),(2101,false),(2108,true)],[(2094,false),(2102,false),(2109,true)],[(2094,false),(2103,false),(2110,true)],[(2095,false),(2107,true)],[(2095,false),(2100,false),(2108,true)],[(2095,false),(2101,false),(2109,true)],[(2095,false),(2102,false),(2110,true)],[(2095,false),(2103,false),(2111,true)]]
theorem merge175 : mergeClauses t167.outputLits t174.outputLits [2104,2105,2106,2107,2108,2109,2110,2111] = m175 := by
  rfl

def c175 : CNF := c167 ++ c174 ++ m175
theorem eq175 : t175.clauses = c175 := by
  change t167.clauses ++ t174.clauses ++ mergeClauses t167.outputLits t174.outputLits [2104,2105,2106,2107,2108,2109,2110,2111] = c175
  exact concat3_congr eq167 eq174 merge175
def t176 : CounterTree := .leaf (269,false)
def c176 : CNF := []
theorem eq176 : t176.clauses = c176 := rfl
def t177 : CounterTree := .leaf (281,false)
def c177 : CNF := []
theorem eq177 : t177.clauses = c177 := rfl
def t178 : CounterTree := .node [2112,2113] t176 t177
def m178 : CNF := [[(281,true),(2112,true)],[(269,true),(2112,true)],[(269,true),(281,true),(2113,true)]]
theorem merge178 : mergeClauses t176.outputLits t177.outputLits [2112,2113] = m178 := by
  rfl

def c178 : CNF := c176 ++ c177 ++ m178
theorem eq178 : t178.clauses = c178 := by
  change t176.clauses ++ t177.clauses ++ mergeClauses t176.outputLits t177.outputLits [2112,2113] = c178
  exact concat3_congr eq176 eq177 merge178
def t179 : CounterTree := .leaf (283,false)
def c179 : CNF := []
theorem eq179 : t179.clauses = c179 := rfl
def t180 : CounterTree := .leaf (285,false)
def c180 : CNF := []
theorem eq180 : t180.clauses = c180 := rfl
def t181 : CounterTree := .node [2114,2115] t179 t180
def m181 : CNF := [[(285,true),(2114,true)],[(283,true),(2114,true)],[(283,true),(285,true),(2115,true)]]
theorem merge181 : mergeClauses t179.outputLits t180.outputLits [2114,2115] = m181 := by
  rfl

def c181 : CNF := c179 ++ c180 ++ m181
theorem eq181 : t181.clauses = c181 := by
  change t179.clauses ++ t180.clauses ++ mergeClauses t179.outputLits t180.outputLits [2114,2115] = c181
  exact concat3_congr eq179 eq180 merge181
def t182 : CounterTree := .node [2116,2117,2118,2119] t178 t181
def m182 : CNF := [[(2114,false),(2116,true)],[(2115,false),(2117,true)],[(2112,false),(2116,true)],[(2112,false),(2114,false),(2117,true)],[(2112,false),(2115,false),(2118,true)],[(2113,false),(2117,true)],[(2113,false),(2114,false),(2118,true)],[(2113,false),(2115,false),(2119,true)]]
theorem merge182 : mergeClauses t178.outputLits t181.outputLits [2116,2117,2118,2119] = m182 := by
  rfl

def c182 : CNF := c178 ++ c181 ++ m182
theorem eq182 : t182.clauses = c182 := by
  change t178.clauses ++ t181.clauses ++ mergeClauses t178.outputLits t181.outputLits [2116,2117,2118,2119] = c182
  exact concat3_congr eq178 eq181 merge182
def t183 : CounterTree := .leaf (297,false)
def c183 : CNF := []
theorem eq183 : t183.clauses = c183 := rfl
def t184 : CounterTree := .leaf (299,false)
def c184 : CNF := []
theorem eq184 : t184.clauses = c184 := rfl
def t185 : CounterTree := .node [2120,2121] t183 t184
def m185 : CNF := [[(299,true),(2120,true)],[(297,true),(2120,true)],[(297,true),(299,true),(2121,true)]]
theorem merge185 : mergeClauses t183.outputLits t184.outputLits [2120,2121] = m185 := by
  rfl

def c185 : CNF := c183 ++ c184 ++ m185
theorem eq185 : t185.clauses = c185 := by
  change t183.clauses ++ t184.clauses ++ mergeClauses t183.outputLits t184.outputLits [2120,2121] = c185
  exact concat3_congr eq183 eq184 merge185
def t186 : CounterTree := .leaf (301,false)
def c186 : CNF := []
theorem eq186 : t186.clauses = c186 := rfl
def t187 : CounterTree := .leaf (303,false)
def c187 : CNF := []
theorem eq187 : t187.clauses = c187 := rfl
def t188 : CounterTree := .node [2122,2123] t186 t187
def m188 : CNF := [[(303,true),(2122,true)],[(301,true),(2122,true)],[(301,true),(303,true),(2123,true)]]
theorem merge188 : mergeClauses t186.outputLits t187.outputLits [2122,2123] = m188 := by
  rfl

def c188 : CNF := c186 ++ c187 ++ m188
theorem eq188 : t188.clauses = c188 := by
  change t186.clauses ++ t187.clauses ++ mergeClauses t186.outputLits t187.outputLits [2122,2123] = c188
  exact concat3_congr eq186 eq187 merge188
def t189 : CounterTree := .node [2124,2125,2126,2127] t185 t188
def m189 : CNF := [[(2122,false),(2124,true)],[(2123,false),(2125,true)],[(2120,false),(2124,true)],[(2120,false),(2122,false),(2125,true)],[(2120,false),(2123,false),(2126,true)],[(2121,false),(2125,true)],[(2121,false),(2122,false),(2126,true)],[(2121,false),(2123,false),(2127,true)]]
theorem merge189 : mergeClauses t185.outputLits t188.outputLits [2124,2125,2126,2127] = m189 := by
  rfl

def c189 : CNF := c185 ++ c188 ++ m189
theorem eq189 : t189.clauses = c189 := by
  change t185.clauses ++ t188.clauses ++ mergeClauses t185.outputLits t188.outputLits [2124,2125,2126,2127] = c189
  exact concat3_congr eq185 eq188 merge189
def t190 : CounterTree := .node [2128,2129,2130,2131,2132,2133,2134,2135] t182 t189
def m190 : CNF := [[(2124,false),(2128,true)],[(2125,false),(2129,true)],[(2126,false),(2130,true)],[(2127,false),(2131,true)],[(2116,false),(2128,true)],[(2116,false),(2124,false),(2129,true)],[(2116,false),(2125,false),(2130,true)],[(2116,false),(2126,false),(2131,true)],[(2116,false),(2127,false),(2132,true)],[(2117,false),(2129,true)],[(2117,false),(2124,false),(2130,true)],[(2117,false),(2125,false),(2131,true)],[(2117,false),(2126,false),(2132,true)],[(2117,false),(2127,false),(2133,true)],[(2118,false),(2130,true)],[(2118,false),(2124,false),(2131,true)],[(2118,false),(2125,false),(2132,true)],[(2118,false),(2126,false),(2133,true)],[(2118,false),(2127,false),(2134,true)],[(2119,false),(2131,true)],[(2119,false),(2124,false),(2132,true)],[(2119,false),(2125,false),(2133,true)],[(2119,false),(2126,false),(2134,true)],[(2119,false),(2127,false),(2135,true)]]
theorem merge190 : mergeClauses t182.outputLits t189.outputLits [2128,2129,2130,2131,2132,2133,2134,2135] = m190 := by
  rfl

def c190 : CNF := c182 ++ c189 ++ m190
theorem eq190 : t190.clauses = c190 := by
  change t182.clauses ++ t189.clauses ++ mergeClauses t182.outputLits t189.outputLits [2128,2129,2130,2131,2132,2133,2134,2135] = c190
  exact concat3_congr eq182 eq189 merge190

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
