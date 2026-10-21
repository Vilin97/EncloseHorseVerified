import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode009

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t151 : CounterTree := .node [2052,2053,2054,2055] t147 t150
def m151 : CNF := [[(2050,false),(2052,true)],[(2051,false),(2053,true)],[(2048,false),(2052,true)],[(2048,false),(2050,false),(2053,true)],[(2048,false),(2051,false),(2054,true)],[(2049,false),(2053,true)],[(2049,false),(2050,false),(2054,true)],[(2049,false),(2051,false),(2055,true)]]
theorem merge151 : mergeClauses t147.outputLits t150.outputLits [2052,2053,2054,2055] = m151 := by
  rfl

def c151 : CNF := c147 ++ c150 ++ m151
theorem eq151 : t151.clauses = c151 := by
  change t147.clauses ++ t150.clauses ++ mergeClauses t147.outputLits t150.outputLits [2052,2053,2054,2055] = c151
  exact concat3_congr eq147 eq150 merge151
def t152 : CounterTree := .leaf (231,false)
def c152 : CNF := []
theorem eq152 : t152.clauses = c152 := rfl
def t153 : CounterTree := .leaf (233,false)
def c153 : CNF := []
theorem eq153 : t153.clauses = c153 := rfl
def t154 : CounterTree := .node [2056,2057] t152 t153
def m154 : CNF := [[(233,true),(2056,true)],[(231,true),(2056,true)],[(231,true),(233,true),(2057,true)]]
theorem merge154 : mergeClauses t152.outputLits t153.outputLits [2056,2057] = m154 := by
  rfl

def c154 : CNF := c152 ++ c153 ++ m154
theorem eq154 : t154.clauses = c154 := by
  change t152.clauses ++ t153.clauses ++ mergeClauses t152.outputLits t153.outputLits [2056,2057] = c154
  exact concat3_congr eq152 eq153 merge154
def t155 : CounterTree := .leaf (243,false)
def c155 : CNF := []
theorem eq155 : t155.clauses = c155 := rfl
def t156 : CounterTree := .leaf (245,false)
def c156 : CNF := []
theorem eq156 : t156.clauses = c156 := rfl
def t157 : CounterTree := .node [2058,2059] t155 t156
def m157 : CNF := [[(245,true),(2058,true)],[(243,true),(2058,true)],[(243,true),(245,true),(2059,true)]]
theorem merge157 : mergeClauses t155.outputLits t156.outputLits [2058,2059] = m157 := by
  rfl

def c157 : CNF := c155 ++ c156 ++ m157
theorem eq157 : t157.clauses = c157 := by
  change t155.clauses ++ t156.clauses ++ mergeClauses t155.outputLits t156.outputLits [2058,2059] = c157
  exact concat3_congr eq155 eq156 merge157
def t158 : CounterTree := .node [2060,2061,2062,2063] t154 t157
def m158 : CNF := [[(2058,false),(2060,true)],[(2059,false),(2061,true)],[(2056,false),(2060,true)],[(2056,false),(2058,false),(2061,true)],[(2056,false),(2059,false),(2062,true)],[(2057,false),(2061,true)],[(2057,false),(2058,false),(2062,true)],[(2057,false),(2059,false),(2063,true)]]
theorem merge158 : mergeClauses t154.outputLits t157.outputLits [2060,2061,2062,2063] = m158 := by
  rfl

def c158 : CNF := c154 ++ c157 ++ m158
theorem eq158 : t158.clauses = c158 := by
  change t154.clauses ++ t157.clauses ++ mergeClauses t154.outputLits t157.outputLits [2060,2061,2062,2063] = c158
  exact concat3_congr eq154 eq157 merge158
def t159 : CounterTree := .node [2064,2065,2066,2067,2068,2069,2070,2071] t151 t158
def m159 : CNF := [[(2060,false),(2064,true)],[(2061,false),(2065,true)],[(2062,false),(2066,true)],[(2063,false),(2067,true)],[(2052,false),(2064,true)],[(2052,false),(2060,false),(2065,true)],[(2052,false),(2061,false),(2066,true)],[(2052,false),(2062,false),(2067,true)],[(2052,false),(2063,false),(2068,true)],[(2053,false),(2065,true)],[(2053,false),(2060,false),(2066,true)],[(2053,false),(2061,false),(2067,true)],[(2053,false),(2062,false),(2068,true)],[(2053,false),(2063,false),(2069,true)],[(2054,false),(2066,true)],[(2054,false),(2060,false),(2067,true)],[(2054,false),(2061,false),(2068,true)],[(2054,false),(2062,false),(2069,true)],[(2054,false),(2063,false),(2070,true)],[(2055,false),(2067,true)],[(2055,false),(2060,false),(2068,true)],[(2055,false),(2061,false),(2069,true)],[(2055,false),(2062,false),(2070,true)],[(2055,false),(2063,false),(2071,true)]]
theorem merge159 : mergeClauses t151.outputLits t158.outputLits [2064,2065,2066,2067,2068,2069,2070,2071] = m159 := by
  rfl

def c159 : CNF := c151 ++ c158 ++ m159
theorem eq159 : t159.clauses = c159 := by
  change t151.clauses ++ t158.clauses ++ mergeClauses t151.outputLits t158.outputLits [2064,2065,2066,2067,2068,2069,2070,2071] = c159
  exact concat3_congr eq151 eq158 merge159
def t160 : CounterTree := .node [2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087] t144 t159
def m160 : CNF := [[(2064,false),(2072,true)],[(2065,false),(2073,true)],[(2066,false),(2074,true)],[(2067,false),(2075,true)],[(2068,false),(2076,true)],[(2069,false),(2077,true)],[(2070,false),(2078,true)],[(2071,false),(2079,true)],[(2040,false),(2072,true)],[(2040,false),(2064,false),(2073,true)],[(2040,false),(2065,false),(2074,true)],[(2040,false),(2066,false),(2075,true)],[(2040,false),(2067,false),(2076,true)],[(2040,false),(2068,false),(2077,true)],[(2040,false),(2069,false),(2078,true)],[(2040,false),(2070,false),(2079,true)],[(2040,false),(2071,false),(2080,true)],[(2041,false),(2073,true)],[(2041,false),(2064,false),(2074,true)],[(2041,false),(2065,false),(2075,true)],[(2041,false),(2066,false),(2076,true)],[(2041,false),(2067,false),(2077,true)],[(2041,false),(2068,false),(2078,true)],[(2041,false),(2069,false),(2079,true)],[(2041,false),(2070,false),(2080,true)],[(2041,false),(2071,false),(2081,true)],[(2042,false),(2074,true)],[(2042,false),(2064,false),(2075,true)],[(2042,false),(2065,false),(2076,true)],[(2042,false),(2066,false),(2077,true)],[(2042,false),(2067,false),(2078,true)],[(2042,false),(2068,false),(2079,true)],[(2042,false),(2069,false),(2080,true)],[(2042,false),(2070,false),(2081,true)],[(2042,false),(2071,false),(2082,true)],[(2043,false),(2075,true)],[(2043,false),(2064,false),(2076,true)],[(2043,false),(2065,false),(2077,true)],[(2043,false),(2066,false),(2078,true)],[(2043,false),(2067,false),(2079,true)],[(2043,false),(2068,false),(2080,true)],[(2043,false),(2069,false),(2081,true)],[(2043,false),(2070,false),(2082,true)],[(2043,false),(2071,false),(2083,true)],[(2044,false),(2076,true)],[(2044,false),(2064,false),(2077,true)],[(2044,false),(2065,false),(2078,true)],[(2044,false),(2066,false),(2079,true)],[(2044,false),(2067,false),(2080,true)],[(2044,false),(2068,false),(2081,true)],[(2044,false),(2069,false),(2082,true)],[(2044,false),(2070,false),(2083,true)],[(2044,false),(2071,false),(2084,true)],[(2045,false),(2077,true)],[(2045,false),(2064,false),(2078,true)],[(2045,false),(2065,false),(2079,true)],[(2045,false),(2066,false),(2080,true)],[(2045,false),(2067,false),(2081,true)],[(2045,false),(2068,false),(2082,true)],[(2045,false),(2069,false),(2083,true)],[(2045,false),(2070,false),(2084,true)],[(2045,false),(2071,false),(2085,true)],[(2046,false),(2078,true)],[(2046,false),(2064,false),(2079,true)],[(2046,false),(2065,false),(2080,true)],[(2046,false),(2066,false),(2081,true)],[(2046,false),(2067,false),(2082,true)],[(2046,false),(2068,false),(2083,true)],[(2046,false),(2069,false),(2084,true)],[(2046,false),(2070,false),(2085,true)],[(2046,false),(2071,false),(2086,true)],[(2047,false),(2079,true)],[(2047,false),(2064,false),(2080,true)],[(2047,false),(2065,false),(2081,true)],[(2047,false),(2066,false),(2082,true)],[(2047,false),(2067,false),(2083,true)],[(2047,false),(2068,false),(2084,true)],[(2047,false),(2069,false),(2085,true)],[(2047,false),(2070,false),(2086,true)],[(2047,false),(2071,false),(2087,true)]]
theorem merge160 : mergeClauses t144.outputLits t159.outputLits [2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087] = m160 := by
  rfl

def c160 : CNF := c144 ++ c159 ++ m160
theorem eq160 : t160.clauses = c160 := by
  change t144.clauses ++ t159.clauses ++ mergeClauses t144.outputLits t159.outputLits [2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087] = c160
  exact concat3_congr eq144 eq159 merge160
def t161 : CounterTree := .leaf (247,false)
def c161 : CNF := []
theorem eq161 : t161.clauses = c161 := rfl
def t162 : CounterTree := .leaf (249,false)
def c162 : CNF := []
theorem eq162 : t162.clauses = c162 := rfl
def t163 : CounterTree := .node [2088,2089] t161 t162
def m163 : CNF := [[(249,true),(2088,true)],[(247,true),(2088,true)],[(247,true),(249,true),(2089,true)]]
theorem merge163 : mergeClauses t161.outputLits t162.outputLits [2088,2089] = m163 := by
  rfl

def c163 : CNF := c161 ++ c162 ++ m163
theorem eq163 : t163.clauses = c163 := by
  change t161.clauses ++ t162.clauses ++ mergeClauses t161.outputLits t162.outputLits [2088,2089] = c163
  exact concat3_congr eq161 eq162 merge163
def t164 : CounterTree := .leaf (251,false)
def c164 : CNF := []
theorem eq164 : t164.clauses = c164 := rfl
def t165 : CounterTree := .leaf (257,false)
def c165 : CNF := []
theorem eq165 : t165.clauses = c165 := rfl
def t166 : CounterTree := .node [2090,2091] t164 t165
def m166 : CNF := [[(257,true),(2090,true)],[(251,true),(2090,true)],[(251,true),(257,true),(2091,true)]]
theorem merge166 : mergeClauses t164.outputLits t165.outputLits [2090,2091] = m166 := by
  rfl

def c166 : CNF := c164 ++ c165 ++ m166
theorem eq166 : t166.clauses = c166 := by
  change t164.clauses ++ t165.clauses ++ mergeClauses t164.outputLits t165.outputLits [2090,2091] = c166
  exact concat3_congr eq164 eq165 merge166
def t167 : CounterTree := .node [2092,2093,2094,2095] t163 t166
def m167 : CNF := [[(2090,false),(2092,true)],[(2091,false),(2093,true)],[(2088,false),(2092,true)],[(2088,false),(2090,false),(2093,true)],[(2088,false),(2091,false),(2094,true)],[(2089,false),(2093,true)],[(2089,false),(2090,false),(2094,true)],[(2089,false),(2091,false),(2095,true)]]
theorem merge167 : mergeClauses t163.outputLits t166.outputLits [2092,2093,2094,2095] = m167 := by
  rfl

def c167 : CNF := c163 ++ c166 ++ m167
theorem eq167 : t167.clauses = c167 := by
  change t163.clauses ++ t166.clauses ++ mergeClauses t163.outputLits t166.outputLits [2092,2093,2094,2095] = c167
  exact concat3_congr eq163 eq166 merge167
def t168 : CounterTree := .leaf (259,false)
def c168 : CNF := []
theorem eq168 : t168.clauses = c168 := rfl
def t169 : CounterTree := .leaf (261,false)
def c169 : CNF := []
theorem eq169 : t169.clauses = c169 := rfl
def t170 : CounterTree := .node [2096,2097] t168 t169
def m170 : CNF := [[(261,true),(2096,true)],[(259,true),(2096,true)],[(259,true),(261,true),(2097,true)]]
theorem merge170 : mergeClauses t168.outputLits t169.outputLits [2096,2097] = m170 := by
  rfl

def c170 : CNF := c168 ++ c169 ++ m170
theorem eq170 : t170.clauses = c170 := by
  change t168.clauses ++ t169.clauses ++ mergeClauses t168.outputLits t169.outputLits [2096,2097] = c170
  exact concat3_congr eq168 eq169 merge170

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
