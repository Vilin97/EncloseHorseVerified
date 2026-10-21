import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode006

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def m95 : Tree := (.node 1 (.leaf [(129,true),(1898,true)]) (.node 1 (.leaf [(129,true),(1898,true)]) (.leaf [(129,true),(129,true),(1899,true)])))
theorem merge95 : m95.clauses = ScoreNodes.m95 := by rfl

def t95 : Tree := .node 0 (.node 0 t92 t92) m95
theorem eq95 : t95.clauses = ScoreNodes.c95 :=
  cat_eq _ (cat_eq _ eq92 eq92) merge95

def t96 : Tree := .nil
theorem eq96 : t96.clauses = ScoreNodes.c96 := by rfl

def m97 : Tree := (.node 1 (.leaf [(133,true),(1900,true)]) (.node 1 (.leaf [(129,true),(1900,true)]) (.leaf [(129,true),(133,true),(1901,true)])))
theorem merge97 : m97.clauses = ScoreNodes.m97 := by rfl

def t97 : Tree := .node 0 (.node 0 t92 t96) m97
theorem eq97 : t97.clauses = ScoreNodes.c97 :=
  cat_eq _ (cat_eq _ eq92 eq96) merge97

def m98 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1900,false),(1902,true)]) (.leaf [(1901,false),(1903,true)])) (.node 1 (.leaf [(1898,false),(1902,true)]) (.leaf [(1898,false),(1900,false),(1903,true)]))) (.node 2 (.node 1 (.leaf [(1898,false),(1901,false),(1904,true)]) (.leaf [(1899,false),(1903,true)])) (.node 1 (.leaf [(1899,false),(1900,false),(1904,true)]) (.leaf [(1899,false),(1901,false),(1905,true)]))))
theorem merge98 : m98.clauses = ScoreNodes.m98 := by rfl

def t98 : Tree := .node 6 (.node 3 t95 t97) m98
theorem eq98 : t98.clauses = ScoreNodes.c98 :=
  cat_eq _ (cat_eq _ eq95 eq97) merge98

def m99 : Tree := (.node 12 (.node 6 (.node 3 (.node 1 (.leaf [(1902,false),(1906,true)]) (.node 1 (.leaf [(1903,false),(1907,true)]) (.leaf [(1904,false),(1908,true)]))) (.node 1 (.leaf [(1905,false),(1909,true)]) (.node 1 (.leaf [(1894,false),(1906,true)]) (.leaf [(1894,false),(1902,false),(1907,true)])))) (.node 3 (.node 1 (.leaf [(1894,false),(1903,false),(1908,true)]) (.node 1 (.leaf [(1894,false),(1904,false),(1909,true)]) (.leaf [(1894,false),(1905,false),(1910,true)]))) (.node 1 (.leaf [(1895,false),(1907,true)]) (.node 1 (.leaf [(1895,false),(1902,false),(1908,true)]) (.leaf [(1895,false),(1903,false),(1909,true)]))))) (.node 6 (.node 3 (.node 1 (.leaf [(1895,false),(1904,false),(1910,true)]) (.node 1 (.leaf [(1895,false),(1905,false),(1911,true)]) (.leaf [(1896,false),(1908,true)]))) (.node 1 (.leaf [(1896,false),(1902,false),(1909,true)]) (.node 1 (.leaf [(1896,false),(1903,false),(1910,true)]) (.leaf [(1896,false),(1904,false),(1911,true)])))) (.node 3 (.node 1 (.leaf [(1896,false),(1905,false),(1912,true)]) (.node 1 (.leaf [(1897,false),(1909,true)]) (.leaf [(1897,false),(1902,false),(1910,true)]))) (.node 1 (.leaf [(1897,false),(1903,false),(1911,true)]) (.node 1 (.leaf [(1897,false),(1904,false),(1912,true)]) (.leaf [(1897,false),(1905,false),(1913,true)]))))))
theorem merge99 : m99.clauses = ScoreNodes.m99 := by rfl

def t99 : Tree := .node 28 (.node 14 t94 t98) m99
theorem eq99 : t99.clauses = ScoreNodes.c99 :=
  cat_eq _ (cat_eq _ eq94 eq98) merge99

def m100 : Tree := (.node 35 (.node 17 (.node 8 (.node 4 (.node 2 (.node 1 (.leaf [(1906,false),(1914,true)]) (.leaf [(1907,false),(1915,true)])) (.node 1 (.leaf [(1908,false),(1916,true)]) (.leaf [(1909,false),(1917,true)]))) (.node 2 (.node 1 (.leaf [(1910,false),(1918,true)]) (.leaf [(1911,false),(1919,true)])) (.node 1 (.leaf [(1912,false),(1920,true)]) (.leaf [(1913,false),(1921,true)])))) (.node 4 (.node 2 (.node 1 (.leaf [(1883,false),(1914,true)]) (.leaf [(1883,false),(1906,false),(1915,true)])) (.node 1 (.leaf [(1883,false),(1907,false),(1916,true)]) (.leaf [(1883,false),(1908,false),(1917,true)]))) (.node 2 (.node 1 (.leaf [(1883,false),(1909,false),(1918,true)]) (.leaf [(1883,false),(1910,false),(1919,true)])) (.node 1 (.leaf [(1883,false),(1911,false),(1920,true)]) (.node 1 (.leaf [(1883,false),(1912,false),(1921,true)]) (.leaf [(1883,false),(1913,false),(1922,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1884,false),(1915,true)]) (.leaf [(1884,false),(1906,false),(1916,true)])) (.node 1 (.leaf [(1884,false),(1907,false),(1917,true)]) (.leaf [(1884,false),(1908,false),(1918,true)]))) (.node 2 (.node 1 (.leaf [(1884,false),(1909,false),(1919,true)]) (.leaf [(1884,false),(1910,false),(1920,true)])) (.node 1 (.leaf [(1884,false),(1911,false),(1921,true)]) (.node 1 (.leaf [(1884,false),(1912,false),(1922,true)]) (.leaf [(1884,false),(1913,false),(1923,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1885,false),(1916,true)]) (.leaf [(1885,false),(1906,false),(1917,true)])) (.node 1 (.leaf [(1885,false),(1907,false),(1918,true)]) (.leaf [(1885,false),(1908,false),(1919,true)]))) (.node 2 (.node 1 (.leaf [(1885,false),(1909,false),(1920,true)]) (.leaf [(1885,false),(1910,false),(1921,true)])) (.node 1 (.leaf [(1885,false),(1911,false),(1922,true)]) (.node 1 (.leaf [(1885,false),(1912,false),(1923,true)]) (.leaf [(1885,false),(1913,false),(1924,true)]))))))) (.node 18 (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1886,false),(1917,true)]) (.leaf [(1886,false),(1906,false),(1918,true)])) (.node 1 (.leaf [(1886,false),(1907,false),(1919,true)]) (.leaf [(1886,false),(1908,false),(1920,true)]))) (.node 2 (.node 1 (.leaf [(1886,false),(1909,false),(1921,true)]) (.leaf [(1886,false),(1910,false),(1922,true)])) (.node 1 (.leaf [(1886,false),(1911,false),(1923,true)]) (.node 1 (.leaf [(1886,false),(1912,false),(1924,true)]) (.leaf [(1886,false),(1913,false),(1925,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1887,false),(1918,true)]) (.leaf [(1887,false),(1906,false),(1919,true)])) (.node 1 (.leaf [(1887,false),(1907,false),(1920,true)]) (.leaf [(1887,false),(1908,false),(1921,true)]))) (.node 2 (.node 1 (.leaf [(1887,false),(1909,false),(1922,true)]) (.leaf [(1887,false),(1910,false),(1923,true)])) (.node 1 (.leaf [(1887,false),(1911,false),(1924,true)]) (.node 1 (.leaf [(1887,false),(1912,false),(1925,true)]) (.leaf [(1887,false),(1913,false),(1926,true)])))))) (.node 9 (.node 4 (.node 2 (.node 1 (.leaf [(1888,false),(1919,true)]) (.leaf [(1888,false),(1906,false),(1920,true)])) (.node 1 (.leaf [(1888,false),(1907,false),(1921,true)]) (.leaf [(1888,false),(1908,false),(1922,true)]))) (.node 2 (.node 1 (.leaf [(1888,false),(1909,false),(1923,true)]) (.leaf [(1888,false),(1910,false),(1924,true)])) (.node 1 (.leaf [(1888,false),(1911,false),(1925,true)]) (.node 1 (.leaf [(1888,false),(1912,false),(1926,true)]) (.leaf [(1888,false),(1913,false),(1927,true)]))))) (.node 4 (.node 2 (.node 1 (.leaf [(1889,false),(1920,true)]) (.leaf [(1889,false),(1906,false),(1921,true)])) (.node 1 (.leaf [(1889,false),(1907,false),(1922,true)]) (.leaf [(1889,false),(1908,false),(1923,true)]))) (.node 2 (.node 1 (.leaf [(1889,false),(1909,false),(1924,true)]) (.leaf [(1889,false),(1910,false),(1925,true)])) (.node 1 (.leaf [(1889,false),(1911,false),(1926,true)]) (.node 1 (.leaf [(1889,false),(1912,false),(1927,true)]) (.leaf [(1889,false),(1913,false),(1928,true)]))))))))
theorem merge100 : m100.clauses = ScoreNodes.m100 := by rfl

def t100 : Tree := .node 93 (.node 41 t90 t99) m100
theorem eq100 : t100.clauses = ScoreNodes.c100 :=
  cat_eq _ (cat_eq _ eq90 eq99) merge100

def m101 : Tree := (.node 1 (.leaf [(133,true),(1929,true)]) (.node 1 (.leaf [(133,true),(1929,true)]) (.leaf [(133,true),(133,true),(1930,true)])))
theorem merge101 : m101.clauses = ScoreNodes.m101 := by rfl

def t101 : Tree := .node 0 (.node 0 t96 t96) m101
theorem eq101 : t101.clauses = ScoreNodes.c101 :=
  cat_eq _ (cat_eq _ eq96 eq96) merge101

def t102 : Tree := .nil
theorem eq102 : t102.clauses = ScoreNodes.c102 := by rfl

def m103 : Tree := (.node 1 (.leaf [(135,true),(1931,true)]) (.node 1 (.leaf [(133,true),(1931,true)]) (.leaf [(133,true),(135,true),(1932,true)])))
theorem merge103 : m103.clauses = ScoreNodes.m103 := by rfl

def t103 : Tree := .node 0 (.node 0 t96 t102) m103
theorem eq103 : t103.clauses = ScoreNodes.c103 :=
  cat_eq _ (cat_eq _ eq96 eq102) merge103

def m104 : Tree := (.node 4 (.node 2 (.node 1 (.leaf [(1931,false),(1933,true)]) (.leaf [(1932,false),(1934,true)])) (.node 1 (.leaf [(1929,false),(1933,true)]) (.leaf [(1929,false),(1931,false),(1934,true)]))) (.node 2 (.node 1 (.leaf [(1929,false),(1932,false),(1935,true)]) (.leaf [(1930,false),(1934,true)])) (.node 1 (.leaf [(1930,false),(1931,false),(1935,true)]) (.leaf [(1930,false),(1932,false),(1936,true)]))))
theorem merge104 : m104.clauses = ScoreNodes.m104 := by rfl

def t104 : Tree := .node 6 (.node 3 t101 t103) m104
theorem eq104 : t104.clauses = ScoreNodes.c104 :=
  cat_eq _ (cat_eq _ eq101 eq103) merge104

def t105 : Tree := .nil
theorem eq105 : t105.clauses = ScoreNodes.c105 := by rfl

def t106 : Tree := .nil
theorem eq106 : t106.clauses = ScoreNodes.c106 := by rfl

def m107 : Tree := (.node 1 (.leaf [(143,true),(1937,true)]) (.node 1 (.leaf [(141,true),(1937,true)]) (.leaf [(141,true),(143,true),(1938,true)])))
theorem merge107 : m107.clauses = ScoreNodes.m107 := by rfl

def t107 : Tree := .node 0 (.node 0 t105 t106) m107
theorem eq107 : t107.clauses = ScoreNodes.c107 :=
  cat_eq _ (cat_eq _ eq105 eq106) merge107

def t108 : Tree := .nil
theorem eq108 : t108.clauses = ScoreNodes.c108 := by rfl

def t109 : Tree := .nil
theorem eq109 : t109.clauses = ScoreNodes.c109 := by rfl

def m110 : Tree := (.node 1 (.leaf [(147,true),(1939,true)]) (.node 1 (.leaf [(145,true),(1939,true)]) (.leaf [(145,true),(147,true),(1940,true)])))
theorem merge110 : m110.clauses = ScoreNodes.m110 := by rfl

def t110 : Tree := .node 0 (.node 0 t108 t109) m110
theorem eq110 : t110.clauses = ScoreNodes.c110 :=
  cat_eq _ (cat_eq _ eq108 eq109) merge110


end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
