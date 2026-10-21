import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk070
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix71 : List TreeAction := [
  .add 8794 [(833,false)] [8787,881],
  .add 8795 [(608,false)] [8788,653],
  .add 8796 [(678,false)] [8788,8229],
  .add 8797 [(91,false)] [8788,8257],
  .add 8798 [(208,false)] [8789,866],
  .add 8799 [(1729,true)] [8790,8574,8799,6616],
  .add 8800 [(1671,true)] [8791,2306],
  .add 8801 [(2019,true)] [8792,5436],
  .add 8802 [(1837,true)] [8794,5343],
  .add 8803 [(602,false)] [8796,587],
  .add 8804 [(675,false)] [8797,666],
  .add 8805 [(671,false)] [8797,668],
  .add 8806 [(1509,true)] [8798,1783],
  .add 8807 [(1679,true)] [8801,2320],
  .add 8808 [(673,false)] [8805,662],
  .add 8809 [(90,false)] [8805,664],
  .add 8810 [(88,false)] [8806,656],
  .add 8811 [(86,false)] [8806,657],
  .add 8812 [(1512,true)] [8807,1786],
  .add 8813 [(98,false)] [8809,659],
  .add 8814 [(96,false)] [8809,660],
  .add 8815 [(125,false)] [8810,8798,115],
  .add 8816 [(89,false)] [8810,8798,68],
  .add 8817 [(55,false)] [8811,8817,31],
  .add 8818 [(1533,true)] [8813,1831],
  .add 8819 [(1549,true)] [8816,1873],
  .add 8820 [(123,false)] [8817,8811,112],
  .add 8821 [(87,false)] [8817,8811,63],
  .add 8822 [(1442,true)] [8817,8797,8121],
  .add 8823 [(1589,true)] [8819,5297],
  .add 8824 [(1552,true)] [8821,8820,1878],
  .add 8825 [(1506,true)] [8822,8817,1777],
  .add 8826 [(85,false)] [8822,8812,58],
  .add 8827 [(121,false)] [8822,8812,109],
  .add 8828 [(1450,true)] [8823,1645],
  .add 8829 [(1555,true)] [8825,1881],
  .add 8830 [(1514,true)] [8826,8807,1794],
  .add 8831 [(1459,true)] [8827,1656],
  .add 8832 [(51,false)] [8827,8788,7817],
  .add 8833 [(1544,true)] [8828,1864],
  .add 8834 [(1472,true)] [8829,1688],
  .add 8835 [(1578,true)] [8830,5292],
  .add 8836 [(1535,true)] [8831,1843],
  .add 8837 [(1461,true)] [8832,1659],
  .add 8838 [(1416,true)] [8833,1589],
  .add 8839 [(1546,true)] [8834,1867],
  .add 8840 [(1487,true)] [8835,5277],
  .add 8841 [(1593,true)] [8837,8836,1988],
  .add 8842 [(1464,true)] [8838,1664],
  .add 8843 [(1418,true)] [8839,1591],
]

theorem transition71 : RupBits.runPrefix prefix71 state71 depth = some state72 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
