import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk000
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix1 : List TreeAction := [
  .add 5294 [(1559,false),(1582,true)] [5286,1958],
  .add 5295 [(1588,true)] [5290,1963],
  .add 5296 [(1533,false),(1589,true)] [5290,1969],
  .add 5297 [(1534,false),(1590,true)] [5290,1977],
  .add 5298 [(1535,false),(1591,true)] [5290,1986],
  .add 5299 [(1536,false),(1592,true)] [5290,1996],
  .add 5300 [(1537,false),(1593,true)] [5290,2003],
  .add 5301 [(1538,false),(1594,true)] [5290,2012],
  .add 5302 [(1539,false),(1595,true)] [5290,2022],
  .add 5303 [(1540,false),(1596,true)] [5290,2031],
  .add 5304 [(1541,false),(1597,true)] [5290,2042],
  .add 5305 [(1611,true)] [5296,2071],
  .add 5306 [(1612,true)] [5272,5296,2073],
  .add 5307 [(1613,true)] [5273,5296,2074],
  .add 5308 [(1614,true)] [5274,5296,2075],
  .add 5309 [(1589,false),(1615,true)] [5274,2076],
  .add 5310 [(1590,false),(1616,true)] [5274,2077],
  .add 5311 [(1591,false),(1617,true)] [5274,2078],
  .add 5312 [(1592,false),(1618,true)] [5274,2079],
  .add 5313 [(1593,false),(1619,true)] [5274,2080],
  .add 5314 [(1595,false),(1621,true)] [5274,2081],
  .add 5315 [(1602,false),(1628,true)] [5274,2082],
  .add 5316 [(1607,false),(1633,true)] [5274,2083],
  .add 5317 [(1485,false),(1615,true)] [5296,2084],
  .add 5318 [(1486,false),(1616,true)] [5296,2092],
  .add 5319 [(1488,false),(1618,true)] [5296,2114],
  .add 5320 [(1489,false),(1619,true)] [5296,2122],
  .add 5321 [(1493,false),(1623,true)] [5296,2166],
  .add 5322 [(1498,false),(1628,true)] [5296,2200],
  .add 5323 [(1502,false),(1632,true)] [5296,2229],
  .add 5324 [(1807,true)] [274,2667],
  .add 5325 [(269,true),(1808,true)] [274,2668],
  .add 5326 [(1809,true)] [5325,2669],
  .add 5327 [(267,true),(1810,true)] [5325,2671],
  .add 5328 [(1812,true)] [5327,2673],
  .add 5329 [(1804,false),(1813,true)] [5327,2676],
  .add 5330 [(1805,false),(1814,true)] [5327,2679],
  .add 5331 [(1806,false),(1815,true)] [5327,2682],
  .add 5332 [(1820,true)] [275,2689],
  .add 5333 [(1818,false),(1821,true)] [275,2690],
  .add 5334 [(1819,false),(1822,true)] [275,2691],
  .add 5335 [(1828,true)] [5333,2698],
  .add 5336 [(1825,false),(1829,true)] [5333,2699],
  .add 5337 [(1826,false),(1830,true)] [5333,2700],
  .add 5338 [(1827,false),(1831,true)] [5333,2701],
  .add 5339 [(1834,true)] [5336,2710],
  .add 5340 [(1835,true)] [5329,5336,2711],
  .add 5341 [(1829,false),(1836,true)] [5329,2712],
  .add 5342 [(1830,false),(1837,true)] [5329,2713],
  .add 5343 [(1831,false),(1838,true)] [5329,2714],
]

theorem transition1 : RupBits.runPrefix prefix1 state1 depth = some state2 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
