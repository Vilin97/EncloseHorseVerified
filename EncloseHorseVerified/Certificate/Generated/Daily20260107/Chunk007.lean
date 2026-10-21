import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk006
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix7 : List TreeAction := [
  .add 4740 [(1595,true)] [4731,3695],
  .add 4741 [(1596,true)] [4732,3696],
  .add 4742 [(1597,true)] [4733,3697],
  .add 4743 [(1598,true)] [4734,3698],
  .add 4744 [(1599,true)] [4735,3699],
  .add 4745 [(1551,false),(1600,true)] [4735,3702],
  .add 4746 [(1552,false),(1601,true)] [4735,3704],
  .add 4747 [(1554,false),(1603,true)] [4735,3707],
  .add 4748 [(1555,false),(1601,true)] [4732,3708],
  .add 4749 [(1555,false),(1602,true)] [4733,3709],
  .add 4750 [(1555,false),(1603,true)] [4734,3710],
  .add 4751 [(1555,false),(1604,true)] [4735,3711],
  .add 4752 [(1556,false),(1600,true)] [4730,3714],
  .add 4753 [(1556,false),(1601,true)] [4731,3715],
  .add 4754 [(1556,false),(1602,true)] [4732,3716],
  .add 4755 [(1556,false),(1603,true)] [4733,3717],
  .add 4756 [(1556,false),(1604,true)] [4734,3718],
  .add 4757 [(1556,false),(1605,true)] [4735,3719],
  .add 4758 [(1557,false),(1603,true)] [4732,3724],
  .add 4759 [(1557,false),(1605,true)] [4734,3725],
  .add 4760 [(1557,false),(1606,true)] [4735,3726],
  .add 4761 [(1558,false),(1607,true)] [4735,3731],
  .add 4762 [(1559,false),(1603,true)] [4730,3735],
  .add 4763 [(1559,false),(1605,true)] [4732,3736],
  .add 4764 [(1559,false),(1607,true)] [4734,3737],
  .add 4765 [(1559,false),(1608,true)] [4735,3738],
  .add 4766 [(1613,true)] [4740,3743],
  .add 4767 [(1614,true)] [4741,3744],
  .add 4768 [(1615,true)] [4742,3745],
  .add 4769 [(1616,true)] [4743,3746],
  .add 4770 [(1617,true)] [4744,3747],
  .add 4771 [(1618,true)] [4745,3748],
  .add 4772 [(1513,false),(1619,true)] [4745,3758],
  .add 4773 [(1514,false),(1620,true)] [4745,3768],
  .add 4774 [(1515,false),(1620,true)] [4744,3774],
  .add 4775 [(1515,false),(1621,true)] [4745,3775],
  .add 4776 [(1516,false),(1620,true)] [4743,3780],
  .add 4777 [(1516,false),(1622,true)] [4745,3781],
  .add 4778 [(1517,false),(1623,true)] [4745,3786],
  .add 4779 [(1521,false),(1627,true)] [4745,3812],
  .add 4780 [(1529,false),(1635,true)] [4745,3858],
  .add 4781 [(1622,false),(1660,true)] [4675,3876],
  .add 4782 [(1628,false),(1666,true)] [4675,3877],
  .add 4783 [(1632,false),(1670,true)] [4675,3878],
  .add 4784 [(1634,false),(1672,true)] [4675,3879],
  .add 4785 [(1638,false),(1676,true)] [4675,3880],
  .add 4786 [(1657,true)] [4676,4772,3881],
  .add 4787 [(1620,false),(1659,true)] [4676,3882],
  .add 4788 [(1622,false),(1661,true)] [4676,3883],
  .add 4789 [(1623,false),(1662,true)] [4676,3884],
]

theorem transition7 : RupFast.runPrefix prefix7 state7 depth = some state8 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
