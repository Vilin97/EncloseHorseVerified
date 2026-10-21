import EncloseHorseVerified.Certificate.Generated.Daily20260310.ScoreMerge182Row005

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes

def t182 : CounterTree := .node [1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000] t90 t181
def m182 : CNF := rowCNF182_0 ++ rowCNF182_1 ++ rowCNF182_2 ++ rowCNF182_3 ++ rowCNF182_4 ++ rowCNF182_5
theorem merge182 : mergeClauses t90.outputLits t181.outputLits [1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000] = m182 := by
  rw [mergeClauses_eq_mergeRows]
  have hr : thresholds t90.outputLits = rows182_0 ++ rows182_1 ++ rows182_2 ++ rows182_3 ++ rows182_4 ++ rows182_5 := by rfl
  rw [hr]
  simp only [mergeRows_append, rowEq182_0, rowEq182_1, rowEq182_2, rowEq182_3, rowEq182_4, rowEq182_5, m182]

def c182 : CNF := c90 ++ c181 ++ m182
theorem eq182 : t182.clauses = c182 := by
  change t90.clauses ++ t181.clauses ++ mergeClauses t90.outputLits t181.outputLits [1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928,1929,1930,1931,1932,1933,1934,1935,1936,1937,1938,1939,1940,1941,1942,1943,1944,1945,1946,1947,1948,1949,1950,1951,1952,1953,1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000] = c182
  exact concat3_congr eq90 eq181 merge182

def t183 : CounterTree := .leaf (287,false)
def c183 : CNF := []
theorem eq183 : t183.clauses = c183 := rfl

def t184 : CounterTree := .leaf (289,false)
def c184 : CNF := []
theorem eq184 : t184.clauses = c184 := rfl

def t185 : CounterTree := .node [2001,2002] t183 t184
def m185 : CNF := [[(289,true),(2001,true)],[(287,true),(2001,true)],[(287,true),(289,true),(2002,true)]]
theorem merge185 : mergeClauses t183.outputLits t184.outputLits [2001,2002] = m185 := by rfl

def c185 : CNF := c183 ++ c184 ++ m185
theorem eq185 : t185.clauses = c185 := by
  change t183.clauses ++ t184.clauses ++ mergeClauses t183.outputLits t184.outputLits [2001,2002] = c185
  exact concat3_congr eq183 eq184 merge185

def t186 : CounterTree := .leaf (291,false)
def c186 : CNF := []
theorem eq186 : t186.clauses = c186 := rfl

def t187 : CounterTree := .leaf (293,false)
def c187 : CNF := []
theorem eq187 : t187.clauses = c187 := rfl

def t188 : CounterTree := .leaf (295,false)
def c188 : CNF := []
theorem eq188 : t188.clauses = c188 := rfl

def t189 : CounterTree := .node [2003,2004] t187 t188
def m189 : CNF := [[(295,true),(2003,true)],[(293,true),(2003,true)],[(293,true),(295,true),(2004,true)]]
theorem merge189 : mergeClauses t187.outputLits t188.outputLits [2003,2004] = m189 := by rfl

def c189 : CNF := c187 ++ c188 ++ m189
theorem eq189 : t189.clauses = c189 := by
  change t187.clauses ++ t188.clauses ++ mergeClauses t187.outputLits t188.outputLits [2003,2004] = c189
  exact concat3_congr eq187 eq188 merge189

def t190 : CounterTree := .node [2005,2006,2007] t186 t189
def m190 : CNF := [[(2003,false),(2005,true)],[(2004,false),(2006,true)],[(291,true),(2005,true)],[(291,true),(2003,false),(2006,true)],[(291,true),(2004,false),(2007,true)]]
theorem merge190 : mergeClauses t186.outputLits t189.outputLits [2005,2006,2007] = m190 := by rfl

def c190 : CNF := c186 ++ c189 ++ m190
theorem eq190 : t190.clauses = c190 := by
  change t186.clauses ++ t189.clauses ++ mergeClauses t186.outputLits t189.outputLits [2005,2006,2007] = c190
  exact concat3_congr eq186 eq189 merge190

def t191 : CounterTree := .node [2008,2009,2010,2011,2012] t185 t190
def m191 : CNF := [[(2005,false),(2008,true)],[(2006,false),(2009,true)],[(2007,false),(2010,true)],[(2001,false),(2008,true)],[(2001,false),(2005,false),(2009,true)],[(2001,false),(2006,false),(2010,true)],[(2001,false),(2007,false),(2011,true)],[(2002,false),(2009,true)],[(2002,false),(2005,false),(2010,true)],[(2002,false),(2006,false),(2011,true)],[(2002,false),(2007,false),(2012,true)]]
theorem merge191 : mergeClauses t185.outputLits t190.outputLits [2008,2009,2010,2011,2012] = m191 := by rfl

def c191 : CNF := c185 ++ c190 ++ m191
theorem eq191 : t191.clauses = c191 := by
  change t185.clauses ++ t190.clauses ++ mergeClauses t185.outputLits t190.outputLits [2008,2009,2010,2011,2012] = c191
  exact concat3_congr eq185 eq190 merge191

def t192 : CounterTree := .leaf (297,false)
def c192 : CNF := []
theorem eq192 : t192.clauses = c192 := rfl

def t193 : CounterTree := .leaf (299,false)
def c193 : CNF := []
theorem eq193 : t193.clauses = c193 := rfl

def t194 : CounterTree := .leaf (301,false)
def c194 : CNF := []
theorem eq194 : t194.clauses = c194 := rfl

def t195 : CounterTree := .node [2013,2014] t193 t194
def m195 : CNF := [[(301,true),(2013,true)],[(299,true),(2013,true)],[(299,true),(301,true),(2014,true)]]
theorem merge195 : mergeClauses t193.outputLits t194.outputLits [2013,2014] = m195 := by rfl

def c195 : CNF := c193 ++ c194 ++ m195
theorem eq195 : t195.clauses = c195 := by
  change t193.clauses ++ t194.clauses ++ mergeClauses t193.outputLits t194.outputLits [2013,2014] = c195
  exact concat3_congr eq193 eq194 merge195

def t196 : CounterTree := .node [2015,2016,2017] t192 t195
def m196 : CNF := [[(2013,false),(2015,true)],[(2014,false),(2016,true)],[(297,true),(2015,true)],[(297,true),(2013,false),(2016,true)],[(297,true),(2014,false),(2017,true)]]
theorem merge196 : mergeClauses t192.outputLits t195.outputLits [2015,2016,2017] = m196 := by rfl

def c196 : CNF := c192 ++ c195 ++ m196
theorem eq196 : t196.clauses = c196 := by
  change t192.clauses ++ t195.clauses ++ mergeClauses t192.outputLits t195.outputLits [2015,2016,2017] = c196
  exact concat3_congr eq192 eq195 merge196

def t197 : CounterTree := .leaf (303,false)
def c197 : CNF := []
theorem eq197 : t197.clauses = c197 := rfl

def t198 : CounterTree := .leaf (307,false)
def c198 : CNF := []
theorem eq198 : t198.clauses = c198 := rfl

def t199 : CounterTree := .leaf (309,false)
def c199 : CNF := []
theorem eq199 : t199.clauses = c199 := rfl

def t200 : CounterTree := .node [2018,2019] t198 t199
def m200 : CNF := [[(309,true),(2018,true)],[(307,true),(2018,true)],[(307,true),(309,true),(2019,true)]]
theorem merge200 : mergeClauses t198.outputLits t199.outputLits [2018,2019] = m200 := by rfl

def c200 : CNF := c198 ++ c199 ++ m200
theorem eq200 : t200.clauses = c200 := by
  change t198.clauses ++ t199.clauses ++ mergeClauses t198.outputLits t199.outputLits [2018,2019] = c200
  exact concat3_congr eq198 eq199 merge200

def t201 : CounterTree := .node [2020,2021,2022] t197 t200
def m201 : CNF := [[(2018,false),(2020,true)],[(2019,false),(2021,true)],[(303,true),(2020,true)],[(303,true),(2018,false),(2021,true)],[(303,true),(2019,false),(2022,true)]]
theorem merge201 : mergeClauses t197.outputLits t200.outputLits [2020,2021,2022] = m201 := by rfl

def c201 : CNF := c197 ++ c200 ++ m201
theorem eq201 : t201.clauses = c201 := by
  change t197.clauses ++ t200.clauses ++ mergeClauses t197.outputLits t200.outputLits [2020,2021,2022] = c201
  exact concat3_congr eq197 eq200 merge201

def t202 : CounterTree := .node [2023,2024,2025,2026,2027,2028] t196 t201
def m202 : CNF := [[(2020,false),(2023,true)],[(2021,false),(2024,true)],[(2022,false),(2025,true)],[(2015,false),(2023,true)],[(2015,false),(2020,false),(2024,true)],[(2015,false),(2021,false),(2025,true)],[(2015,false),(2022,false),(2026,true)],[(2016,false),(2024,true)],[(2016,false),(2020,false),(2025,true)],[(2016,false),(2021,false),(2026,true)],[(2016,false),(2022,false),(2027,true)],[(2017,false),(2025,true)],[(2017,false),(2020,false),(2026,true)],[(2017,false),(2021,false),(2027,true)],[(2017,false),(2022,false),(2028,true)]]
theorem merge202 : mergeClauses t196.outputLits t201.outputLits [2023,2024,2025,2026,2027,2028] = m202 := by rfl

def c202 : CNF := c196 ++ c201 ++ m202
theorem eq202 : t202.clauses = c202 := by
  change t196.clauses ++ t201.clauses ++ mergeClauses t196.outputLits t201.outputLits [2023,2024,2025,2026,2027,2028] = c202
  exact concat3_congr eq196 eq201 merge202


end EncloseHorse.Certificate.Generated.Daily20260310.ScoreNodes
