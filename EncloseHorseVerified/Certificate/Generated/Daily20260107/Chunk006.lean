import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk005
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix6 : List TreeAction := [
  .add 4690 [(1409,false),(1429,true)] [4640,3299],
  .add 4691 [(1410,false),(1430,true)] [4640,3300],
  .add 4692 [(1411,false),(1431,true)] [4640,3301],
  .add 4693 [(1412,false),(1432,true)] [4640,3302],
  .add 4694 [(1413,false),(1433,true)] [4640,3303],
  .add 4695 [(1414,false),(1434,true)] [4640,3304],
  .add 4696 [(1415,false),(1435,true)] [4640,3305],
  .add 4697 [(1416,false),(1436,true)] [4640,3306],
  .add 4698 [(1327,false),(1422,true)] [4668,3307],
  .add 4699 [(1328,false),(1423,true)] [4668,3323],
  .add 4700 [(1329,false),(1424,true)] [4668,3336],
  .add 4701 [(1330,false),(1425,true)] [4668,3352],
  .add 4702 [(1331,false),(1426,true)] [4668,3366],
  .add 4703 [(1332,false),(1427,true)] [4668,3381],
  .add 4704 [(1333,false),(1428,true)] [4668,3399],
  .add 4705 [(1335,false),(1430,true)] [4668,3421],
  .add 4706 [(1336,false),(1431,true)] [4668,3429],
  .add 4707 [(1337,false),(1432,true)] [4668,3441],
  .add 4708 [(261,true),(1456,true)] [3463],
  .add 4709 [(283,true),(1487,true)] [3518],
  .add 4710 [(305,true),(1540,true)] [3637],
  .add 4711 [(309,true),(1561,true)] [3663],
  .add 4712 [(1562,true)] [360,3664],
  .add 4713 [(309,true),(1563,true)] [360,3665],
  .add 4714 [(1564,true)] [4713,3666],
  .add 4715 [(309,true),(1565,true)] [4713,3667],
  .add 4716 [(1567,true)] [4715,3669],
  .add 4717 [(1572,true)] [362,3672],
  .add 4718 [(1573,true)] [361,362,3673],
  .add 4719 [(1574,true)] [365,3674],
  .add 4720 [(1575,true)] [364,365,3675],
  .add 4721 [(1576,true)] [4720,3676],
  .add 4722 [(1577,true)] [4721,3677],
  .add 4723 [(1578,true)] [363,4721,3678],
  .add 4724 [(1579,true)] [4722,3679],
  .add 4725 [(1580,true)] [4723,3680],
  .add 4726 [(1581,true)] [4724,3681],
  .add 4727 [(1582,true)] [4718,4724,3682],
  .add 4728 [(1583,true)] [4719,4724,3683],
  .add 4729 [(1584,true)] [4725,3684],
  .add 4730 [(1585,true)] [4726,3685],
  .add 4731 [(1586,true)] [4727,3686],
  .add 4732 [(1587,true)] [4728,3687],
  .add 4733 [(1588,true)] [4729,3688],
  .add 4734 [(1589,true)] [4717,4729,3689],
  .add 4735 [(1570,false),(1590,true)] [4727,3690],
  .add 4736 [(1570,false),(1591,true)] [4728,3691],
  .add 4737 [(1570,false),(1592,true)] [4729,3692],
  .add 4738 [(1571,false),(1593,true)] [4729,3693],
  .add 4739 [(1594,true)] [4730,3694],
]

theorem transition6 : RupFast.runPrefix prefix6 state6 depth = some state7 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
