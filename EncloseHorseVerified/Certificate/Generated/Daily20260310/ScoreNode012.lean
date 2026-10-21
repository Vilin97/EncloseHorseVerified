import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreNode011

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t246 : CounterTree := .node [2126,2127,2128] t242 t245
def m246 : CNF := [[(2124,false),(2126,true)],[(2125,false),(2127,true)],[(365,true),(2126,true)],[(365,true),(2124,false),(2127,true)],[(365,true),(2125,false),(2128,true)]]
theorem merge246 : mergeClauses t242.outputLits t245.outputLits [2126,2127,2128] = m246 := by rfl

def c246 : CNF := c242 ++ c245 ++ m246
theorem eq246 : t246.clauses = c246 := by
  change t242.clauses ++ t245.clauses ++ mergeClauses t242.outputLits t245.outputLits [2126,2127,2128] = c246
  exact concat3_congr eq242 eq245 merge246

def t247 : CounterTree := .node [2129,2130,2131,2132,2133,2134] t241 t246
def m247 : CNF := [[(2126,false),(2129,true)],[(2127,false),(2130,true)],[(2128,false),(2131,true)],[(2121,false),(2129,true)],[(2121,false),(2126,false),(2130,true)],[(2121,false),(2127,false),(2131,true)],[(2121,false),(2128,false),(2132,true)],[(2122,false),(2130,true)],[(2122,false),(2126,false),(2131,true)],[(2122,false),(2127,false),(2132,true)],[(2122,false),(2128,false),(2133,true)],[(2123,false),(2131,true)],[(2123,false),(2126,false),(2132,true)],[(2123,false),(2127,false),(2133,true)],[(2123,false),(2128,false),(2134,true)]]
theorem merge247 : mergeClauses t241.outputLits t246.outputLits [2129,2130,2131,2132,2133,2134] = m247 := by rfl

def c247 : CNF := c241 ++ c246 ++ m247
theorem eq247 : t247.clauses = c247 := by
  change t241.clauses ++ t246.clauses ++ mergeClauses t241.outputLits t246.outputLits [2129,2130,2131,2132,2133,2134] = c247
  exact concat3_congr eq241 eq246 merge247

def t248 : CounterTree := .node [2135,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145] t236 t247
def m248 : CNF := [[(2129,false),(2135,true)],[(2130,false),(2136,true)],[(2131,false),(2137,true)],[(2132,false),(2138,true)],[(2133,false),(2139,true)],[(2134,false),(2140,true)],[(2114,false),(2135,true)],[(2114,false),(2129,false),(2136,true)],[(2114,false),(2130,false),(2137,true)],[(2114,false),(2131,false),(2138,true)],[(2114,false),(2132,false),(2139,true)],[(2114,false),(2133,false),(2140,true)],[(2114,false),(2134,false),(2141,true)],[(2115,false),(2136,true)],[(2115,false),(2129,false),(2137,true)],[(2115,false),(2130,false),(2138,true)],[(2115,false),(2131,false),(2139,true)],[(2115,false),(2132,false),(2140,true)],[(2115,false),(2133,false),(2141,true)],[(2115,false),(2134,false),(2142,true)],[(2116,false),(2137,true)],[(2116,false),(2129,false),(2138,true)],[(2116,false),(2130,false),(2139,true)],[(2116,false),(2131,false),(2140,true)],[(2116,false),(2132,false),(2141,true)],[(2116,false),(2133,false),(2142,true)],[(2116,false),(2134,false),(2143,true)],[(2117,false),(2138,true)],[(2117,false),(2129,false),(2139,true)],[(2117,false),(2130,false),(2140,true)],[(2117,false),(2131,false),(2141,true)],[(2117,false),(2132,false),(2142,true)],[(2117,false),(2133,false),(2143,true)],[(2117,false),(2134,false),(2144,true)],[(2118,false),(2139,true)],[(2118,false),(2129,false),(2140,true)],[(2118,false),(2130,false),(2141,true)],[(2118,false),(2131,false),(2142,true)],[(2118,false),(2132,false),(2143,true)],[(2118,false),(2133,false),(2144,true)],[(2118,false),(2134,false),(2145,true)]]
theorem merge248 : mergeClauses t236.outputLits t247.outputLits [2135,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145] = m248 := by rfl

def c248 : CNF := c236 ++ c247 ++ m248
theorem eq248 : t248.clauses = c248 := by
  change t236.clauses ++ t247.clauses ++ mergeClauses t236.outputLits t247.outputLits [2135,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145] = c248
  exact concat3_congr eq236 eq247 merge248

def t249 : CounterTree := .leaf (375,false)
def c249 : CNF := []
theorem eq249 : t249.clauses = c249 := rfl

def t250 : CounterTree := .leaf (377,false)
def c250 : CNF := []
theorem eq250 : t250.clauses = c250 := rfl

def t251 : CounterTree := .leaf (379,false)
def c251 : CNF := []
theorem eq251 : t251.clauses = c251 := rfl

def t252 : CounterTree := .node [2146,2147] t250 t251
def m252 : CNF := [[(379,true),(2146,true)],[(377,true),(2146,true)],[(377,true),(379,true),(2147,true)]]
theorem merge252 : mergeClauses t250.outputLits t251.outputLits [2146,2147] = m252 := by rfl

def c252 : CNF := c250 ++ c251 ++ m252
theorem eq252 : t252.clauses = c252 := by
  change t250.clauses ++ t251.clauses ++ mergeClauses t250.outputLits t251.outputLits [2146,2147] = c252
  exact concat3_congr eq250 eq251 merge252

def t253 : CounterTree := .node [2148,2149,2150] t249 t252
def m253 : CNF := [[(2146,false),(2148,true)],[(2147,false),(2149,true)],[(375,true),(2148,true)],[(375,true),(2146,false),(2149,true)],[(375,true),(2147,false),(2150,true)]]
theorem merge253 : mergeClauses t249.outputLits t252.outputLits [2148,2149,2150] = m253 := by rfl

def c253 : CNF := c249 ++ c252 ++ m253
theorem eq253 : t253.clauses = c253 := by
  change t249.clauses ++ t252.clauses ++ mergeClauses t249.outputLits t252.outputLits [2148,2149,2150] = c253
  exact concat3_congr eq249 eq252 merge253

def t254 : CounterTree := .leaf (383,false)
def c254 : CNF := []
theorem eq254 : t254.clauses = c254 := rfl

def t255 : CounterTree := .leaf (385,false)
def c255 : CNF := []
theorem eq255 : t255.clauses = c255 := rfl

def t256 : CounterTree := .leaf (387,false)
def c256 : CNF := []
theorem eq256 : t256.clauses = c256 := rfl

def t257 : CounterTree := .node [2151,2152] t255 t256
def m257 : CNF := [[(387,true),(2151,true)],[(385,true),(2151,true)],[(385,true),(387,true),(2152,true)]]
theorem merge257 : mergeClauses t255.outputLits t256.outputLits [2151,2152] = m257 := by rfl

def c257 : CNF := c255 ++ c256 ++ m257
theorem eq257 : t257.clauses = c257 := by
  change t255.clauses ++ t256.clauses ++ mergeClauses t255.outputLits t256.outputLits [2151,2152] = c257
  exact concat3_congr eq255 eq256 merge257

def t258 : CounterTree := .node [2153,2154,2155] t254 t257
def m258 : CNF := [[(2151,false),(2153,true)],[(2152,false),(2154,true)],[(383,true),(2153,true)],[(383,true),(2151,false),(2154,true)],[(383,true),(2152,false),(2155,true)]]
theorem merge258 : mergeClauses t254.outputLits t257.outputLits [2153,2154,2155] = m258 := by rfl

def c258 : CNF := c254 ++ c257 ++ m258
theorem eq258 : t258.clauses = c258 := by
  change t254.clauses ++ t257.clauses ++ mergeClauses t254.outputLits t257.outputLits [2153,2154,2155] = c258
  exact concat3_congr eq254 eq257 merge258

def t259 : CounterTree := .node [2156,2157,2158,2159,2160,2161] t253 t258
def m259 : CNF := [[(2153,false),(2156,true)],[(2154,false),(2157,true)],[(2155,false),(2158,true)],[(2148,false),(2156,true)],[(2148,false),(2153,false),(2157,true)],[(2148,false),(2154,false),(2158,true)],[(2148,false),(2155,false),(2159,true)],[(2149,false),(2157,true)],[(2149,false),(2153,false),(2158,true)],[(2149,false),(2154,false),(2159,true)],[(2149,false),(2155,false),(2160,true)],[(2150,false),(2158,true)],[(2150,false),(2153,false),(2159,true)],[(2150,false),(2154,false),(2160,true)],[(2150,false),(2155,false),(2161,true)]]
theorem merge259 : mergeClauses t253.outputLits t258.outputLits [2156,2157,2158,2159,2160,2161] = m259 := by rfl

def c259 : CNF := c253 ++ c258 ++ m259
theorem eq259 : t259.clauses = c259 := by
  change t253.clauses ++ t258.clauses ++ mergeClauses t253.outputLits t258.outputLits [2156,2157,2158,2159,2160,2161] = c259
  exact concat3_congr eq253 eq258 merge259

def t260 : CounterTree := .leaf (389,false)
def c260 : CNF := []
theorem eq260 : t260.clauses = c260 := rfl

def t261 : CounterTree := .leaf (391,false)
def c261 : CNF := []
theorem eq261 : t261.clauses = c261 := rfl

def t262 : CounterTree := .leaf (393,false)
def c262 : CNF := []
theorem eq262 : t262.clauses = c262 := rfl

def t263 : CounterTree := .node [2162,2163] t261 t262
def m263 : CNF := [[(393,true),(2162,true)],[(391,true),(2162,true)],[(391,true),(393,true),(2163,true)]]
theorem merge263 : mergeClauses t261.outputLits t262.outputLits [2162,2163] = m263 := by rfl

def c263 : CNF := c261 ++ c262 ++ m263
theorem eq263 : t263.clauses = c263 := by
  change t261.clauses ++ t262.clauses ++ mergeClauses t261.outputLits t262.outputLits [2162,2163] = c263
  exact concat3_congr eq261 eq262 merge263

def t264 : CounterTree := .node [2164,2165,2166] t260 t263
def m264 : CNF := [[(2162,false),(2164,true)],[(2163,false),(2165,true)],[(389,true),(2164,true)],[(389,true),(2162,false),(2165,true)],[(389,true),(2163,false),(2166,true)]]
theorem merge264 : mergeClauses t260.outputLits t263.outputLits [2164,2165,2166] = m264 := by rfl

def c264 : CNF := c260 ++ c263 ++ m264
theorem eq264 : t264.clauses = c264 := by
  change t260.clauses ++ t263.clauses ++ mergeClauses t260.outputLits t263.outputLits [2164,2165,2166] = c264
  exact concat3_congr eq260 eq263 merge264


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
