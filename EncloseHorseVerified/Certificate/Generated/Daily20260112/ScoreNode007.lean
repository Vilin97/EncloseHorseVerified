import EncloseHorseVerified.Certificate.Generated.Daily20260112.ScoreNode006

open EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes

def t95 : CounterTree := .node [1898,1899] t92 t92
def m95 : CNF := [[(129,true),(1898,true)],[(129,true),(1898,true)],[(129,true),(129,true),(1899,true)]]
theorem merge95 : mergeClauses t92.outputLits t92.outputLits [1898,1899] = m95 := by
  rfl

def c95 : CNF := c92 ++ c92 ++ m95
theorem eq95 : t95.clauses = c95 := by
  change t92.clauses ++ t92.clauses ++ mergeClauses t92.outputLits t92.outputLits [1898,1899] = c95
  exact concat3_congr eq92 eq92 merge95
def t96 : CounterTree := .leaf (133,false)
def c96 : CNF := []
theorem eq96 : t96.clauses = c96 := rfl
def t97 : CounterTree := .node [1900,1901] t92 t96
def m97 : CNF := [[(133,true),(1900,true)],[(129,true),(1900,true)],[(129,true),(133,true),(1901,true)]]
theorem merge97 : mergeClauses t92.outputLits t96.outputLits [1900,1901] = m97 := by
  rfl

def c97 : CNF := c92 ++ c96 ++ m97
theorem eq97 : t97.clauses = c97 := by
  change t92.clauses ++ t96.clauses ++ mergeClauses t92.outputLits t96.outputLits [1900,1901] = c97
  exact concat3_congr eq92 eq96 merge97
def t98 : CounterTree := .node [1902,1903,1904,1905] t95 t97
def m98 : CNF := [[(1900,false),(1902,true)],[(1901,false),(1903,true)],[(1898,false),(1902,true)],[(1898,false),(1900,false),(1903,true)],[(1898,false),(1901,false),(1904,true)],[(1899,false),(1903,true)],[(1899,false),(1900,false),(1904,true)],[(1899,false),(1901,false),(1905,true)]]
theorem merge98 : mergeClauses t95.outputLits t97.outputLits [1902,1903,1904,1905] = m98 := by
  rfl

def c98 : CNF := c95 ++ c97 ++ m98
theorem eq98 : t98.clauses = c98 := by
  change t95.clauses ++ t97.clauses ++ mergeClauses t95.outputLits t97.outputLits [1902,1903,1904,1905] = c98
  exact concat3_congr eq95 eq97 merge98
def t99 : CounterTree := .node [1906,1907,1908,1909,1910,1911,1912,1913] t94 t98
def m99 : CNF := [[(1902,false),(1906,true)],[(1903,false),(1907,true)],[(1904,false),(1908,true)],[(1905,false),(1909,true)],[(1894,false),(1906,true)],[(1894,false),(1902,false),(1907,true)],[(1894,false),(1903,false),(1908,true)],[(1894,false),(1904,false),(1909,true)],[(1894,false),(1905,false),(1910,true)],[(1895,false),(1907,true)],[(1895,false),(1902,false),(1908,true)],[(1895,false),(1903,false),(1909,true)],[(1895,false),(1904,false),(1910,true)],[(1895,false),(1905,false),(1911,true)],[(1896,false),(1908,true)],[(1896,false),(1902,false),(1909,true)],[(1896,false),(1903,false),(1910,true)],[(1896,false),(1904,false),(1911,true)],[(1896,false),(1905,false),(1912,true)],[(1897,false),(1909,true)],[(1897,false),(1902,false),(1910,true)],[(1897,false),(1903,false),(1911,true)],[(1897,false),(1904,false),(1912,true)],[(1897,false),(1905,false),(1913,true)]]
theorem merge99 : mergeClauses t94.outputLits t98.outputLits [1906,1907,1908,1909,1910,1911,1912,1913] = m99 := by
  rfl

def c99 : CNF := c94 ++ c98 ++ m99
theorem eq99 : t99.clauses = c99 := by
  change t94.clauses ++ t98.clauses ++ mergeClauses t94.outputLits t98.outputLits [1906,1907,1908,1909,1910,1911,1912,1913] = c99
  exact concat3_congr eq94 eq98 merge99
def t100 : CounterTree := .node [1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928] t90 t99
def m100 : CNF := [[(1906,false),(1914,true)],[(1907,false),(1915,true)],[(1908,false),(1916,true)],[(1909,false),(1917,true)],[(1910,false),(1918,true)],[(1911,false),(1919,true)],[(1912,false),(1920,true)],[(1913,false),(1921,true)],[(1883,false),(1914,true)],[(1883,false),(1906,false),(1915,true)],[(1883,false),(1907,false),(1916,true)],[(1883,false),(1908,false),(1917,true)],[(1883,false),(1909,false),(1918,true)],[(1883,false),(1910,false),(1919,true)],[(1883,false),(1911,false),(1920,true)],[(1883,false),(1912,false),(1921,true)],[(1883,false),(1913,false),(1922,true)],[(1884,false),(1915,true)],[(1884,false),(1906,false),(1916,true)],[(1884,false),(1907,false),(1917,true)],[(1884,false),(1908,false),(1918,true)],[(1884,false),(1909,false),(1919,true)],[(1884,false),(1910,false),(1920,true)],[(1884,false),(1911,false),(1921,true)],[(1884,false),(1912,false),(1922,true)],[(1884,false),(1913,false),(1923,true)],[(1885,false),(1916,true)],[(1885,false),(1906,false),(1917,true)],[(1885,false),(1907,false),(1918,true)],[(1885,false),(1908,false),(1919,true)],[(1885,false),(1909,false),(1920,true)],[(1885,false),(1910,false),(1921,true)],[(1885,false),(1911,false),(1922,true)],[(1885,false),(1912,false),(1923,true)],[(1885,false),(1913,false),(1924,true)],[(1886,false),(1917,true)],[(1886,false),(1906,false),(1918,true)],[(1886,false),(1907,false),(1919,true)],[(1886,false),(1908,false),(1920,true)],[(1886,false),(1909,false),(1921,true)],[(1886,false),(1910,false),(1922,true)],[(1886,false),(1911,false),(1923,true)],[(1886,false),(1912,false),(1924,true)],[(1886,false),(1913,false),(1925,true)],[(1887,false),(1918,true)],[(1887,false),(1906,false),(1919,true)],[(1887,false),(1907,false),(1920,true)],[(1887,false),(1908,false),(1921,true)],[(1887,false),(1909,false),(1922,true)],[(1887,false),(1910,false),(1923,true)],[(1887,false),(1911,false),(1924,true)],[(1887,false),(1912,false),(1925,true)],[(1887,false),(1913,false),(1926,true)],[(1888,false),(1919,true)],[(1888,false),(1906,false),(1920,true)],[(1888,false),(1907,false),(1921,true)],[(1888,false),(1908,false),(1922,true)],[(1888,false),(1909,false),(1923,true)],[(1888,false),(1910,false),(1924,true)],[(1888,false),(1911,false),(1925,true)],[(1888,false),(1912,false),(1926,true)],[(1888,false),(1913,false),(1927,true)],[(1889,false),(1920,true)],[(1889,false),(1906,false),(1921,true)],[(1889,false),(1907,false),(1922,true)],[(1889,false),(1908,false),(1923,true)],[(1889,false),(1909,false),(1924,true)],[(1889,false),(1910,false),(1925,true)],[(1889,false),(1911,false),(1926,true)],[(1889,false),(1912,false),(1927,true)],[(1889,false),(1913,false),(1928,true)]]
theorem merge100 : mergeClauses t90.outputLits t99.outputLits [1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928] = m100 := by
  rfl

def c100 : CNF := c90 ++ c99 ++ m100
theorem eq100 : t100.clauses = c100 := by
  change t90.clauses ++ t99.clauses ++ mergeClauses t90.outputLits t99.outputLits [1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1927,1928] = c100
  exact concat3_congr eq90 eq99 merge100
def t101 : CounterTree := .node [1929,1930] t96 t96
def m101 : CNF := [[(133,true),(1929,true)],[(133,true),(1929,true)],[(133,true),(133,true),(1930,true)]]
theorem merge101 : mergeClauses t96.outputLits t96.outputLits [1929,1930] = m101 := by
  rfl

def c101 : CNF := c96 ++ c96 ++ m101
theorem eq101 : t101.clauses = c101 := by
  change t96.clauses ++ t96.clauses ++ mergeClauses t96.outputLits t96.outputLits [1929,1930] = c101
  exact concat3_congr eq96 eq96 merge101
def t102 : CounterTree := .leaf (135,false)
def c102 : CNF := []
theorem eq102 : t102.clauses = c102 := rfl
def t103 : CounterTree := .node [1931,1932] t96 t102
def m103 : CNF := [[(135,true),(1931,true)],[(133,true),(1931,true)],[(133,true),(135,true),(1932,true)]]
theorem merge103 : mergeClauses t96.outputLits t102.outputLits [1931,1932] = m103 := by
  rfl

def c103 : CNF := c96 ++ c102 ++ m103
theorem eq103 : t103.clauses = c103 := by
  change t96.clauses ++ t102.clauses ++ mergeClauses t96.outputLits t102.outputLits [1931,1932] = c103
  exact concat3_congr eq96 eq102 merge103
def t104 : CounterTree := .node [1933,1934,1935,1936] t101 t103
def m104 : CNF := [[(1931,false),(1933,true)],[(1932,false),(1934,true)],[(1929,false),(1933,true)],[(1929,false),(1931,false),(1934,true)],[(1929,false),(1932,false),(1935,true)],[(1930,false),(1934,true)],[(1930,false),(1931,false),(1935,true)],[(1930,false),(1932,false),(1936,true)]]
theorem merge104 : mergeClauses t101.outputLits t103.outputLits [1933,1934,1935,1936] = m104 := by
  rfl

def c104 : CNF := c101 ++ c103 ++ m104
theorem eq104 : t104.clauses = c104 := by
  change t101.clauses ++ t103.clauses ++ mergeClauses t101.outputLits t103.outputLits [1933,1934,1935,1936] = c104
  exact concat3_congr eq101 eq103 merge104
def t105 : CounterTree := .leaf (141,false)
def c105 : CNF := []
theorem eq105 : t105.clauses = c105 := rfl
def t106 : CounterTree := .leaf (143,false)
def c106 : CNF := []
theorem eq106 : t106.clauses = c106 := rfl
def t107 : CounterTree := .node [1937,1938] t105 t106
def m107 : CNF := [[(143,true),(1937,true)],[(141,true),(1937,true)],[(141,true),(143,true),(1938,true)]]
theorem merge107 : mergeClauses t105.outputLits t106.outputLits [1937,1938] = m107 := by
  rfl

def c107 : CNF := c105 ++ c106 ++ m107
theorem eq107 : t107.clauses = c107 := by
  change t105.clauses ++ t106.clauses ++ mergeClauses t105.outputLits t106.outputLits [1937,1938] = c107
  exact concat3_congr eq105 eq106 merge107
def t108 : CounterTree := .leaf (145,false)
def c108 : CNF := []
theorem eq108 : t108.clauses = c108 := rfl
def t109 : CounterTree := .leaf (147,false)
def c109 : CNF := []
theorem eq109 : t109.clauses = c109 := rfl
def t110 : CounterTree := .node [1939,1940] t108 t109
def m110 : CNF := [[(147,true),(1939,true)],[(145,true),(1939,true)],[(145,true),(147,true),(1940,true)]]
theorem merge110 : mergeClauses t108.outputLits t109.outputLits [1939,1940] = m110 := by
  rfl

def c110 : CNF := c108 ++ c109 ++ m110
theorem eq110 : t110.clauses = c110 := by
  change t108.clauses ++ t109.clauses ++ mergeClauses t108.outputLits t109.outputLits [1939,1940] = c110
  exact concat3_congr eq108 eq109 merge110

end EncloseHorse.Certificate.Generated.Daily20260112.ScoreNodes
