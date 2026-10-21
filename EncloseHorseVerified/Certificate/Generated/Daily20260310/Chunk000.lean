import EncloseHorseVerified.Certificate.Generated.Daily20260310.Data
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix0 : List TreeAction := [
  .add 5244 [(45,false),(10,true)] [1,13],
  .add 5245 [(55,false),(20,true)] [2,28],
  .add 5246 [(63,false),(28,true)] [3,39],
  .add 5247 [(275,false),(272,true)] [275,277],
  .add 5248 [(309,false),(306,true)] [313,315],
  .add 5249 [(377,false),(374,true)] [394,397],
  .add 5250 [(1399,true)] [2,1570],
  .add 5251 [(1400,true)] [1,2,1571],
  .add 5252 [(1403,true)] [3,1575],
  .add 5253 [(1401,false),(1404,true)] [3,1576],
  .add 5254 [(1402,false),(1405,true)] [3,1577],
  .add 5255 [(1406,true)] [5253,1578],
  .add 5256 [(1407,true)] [5251,5253,1579],
  .add 5257 [(1408,true)] [5252,5253,1580],
  .add 5258 [(1404,false),(1409,true)] [5252,1581],
  .add 5259 [(1405,false),(1410,true)] [5252,1582],
  .add 5260 [(1427,true)] [5256,1608],
  .add 5261 [(1428,true)] [5257,1609],
  .add 5262 [(1422,false),(1430,true)] [5257,1610],
  .add 5263 [(1423,false),(1431,true)] [5257,1611],
  .add 5264 [(1424,false),(1432,true)] [5257,1612],
  .add 5265 [(1429,true)] [5258,1613],
  .add 5266 [(1421,false),(1430,true)] [5258,1614],
  .add 5267 [(1422,false),(1431,true)] [5258,1615],
  .add 5268 [(1423,false),(1432,true)] [5258,1616],
  .add 5269 [(1424,false),(1433,true)] [5258,1617],
  .add 5270 [(1425,false),(1434,true)] [5258,1618],
  .add 5271 [(1482,true)] [5261,1713],
  .add 5272 [(1483,true)] [5262,1714],
  .add 5273 [(1484,true)] [5266,1715],
  .add 5274 [(1470,false),(1485,true)] [5266,1716],
  .add 5275 [(1471,false),(1486,true)] [5266,1717],
  .add 5276 [(1472,false),(1487,true)] [5266,1718],
  .add 5277 [(1473,false),(1488,true)] [5266,1719],
  .add 5278 [(1474,false),(1489,true)] [5266,1720],
  .add 5279 [(1475,false),(1490,true)] [5266,1721],
  .add 5280 [(1477,false),(1492,true)] [5266,1722],
  .add 5281 [(1479,false),(1494,true)] [5266,1723],
  .add 5282 [(1567,true)] [130,1906],
  .add 5283 [(1565,false),(1568,true)] [130,1907],
  .add 5284 [(1566,false),(1569,true)] [130,1908],
  .add 5285 [(1570,true)] [5283,1909],
  .add 5286 [(1562,false),(1571,true)] [5283,1912],
  .add 5287 [(1563,false),(1572,true)] [5283,1916],
  .add 5288 [(1564,false),(1573,true)] [5283,1920],
  .add 5289 [(1576,true)] [5286,1923],
  .add 5290 [(1554,false),(1577,true)] [5286,1928],
  .add 5291 [(1555,false),(1578,true)] [5286,1934],
  .add 5292 [(1556,false),(1579,true)] [5286,1940],
  .add 5293 [(1557,false),(1580,true)] [5286,1946],
]

theorem transition0 : RupBits.runPrefix prefix0 state0 depth = some state1 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
