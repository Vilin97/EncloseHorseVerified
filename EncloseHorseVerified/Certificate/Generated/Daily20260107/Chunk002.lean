import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk001
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix2 : List TreeAction := [
  .add 4490 [(972,true)] [4474,1457],
  .add 4491 [(973,true)] [4475,1458],
  .add 4492 [(974,true)] [4430,4475,1461],
  .add 4493 [(958,false),(977,true)] [4430,1462],
  .add 4494 [(959,false),(978,true)] [4430,1463],
  .add 4495 [(963,false),(982,true)] [4430,1464],
  .add 4496 [(965,false),(984,true)] [4430,1465],
  .add 4497 [(975,true)] [4432,4475,1466],
  .add 4498 [(958,false),(978,true)] [4432,1467],
  .add 4499 [(963,false),(983,true)] [4432,1468],
  .add 4500 [(964,false),(984,true)] [4432,1469],
  .add 4501 [(965,false),(985,true)] [4432,1470],
  .add 4502 [(967,false),(987,true)] [4432,1471],
  .add 4503 [(976,true)] [4436,4475,1472],
  .add 4504 [(956,false),(977,true)] [4436,1473],
  .add 4505 [(957,false),(978,true)] [4436,1474],
  .add 4506 [(958,false),(979,true)] [4436,1475],
  .add 4507 [(959,false),(980,true)] [4436,1476],
  .add 4508 [(960,false),(981,true)] [4436,1477],
  .add 4509 [(961,false),(982,true)] [4436,1478],
  .add 4510 [(962,false),(983,true)] [4436,1479],
  .add 4511 [(963,false),(984,true)] [4436,1480],
  .add 4512 [(964,false),(985,true)] [4436,1481],
  .add 4513 [(965,false),(986,true)] [4436,1482],
  .add 4514 [(967,false),(988,true)] [4436,1483],
  .add 4515 [(880,false),(977,true)] [4475,1484],
  .add 4516 [(881,false),(978,true)] [4475,1496],
  .add 4517 [(882,false),(979,true)] [4475,1504],
  .add 4518 [(883,false),(980,true)] [4475,1509],
  .add 4519 [(884,false),(980,true)] [4474,1517],
  .add 4520 [(884,false),(981,true)] [4475,1518],
  .add 4521 [(885,false),(982,true)] [4475,1533],
  .add 4522 [(887,false),(983,true)] [4474,1559],
  .add 4523 [(887,false),(984,true)] [4475,1560],
  .add 4524 [(888,false),(984,true)] [4474,1572],
  .add 4525 [(888,false),(985,true)] [4475,1573],
  .add 4526 [(889,false),(984,true)] [4473,1588],
  .add 4527 [(889,false),(985,true)] [4474,1589],
  .add 4528 [(889,false),(986,true)] [4475,1590],
  .add 4529 [(75,true),(1008,true)] [1655],
  .add 4530 [(79,true),(1016,true)] [1667],
  .add 4531 [(1112,true)] [155,1916],
  .add 4532 [(147,true),(1113,true)] [155,1917],
  .add 4533 [(1116,true)] [4532,1922],
  .add 4534 [(1114,false),(1117,true)] [4532,1923],
  .add 4535 [(1115,false),(1118,true)] [4532,1924],
  .add 4536 [(1132,true)] [4534,1952],
  .add 4537 [(1127,false),(1133,true)] [4534,1953],
  .add 4538 [(1128,false),(1134,true)] [4534,1954],
  .add 4539 [(1129,false),(1135,true)] [4534,1955],
]

theorem transition2 : RupFast.runPrefix prefix2 state2 depth = some state3 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
