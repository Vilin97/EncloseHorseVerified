import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode007

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t111 : CounterTree := .node [1941,1942,1943,1944] t107 t110
def m111 : CNF := [[(1939,false),(1941,true)],[(1940,false),(1942,true)],[(1937,false),(1941,true)],[(1937,false),(1939,false),(1942,true)],[(1937,false),(1940,false),(1943,true)],[(1938,false),(1942,true)],[(1938,false),(1939,false),(1943,true)],[(1938,false),(1940,false),(1944,true)]]
theorem merge111 : mergeClauses t107.outputLits t110.outputLits [1941,1942,1943,1944] = m111 := by
  rfl

def c111 : CNF := c107 ++ c110 ++ m111
theorem eq111 : t111.clauses = c111 := by
  change t107.clauses ++ t110.clauses ++ mergeClauses t107.outputLits t110.outputLits [1941,1942,1943,1944] = c111
  exact concat3_congr eq107 eq110 merge111
def t112 : CounterTree := .node [1945,1946,1947,1948,1949,1950,1951,1952] t104 t111
def m112 : CNF := [[(1941,false),(1945,true)],[(1942,false),(1946,true)],[(1943,false),(1947,true)],[(1944,false),(1948,true)],[(1933,false),(1945,true)],[(1933,false),(1941,false),(1946,true)],[(1933,false),(1942,false),(1947,true)],[(1933,false),(1943,false),(1948,true)],[(1933,false),(1944,false),(1949,true)],[(1934,false),(1946,true)],[(1934,false),(1941,false),(1947,true)],[(1934,false),(1942,false),(1948,true)],[(1934,false),(1943,false),(1949,true)],[(1934,false),(1944,false),(1950,true)],[(1935,false),(1947,true)],[(1935,false),(1941,false),(1948,true)],[(1935,false),(1942,false),(1949,true)],[(1935,false),(1943,false),(1950,true)],[(1935,false),(1944,false),(1951,true)],[(1936,false),(1948,true)],[(1936,false),(1941,false),(1949,true)],[(1936,false),(1942,false),(1950,true)],[(1936,false),(1943,false),(1951,true)],[(1936,false),(1944,false),(1952,true)]]
theorem merge112 : mergeClauses t104.outputLits t111.outputLits [1945,1946,1947,1948,1949,1950,1951,1952] = m112 := by
  rfl

def c112 : CNF := c104 ++ c111 ++ m112
theorem eq112 : t112.clauses = c112 := by
  change t104.clauses ++ t111.clauses ++ mergeClauses t104.outputLits t111.outputLits [1945,1946,1947,1948,1949,1950,1951,1952] = c112
  exact concat3_congr eq104 eq111 merge112
def t113 : CounterTree := .leaf (177,false)
def c113 : CNF := []
theorem eq113 : t113.clauses = c113 := rfl
def t114 : CounterTree := .leaf (179,false)
def c114 : CNF := []
theorem eq114 : t114.clauses = c114 := rfl
def t115 : CounterTree := .node [1953,1954] t113 t114
def m115 : CNF := [[(179,true),(1953,true)],[(177,true),(1953,true)],[(177,true),(179,true),(1954,true)]]
theorem merge115 : mergeClauses t113.outputLits t114.outputLits [1953,1954] = m115 := by
  rfl

def c115 : CNF := c113 ++ c114 ++ m115
theorem eq115 : t115.clauses = c115 := by
  change t113.clauses ++ t114.clauses ++ mergeClauses t113.outputLits t114.outputLits [1953,1954] = c115
  exact concat3_congr eq113 eq114 merge115
def t116 : CounterTree := .leaf (181,false)
def c116 : CNF := []
theorem eq116 : t116.clauses = c116 := rfl
def t117 : CounterTree := .leaf (183,false)
def c117 : CNF := []
theorem eq117 : t117.clauses = c117 := rfl
def t118 : CounterTree := .node [1955,1956] t116 t117
def m118 : CNF := [[(183,true),(1955,true)],[(181,true),(1955,true)],[(181,true),(183,true),(1956,true)]]
theorem merge118 : mergeClauses t116.outputLits t117.outputLits [1955,1956] = m118 := by
  rfl

def c118 : CNF := c116 ++ c117 ++ m118
theorem eq118 : t118.clauses = c118 := by
  change t116.clauses ++ t117.clauses ++ mergeClauses t116.outputLits t117.outputLits [1955,1956] = c118
  exact concat3_congr eq116 eq117 merge118
def t119 : CounterTree := .node [1957,1958,1959,1960] t115 t118
def m119 : CNF := [[(1955,false),(1957,true)],[(1956,false),(1958,true)],[(1953,false),(1957,true)],[(1953,false),(1955,false),(1958,true)],[(1953,false),(1956,false),(1959,true)],[(1954,false),(1958,true)],[(1954,false),(1955,false),(1959,true)],[(1954,false),(1956,false),(1960,true)]]
theorem merge119 : mergeClauses t115.outputLits t118.outputLits [1957,1958,1959,1960] = m119 := by
  rfl

def c119 : CNF := c115 ++ c118 ++ m119
theorem eq119 : t119.clauses = c119 := by
  change t115.clauses ++ t118.clauses ++ mergeClauses t115.outputLits t118.outputLits [1957,1958,1959,1960] = c119
  exact concat3_congr eq115 eq118 merge119
def t120 : CounterTree := .leaf (185,false)
def c120 : CNF := []
theorem eq120 : t120.clauses = c120 := rfl
def t121 : CounterTree := .leaf (193,false)
def c121 : CNF := []
theorem eq121 : t121.clauses = c121 := rfl
def t122 : CounterTree := .node [1961,1962] t120 t121
def m122 : CNF := [[(193,true),(1961,true)],[(185,true),(1961,true)],[(185,true),(193,true),(1962,true)]]
theorem merge122 : mergeClauses t120.outputLits t121.outputLits [1961,1962] = m122 := by
  rfl

def c122 : CNF := c120 ++ c121 ++ m122
theorem eq122 : t122.clauses = c122 := by
  change t120.clauses ++ t121.clauses ++ mergeClauses t120.outputLits t121.outputLits [1961,1962] = c122
  exact concat3_congr eq120 eq121 merge122
def t123 : CounterTree := .leaf (195,false)
def c123 : CNF := []
theorem eq123 : t123.clauses = c123 := rfl
def t124 : CounterTree := .leaf (197,false)
def c124 : CNF := []
theorem eq124 : t124.clauses = c124 := rfl
def t125 : CounterTree := .node [1963,1964] t123 t124
def m125 : CNF := [[(197,true),(1963,true)],[(195,true),(1963,true)],[(195,true),(197,true),(1964,true)]]
theorem merge125 : mergeClauses t123.outputLits t124.outputLits [1963,1964] = m125 := by
  rfl

def c125 : CNF := c123 ++ c124 ++ m125
theorem eq125 : t125.clauses = c125 := by
  change t123.clauses ++ t124.clauses ++ mergeClauses t123.outputLits t124.outputLits [1963,1964] = c125
  exact concat3_congr eq123 eq124 merge125
def t126 : CounterTree := .node [1965,1966,1967,1968] t122 t125
def m126 : CNF := [[(1963,false),(1965,true)],[(1964,false),(1966,true)],[(1961,false),(1965,true)],[(1961,false),(1963,false),(1966,true)],[(1961,false),(1964,false),(1967,true)],[(1962,false),(1966,true)],[(1962,false),(1963,false),(1967,true)],[(1962,false),(1964,false),(1968,true)]]
theorem merge126 : mergeClauses t122.outputLits t125.outputLits [1965,1966,1967,1968] = m126 := by
  rfl

def c126 : CNF := c122 ++ c125 ++ m126
theorem eq126 : t126.clauses = c126 := by
  change t122.clauses ++ t125.clauses ++ mergeClauses t122.outputLits t125.outputLits [1965,1966,1967,1968] = c126
  exact concat3_congr eq122 eq125 merge126
def t127 : CounterTree := .node [1969,1970,1971,1972,1973,1974,1975,1976] t119 t126
def m127 : CNF := [[(1965,false),(1969,true)],[(1966,false),(1970,true)],[(1967,false),(1971,true)],[(1968,false),(1972,true)],[(1957,false),(1969,true)],[(1957,false),(1965,false),(1970,true)],[(1957,false),(1966,false),(1971,true)],[(1957,false),(1967,false),(1972,true)],[(1957,false),(1968,false),(1973,true)],[(1958,false),(1970,true)],[(1958,false),(1965,false),(1971,true)],[(1958,false),(1966,false),(1972,true)],[(1958,false),(1967,false),(1973,true)],[(1958,false),(1968,false),(1974,true)],[(1959,false),(1971,true)],[(1959,false),(1965,false),(1972,true)],[(1959,false),(1966,false),(1973,true)],[(1959,false),(1967,false),(1974,true)],[(1959,false),(1968,false),(1975,true)],[(1960,false),(1972,true)],[(1960,false),(1965,false),(1973,true)],[(1960,false),(1966,false),(1974,true)],[(1960,false),(1967,false),(1975,true)],[(1960,false),(1968,false),(1976,true)]]
theorem merge127 : mergeClauses t119.outputLits t126.outputLits [1969,1970,1971,1972,1973,1974,1975,1976] = m127 := by
  rfl

def c127 : CNF := c119 ++ c126 ++ m127
theorem eq127 : t127.clauses = c127 := by
  change t119.clauses ++ t126.clauses ++ mergeClauses t119.outputLits t126.outputLits [1969,1970,1971,1972,1973,1974,1975,1976] = c127
  exact concat3_congr eq119 eq126 merge127
def t128 : CounterTree := .node [1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992] t112 t127
def m128 : CNF := [[(1969,false),(1977,true)],[(1970,false),(1978,true)],[(1971,false),(1979,true)],[(1972,false),(1980,true)],[(1973,false),(1981,true)],[(1974,false),(1982,true)],[(1975,false),(1983,true)],[(1976,false),(1984,true)],[(1945,false),(1977,true)],[(1945,false),(1969,false),(1978,true)],[(1945,false),(1970,false),(1979,true)],[(1945,false),(1971,false),(1980,true)],[(1945,false),(1972,false),(1981,true)],[(1945,false),(1973,false),(1982,true)],[(1945,false),(1974,false),(1983,true)],[(1945,false),(1975,false),(1984,true)],[(1945,false),(1976,false),(1985,true)],[(1946,false),(1978,true)],[(1946,false),(1969,false),(1979,true)],[(1946,false),(1970,false),(1980,true)],[(1946,false),(1971,false),(1981,true)],[(1946,false),(1972,false),(1982,true)],[(1946,false),(1973,false),(1983,true)],[(1946,false),(1974,false),(1984,true)],[(1946,false),(1975,false),(1985,true)],[(1946,false),(1976,false),(1986,true)],[(1947,false),(1979,true)],[(1947,false),(1969,false),(1980,true)],[(1947,false),(1970,false),(1981,true)],[(1947,false),(1971,false),(1982,true)],[(1947,false),(1972,false),(1983,true)],[(1947,false),(1973,false),(1984,true)],[(1947,false),(1974,false),(1985,true)],[(1947,false),(1975,false),(1986,true)],[(1947,false),(1976,false),(1987,true)],[(1948,false),(1980,true)],[(1948,false),(1969,false),(1981,true)],[(1948,false),(1970,false),(1982,true)],[(1948,false),(1971,false),(1983,true)],[(1948,false),(1972,false),(1984,true)],[(1948,false),(1973,false),(1985,true)],[(1948,false),(1974,false),(1986,true)],[(1948,false),(1975,false),(1987,true)],[(1948,false),(1976,false),(1988,true)],[(1949,false),(1981,true)],[(1949,false),(1969,false),(1982,true)],[(1949,false),(1970,false),(1983,true)],[(1949,false),(1971,false),(1984,true)],[(1949,false),(1972,false),(1985,true)],[(1949,false),(1973,false),(1986,true)],[(1949,false),(1974,false),(1987,true)],[(1949,false),(1975,false),(1988,true)],[(1949,false),(1976,false),(1989,true)],[(1950,false),(1982,true)],[(1950,false),(1969,false),(1983,true)],[(1950,false),(1970,false),(1984,true)],[(1950,false),(1971,false),(1985,true)],[(1950,false),(1972,false),(1986,true)],[(1950,false),(1973,false),(1987,true)],[(1950,false),(1974,false),(1988,true)],[(1950,false),(1975,false),(1989,true)],[(1950,false),(1976,false),(1990,true)],[(1951,false),(1983,true)],[(1951,false),(1969,false),(1984,true)],[(1951,false),(1970,false),(1985,true)],[(1951,false),(1971,false),(1986,true)],[(1951,false),(1972,false),(1987,true)],[(1951,false),(1973,false),(1988,true)],[(1951,false),(1974,false),(1989,true)],[(1951,false),(1975,false),(1990,true)],[(1951,false),(1976,false),(1991,true)],[(1952,false),(1984,true)],[(1952,false),(1969,false),(1985,true)],[(1952,false),(1970,false),(1986,true)],[(1952,false),(1971,false),(1987,true)],[(1952,false),(1972,false),(1988,true)],[(1952,false),(1973,false),(1989,true)],[(1952,false),(1974,false),(1990,true)],[(1952,false),(1975,false),(1991,true)],[(1952,false),(1976,false),(1992,true)]]
theorem merge128 : mergeClauses t112.outputLits t127.outputLits [1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992] = m128 := by
  rfl

def c128 : CNF := c112 ++ c127 ++ m128
theorem eq128 : t128.clauses = c128 := by
  change t112.clauses ++ t127.clauses ++ mergeClauses t112.outputLits t127.outputLits [1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992] = c128
  exact concat3_congr eq112 eq127 merge128

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
