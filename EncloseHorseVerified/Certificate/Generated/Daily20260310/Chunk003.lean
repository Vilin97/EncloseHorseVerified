import EncloseHorseVerified.Certificate.Generated.Daily20260310.Chunk002
import EncloseHorseVerified.Certificate.RupBits

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def prefix3 : List TreeAction := [
  .add 5394 [(1895,false),(1944,true)] [5308,3134],
  .add 5395 [(1897,false),(1946,true)] [5308,3135],
  .add 5396 [(1871,false),(1921,true)] [5309,3136],
  .add 5397 [(1872,false),(1922,true)] [5309,3137],
  .add 5398 [(1873,false),(1923,true)] [5309,3138],
  .add 5399 [(1874,false),(1924,true)] [5309,3139],
  .add 5400 [(1875,false),(1925,true)] [5309,3140],
  .add 5401 [(1876,false),(1926,true)] [5309,3141],
  .add 5402 [(1877,false),(1927,true)] [5309,3142],
  .add 5403 [(1878,false),(1928,true)] [5309,3143],
  .add 5404 [(1879,false),(1929,true)] [5309,3144],
  .add 5405 [(1880,false),(1930,true)] [5309,3145],
  .add 5406 [(1881,false),(1931,true)] [5309,3146],
  .add 5407 [(1883,false),(1933,true)] [5309,3147],
  .add 5408 [(1885,false),(1935,true)] [5309,3148],
  .add 5409 [(1886,false),(1936,true)] [5309,3149],
  .add 5410 [(1888,false),(1938,true)] [5309,3150],
  .add 5411 [(1889,false),(1939,true)] [5309,3151],
  .add 5412 [(1895,false),(1945,true)] [5309,3152],
  .add 5413 [(1897,false),(1947,true)] [5309,3153],
  .add 5414 [(1905,false),(1955,true)] [5309,3154],
  .add 5415 [(1909,false),(1959,true)] [5309,3155],
  .add 5416 [(1615,false),(1921,true)] [5365,3156],
  .add 5417 [(1617,false),(1923,true)] [5365,3171],
  .add 5418 [(1618,false),(1924,true)] [5365,3175],
  .add 5419 [(1619,false),(1924,true)] [5364,3180],
  .add 5420 [(1619,false),(1925,true)] [5365,3181],
  .add 5421 [(1623,false),(1929,true)] [5365,3206],
  .add 5422 [(1632,false),(1937,true)] [5364,3264],
  .add 5423 [(1632,false),(1938,true)] [5365,3265],
  .add 5424 [(1638,false),(1944,true)] [5365,3321],
  .add 5425 [(1639,false),(1945,true)] [5365,3331],
  .add 5426 [(1640,false),(1946,true)] [5365,3355],
  .add 5427 [(1641,false),(1947,true)] [5365,3360],
  .add 5428 [(1644,false),(1949,true)] [5364,3378],
  .add 5429 [(1644,false),(1950,true)] [5365,3379],
  .add 5430 [(1650,false),(1955,true)] [5364,3446],
  .add 5431 [(1650,false),(1956,true)] [5365,3447],
  .add 5432 [(1652,false),(1957,true)] [5364,3469],
  .add 5433 [(1652,false),(1958,true)] [5365,3470],
  .add 5434 [(2018,true)] [313,3582],
  .add 5435 [(309,true),(2019,true)] [313,3583],
  .add 5436 [(2020,true)] [5435,3584],
  .add 5437 [(303,true),(2021,true)] [5435,3586],
  .add 5438 [(2023,true)] [5437,3588],
  .add 5439 [(2015,false),(2024,true)] [5437,3591],
  .add 5440 [(2016,false),(2025,true)] [5437,3595],
  .add 5441 [(2017,false),(2026,true)] [5437,3598],
  .add 5442 [(2029,true)] [5439,3601],
  .add 5443 [(2008,false),(2030,true)] [5439,3607],
]

theorem transition3 : RupBits.runPrefix prefix3 state3 depth = some state4 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
