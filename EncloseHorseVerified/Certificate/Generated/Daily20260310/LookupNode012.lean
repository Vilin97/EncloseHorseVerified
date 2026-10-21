import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode011

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m246 : Tree := (.node 2 (.node 1 (.leaf [(2124,false),(2126,true)]) (.leaf [(2125,false),(2127,true)])) (.node 1 (.leaf [(365,true),(2126,true)]) (.node 1 (.leaf [(365,true),(2124,false),(2127,true)]) (.leaf [(365,true),(2125,false),(2128,true)]))))
theorem merge246 : m246.clauses = ScoreNodes.m246 := by rfl

def t246 : Tree := .node 3 (.node 0 t242 t245) m246
theorem eq246 : t246.clauses = ScoreNodes.c246 :=
  cat_eq _ (cat_eq _ eq242 eq245) merge246

def m247 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2126,false),(2129,true)]) (.node 1 (.leaf [(2127,false),(2130,true)]) (.leaf [(2128,false),(2131,true)]))) (.node 2 (.node 1 (.leaf [(2121,false),(2129,true)]) (.leaf [(2121,false),(2126,false),(2130,true)])) (.node 1 (.leaf [(2121,false),(2127,false),(2131,true)]) (.leaf [(2121,false),(2128,false),(2132,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2122,false),(2130,true)]) (.leaf [(2122,false),(2126,false),(2131,true)])) (.node 1 (.leaf [(2122,false),(2127,false),(2132,true)]) (.leaf [(2122,false),(2128,false),(2133,true)]))) (.node 2 (.node 1 (.leaf [(2123,false),(2131,true)]) (.leaf [(2123,false),(2126,false),(2132,true)])) (.node 1 (.leaf [(2123,false),(2127,false),(2133,true)]) (.leaf [(2123,false),(2128,false),(2134,true)])))))
theorem merge247 : m247.clauses = ScoreNodes.m247 := by rfl

def t247 : Tree := .node 16 (.node 8 t241 t246) m247
theorem eq247 : t247.clauses = ScoreNodes.c247 :=
  cat_eq _ (cat_eq _ eq241 eq246) merge247

def m248 : Tree := (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2129,false),(2135,true)]) (.leaf [(2130,false),(2136,true)])) (.node 1 (.leaf [(2131,false),(2137,true)]) (.node 1 (.leaf [(2132,false),(2138,true)]) (.leaf [(2133,false),(2139,true)])))) (.node 2 (.node 1 (.leaf [(2134,false),(2140,true)]) (.leaf [(2114,false),(2135,true)])) (.node 1 (.leaf [(2114,false),(2129,false),(2136,true)]) (.node 1 (.leaf [(2114,false),(2130,false),(2137,true)]) (.leaf [(2114,false),(2131,false),(2138,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2114,false),(2132,false),(2139,true)]) (.leaf [(2114,false),(2133,false),(2140,true)])) (.node 1 (.leaf [(2114,false),(2134,false),(2141,true)]) (.node 1 (.leaf [(2115,false),(2136,true)]) (.leaf [(2115,false),(2129,false),(2137,true)])))) (.node 2 (.node 1 (.leaf [(2115,false),(2130,false),(2138,true)]) (.leaf [(2115,false),(2131,false),(2139,true)])) (.node 1 (.leaf [(2115,false),(2132,false),(2140,true)]) (.node 1 (.leaf [(2115,false),(2133,false),(2141,true)]) (.leaf [(2115,false),(2134,false),(2142,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2116,false),(2137,true)]) (.leaf [(2116,false),(2129,false),(2138,true)])) (.node 1 (.leaf [(2116,false),(2130,false),(2139,true)]) (.node 1 (.leaf [(2116,false),(2131,false),(2140,true)]) (.leaf [(2116,false),(2132,false),(2141,true)])))) (.node 2 (.node 1 (.leaf [(2116,false),(2133,false),(2142,true)]) (.leaf [(2116,false),(2134,false),(2143,true)])) (.node 1 (.leaf [(2117,false),(2138,true)]) (.node 1 (.leaf [(2117,false),(2129,false),(2139,true)]) (.leaf [(2117,false),(2130,false),(2140,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2117,false),(2131,false),(2141,true)]) (.leaf [(2117,false),(2132,false),(2142,true)])) (.node 1 (.leaf [(2117,false),(2133,false),(2143,true)]) (.node 1 (.leaf [(2117,false),(2134,false),(2144,true)]) (.leaf [(2118,false),(2139,true)])))) (.node 3 (.node 1 (.leaf [(2118,false),(2129,false),(2140,true)]) (.node 1 (.leaf [(2118,false),(2130,false),(2141,true)]) (.leaf [(2118,false),(2131,false),(2142,true)]))) (.node 1 (.leaf [(2118,false),(2132,false),(2143,true)]) (.node 1 (.leaf [(2118,false),(2133,false),(2144,true)]) (.leaf [(2118,false),(2134,false),(2145,true)])))))))
theorem merge248 : m248.clauses = ScoreNodes.m248 := by rfl

def t248 : Tree := .node 53 (.node 22 t236 t247) m248
theorem eq248 : t248.clauses = ScoreNodes.c248 :=
  cat_eq _ (cat_eq _ eq236 eq247) merge248

def t249 : Tree := .nil
theorem eq249 : t249.clauses = ScoreNodes.c249 := by rfl

def t250 : Tree := .nil
theorem eq250 : t250.clauses = ScoreNodes.c250 := by rfl

def t251 : Tree := .nil
theorem eq251 : t251.clauses = ScoreNodes.c251 := by rfl

def m252 : Tree := (.node 1 (.leaf [(379,true),(2146,true)]) (.node 1 (.leaf [(377,true),(2146,true)]) (.leaf [(377,true),(379,true),(2147,true)])))
theorem merge252 : m252.clauses = ScoreNodes.m252 := by rfl

def t252 : Tree := .node 0 (.node 0 t250 t251) m252
theorem eq252 : t252.clauses = ScoreNodes.c252 :=
  cat_eq _ (cat_eq _ eq250 eq251) merge252

def m253 : Tree := (.node 2 (.node 1 (.leaf [(2146,false),(2148,true)]) (.leaf [(2147,false),(2149,true)])) (.node 1 (.leaf [(375,true),(2148,true)]) (.node 1 (.leaf [(375,true),(2146,false),(2149,true)]) (.leaf [(375,true),(2147,false),(2150,true)]))))
theorem merge253 : m253.clauses = ScoreNodes.m253 := by rfl

def t253 : Tree := .node 3 (.node 0 t249 t252) m253
theorem eq253 : t253.clauses = ScoreNodes.c253 :=
  cat_eq _ (cat_eq _ eq249 eq252) merge253

def t254 : Tree := .nil
theorem eq254 : t254.clauses = ScoreNodes.c254 := by rfl

def t255 : Tree := .nil
theorem eq255 : t255.clauses = ScoreNodes.c255 := by rfl

def t256 : Tree := .nil
theorem eq256 : t256.clauses = ScoreNodes.c256 := by rfl

def m257 : Tree := (.node 1 (.leaf [(387,true),(2151,true)]) (.node 1 (.leaf [(385,true),(2151,true)]) (.leaf [(385,true),(387,true),(2152,true)])))
theorem merge257 : m257.clauses = ScoreNodes.m257 := by rfl

def t257 : Tree := .node 0 (.node 0 t255 t256) m257
theorem eq257 : t257.clauses = ScoreNodes.c257 :=
  cat_eq _ (cat_eq _ eq255 eq256) merge257

def m258 : Tree := (.node 2 (.node 1 (.leaf [(2151,false),(2153,true)]) (.leaf [(2152,false),(2154,true)])) (.node 1 (.leaf [(383,true),(2153,true)]) (.node 1 (.leaf [(383,true),(2151,false),(2154,true)]) (.leaf [(383,true),(2152,false),(2155,true)]))))
theorem merge258 : m258.clauses = ScoreNodes.m258 := by rfl

def t258 : Tree := .node 3 (.node 0 t254 t257) m258
theorem eq258 : t258.clauses = ScoreNodes.c258 :=
  cat_eq _ (cat_eq _ eq254 eq257) merge258

def m259 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2153,false),(2156,true)]) (.node 1 (.leaf [(2154,false),(2157,true)]) (.leaf [(2155,false),(2158,true)]))) (.node 2 (.node 1 (.leaf [(2148,false),(2156,true)]) (.leaf [(2148,false),(2153,false),(2157,true)])) (.node 1 (.leaf [(2148,false),(2154,false),(2158,true)]) (.leaf [(2148,false),(2155,false),(2159,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2149,false),(2157,true)]) (.leaf [(2149,false),(2153,false),(2158,true)])) (.node 1 (.leaf [(2149,false),(2154,false),(2159,true)]) (.leaf [(2149,false),(2155,false),(2160,true)]))) (.node 2 (.node 1 (.leaf [(2150,false),(2158,true)]) (.leaf [(2150,false),(2153,false),(2159,true)])) (.node 1 (.leaf [(2150,false),(2154,false),(2160,true)]) (.leaf [(2150,false),(2155,false),(2161,true)])))))
theorem merge259 : m259.clauses = ScoreNodes.m259 := by rfl

def t259 : Tree := .node 16 (.node 8 t253 t258) m259
theorem eq259 : t259.clauses = ScoreNodes.c259 :=
  cat_eq _ (cat_eq _ eq253 eq258) merge259

def t260 : Tree := .nil
theorem eq260 : t260.clauses = ScoreNodes.c260 := by rfl

def t261 : Tree := .nil
theorem eq261 : t261.clauses = ScoreNodes.c261 := by rfl

def t262 : Tree := .nil
theorem eq262 : t262.clauses = ScoreNodes.c262 := by rfl

def m263 : Tree := (.node 1 (.leaf [(393,true),(2162,true)]) (.node 1 (.leaf [(391,true),(2162,true)]) (.leaf [(391,true),(393,true),(2163,true)])))
theorem merge263 : m263.clauses = ScoreNodes.m263 := by rfl

def t263 : Tree := .node 0 (.node 0 t261 t262) m263
theorem eq263 : t263.clauses = ScoreNodes.c263 :=
  cat_eq _ (cat_eq _ eq261 eq262) merge263

def m264 : Tree := (.node 2 (.node 1 (.leaf [(2162,false),(2164,true)]) (.leaf [(2163,false),(2165,true)])) (.node 1 (.leaf [(389,true),(2164,true)]) (.node 1 (.leaf [(389,true),(2162,false),(2165,true)]) (.leaf [(389,true),(2163,false),(2166,true)]))))
theorem merge264 : m264.clauses = ScoreNodes.m264 := by rfl

def t264 : Tree := .node 3 (.node 0 t260 t263) m264
theorem eq264 : t264.clauses = ScoreNodes.c264 :=
  cat_eq _ (cat_eq _ eq260 eq263) merge264


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
