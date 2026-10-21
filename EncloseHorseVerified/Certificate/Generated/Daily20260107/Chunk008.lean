import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk007
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix8 : List TreeAction := [
  .add 4790 [(1627,false),(1666,true)] [4676,3885],
  .add 4791 [(1632,false),(1671,true)] [4676,3886],
  .add 4792 [(1637,false),(1676,true)] [4676,3887],
  .add 4793 [(1638,false),(1677,true)] [4676,3888],
  .add 4794 [(1641,false),(1680,true)] [4676,3889],
  .add 4795 [(1648,false),(1687,true)] [4676,3890],
  .add 4796 [(1658,true)] [4683,4772,3891],
  .add 4797 [(1619,false),(1659,true)] [4683,3892],
  .add 4798 [(1621,false),(1661,true)] [4683,3893],
  .add 4799 [(1622,false),(1662,true)] [4683,3894],
  .add 4800 [(1623,false),(1663,true)] [4683,3895],
  .add 4801 [(1624,false),(1664,true)] [4683,3896],
  .add 4802 [(1627,false),(1667,true)] [4683,3897],
  .add 4803 [(1628,false),(1668,true)] [4683,3898],
  .add 4804 [(1632,false),(1672,true)] [4683,3899],
  .add 4805 [(1633,false),(1673,true)] [4683,3900],
  .add 4806 [(1634,false),(1674,true)] [4683,3901],
  .add 4807 [(1635,false),(1675,true)] [4683,3902],
  .add 4808 [(1636,false),(1676,true)] [4683,3903],
  .add 4809 [(1638,false),(1678,true)] [4683,3904],
  .add 4810 [(1639,false),(1679,true)] [4683,3905],
  .add 4811 [(1641,false),(1681,true)] [4683,3906],
  .add 4812 [(1642,false),(1682,true)] [4683,3907],
  .add 4813 [(1647,false),(1687,true)] [4683,3908],
  .add 4814 [(1422,false),(1659,true)] [4772,3909],
  .add 4815 [(1423,false),(1659,true)] [4771,3926],
  .add 4816 [(1423,false),(1660,true)] [4772,3927],
  .add 4817 [(1424,false),(1661,true)] [4772,3945],
  .add 4818 [(1425,false),(1660,true)] [4770,3966],
  .add 4819 [(1425,false),(1662,true)] [4772,3967],
  .add 4820 [(1426,false),(1659,true)] [4768,3981],
  .add 4821 [(1426,false),(1660,true)] [4769,3982],
  .add 4822 [(1426,false),(1662,true)] [4771,3983],
  .add 4823 [(1426,false),(1663,true)] [4772,3984],
  .add 4824 [(1427,false),(1659,true)] [4767,3997],
  .add 4825 [(1427,false),(1660,true)] [4768,3998],
  .add 4826 [(1427,false),(1661,true)] [4769,3999],
  .add 4827 [(1427,false),(1662,true)] [4770,4000],
  .add 4828 [(1427,false),(1664,true)] [4772,4001],
  .add 4829 [(1428,false),(1660,true)] [4767,4020],
  .add 4830 [(1428,false),(1661,true)] [4768,4021],
  .add 4831 [(1428,false),(1665,true)] [4772,4022],
  .add 4832 [(1429,false),(1666,true)] [4772,4039],
  .add 4833 [(1430,false),(1667,true)] [4772,4053],
  .add 4834 [(1431,false),(1668,true)] [4772,4070],
  .add 4835 [(1432,false),(1669,true)] [4772,4088],
  .add 4836 [(1433,false),(1670,true)] [4772,4106],
  .add 4837 [(1435,false),(1672,true)] [4772,4135],
  .add 4838 [(1436,false),(1668,true)] [4767,4155],
  .add 4839 [(1436,false),(1669,true)] [4768,4156],
]

theorem transition8 : RupFast.runPrefix prefix8 state8 depth = some state9 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
