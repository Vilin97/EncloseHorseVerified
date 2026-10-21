import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode010

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def m225 : Tree := (.node 7 (.node 3 (.node 1 (.leaf [(2063,false),(2066,true)]) (.node 1 (.leaf [(2064,false),(2067,true)]) (.leaf [(2065,false),(2068,true)]))) (.node 2 (.node 1 (.leaf [(2058,false),(2066,true)]) (.leaf [(2058,false),(2063,false),(2067,true)])) (.node 1 (.leaf [(2058,false),(2064,false),(2068,true)]) (.leaf [(2058,false),(2065,false),(2069,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(2059,false),(2067,true)]) (.leaf [(2059,false),(2063,false),(2068,true)])) (.node 1 (.leaf [(2059,false),(2064,false),(2069,true)]) (.leaf [(2059,false),(2065,false),(2070,true)]))) (.node 2 (.node 1 (.leaf [(2060,false),(2068,true)]) (.leaf [(2060,false),(2063,false),(2069,true)])) (.node 1 (.leaf [(2060,false),(2064,false),(2070,true)]) (.leaf [(2060,false),(2065,false),(2071,true)])))))
theorem merge225 : m225.clauses = ScoreNodes.m225 := by rfl

def t225 : Tree := .node 16 (.node 8 t219 t224) m225
theorem eq225 : t225.clauses = ScoreNodes.c225 :=
  cat_eq _ (cat_eq _ eq219 eq224) merge225

def m226 : Tree := (.node 24 (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2066,false),(2072,true)]) (.node 1 (.leaf [(2067,false),(2073,true)]) (.leaf [(2068,false),(2074,true)]))) (.node 1 (.leaf [(2069,false),(2075,true)]) (.node 1 (.leaf [(2070,false),(2076,true)]) (.leaf [(2071,false),(2077,true)])))) (.node 3 (.node 1 (.leaf [(2050,false),(2072,true)]) (.node 1 (.leaf [(2050,false),(2066,false),(2073,true)]) (.leaf [(2050,false),(2067,false),(2074,true)]))) (.node 1 (.leaf [(2050,false),(2068,false),(2075,true)]) (.node 1 (.leaf [(2050,false),(2069,false),(2076,true)]) (.leaf [(2050,false),(2070,false),(2077,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2050,false),(2071,false),(2078,true)]) (.node 1 (.leaf [(2051,false),(2073,true)]) (.leaf [(2051,false),(2066,false),(2074,true)]))) (.node 1 (.leaf [(2051,false),(2067,false),(2075,true)]) (.node 1 (.leaf [(2051,false),(2068,false),(2076,true)]) (.leaf [(2051,false),(2069,false),(2077,true)])))) (.node 3 (.node 1 (.leaf [(2051,false),(2070,false),(2078,true)]) (.node 1 (.leaf [(2051,false),(2071,false),(2079,true)]) (.leaf [(2052,false),(2074,true)]))) (.node 1 (.leaf [(2052,false),(2066,false),(2075,true)]) (.node 1 (.leaf [(2052,false),(2067,false),(2076,true)]) (.leaf [(2052,false),(2068,false),(2077,true)])))))) (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2052,false),(2069,false),(2078,true)]) (.node 1 (.leaf [(2052,false),(2070,false),(2079,true)]) (.leaf [(2052,false),(2071,false),(2080,true)]))) (.node 1 (.leaf [(2053,false),(2075,true)]) (.node 1 (.leaf [(2053,false),(2066,false),(2076,true)]) (.leaf [(2053,false),(2067,false),(2077,true)])))) (.node 3 (.node 1 (.leaf [(2053,false),(2068,false),(2078,true)]) (.node 1 (.leaf [(2053,false),(2069,false),(2079,true)]) (.leaf [(2053,false),(2070,false),(2080,true)]))) (.node 1 (.leaf [(2053,false),(2071,false),(2081,true)]) (.node 1 (.leaf [(2054,false),(2076,true)]) (.leaf [(2054,false),(2066,false),(2077,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2054,false),(2067,false),(2078,true)]) (.node 1 (.leaf [(2054,false),(2068,false),(2079,true)]) (.leaf [(2054,false),(2069,false),(2080,true)]))) (.node 1 (.leaf [(2054,false),(2070,false),(2081,true)]) (.node 1 (.leaf [(2054,false),(2071,false),(2082,true)]) (.leaf [(2055,false),(2077,true)])))) (.node 3 (.node 1 (.leaf [(2055,false),(2066,false),(2078,true)]) (.node 1 (.leaf [(2055,false),(2067,false),(2079,true)]) (.leaf [(2055,false),(2068,false),(2080,true)]))) (.node 1 (.leaf [(2055,false),(2069,false),(2081,true)]) (.node 1 (.leaf [(2055,false),(2070,false),(2082,true)]) (.leaf [(2055,false),(2071,false),(2083,true)])))))))
theorem merge226 : m226.clauses = ScoreNodes.m226 := by rfl

def t226 : Tree := .node 62 (.node 31 t214 t225) m226
theorem eq226 : t226.clauses = ScoreNodes.c226 :=
  cat_eq _ (cat_eq _ eq214 eq225) merge226

def m227 : Tree := (.node 77 (.node 38 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2072,false),(2084,true)]) (.leaf [(2073,false),(2085,true)])) (.node 1 (.leaf [(2074,false),(2086,true)]) (.leaf [(2075,false),(2087,true)]))) (.node 2 (.node 1 (.leaf [(2076,false),(2088,true)]) (.leaf [(2077,false),(2089,true)])) (.node 1 (.leaf [(2078,false),(2090,true)]) (.node 1 (.leaf [(2079,false),(2091,true)]) (.leaf [(2080,false),(2092,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2081,false),(2093,true)]) (.leaf [(2082,false),(2094,true)])) (.node 1 (.leaf [(2083,false),(2095,true)]) (.node 1 (.leaf [(2029,false),(2084,true)]) (.leaf [(2029,false),(2072,false),(2085,true)])))) (.node 2 (.node 1 (.leaf [(2029,false),(2073,false),(2086,true)]) (.leaf [(2029,false),(2074,false),(2087,true)])) (.node 1 (.leaf [(2029,false),(2075,false),(2088,true)]) (.node 1 (.leaf [(2029,false),(2076,false),(2089,true)]) (.leaf [(2029,false),(2077,false),(2090,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2029,false),(2078,false),(2091,true)]) (.leaf [(2029,false),(2079,false),(2092,true)])) (.node 1 (.leaf [(2029,false),(2080,false),(2093,true)]) (.leaf [(2029,false),(2081,false),(2094,true)]))) (.node 2 (.node 1 (.leaf [(2029,false),(2082,false),(2095,true)]) (.leaf [(2029,false),(2083,false),(2096,true)])) (.node 1 (.leaf [(2030,false),(2085,true)]) (.node 1 (.leaf [(2030,false),(2072,false),(2086,true)]) (.leaf [(2030,false),(2073,false),(2087,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2030,false),(2074,false),(2088,true)]) (.leaf [(2030,false),(2075,false),(2089,true)])) (.node 1 (.leaf [(2030,false),(2076,false),(2090,true)]) (.node 1 (.leaf [(2030,false),(2077,false),(2091,true)]) (.leaf [(2030,false),(2078,false),(2092,true)])))) (.node 2 (.node 1 (.leaf [(2030,false),(2079,false),(2093,true)]) (.leaf [(2030,false),(2080,false),(2094,true)])) (.node 1 (.leaf [(2030,false),(2081,false),(2095,true)]) (.node 1 (.leaf [(2030,false),(2082,false),(2096,true)]) (.leaf [(2030,false),(2083,false),(2097,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2031,false),(2086,true)]) (.leaf [(2031,false),(2072,false),(2087,true)])) (.node 1 (.leaf [(2031,false),(2073,false),(2088,true)]) (.leaf [(2031,false),(2074,false),(2089,true)]))) (.node 2 (.node 1 (.leaf [(2031,false),(2075,false),(2090,true)]) (.leaf [(2031,false),(2076,false),(2091,true)])) (.node 1 (.leaf [(2031,false),(2077,false),(2092,true)]) (.node 1 (.leaf [(2031,false),(2078,false),(2093,true)]) (.leaf [(2031,false),(2079,false),(2094,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2031,false),(2080,false),(2095,true)]) (.leaf [(2031,false),(2081,false),(2096,true)])) (.node 1 (.leaf [(2031,false),(2082,false),(2097,true)]) (.node 1 (.leaf [(2031,false),(2083,false),(2098,true)]) (.leaf [(2032,false),(2087,true)])))) (.node 2 (.node 1 (.leaf [(2032,false),(2072,false),(2088,true)]) (.leaf [(2032,false),(2073,false),(2089,true)])) (.node 1 (.leaf [(2032,false),(2074,false),(2090,true)]) (.node 1 (.leaf [(2032,false),(2075,false),(2091,true)]) (.leaf [(2032,false),(2076,false),(2092,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2032,false),(2077,false),(2093,true)]) (.leaf [(2032,false),(2078,false),(2094,true)])) (.node 1 (.leaf [(2032,false),(2079,false),(2095,true)]) (.node 1 (.leaf [(2032,false),(2080,false),(2096,true)]) (.leaf [(2032,false),(2081,false),(2097,true)])))) (.node 2 (.node 1 (.leaf [(2032,false),(2082,false),(2098,true)]) (.leaf [(2032,false),(2083,false),(2099,true)])) (.node 1 (.leaf [(2033,false),(2088,true)]) (.node 1 (.leaf [(2033,false),(2072,false),(2089,true)]) (.leaf [(2033,false),(2073,false),(2090,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2033,false),(2074,false),(2091,true)]) (.leaf [(2033,false),(2075,false),(2092,true)])) (.node 1 (.leaf [(2033,false),(2076,false),(2093,true)]) (.node 1 (.leaf [(2033,false),(2077,false),(2094,true)]) (.leaf [(2033,false),(2078,false),(2095,true)])))) (.node 2 (.node 1 (.leaf [(2033,false),(2079,false),(2096,true)]) (.leaf [(2033,false),(2080,false),(2097,true)])) (.node 1 (.leaf [(2033,false),(2081,false),(2098,true)]) (.node 1 (.leaf [(2033,false),(2082,false),(2099,true)]) (.leaf [(2033,false),(2083,false),(2100,true)])))))))) (.node 39 (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2034,false),(2089,true)]) (.leaf [(2034,false),(2072,false),(2090,true)])) (.node 1 (.leaf [(2034,false),(2073,false),(2091,true)]) (.leaf [(2034,false),(2074,false),(2092,true)]))) (.node 2 (.node 1 (.leaf [(2034,false),(2075,false),(2093,true)]) (.leaf [(2034,false),(2076,false),(2094,true)])) (.node 1 (.leaf [(2034,false),(2077,false),(2095,true)]) (.node 1 (.leaf [(2034,false),(2078,false),(2096,true)]) (.leaf [(2034,false),(2079,false),(2097,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2034,false),(2080,false),(2098,true)]) (.leaf [(2034,false),(2081,false),(2099,true)])) (.node 1 (.leaf [(2034,false),(2082,false),(2100,true)]) (.node 1 (.leaf [(2034,false),(2083,false),(2101,true)]) (.leaf [(2035,false),(2090,true)])))) (.node 2 (.node 1 (.leaf [(2035,false),(2072,false),(2091,true)]) (.leaf [(2035,false),(2073,false),(2092,true)])) (.node 1 (.leaf [(2035,false),(2074,false),(2093,true)]) (.node 1 (.leaf [(2035,false),(2075,false),(2094,true)]) (.leaf [(2035,false),(2076,false),(2095,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2035,false),(2077,false),(2096,true)]) (.leaf [(2035,false),(2078,false),(2097,true)])) (.node 1 (.leaf [(2035,false),(2079,false),(2098,true)]) (.node 1 (.leaf [(2035,false),(2080,false),(2099,true)]) (.leaf [(2035,false),(2081,false),(2100,true)])))) (.node 2 (.node 1 (.leaf [(2035,false),(2082,false),(2101,true)]) (.leaf [(2035,false),(2083,false),(2102,true)])) (.node 1 (.leaf [(2036,false),(2091,true)]) (.node 1 (.leaf [(2036,false),(2072,false),(2092,true)]) (.leaf [(2036,false),(2073,false),(2093,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2036,false),(2074,false),(2094,true)]) (.leaf [(2036,false),(2075,false),(2095,true)])) (.node 1 (.leaf [(2036,false),(2076,false),(2096,true)]) (.node 1 (.leaf [(2036,false),(2077,false),(2097,true)]) (.leaf [(2036,false),(2078,false),(2098,true)])))) (.node 2 (.node 1 (.leaf [(2036,false),(2079,false),(2099,true)]) (.leaf [(2036,false),(2080,false),(2100,true)])) (.node 1 (.leaf [(2036,false),(2081,false),(2101,true)]) (.node 1 (.leaf [(2036,false),(2082,false),(2102,true)]) (.leaf [(2036,false),(2083,false),(2103,true)]))))))) (.node 19 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(2037,false),(2092,true)]) (.leaf [(2037,false),(2072,false),(2093,true)])) (.node 1 (.leaf [(2037,false),(2073,false),(2094,true)]) (.leaf [(2037,false),(2074,false),(2095,true)]))) (.node 2 (.node 1 (.leaf [(2037,false),(2075,false),(2096,true)]) (.leaf [(2037,false),(2076,false),(2097,true)])) (.node 1 (.leaf [(2037,false),(2077,false),(2098,true)]) (.node 1 (.leaf [(2037,false),(2078,false),(2099,true)]) (.leaf [(2037,false),(2079,false),(2100,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2037,false),(2080,false),(2101,true)]) (.leaf [(2037,false),(2081,false),(2102,true)])) (.node 1 (.leaf [(2037,false),(2082,false),(2103,true)]) (.node 1 (.leaf [(2037,false),(2083,false),(2104,true)]) (.leaf [(2038,false),(2093,true)])))) (.node 2 (.node 1 (.leaf [(2038,false),(2072,false),(2094,true)]) (.leaf [(2038,false),(2073,false),(2095,true)])) (.node 1 (.leaf [(2038,false),(2074,false),(2096,true)]) (.node 1 (.leaf [(2038,false),(2075,false),(2097,true)]) (.leaf [(2038,false),(2076,false),(2098,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2038,false),(2077,false),(2099,true)]) (.leaf [(2038,false),(2078,false),(2100,true)])) (.node 1 (.leaf [(2038,false),(2079,false),(2101,true)]) (.node 1 (.leaf [(2038,false),(2080,false),(2102,true)]) (.leaf [(2038,false),(2081,false),(2103,true)])))) (.node 2 (.node 1 (.leaf [(2038,false),(2082,false),(2104,true)]) (.leaf [(2038,false),(2083,false),(2105,true)])) (.node 1 (.leaf [(2039,false),(2094,true)]) (.node 1 (.leaf [(2039,false),(2072,false),(2095,true)]) (.leaf [(2039,false),(2073,false),(2096,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2039,false),(2074,false),(2097,true)]) (.leaf [(2039,false),(2075,false),(2098,true)])) (.node 1 (.leaf [(2039,false),(2076,false),(2099,true)]) (.node 1 (.leaf [(2039,false),(2077,false),(2100,true)]) (.leaf [(2039,false),(2078,false),(2101,true)])))) (.node 2 (.node 1 (.leaf [(2039,false),(2079,false),(2102,true)]) (.leaf [(2039,false),(2080,false),(2103,true)])) (.node 1 (.leaf [(2039,false),(2081,false),(2104,true)]) (.node 1 (.leaf [(2039,false),(2082,false),(2105,true)]) (.leaf [(2039,false),(2083,false),(2106,true)])))))))))
theorem merge227 : m227.clauses = ScoreNodes.m227 := by rfl

def t227 : Tree := .node 204 (.node 94 t203 t226) m227
theorem eq227 : t227.clauses = ScoreNodes.c227 :=
  cat_eq _ (cat_eq _ eq203 eq226) merge227

def t228 : Tree := .nil
theorem eq228 : t228.clauses = ScoreNodes.c228 := by rfl

def t229 : Tree := .nil
theorem eq229 : t229.clauses = ScoreNodes.c229 := by rfl

def m230 : Tree := (.node 1 (.leaf [(351,true),(2107,true)]) (.node 1 (.leaf [(349,true),(2107,true)]) (.leaf [(349,true),(351,true),(2108,true)])))
theorem merge230 : m230.clauses = ScoreNodes.m230 := by rfl

def t230 : Tree := .node 0 (.node 0 t228 t229) m230
theorem eq230 : t230.clauses = ScoreNodes.c230 :=
  cat_eq _ (cat_eq _ eq228 eq229) merge230

def t231 : Tree := .nil
theorem eq231 : t231.clauses = ScoreNodes.c231 := by rfl

def t232 : Tree := .nil
theorem eq232 : t232.clauses = ScoreNodes.c232 := by rfl

def t233 : Tree := .nil
theorem eq233 : t233.clauses = ScoreNodes.c233 := by rfl

def m234 : Tree := (.node 1 (.leaf [(357,true),(2109,true)]) (.node 1 (.leaf [(355,true),(2109,true)]) (.leaf [(355,true),(357,true),(2110,true)])))
theorem merge234 : m234.clauses = ScoreNodes.m234 := by rfl

def t234 : Tree := .node 0 (.node 0 t232 t233) m234
theorem eq234 : t234.clauses = ScoreNodes.c234 :=
  cat_eq _ (cat_eq _ eq232 eq233) merge234

def m235 : Tree := (.node 2 (.node 1 (.leaf [(2109,false),(2111,true)]) (.leaf [(2110,false),(2112,true)])) (.node 1 (.leaf [(353,true),(2111,true)]) (.node 1 (.leaf [(353,true),(2109,false),(2112,true)]) (.leaf [(353,true),(2110,false),(2113,true)]))))
theorem merge235 : m235.clauses = ScoreNodes.m235 := by rfl

def t235 : Tree := .node 3 (.node 0 t231 t234) m235
theorem eq235 : t235.clauses = ScoreNodes.c235 :=
  cat_eq _ (cat_eq _ eq231 eq234) merge235

def m236 : Tree := (.node 5 (.node 2 (.node 1 (.leaf [(2111,false),(2114,true)]) (.leaf [(2112,false),(2115,true)])) (.node 1 (.leaf [(2113,false),(2116,true)]) (.node 1 (.leaf [(2107,false),(2114,true)]) (.leaf [(2107,false),(2111,false),(2115,true)])))) (.node 3 (.node 1 (.leaf [(2107,false),(2112,false),(2116,true)]) (.node 1 (.leaf [(2107,false),(2113,false),(2117,true)]) (.leaf [(2108,false),(2115,true)]))) (.node 1 (.leaf [(2108,false),(2111,false),(2116,true)]) (.node 1 (.leaf [(2108,false),(2112,false),(2117,true)]) (.leaf [(2108,false),(2113,false),(2118,true)])))))
theorem merge236 : m236.clauses = ScoreNodes.m236 := by rfl

def t236 : Tree := .node 11 (.node 3 t230 t235) m236
theorem eq236 : t236.clauses = ScoreNodes.c236 :=
  cat_eq _ (cat_eq _ eq230 eq235) merge236

def t237 : Tree := .nil
theorem eq237 : t237.clauses = ScoreNodes.c237 := by rfl

def t238 : Tree := .nil
theorem eq238 : t238.clauses = ScoreNodes.c238 := by rfl

def t239 : Tree := .nil
theorem eq239 : t239.clauses = ScoreNodes.c239 := by rfl

def m240 : Tree := (.node 1 (.leaf [(363,true),(2119,true)]) (.node 1 (.leaf [(361,true),(2119,true)]) (.leaf [(361,true),(363,true),(2120,true)])))
theorem merge240 : m240.clauses = ScoreNodes.m240 := by rfl

def t240 : Tree := .node 0 (.node 0 t238 t239) m240
theorem eq240 : t240.clauses = ScoreNodes.c240 :=
  cat_eq _ (cat_eq _ eq238 eq239) merge240

def m241 : Tree := (.node 2 (.node 1 (.leaf [(2119,false),(2121,true)]) (.leaf [(2120,false),(2122,true)])) (.node 1 (.leaf [(359,true),(2121,true)]) (.node 1 (.leaf [(359,true),(2119,false),(2122,true)]) (.leaf [(359,true),(2120,false),(2123,true)]))))
theorem merge241 : m241.clauses = ScoreNodes.m241 := by rfl

def t241 : Tree := .node 3 (.node 0 t237 t240) m241
theorem eq241 : t241.clauses = ScoreNodes.c241 :=
  cat_eq _ (cat_eq _ eq237 eq240) merge241

def t242 : Tree := .nil
theorem eq242 : t242.clauses = ScoreNodes.c242 := by rfl

def t243 : Tree := .nil
theorem eq243 : t243.clauses = ScoreNodes.c243 := by rfl

def t244 : Tree := .nil
theorem eq244 : t244.clauses = ScoreNodes.c244 := by rfl

def m245 : Tree := (.node 1 (.leaf [(371,true),(2124,true)]) (.node 1 (.leaf [(369,true),(2124,true)]) (.leaf [(369,true),(371,true),(2125,true)])))
theorem merge245 : m245.clauses = ScoreNodes.m245 := by rfl

def t245 : Tree := .node 0 (.node 0 t243 t244) m245
theorem eq245 : t245.clauses = ScoreNodes.c245 :=
  cat_eq _ (cat_eq _ eq243 eq244) merge245


end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
