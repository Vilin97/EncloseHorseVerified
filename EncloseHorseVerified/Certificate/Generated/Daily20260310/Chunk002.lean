import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk001
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix2 : List TreeAction := [
  .add 5344 [(1832,false),(1839,true)] [5329,2715],
  .add 5345 [(1833,false),(1840,true)] [5329,2716],
  .add 5346 [(1813,false),(1836,true)] [5336,2717],
  .add 5347 [(1814,false),(1837,true)] [5336,2721],
  .add 5348 [(1816,false),(1839,true)] [5336,2733],
  .add 5349 [(1817,false),(1840,true)] [5336,2739],
  .add 5350 [(1846,true)] [5340,2745],
  .add 5351 [(1847,true)] [5341,2746],
  .add 5352 [(1791,false),(1848,true)] [5341,2755],
  .add 5353 [(1792,false),(1848,true)] [5340,2763],
  .add 5354 [(1792,false),(1849,true)] [5341,2764],
  .add 5355 [(1793,false),(1849,true)] [5340,2773],
  .add 5356 [(1793,false),(1850,true)] [5341,2774],
  .add 5357 [(1794,false),(1851,true)] [5341,2783],
  .add 5358 [(1795,false),(1852,true)] [5341,2793],
  .add 5359 [(1796,false),(1853,true)] [5341,2801],
  .add 5360 [(1797,false),(1854,true)] [5341,2809],
  .add 5361 [(1799,false),(1856,true)] [5341,2825],
  .add 5362 [(1801,false),(1858,true)] [5341,2842],
  .add 5363 [(1869,true)] [5351,2851],
  .add 5364 [(1870,true)] [5352,2852],
  .add 5365 [(1740,false),(1871,true)] [5352,2868],
  .add 5366 [(1741,false),(1872,true)] [5352,2877],
  .add 5367 [(1742,false),(1872,true)] [5351,2887],
  .add 5368 [(1742,false),(1873,true)] [5352,2888],
  .add 5369 [(1743,false),(1874,true)] [5352,2899],
  .add 5370 [(1744,false),(1875,true)] [5352,2913],
  .add 5371 [(1745,false),(1876,true)] [5352,2927],
  .add 5372 [(1746,false),(1877,true)] [5352,2940],
  .add 5373 [(1747,false),(1878,true)] [5352,2953],
  .add 5374 [(1750,false),(1881,true)] [5352,2990],
  .add 5375 [(1751,false),(1882,true)] [5352,3000],
  .add 5376 [(1752,false),(1882,true)] [5351,3017],
  .add 5377 [(1752,false),(1883,true)] [5352,3018],
  .add 5378 [(1754,false),(1885,true)] [5352,3044],
  .add 5379 [(1762,false),(1892,true)] [5351,3101],
  .add 5380 [(1886,false),(1933,true)] [5306,3120],
  .add 5381 [(1905,false),(1952,true)] [5306,3121],
  .add 5382 [(1909,false),(1956,true)] [5306,3122],
  .add 5383 [(1881,false),(1929,true)] [5307,3123],
  .add 5384 [(1883,false),(1931,true)] [5307,3124],
  .add 5385 [(1895,false),(1943,true)] [5307,3125],
  .add 5386 [(1905,false),(1953,true)] [5307,3126],
  .add 5387 [(1909,false),(1957,true)] [5307,3127],
  .add 5388 [(1874,false),(1923,true)] [5308,3128],
  .add 5389 [(1876,false),(1925,true)] [5308,3129],
  .add 5390 [(1878,false),(1927,true)] [5308,3130],
  .add 5391 [(1881,false),(1930,true)] [5308,3131],
  .add 5392 [(1882,false),(1931,true)] [5308,3132],
  .add 5393 [(1887,false),(1936,true)] [5308,3133],
]

theorem transition2 : RupBits.runPrefix prefix2 state2 depth = some state3 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
