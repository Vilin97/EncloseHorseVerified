import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode007

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m111 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1939,false),(1941,true)]) (.leaf [(1940,false),(1942,true)])) (.node 1 (.leaf [(1937,false),(1941,true)]) (.leaf [(1937,false),(1939,false),(1942,true)]))) (.node 2 (.node 1 (.leaf [(1937,false),(1940,false),(1943,true)]) (.leaf [(1938,false),(1942,true)])) (.node 1 (.leaf [(1938,false),(1939,false),(1943,true)]) (.leaf [(1938,false),(1940,false),(1944,true)]))))
theorem merge111 : m111.clauses = ScoreNodes.m111 := by rfl

def t111 : Tree := .node 6 (.node 3 t107 t110) m111
theorem eq111 : t111.clauses = ScoreNodes.c111 :=
  cat_eq _ (cat_eq _ eq107 eq110) merge111

def m112 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1941,false),(1945,true)]) (.node 1 (.leaf [(1942,false),(1946,true)]) (.leaf [(1943,false),(1947,true)]))) (.node 1 (.leaf [(1944,false),(1948,true)]) (.node 1 (.leaf [(1933,false),(1945,true)]) (.leaf [(1933,false),(1941,false),(1946,true)])))) (.node 3 (.node 1 (.leaf [(1933,false),(1942,false),(1947,true)]) (.node 1 (.leaf [(1933,false),(1943,false),(1948,true)]) (.leaf [(1933,false),(1944,false),(1949,true)]))) (.node 1 (.leaf [(1934,false),(1946,true)]) (.node 1 (.leaf [(1934,false),(1941,false),(1947,true)]) (.leaf [(1934,false),(1942,false),(1948,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1934,false),(1943,false),(1949,true)]) (.node 1 (.leaf [(1934,false),(1944,false),(1950,true)]) (.leaf [(1935,false),(1947,true)]))) (.node 1 (.leaf [(1935,false),(1941,false),(1948,true)]) (.node 1 (.leaf [(1935,false),(1942,false),(1949,true)]) (.leaf [(1935,false),(1943,false),(1950,true)])))) (.node 3 (.node 1 (.leaf [(1935,false),(1944,false),(1951,true)]) (.node 1 (.leaf [(1936,false),(1948,true)]) (.leaf [(1936,false),(1941,false),(1949,true)]))) (.node 1 (.leaf [(1936,false),(1942,false),(1950,true)]) (.node 1 (.leaf [(1936,false),(1943,false),(1951,true)]) (.leaf [(1936,false),(1944,false),(1952,true)]))))))
theorem merge112 : m112.clauses = ScoreNodes.m112 := by rfl

def t112 : Tree := .node 28 (.node 14 t104 t111) m112
theorem eq112 : t112.clauses = ScoreNodes.c112 :=
  cat_eq _ (cat_eq _ eq104 eq111) merge112

def t113 : Tree := .nil
theorem eq113 : t113.clauses = ScoreNodes.c113 := by rfl

def t114 : Tree := .nil
theorem eq114 : t114.clauses = ScoreNodes.c114 := by rfl

def m115 : Tree := (.node 1 (.leaf [(179,true),(1953,true)]) (.node 1 (.leaf [(177,true),(1953,true)]) (.leaf [(177,true),(179,true),(1954,true)])))
theorem merge115 : m115.clauses = ScoreNodes.m115 := by rfl

def t115 : Tree := .node 0 (.node 0 t113 t114) m115
theorem eq115 : t115.clauses = ScoreNodes.c115 :=
  cat_eq _ (cat_eq _ eq113 eq114) merge115

def t116 : Tree := .nil
theorem eq116 : t116.clauses = ScoreNodes.c116 := by rfl

def t117 : Tree := .nil
theorem eq117 : t117.clauses = ScoreNodes.c117 := by rfl

def m118 : Tree := (.node 1 (.leaf [(183,true),(1955,true)]) (.node 1 (.leaf [(181,true),(1955,true)]) (.leaf [(181,true),(183,true),(1956,true)])))
theorem merge118 : m118.clauses = ScoreNodes.m118 := by rfl

def t118 : Tree := .node 0 (.node 0 t116 t117) m118
theorem eq118 : t118.clauses = ScoreNodes.c118 :=
  cat_eq _ (cat_eq _ eq116 eq117) merge118

def m119 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1955,false),(1957,true)]) (.leaf [(1956,false),(1958,true)])) (.node 1 (.leaf [(1953,false),(1957,true)]) (.leaf [(1953,false),(1955,false),(1958,true)]))) (.node 2 (.node 1 (.leaf [(1953,false),(1956,false),(1959,true)]) (.leaf [(1954,false),(1958,true)])) (.node 1 (.leaf [(1954,false),(1955,false),(1959,true)]) (.leaf [(1954,false),(1956,false),(1960,true)]))))
theorem merge119 : m119.clauses = ScoreNodes.m119 := by rfl

def t119 : Tree := .node 6 (.node 3 t115 t118) m119
theorem eq119 : t119.clauses = ScoreNodes.c119 :=
  cat_eq _ (cat_eq _ eq115 eq118) merge119

def t120 : Tree := .nil
theorem eq120 : t120.clauses = ScoreNodes.c120 := by rfl

def t121 : Tree := .nil
theorem eq121 : t121.clauses = ScoreNodes.c121 := by rfl

def m122 : Tree := (.node 1 (.leaf [(193,true),(1961,true)]) (.node 1 (.leaf [(185,true),(1961,true)]) (.leaf [(185,true),(193,true),(1962,true)])))
theorem merge122 : m122.clauses = ScoreNodes.m122 := by rfl

def t122 : Tree := .node 0 (.node 0 t120 t121) m122
theorem eq122 : t122.clauses = ScoreNodes.c122 :=
  cat_eq _ (cat_eq _ eq120 eq121) merge122

def t123 : Tree := .nil
theorem eq123 : t123.clauses = ScoreNodes.c123 := by rfl

def t124 : Tree := .nil
theorem eq124 : t124.clauses = ScoreNodes.c124 := by rfl

def m125 : Tree := (.node 1 (.leaf [(197,true),(1963,true)]) (.node 1 (.leaf [(195,true),(1963,true)]) (.leaf [(195,true),(197,true),(1964,true)])))
theorem merge125 : m125.clauses = ScoreNodes.m125 := by rfl

def t125 : Tree := .node 0 (.node 0 t123 t124) m125
theorem eq125 : t125.clauses = ScoreNodes.c125 :=
  cat_eq _ (cat_eq _ eq123 eq124) merge125

def m126 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1963,false),(1965,true)]) (.leaf [(1964,false),(1966,true)])) (.node 1 (.leaf [(1961,false),(1965,true)]) (.leaf [(1961,false),(1963,false),(1966,true)]))) (.node 2 (.node 1 (.leaf [(1961,false),(1964,false),(1967,true)]) (.leaf [(1962,false),(1966,true)])) (.node 1 (.leaf [(1962,false),(1963,false),(1967,true)]) (.leaf [(1962,false),(1964,false),(1968,true)]))))
theorem merge126 : m126.clauses = ScoreNodes.m126 := by rfl

def t126 : Tree := .node 6 (.node 3 t122 t125) m126
theorem eq126 : t126.clauses = ScoreNodes.c126 :=
  cat_eq _ (cat_eq _ eq122 eq125) merge126

def m127 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1965,false),(1969,true)]) (.node 1 (.leaf [(1966,false),(1970,true)]) (.leaf [(1967,false),(1971,true)]))) (.node 1 (.leaf [(1968,false),(1972,true)]) (.node 1 (.leaf [(1957,false),(1969,true)]) (.leaf [(1957,false),(1965,false),(1970,true)])))) (.node 3 (.node 1 (.leaf [(1957,false),(1966,false),(1971,true)]) (.node 1 (.leaf [(1957,false),(1967,false),(1972,true)]) (.leaf [(1957,false),(1968,false),(1973,true)]))) (.node 1 (.leaf [(1958,false),(1970,true)]) (.node 1 (.leaf [(1958,false),(1965,false),(1971,true)]) (.leaf [(1958,false),(1966,false),(1972,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1958,false),(1967,false),(1973,true)]) (.node 1 (.leaf [(1958,false),(1968,false),(1974,true)]) (.leaf [(1959,false),(1971,true)]))) (.node 1 (.leaf [(1959,false),(1965,false),(1972,true)]) (.node 1 (.leaf [(1959,false),(1966,false),(1973,true)]) (.leaf [(1959,false),(1967,false),(1974,true)])))) (.node 3 (.node 1 (.leaf [(1959,false),(1968,false),(1975,true)]) (.node 1 (.leaf [(1960,false),(1972,true)]) (.leaf [(1960,false),(1965,false),(1973,true)]))) (.node 1 (.leaf [(1960,false),(1966,false),(1974,true)]) (.node 1 (.leaf [(1960,false),(1967,false),(1975,true)]) (.leaf [(1960,false),(1968,false),(1976,true)]))))))
theorem merge127 : m127.clauses = ScoreNodes.m127 := by rfl

def t127 : Tree := .node 28 (.node 14 t119 t126) m127
theorem eq127 : t127.clauses = ScoreNodes.c127 :=
  cat_eq _ (cat_eq _ eq119 eq126) merge127

def m128 : Tree := (.node 40 (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1969,false),(1977,true)]) (.leaf [(1970,false),(1978,true)])) (.node 1 (.leaf [(1971,false),(1979,true)]) (.node 1 (.leaf [(1972,false),(1980,true)]) (.leaf [(1973,false),(1981,true)])))) (.node 2 (.node 1 (.leaf [(1974,false),(1982,true)]) (.leaf [(1975,false),(1983,true)])) (.node 1 (.leaf [(1976,false),(1984,true)]) (.node 1 (.leaf [(1945,false),(1977,true)]) (.leaf [(1945,false),(1969,false),(1978,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1945,false),(1970,false),(1979,true)]) (.leaf [(1945,false),(1971,false),(1980,true)])) (.node 1 (.leaf [(1945,false),(1972,false),(1981,true)]) (.node 1 (.leaf [(1945,false),(1973,false),(1982,true)]) (.leaf [(1945,false),(1974,false),(1983,true)])))) (.node 2 (.node 1 (.leaf [(1945,false),(1975,false),(1984,true)]) (.leaf [(1945,false),(1976,false),(1985,true)])) (.node 1 (.leaf [(1946,false),(1978,true)]) (.node 1 (.leaf [(1946,false),(1969,false),(1979,true)]) (.leaf [(1946,false),(1970,false),(1980,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1946,false),(1971,false),(1981,true)]) (.leaf [(1946,false),(1972,false),(1982,true)])) (.node 1 (.leaf [(1946,false),(1973,false),(1983,true)]) (.node 1 (.leaf [(1946,false),(1974,false),(1984,true)]) (.leaf [(1946,false),(1975,false),(1985,true)])))) (.node 2 (.node 1 (.leaf [(1946,false),(1976,false),(1986,true)]) (.leaf [(1947,false),(1979,true)])) (.node 1 (.leaf [(1947,false),(1969,false),(1980,true)]) (.node 1 (.leaf [(1947,false),(1970,false),(1981,true)]) (.leaf [(1947,false),(1971,false),(1982,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1947,false),(1972,false),(1983,true)]) (.leaf [(1947,false),(1973,false),(1984,true)])) (.node 1 (.leaf [(1947,false),(1974,false),(1985,true)]) (.node 1 (.leaf [(1947,false),(1975,false),(1986,true)]) (.leaf [(1947,false),(1976,false),(1987,true)])))) (.node 2 (.node 1 (.leaf [(1948,false),(1980,true)]) (.leaf [(1948,false),(1969,false),(1981,true)])) (.node 1 (.leaf [(1948,false),(1970,false),(1982,true)]) (.node 1 (.leaf [(1948,false),(1971,false),(1983,true)]) (.leaf [(1948,false),(1972,false),(1984,true)]))))))) (.node 20 (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1948,false),(1973,false),(1985,true)]) (.leaf [(1948,false),(1974,false),(1986,true)])) (.node 1 (.leaf [(1948,false),(1975,false),(1987,true)]) (.node 1 (.leaf [(1948,false),(1976,false),(1988,true)]) (.leaf [(1949,false),(1981,true)])))) (.node 2 (.node 1 (.leaf [(1949,false),(1969,false),(1982,true)]) (.leaf [(1949,false),(1970,false),(1983,true)])) (.node 1 (.leaf [(1949,false),(1971,false),(1984,true)]) (.node 1 (.leaf [(1949,false),(1972,false),(1985,true)]) (.leaf [(1949,false),(1973,false),(1986,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1949,false),(1974,false),(1987,true)]) (.leaf [(1949,false),(1975,false),(1988,true)])) (.node 1 (.leaf [(1949,false),(1976,false),(1989,true)]) (.node 1 (.leaf [(1950,false),(1982,true)]) (.leaf [(1950,false),(1969,false),(1983,true)])))) (.node 2 (.node 1 (.leaf [(1950,false),(1970,false),(1984,true)]) (.leaf [(1950,false),(1971,false),(1985,true)])) (.node 1 (.leaf [(1950,false),(1972,false),(1986,true)]) (.node 1 (.leaf [(1950,false),(1973,false),(1987,true)]) (.leaf [(1950,false),(1974,false),(1988,true)])))))) (.node 10 (.node 5 (.node 2 (.node 1 (.leaf [(1950,false),(1975,false),(1989,true)]) (.leaf [(1950,false),(1976,false),(1990,true)])) (.node 1 (.leaf [(1951,false),(1983,true)]) (.node 1 (.leaf [(1951,false),(1969,false),(1984,true)]) (.leaf [(1951,false),(1970,false),(1985,true)])))) (.node 2 (.node 1 (.leaf [(1951,false),(1971,false),(1986,true)]) (.leaf [(1951,false),(1972,false),(1987,true)])) (.node 1 (.leaf [(1951,false),(1973,false),(1988,true)]) (.node 1 (.leaf [(1951,false),(1974,false),(1989,true)]) (.leaf [(1951,false),(1975,false),(1990,true)]))))) (.node 5 (.node 2 (.node 1 (.leaf [(1951,false),(1976,false),(1991,true)]) (.leaf [(1952,false),(1984,true)])) (.node 1 (.leaf [(1952,false),(1969,false),(1985,true)]) (.node 1 (.leaf [(1952,false),(1970,false),(1986,true)]) (.leaf [(1952,false),(1971,false),(1987,true)])))) (.node 2 (.node 1 (.leaf [(1952,false),(1972,false),(1988,true)]) (.leaf [(1952,false),(1973,false),(1989,true)])) (.node 1 (.leaf [(1952,false),(1974,false),(1990,true)]) (.node 1 (.leaf [(1952,false),(1975,false),(1991,true)]) (.leaf [(1952,false),(1976,false),(1992,true)]))))))))
theorem merge128 : m128.clauses = ScoreNodes.m128 := by rfl

def t128 : Tree := .node 104 (.node 52 t112 t127) m128
theorem eq128 : t128.clauses = ScoreNodes.c128 :=
  cat_eq _ (cat_eq _ eq112 eq127) merge128


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
