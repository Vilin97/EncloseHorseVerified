import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode010

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def t171 : Tree := .nil
theorem eq171 : t171.clauses = ScoreNodes.c171 := by rfl

def t172 : Tree := .nil
theorem eq172 : t172.clauses = ScoreNodes.c172 := by rfl

def m173 : Tree := (.node 1 (.leaf [(267,true),(2098,true)]) (.node 1 (.leaf [(263,true),(2098,true)]) (.leaf [(263,true),(267,true),(2099,true)])))
theorem merge173 : m173.clauses = ScoreNodes.m173 := by rfl

def t173 : Tree := .node 0 (.node 0 t171 t172) m173
theorem eq173 : t173.clauses = ScoreNodes.c173 :=
  cat_eq _ (cat_eq _ eq171 eq172) merge173

def m174 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2098,false),(2100,true)]) (.leaf [(2099,false),(2101,true)])) (.node 1 (.leaf [(2096,false),(2100,true)]) (.leaf [(2096,false),(2098,false),(2101,true)]))) (.node 2 (.node 1 (.leaf [(2096,false),(2099,false),(2102,true)]) (.leaf [(2097,false),(2101,true)])) (.node 1 (.leaf [(2097,false),(2098,false),(2102,true)]) (.leaf [(2097,false),(2099,false),(2103,true)]))))
theorem merge174 : m174.clauses = ScoreNodes.m174 := by rfl

def t174 : Tree := .node 6 (.node 3 t170 t173) m174
theorem eq174 : t174.clauses = ScoreNodes.c174 :=
  cat_eq _ (cat_eq _ eq170 eq173) merge174

def m175 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2100,false),(2104,true)]) (.node 1 (.leaf [(2101,false),(2105,true)]) (.leaf [(2102,false),(2106,true)]))) (.node 1 (.leaf [(2103,false),(2107,true)]) (.node 1 (.leaf [(2092,false),(2104,true)]) (.leaf [(2092,false),(2100,false),(2105,true)])))) (.node 3 (.node 1 (.leaf [(2092,false),(2101,false),(2106,true)]) (.node 1 (.leaf [(2092,false),(2102,false),(2107,true)]) (.leaf [(2092,false),(2103,false),(2108,true)]))) (.node 1 (.leaf [(2093,false),(2105,true)]) (.node 1 (.leaf [(2093,false),(2100,false),(2106,true)]) (.leaf [(2093,false),(2101,false),(2107,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2093,false),(2102,false),(2108,true)]) (.node 1 (.leaf [(2093,false),(2103,false),(2109,true)]) (.leaf [(2094,false),(2106,true)]))) (.node 1 (.leaf [(2094,false),(2100,false),(2107,true)]) (.node 1 (.leaf [(2094,false),(2101,false),(2108,true)]) (.leaf [(2094,false),(2102,false),(2109,true)])))) (.node 3 (.node 1 (.leaf [(2094,false),(2103,false),(2110,true)]) (.node 1 (.leaf [(2095,false),(2107,true)]) (.leaf [(2095,false),(2100,false),(2108,true)]))) (.node 1 (.leaf [(2095,false),(2101,false),(2109,true)]) (.node 1 (.leaf [(2095,false),(2102,false),(2110,true)]) (.leaf [(2095,false),(2103,false),(2111,true)]))))))
theorem merge175 : m175.clauses = ScoreNodes.m175 := by rfl

def t175 : Tree := .node 28 (.node 14 t167 t174) m175
theorem eq175 : t175.clauses = ScoreNodes.c175 :=
  cat_eq _ (cat_eq _ eq167 eq174) merge175

def t176 : Tree := .nil
theorem eq176 : t176.clauses = ScoreNodes.c176 := by rfl

def t177 : Tree := .nil
theorem eq177 : t177.clauses = ScoreNodes.c177 := by rfl

def m178 : Tree := (.node 1 (.leaf [(281,true),(2112,true)]) (.node 1 (.leaf [(269,true),(2112,true)]) (.leaf [(269,true),(281,true),(2113,true)])))
theorem merge178 : m178.clauses = ScoreNodes.m178 := by rfl

def t178 : Tree := .node 0 (.node 0 t176 t177) m178
theorem eq178 : t178.clauses = ScoreNodes.c178 :=
  cat_eq _ (cat_eq _ eq176 eq177) merge178

def t179 : Tree := .nil
theorem eq179 : t179.clauses = ScoreNodes.c179 := by rfl

def t180 : Tree := .nil
theorem eq180 : t180.clauses = ScoreNodes.c180 := by rfl

def m181 : Tree := (.node 1 (.leaf [(285,true),(2114,true)]) (.node 1 (.leaf [(283,true),(2114,true)]) (.leaf [(283,true),(285,true),(2115,true)])))
theorem merge181 : m181.clauses = ScoreNodes.m181 := by rfl

def t181 : Tree := .node 0 (.node 0 t179 t180) m181
theorem eq181 : t181.clauses = ScoreNodes.c181 :=
  cat_eq _ (cat_eq _ eq179 eq180) merge181

def m182 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2114,false),(2116,true)]) (.leaf [(2115,false),(2117,true)])) (.node 1 (.leaf [(2112,false),(2116,true)]) (.leaf [(2112,false),(2114,false),(2117,true)]))) (.node 2 (.node 1 (.leaf [(2112,false),(2115,false),(2118,true)]) (.leaf [(2113,false),(2117,true)])) (.node 1 (.leaf [(2113,false),(2114,false),(2118,true)]) (.leaf [(2113,false),(2115,false),(2119,true)]))))
theorem merge182 : m182.clauses = ScoreNodes.m182 := by rfl

def t182 : Tree := .node 6 (.node 3 t178 t181) m182
theorem eq182 : t182.clauses = ScoreNodes.c182 :=
  cat_eq _ (cat_eq _ eq178 eq181) merge182

def t183 : Tree := .nil
theorem eq183 : t183.clauses = ScoreNodes.c183 := by rfl

def t184 : Tree := .nil
theorem eq184 : t184.clauses = ScoreNodes.c184 := by rfl

def m185 : Tree := (.node 1 (.leaf [(299,true),(2120,true)]) (.node 1 (.leaf [(297,true),(2120,true)]) (.leaf [(297,true),(299,true),(2121,true)])))
theorem merge185 : m185.clauses = ScoreNodes.m185 := by rfl

def t185 : Tree := .node 0 (.node 0 t183 t184) m185
theorem eq185 : t185.clauses = ScoreNodes.c185 :=
  cat_eq _ (cat_eq _ eq183 eq184) merge185

def t186 : Tree := .nil
theorem eq186 : t186.clauses = ScoreNodes.c186 := by rfl

def t187 : Tree := .nil
theorem eq187 : t187.clauses = ScoreNodes.c187 := by rfl

def m188 : Tree := (.node 1 (.leaf [(303,true),(2122,true)]) (.node 1 (.leaf [(301,true),(2122,true)]) (.leaf [(301,true),(303,true),(2123,true)])))
theorem merge188 : m188.clauses = ScoreNodes.m188 := by rfl

def t188 : Tree := .node 0 (.node 0 t186 t187) m188
theorem eq188 : t188.clauses = ScoreNodes.c188 :=
  cat_eq _ (cat_eq _ eq186 eq187) merge188

def m189 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2122,false),(2124,true)]) (.leaf [(2123,false),(2125,true)])) (.node 1 (.leaf [(2120,false),(2124,true)]) (.leaf [(2120,false),(2122,false),(2125,true)]))) (.node 2 (.node 1 (.leaf [(2120,false),(2123,false),(2126,true)]) (.leaf [(2121,false),(2125,true)])) (.node 1 (.leaf [(2121,false),(2122,false),(2126,true)]) (.leaf [(2121,false),(2123,false),(2127,true)]))))
theorem merge189 : m189.clauses = ScoreNodes.m189 := by rfl

def t189 : Tree := .node 6 (.node 3 t185 t188) m189
theorem eq189 : t189.clauses = ScoreNodes.c189 :=
  cat_eq _ (cat_eq _ eq185 eq188) merge189

def m190 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2124,false),(2128,true)]) (.node 1 (.leaf [(2125,false),(2129,true)]) (.leaf [(2126,false),(2130,true)]))) (.node 1 (.leaf [(2127,false),(2131,true)]) (.node 1 (.leaf [(2116,false),(2128,true)]) (.leaf [(2116,false),(2124,false),(2129,true)])))) (.node 3 (.node 1 (.leaf [(2116,false),(2125,false),(2130,true)]) (.node 1 (.leaf [(2116,false),(2126,false),(2131,true)]) (.leaf [(2116,false),(2127,false),(2132,true)]))) (.node 1 (.leaf [(2117,false),(2129,true)]) (.node 1 (.leaf [(2117,false),(2124,false),(2130,true)]) (.leaf [(2117,false),(2125,false),(2131,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2117,false),(2126,false),(2132,true)]) (.node 1 (.leaf [(2117,false),(2127,false),(2133,true)]) (.leaf [(2118,false),(2130,true)]))) (.node 1 (.leaf [(2118,false),(2124,false),(2131,true)]) (.node 1 (.leaf [(2118,false),(2125,false),(2132,true)]) (.leaf [(2118,false),(2126,false),(2133,true)])))) (.node 3 (.node 1 (.leaf [(2118,false),(2127,false),(2134,true)]) (.node 1 (.leaf [(2119,false),(2131,true)]) (.leaf [(2119,false),(2124,false),(2132,true)]))) (.node 1 (.leaf [(2119,false),(2125,false),(2133,true)]) (.node 1 (.leaf [(2119,false),(2126,false),(2134,true)]) (.leaf [(2119,false),(2127,false),(2135,true)]))))))
theorem merge190 : m190.clauses = ScoreNodes.m190 := by rfl

def t190 : Tree := .node 28 (.node 14 t182 t189) m190
theorem eq190 : t190.clauses = ScoreNodes.c190 :=
  cat_eq _ (cat_eq _ eq182 eq189) merge190


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
