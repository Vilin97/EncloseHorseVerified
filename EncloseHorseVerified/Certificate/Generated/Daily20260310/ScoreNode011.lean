import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode010

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t225 : CounterTree := .node [2066,2067,2068,2069,2070,2071] t219 t224
def m225 : CNF := [[(2063,false),(2066,true)],[(2064,false),(2067,true)],[(2065,false),(2068,true)],[(2058,false),(2066,true)],[(2058,false),(2063,false),(2067,true)],[(2058,false),(2064,false),(2068,true)],[(2058,false),(2065,false),(2069,true)],[(2059,false),(2067,true)],[(2059,false),(2063,false),(2068,true)],[(2059,false),(2064,false),(2069,true)],[(2059,false),(2065,false),(2070,true)],[(2060,false),(2068,true)],[(2060,false),(2063,false),(2069,true)],[(2060,false),(2064,false),(2070,true)],[(2060,false),(2065,false),(2071,true)]]
theorem merge225 : mergeClauses t219.outputLits t224.outputLits [2066,2067,2068,2069,2070,2071] = m225 := by rfl

def c225 : CNF := c219 ++ c224 ++ m225
theorem eq225 : t225.clauses = c225 := by
  change t219.clauses ++ t224.clauses ++ mergeClauses t219.outputLits t224.outputLits [2066,2067,2068,2069,2070,2071] = c225
  exact concat3_congr eq219 eq224 merge225

def t226 : CounterTree := .node [2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083] t214 t225
def m226 : CNF := [[(2066,false),(2072,true)],[(2067,false),(2073,true)],[(2068,false),(2074,true)],[(2069,false),(2075,true)],[(2070,false),(2076,true)],[(2071,false),(2077,true)],[(2050,false),(2072,true)],[(2050,false),(2066,false),(2073,true)],[(2050,false),(2067,false),(2074,true)],[(2050,false),(2068,false),(2075,true)],[(2050,false),(2069,false),(2076,true)],[(2050,false),(2070,false),(2077,true)],[(2050,false),(2071,false),(2078,true)],[(2051,false),(2073,true)],[(2051,false),(2066,false),(2074,true)],[(2051,false),(2067,false),(2075,true)],[(2051,false),(2068,false),(2076,true)],[(2051,false),(2069,false),(2077,true)],[(2051,false),(2070,false),(2078,true)],[(2051,false),(2071,false),(2079,true)],[(2052,false),(2074,true)],[(2052,false),(2066,false),(2075,true)],[(2052,false),(2067,false),(2076,true)],[(2052,false),(2068,false),(2077,true)],[(2052,false),(2069,false),(2078,true)],[(2052,false),(2070,false),(2079,true)],[(2052,false),(2071,false),(2080,true)],[(2053,false),(2075,true)],[(2053,false),(2066,false),(2076,true)],[(2053,false),(2067,false),(2077,true)],[(2053,false),(2068,false),(2078,true)],[(2053,false),(2069,false),(2079,true)],[(2053,false),(2070,false),(2080,true)],[(2053,false),(2071,false),(2081,true)],[(2054,false),(2076,true)],[(2054,false),(2066,false),(2077,true)],[(2054,false),(2067,false),(2078,true)],[(2054,false),(2068,false),(2079,true)],[(2054,false),(2069,false),(2080,true)],[(2054,false),(2070,false),(2081,true)],[(2054,false),(2071,false),(2082,true)],[(2055,false),(2077,true)],[(2055,false),(2066,false),(2078,true)],[(2055,false),(2067,false),(2079,true)],[(2055,false),(2068,false),(2080,true)],[(2055,false),(2069,false),(2081,true)],[(2055,false),(2070,false),(2082,true)],[(2055,false),(2071,false),(2083,true)]]
theorem merge226 : mergeClauses t214.outputLits t225.outputLits [2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083] = m226 := by rfl

def c226 : CNF := c214 ++ c225 ++ m226
theorem eq226 : t226.clauses = c226 := by
  change t214.clauses ++ t225.clauses ++ mergeClauses t214.outputLits t225.outputLits [2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083] = c226
  exact concat3_congr eq214 eq225 merge226

def t227 : CounterTree := .node [2084,2085,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106] t203 t226
def m227 : CNF := [[(2072,false),(2084,true)],[(2073,false),(2085,true)],[(2074,false),(2086,true)],[(2075,false),(2087,true)],[(2076,false),(2088,true)],[(2077,false),(2089,true)],[(2078,false),(2090,true)],[(2079,false),(2091,true)],[(2080,false),(2092,true)],[(2081,false),(2093,true)],[(2082,false),(2094,true)],[(2083,false),(2095,true)],[(2029,false),(2084,true)],[(2029,false),(2072,false),(2085,true)],[(2029,false),(2073,false),(2086,true)],[(2029,false),(2074,false),(2087,true)],[(2029,false),(2075,false),(2088,true)],[(2029,false),(2076,false),(2089,true)],[(2029,false),(2077,false),(2090,true)],[(2029,false),(2078,false),(2091,true)],[(2029,false),(2079,false),(2092,true)],[(2029,false),(2080,false),(2093,true)],[(2029,false),(2081,false),(2094,true)],[(2029,false),(2082,false),(2095,true)],[(2029,false),(2083,false),(2096,true)],[(2030,false),(2085,true)],[(2030,false),(2072,false),(2086,true)],[(2030,false),(2073,false),(2087,true)],[(2030,false),(2074,false),(2088,true)],[(2030,false),(2075,false),(2089,true)],[(2030,false),(2076,false),(2090,true)],[(2030,false),(2077,false),(2091,true)],[(2030,false),(2078,false),(2092,true)],[(2030,false),(2079,false),(2093,true)],[(2030,false),(2080,false),(2094,true)],[(2030,false),(2081,false),(2095,true)],[(2030,false),(2082,false),(2096,true)],[(2030,false),(2083,false),(2097,true)],[(2031,false),(2086,true)],[(2031,false),(2072,false),(2087,true)],[(2031,false),(2073,false),(2088,true)],[(2031,false),(2074,false),(2089,true)],[(2031,false),(2075,false),(2090,true)],[(2031,false),(2076,false),(2091,true)],[(2031,false),(2077,false),(2092,true)],[(2031,false),(2078,false),(2093,true)],[(2031,false),(2079,false),(2094,true)],[(2031,false),(2080,false),(2095,true)],[(2031,false),(2081,false),(2096,true)],[(2031,false),(2082,false),(2097,true)],[(2031,false),(2083,false),(2098,true)],[(2032,false),(2087,true)],[(2032,false),(2072,false),(2088,true)],[(2032,false),(2073,false),(2089,true)],[(2032,false),(2074,false),(2090,true)],[(2032,false),(2075,false),(2091,true)],[(2032,false),(2076,false),(2092,true)],[(2032,false),(2077,false),(2093,true)],[(2032,false),(2078,false),(2094,true)],[(2032,false),(2079,false),(2095,true)],[(2032,false),(2080,false),(2096,true)],[(2032,false),(2081,false),(2097,true)],[(2032,false),(2082,false),(2098,true)],[(2032,false),(2083,false),(2099,true)],[(2033,false),(2088,true)],[(2033,false),(2072,false),(2089,true)],[(2033,false),(2073,false),(2090,true)],[(2033,false),(2074,false),(2091,true)],[(2033,false),(2075,false),(2092,true)],[(2033,false),(2076,false),(2093,true)],[(2033,false),(2077,false),(2094,true)],[(2033,false),(2078,false),(2095,true)],[(2033,false),(2079,false),(2096,true)],[(2033,false),(2080,false),(2097,true)],[(2033,false),(2081,false),(2098,true)],[(2033,false),(2082,false),(2099,true)],[(2033,false),(2083,false),(2100,true)],[(2034,false),(2089,true)],[(2034,false),(2072,false),(2090,true)],[(2034,false),(2073,false),(2091,true)],[(2034,false),(2074,false),(2092,true)],[(2034,false),(2075,false),(2093,true)],[(2034,false),(2076,false),(2094,true)],[(2034,false),(2077,false),(2095,true)],[(2034,false),(2078,false),(2096,true)],[(2034,false),(2079,false),(2097,true)],[(2034,false),(2080,false),(2098,true)],[(2034,false),(2081,false),(2099,true)],[(2034,false),(2082,false),(2100,true)],[(2034,false),(2083,false),(2101,true)],[(2035,false),(2090,true)],[(2035,false),(2072,false),(2091,true)],[(2035,false),(2073,false),(2092,true)],[(2035,false),(2074,false),(2093,true)],[(2035,false),(2075,false),(2094,true)],[(2035,false),(2076,false),(2095,true)],[(2035,false),(2077,false),(2096,true)],[(2035,false),(2078,false),(2097,true)],[(2035,false),(2079,false),(2098,true)],[(2035,false),(2080,false),(2099,true)],[(2035,false),(2081,false),(2100,true)],[(2035,false),(2082,false),(2101,true)],[(2035,false),(2083,false),(2102,true)],[(2036,false),(2091,true)],[(2036,false),(2072,false),(2092,true)],[(2036,false),(2073,false),(2093,true)],[(2036,false),(2074,false),(2094,true)],[(2036,false),(2075,false),(2095,true)],[(2036,false),(2076,false),(2096,true)],[(2036,false),(2077,false),(2097,true)],[(2036,false),(2078,false),(2098,true)],[(2036,false),(2079,false),(2099,true)],[(2036,false),(2080,false),(2100,true)],[(2036,false),(2081,false),(2101,true)],[(2036,false),(2082,false),(2102,true)],[(2036,false),(2083,false),(2103,true)],[(2037,false),(2092,true)],[(2037,false),(2072,false),(2093,true)],[(2037,false),(2073,false),(2094,true)],[(2037,false),(2074,false),(2095,true)],[(2037,false),(2075,false),(2096,true)],[(2037,false),(2076,false),(2097,true)],[(2037,false),(2077,false),(2098,true)],[(2037,false),(2078,false),(2099,true)],[(2037,false),(2079,false),(2100,true)],[(2037,false),(2080,false),(2101,true)],[(2037,false),(2081,false),(2102,true)],[(2037,false),(2082,false),(2103,true)],[(2037,false),(2083,false),(2104,true)],[(2038,false),(2093,true)],[(2038,false),(2072,false),(2094,true)],[(2038,false),(2073,false),(2095,true)],[(2038,false),(2074,false),(2096,true)],[(2038,false),(2075,false),(2097,true)],[(2038,false),(2076,false),(2098,true)],[(2038,false),(2077,false),(2099,true)],[(2038,false),(2078,false),(2100,true)],[(2038,false),(2079,false),(2101,true)],[(2038,false),(2080,false),(2102,true)],[(2038,false),(2081,false),(2103,true)],[(2038,false),(2082,false),(2104,true)],[(2038,false),(2083,false),(2105,true)],[(2039,false),(2094,true)],[(2039,false),(2072,false),(2095,true)],[(2039,false),(2073,false),(2096,true)],[(2039,false),(2074,false),(2097,true)],[(2039,false),(2075,false),(2098,true)],[(2039,false),(2076,false),(2099,true)],[(2039,false),(2077,false),(2100,true)],[(2039,false),(2078,false),(2101,true)],[(2039,false),(2079,false),(2102,true)],[(2039,false),(2080,false),(2103,true)],[(2039,false),(2081,false),(2104,true)],[(2039,false),(2082,false),(2105,true)],[(2039,false),(2083,false),(2106,true)]]
theorem merge227 : mergeClauses t203.outputLits t226.outputLits [2084,2085,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106] = m227 := by rfl

def c227 : CNF := c203 ++ c226 ++ m227
theorem eq227 : t227.clauses = c227 := by
  change t203.clauses ++ t226.clauses ++ mergeClauses t203.outputLits t226.outputLits [2084,2085,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106] = c227
  exact concat3_congr eq203 eq226 merge227

def t228 : CounterTree := .leaf (349,false)
def c228 : CNF := []
theorem eq228 : t228.clauses = c228 := rfl

def t229 : CounterTree := .leaf (351,false)
def c229 : CNF := []
theorem eq229 : t229.clauses = c229 := rfl

def t230 : CounterTree := .node [2107,2108] t228 t229
def m230 : CNF := [[(351,true),(2107,true)],[(349,true),(2107,true)],[(349,true),(351,true),(2108,true)]]
theorem merge230 : mergeClauses t228.outputLits t229.outputLits [2107,2108] = m230 := by rfl

def c230 : CNF := c228 ++ c229 ++ m230
theorem eq230 : t230.clauses = c230 := by
  change t228.clauses ++ t229.clauses ++ mergeClauses t228.outputLits t229.outputLits [2107,2108] = c230
  exact concat3_congr eq228 eq229 merge230

def t231 : CounterTree := .leaf (353,false)
def c231 : CNF := []
theorem eq231 : t231.clauses = c231 := rfl

def t232 : CounterTree := .leaf (355,false)
def c232 : CNF := []
theorem eq232 : t232.clauses = c232 := rfl

def t233 : CounterTree := .leaf (357,false)
def c233 : CNF := []
theorem eq233 : t233.clauses = c233 := rfl

def t234 : CounterTree := .node [2109,2110] t232 t233
def m234 : CNF := [[(357,true),(2109,true)],[(355,true),(2109,true)],[(355,true),(357,true),(2110,true)]]
theorem merge234 : mergeClauses t232.outputLits t233.outputLits [2109,2110] = m234 := by rfl

def c234 : CNF := c232 ++ c233 ++ m234
theorem eq234 : t234.clauses = c234 := by
  change t232.clauses ++ t233.clauses ++ mergeClauses t232.outputLits t233.outputLits [2109,2110] = c234
  exact concat3_congr eq232 eq233 merge234

def t235 : CounterTree := .node [2111,2112,2113] t231 t234
def m235 : CNF := [[(2109,false),(2111,true)],[(2110,false),(2112,true)],[(353,true),(2111,true)],[(353,true),(2109,false),(2112,true)],[(353,true),(2110,false),(2113,true)]]
theorem merge235 : mergeClauses t231.outputLits t234.outputLits [2111,2112,2113] = m235 := by rfl

def c235 : CNF := c231 ++ c234 ++ m235
theorem eq235 : t235.clauses = c235 := by
  change t231.clauses ++ t234.clauses ++ mergeClauses t231.outputLits t234.outputLits [2111,2112,2113] = c235
  exact concat3_congr eq231 eq234 merge235

def t236 : CounterTree := .node [2114,2115,2116,2117,2118] t230 t235
def m236 : CNF := [[(2111,false),(2114,true)],[(2112,false),(2115,true)],[(2113,false),(2116,true)],[(2107,false),(2114,true)],[(2107,false),(2111,false),(2115,true)],[(2107,false),(2112,false),(2116,true)],[(2107,false),(2113,false),(2117,true)],[(2108,false),(2115,true)],[(2108,false),(2111,false),(2116,true)],[(2108,false),(2112,false),(2117,true)],[(2108,false),(2113,false),(2118,true)]]
theorem merge236 : mergeClauses t230.outputLits t235.outputLits [2114,2115,2116,2117,2118] = m236 := by rfl

def c236 : CNF := c230 ++ c235 ++ m236
theorem eq236 : t236.clauses = c236 := by
  change t230.clauses ++ t235.clauses ++ mergeClauses t230.outputLits t235.outputLits [2114,2115,2116,2117,2118] = c236
  exact concat3_congr eq230 eq235 merge236

def t237 : CounterTree := .leaf (359,false)
def c237 : CNF := []
theorem eq237 : t237.clauses = c237 := rfl

def t238 : CounterTree := .leaf (361,false)
def c238 : CNF := []
theorem eq238 : t238.clauses = c238 := rfl

def t239 : CounterTree := .leaf (363,false)
def c239 : CNF := []
theorem eq239 : t239.clauses = c239 := rfl

def t240 : CounterTree := .node [2119,2120] t238 t239
def m240 : CNF := [[(363,true),(2119,true)],[(361,true),(2119,true)],[(361,true),(363,true),(2120,true)]]
theorem merge240 : mergeClauses t238.outputLits t239.outputLits [2119,2120] = m240 := by rfl

def c240 : CNF := c238 ++ c239 ++ m240
theorem eq240 : t240.clauses = c240 := by
  change t238.clauses ++ t239.clauses ++ mergeClauses t238.outputLits t239.outputLits [2119,2120] = c240
  exact concat3_congr eq238 eq239 merge240

def t241 : CounterTree := .node [2121,2122,2123] t237 t240
def m241 : CNF := [[(2119,false),(2121,true)],[(2120,false),(2122,true)],[(359,true),(2121,true)],[(359,true),(2119,false),(2122,true)],[(359,true),(2120,false),(2123,true)]]
theorem merge241 : mergeClauses t237.outputLits t240.outputLits [2121,2122,2123] = m241 := by rfl

def c241 : CNF := c237 ++ c240 ++ m241
theorem eq241 : t241.clauses = c241 := by
  change t237.clauses ++ t240.clauses ++ mergeClauses t237.outputLits t240.outputLits [2121,2122,2123] = c241
  exact concat3_congr eq237 eq240 merge241

def t242 : CounterTree := .leaf (365,false)
def c242 : CNF := []
theorem eq242 : t242.clauses = c242 := rfl

def t243 : CounterTree := .leaf (369,false)
def c243 : CNF := []
theorem eq243 : t243.clauses = c243 := rfl

def t244 : CounterTree := .leaf (371,false)
def c244 : CNF := []
theorem eq244 : t244.clauses = c244 := rfl

def t245 : CounterTree := .node [2124,2125] t243 t244
def m245 : CNF := [[(371,true),(2124,true)],[(369,true),(2124,true)],[(369,true),(371,true),(2125,true)]]
theorem merge245 : mergeClauses t243.outputLits t244.outputLits [2124,2125] = m245 := by rfl

def c245 : CNF := c243 ++ c244 ++ m245
theorem eq245 : t245.clauses = c245 := by
  change t243.clauses ++ t244.clauses ++ mergeClauses t243.outputLits t244.outputLits [2124,2125] = c245
  exact concat3_congr eq243 eq244 merge245


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
