import EncloseHorseVerified.Certificate.Generated.Daily20260112.Chunk002

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def prefix3 : List TreeAction := [
  .add 2015 [(1603,false),(1616,true)] [2014,987],
  .add 2016 [(1604,false),(1617,true)] [2014,988],
  .add 2017 [(1605,false),(1618,true)] [2014,989],
  .add 2018 [(1606,false),(1619,true)] [2014,991],
  .add 2019 [(1623,true)] [2015,992],
  .add 2020 [(1592,false),(1625,true)] [2015,994],
  .add 2021 [(1594,false),(1627,true)] [2015,999],
  .add 2022 [(1639,true)] [2020,1000],
  .add 2023 [(1572,false),(1652,true)] [2020,1008],
  .add 2024 [(81,true),(1671,true)] [1009],
]

theorem transition3 : runPrefix prefix3 state3 depth = some state4 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260112
