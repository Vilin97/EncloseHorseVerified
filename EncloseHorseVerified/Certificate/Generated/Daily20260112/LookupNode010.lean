import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode009

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m151 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2050,false),(2052,true)]) (.leaf [(2051,false),(2053,true)])) (.node 1 (.leaf [(2048,false),(2052,true)]) (.leaf [(2048,false),(2050,false),(2053,true)]))) (.node 2 (.node 1 (.leaf [(2048,false),(2051,false),(2054,true)]) (.leaf [(2049,false),(2053,true)])) (.node 1 (.leaf [(2049,false),(2050,false),(2054,true)]) (.leaf [(2049,false),(2051,false),(2055,true)]))))
theorem merge151 : m151.clauses = ScoreNodes.m151 := by rfl

def t151 : Tree := .node 6 (.node 3 t147 t150) m151
theorem eq151 : t151.clauses = ScoreNodes.c151 :=
  cat_eq _ (cat_eq _ eq147 eq150) merge151

def t152 : Tree := .nil
theorem eq152 : t152.clauses = ScoreNodes.c152 := by rfl

def t153 : Tree := .nil
theorem eq153 : t153.clauses = ScoreNodes.c153 := by rfl

def m154 : Tree := (.node 1 (.leaf [(233,true),(2056,true)]) (.node 1 (.leaf [(231,true),(2056,true)]) (.leaf [(231,true),(233,true),(2057,true)])))
theorem merge154 : m154.clauses = ScoreNodes.m154 := by rfl

def t154 : Tree := .node 0 (.node 0 t152 t153) m154
theorem eq154 : t154.clauses = ScoreNodes.c154 :=
  cat_eq _ (cat_eq _ eq152 eq153) merge154

def t155 : Tree := .nil
theorem eq155 : t155.clauses = ScoreNodes.c155 := by rfl

def t156 : Tree := .nil
theorem eq156 : t156.clauses = ScoreNodes.c156 := by rfl

def m157 : Tree := (.node 1 (.leaf [(245,true),(2058,true)]) (.node 1 (.leaf [(243,true),(2058,true)]) (.leaf [(243,true),(245,true),(2059,true)])))
theorem merge157 : m157.clauses = ScoreNodes.m157 := by rfl

def t157 : Tree := .node 0 (.node 0 t155 t156) m157
theorem eq157 : t157.clauses = ScoreNodes.c157 :=
  cat_eq _ (cat_eq _ eq155 eq156) merge157

def m158 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2058,false),(2060,true)]) (.leaf [(2059,false),(2061,true)])) (.node 1 (.leaf [(2056,false),(2060,true)]) (.leaf [(2056,false),(2058,false),(2061,true)]))) (.node 2 (.node 1 (.leaf [(2056,false),(2059,false),(2062,true)]) (.leaf [(2057,false),(2061,true)])) (.node 1 (.leaf [(2057,false),(2058,false),(2062,true)]) (.leaf [(2057,false),(2059,false),(2063,true)]))))
theorem merge158 : m158.clauses = ScoreNodes.m158 := by rfl

def t158 : Tree := .node 6 (.node 3 t154 t157) m158
theorem eq158 : t158.clauses = ScoreNodes.c158 :=
  cat_eq _ (cat_eq _ eq154 eq157) merge158

def m159 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(2060,false),(2064,true)]) (.node 1 (.leaf [(2061,false),(2065,true)]) (.leaf [(2062,false),(2066,true)]))) (.node 1 (.leaf [(2063,false),(2067,true)]) (.node 1 (.leaf [(2052,false),(2064,true)]) (.leaf [(2052,false),(2060,false),(2065,true)])))) (.node 3 (.node 1 (.leaf [(2052,false),(2061,false),(2066,true)]) (.node 1 (.leaf [(2052,false),(2062,false),(2067,true)]) (.leaf [(2052,false),(2063,false),(2068,true)]))) (.node 1 (.leaf [(2053,false),(2065,true)]) (.node 1 (.leaf [(2053,false),(2060,false),(2066,true)]) (.leaf [(2053,false),(2061,false),(2067,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(2053,false),(2062,false),(2068,true)]) (.node 1 (.leaf [(2053,false),(2063,false),(2069,true)]) (.leaf [(2054,false),(2066,true)]))) (.node 1 (.leaf [(2054,false),(2060,false),(2067,true)]) (.node 1 (.leaf [(2054,false),(2061,false),(2068,true)]) (.leaf [(2054,false),(2062,false),(2069,true)])))) (.node 3 (.node 1 (.leaf [(2054,false),(2063,false),(2070,true)]) (.node 1 (.leaf [(2055,false),(2067,true)]) (.leaf [(2055,false),(2060,false),(2068,true)]))) (.node 1 (.leaf [(2055,false),(2061,false),(2069,true)]) (.node 1 (.leaf [(2055,false),(2062,false),(2070,true)]) (.leaf [(2055,false),(2063,false),(2071,true)]))))))
theorem merge159 : m159.clauses = ScoreNodes.m159 := by rfl

def t159 : Tree := .node 28 (.node 14 t151 t158) m159
theorem eq159 : t159.clauses = ScoreNodes.c159 :=
  cat_eq _ (cat_eq _ eq151 eq158) merge159

def m160 : Tree := (.node 40 (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2064,false),(2072,true)]) (.leaf [(2065,false),(2073,true)])) (.node 1 (.leaf [(2066,false),(2074,true)]) (.node 1 (.leaf [(2067,false),(2075,true)]) (.leaf [(2068,false),(2076,true)])))) (.node 2 (.node 1 (.leaf [(2069,false),(2077,true)]) (.leaf [(2070,false),(2078,true)])) (.node 1 (.leaf [(2071,false),(2079,true)]) (.node 1 (.leaf [(2040,false),(2072,true)]) (.leaf [(2040,false),(2064,false),(2073,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2040,false),(2065,false),(2074,true)]) (.leaf [(2040,false),(2066,false),(2075,true)])) (.node 1 (.leaf [(2040,false),(2067,false),(2076,true)]) (.node 1 (.leaf [(2040,false),(2068,false),(2077,true)]) (.leaf [(2040,false),(2069,false),(2078,true)])))) (.node 2 (.node 1 (.leaf [(2040,false),(2070,false),(2079,true)]) (.leaf [(2040,false),(2071,false),(2080,true)])) (.node 1 (.leaf [(2041,false),(2073,true)]) (.node 1 (.leaf [(2041,false),(2064,false),(2074,true)]) (.leaf [(2041,false),(2065,false),(2075,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2041,false),(2066,false),(2076,true)]) (.leaf [(2041,false),(2067,false),(2077,true)])) (.node 1 (.leaf [(2041,false),(2068,false),(2078,true)]) (.node 1 (.leaf [(2041,false),(2069,false),(2079,true)]) (.leaf [(2041,false),(2070,false),(2080,true)])))) (.node 2 (.node 1 (.leaf [(2041,false),(2071,false),(2081,true)]) (.leaf [(2042,false),(2074,true)])) (.node 1 (.leaf [(2042,false),(2064,false),(2075,true)]) (.node 1 (.leaf [(2042,false),(2065,false),(2076,true)]) (.leaf [(2042,false),(2066,false),(2077,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2042,false),(2067,false),(2078,true)]) (.leaf [(2042,false),(2068,false),(2079,true)])) (.node 1 (.leaf [(2042,false),(2069,false),(2080,true)]) (.node 1 (.leaf [(2042,false),(2070,false),(2081,true)]) (.leaf [(2042,false),(2071,false),(2082,true)])))) (.node 2 (.node 1 (.leaf [(2043,false),(2075,true)]) (.leaf [(2043,false),(2064,false),(2076,true)])) (.node 1 (.leaf [(2043,false),(2065,false),(2077,true)]) (.node 1 (.leaf [(2043,false),(2066,false),(2078,true)]) (.leaf [(2043,false),(2067,false),(2079,true)]))))))) (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2043,false),(2068,false),(2080,true)]) (.leaf [(2043,false),(2069,false),(2081,true)])) (.node 1 (.leaf [(2043,false),(2070,false),(2082,true)]) (.node 1 (.leaf [(2043,false),(2071,false),(2083,true)]) (.leaf [(2044,false),(2076,true)])))) (.node 2 (.node 1 (.leaf [(2044,false),(2064,false),(2077,true)]) (.leaf [(2044,false),(2065,false),(2078,true)])) (.node 1 (.leaf [(2044,false),(2066,false),(2079,true)]) (.node 1 (.leaf [(2044,false),(2067,false),(2080,true)]) (.leaf [(2044,false),(2068,false),(2081,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2044,false),(2069,false),(2082,true)]) (.leaf [(2044,false),(2070,false),(2083,true)])) (.node 1 (.leaf [(2044,false),(2071,false),(2084,true)]) (.node 1 (.leaf [(2045,false),(2077,true)]) (.leaf [(2045,false),(2064,false),(2078,true)])))) (.node 2 (.node 1 (.leaf [(2045,false),(2065,false),(2079,true)]) (.leaf [(2045,false),(2066,false),(2080,true)])) (.node 1 (.leaf [(2045,false),(2067,false),(2081,true)]) (.node 1 (.leaf [(2045,false),(2068,false),(2082,true)]) (.leaf [(2045,false),(2069,false),(2083,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(2045,false),(2070,false),(2084,true)]) (.leaf [(2045,false),(2071,false),(2085,true)])) (.node 1 (.leaf [(2046,false),(2078,true)]) (.node 1 (.leaf [(2046,false),(2064,false),(2079,true)]) (.leaf [(2046,false),(2065,false),(2080,true)])))) (.node 2 (.node 1 (.leaf [(2046,false),(2066,false),(2081,true)]) (.leaf [(2046,false),(2067,false),(2082,true)])) (.node 1 (.leaf [(2046,false),(2068,false),(2083,true)]) (.node 1 (.leaf [(2046,false),(2069,false),(2084,true)]) (.leaf [(2046,false),(2070,false),(2085,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(2046,false),(2071,false),(2086,true)]) (.leaf [(2047,false),(2079,true)])) (.node 1 (.leaf [(2047,false),(2064,false),(2080,true)]) (.node 1 (.leaf [(2047,false),(2065,false),(2081,true)]) (.leaf [(2047,false),(2066,false),(2082,true)])))) (.node 2 (.node 1 (.leaf [(2047,false),(2067,false),(2083,true)]) (.leaf [(2047,false),(2068,false),(2084,true)])) (.node 1 (.leaf [(2047,false),(2069,false),(2085,true)]) (.node 1 (.leaf [(2047,false),(2070,false),(2086,true)]) (.leaf [(2047,false),(2071,false),(2087,true)]))))))))
theorem merge160 : m160.clauses = ScoreNodes.m160 := by rfl

def t160 : Tree := .node 104 (.node 52 t144 t159) m160
theorem eq160 : t160.clauses = ScoreNodes.c160 :=
  cat_eq _ (cat_eq _ eq144 eq159) merge160

def t161 : Tree := .nil
theorem eq161 : t161.clauses = ScoreNodes.c161 := by rfl

def t162 : Tree := .nil
theorem eq162 : t162.clauses = ScoreNodes.c162 := by rfl

def m163 : Tree := (.node 1 (.leaf [(249,true),(2088,true)]) (.node 1 (.leaf [(247,true),(2088,true)]) (.leaf [(247,true),(249,true),(2089,true)])))
theorem merge163 : m163.clauses = ScoreNodes.m163 := by rfl

def t163 : Tree := .node 0 (.node 0 t161 t162) m163
theorem eq163 : t163.clauses = ScoreNodes.c163 :=
  cat_eq _ (cat_eq _ eq161 eq162) merge163

def t164 : Tree := .nil
theorem eq164 : t164.clauses = ScoreNodes.c164 := by rfl

def t165 : Tree := .nil
theorem eq165 : t165.clauses = ScoreNodes.c165 := by rfl

def m166 : Tree := (.node 1 (.leaf [(257,true),(2090,true)]) (.node 1 (.leaf [(251,true),(2090,true)]) (.leaf [(251,true),(257,true),(2091,true)])))
theorem merge166 : m166.clauses = ScoreNodes.m166 := by rfl

def t166 : Tree := .node 0 (.node 0 t164 t165) m166
theorem eq166 : t166.clauses = ScoreNodes.c166 :=
  cat_eq _ (cat_eq _ eq164 eq165) merge166

def m167 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(2090,false),(2092,true)]) (.leaf [(2091,false),(2093,true)])) (.node 1 (.leaf [(2088,false),(2092,true)]) (.leaf [(2088,false),(2090,false),(2093,true)]))) (.node 2 (.node 1 (.leaf [(2088,false),(2091,false),(2094,true)]) (.leaf [(2089,false),(2093,true)])) (.node 1 (.leaf [(2089,false),(2090,false),(2094,true)]) (.leaf [(2089,false),(2091,false),(2095,true)]))))
theorem merge167 : m167.clauses = ScoreNodes.m167 := by rfl

def t167 : Tree := .node 6 (.node 3 t163 t166) m167
theorem eq167 : t167.clauses = ScoreNodes.c167 :=
  cat_eq _ (cat_eq _ eq163 eq166) merge167

def t168 : Tree := .nil
theorem eq168 : t168.clauses = ScoreNodes.c168 := by rfl

def t169 : Tree := .nil
theorem eq169 : t169.clauses = ScoreNodes.c169 := by rfl

def m170 : Tree := (.node 1 (.leaf [(261,true),(2096,true)]) (.node 1 (.leaf [(259,true),(2096,true)]) (.leaf [(259,true),(261,true),(2097,true)])))
theorem merge170 : m170.clauses = ScoreNodes.m170 := by rfl

def t170 : Tree := .node 0 (.node 0 t168 t169) m170
theorem eq170 : t170.clauses = ScoreNodes.c170 :=
  cat_eq _ (cat_eq _ eq168 eq169) merge170


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
