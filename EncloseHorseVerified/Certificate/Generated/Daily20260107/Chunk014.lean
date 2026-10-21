import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk013
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix14 : List TreeAction := [
  .add 5090 [(449,false),(109,false),(484,true),(117,true)] [571,532,533,567,526,528,557,523,524,100,544,104,110,107],
  .add 5091 [(472,true),(127,true),(109,false)] [551,553,548,549,546,547,101,130,136,133],
  .add 5092 [(472,false),(109,false),(484,true),(117,true)] [564,555,558,567,544,530,110,526,528,523,524,100,107,104],
  .add 5093 [(109,false),(484,true),(103,true),(117,true)] [5091,518,5093,516,5092,125],
  .add 5094 [(484,true),(103,true),(85,false),(87,false),(117,true)] [571,5094,89,515,518,532,533,567,526,528,557,523,524,92,544,104,110,107],
  .add 5095 [(29,false),(31,true)] [11,9],
  .add 5096 [(29,false),(53,true)] [41,10],
  .add 5097 [(51,false),(53,true)] [41,39],
  .add 5098 [(51,false),(75,true)] [73,40],
  .add 5099 [(55,false),(79,true)] [82,50],
  .add 5100 [(69,false),(70,true)] [71,69],
  .add 5101 [(77,false),(79,true)] [82,81],
  .add 5102 [(204,true),(205,true)] [366,193],
  .add 5103 [(189,false),(190,true)] [205,203],
  .add 5104 [(213,false),(214,true)] [237,235],
  .add 5105 [(233,false),(257,true)] [282,261],
  .add 5106 [(237,false),(261,true)] [290,268],
  .add 5107 [(259,false),(261,true)] [290,288],
  .add 5108 [(259,false),(283,true)] [317,289],
  .add 5109 [(281,false),(283,true)] [317,315],
  .add 5110 [(281,false),(305,true)] [347,316],
  .add 5111 [(285,false),(309,true)] [356,324],
  .add 5112 [(291,false),(314,true)] [360,328],
  .add 5113 [(297,false),(320,true)] [361,337],
  .add 5114 [(301,false),(324,true)] [362,344],
  .add 5115 [(303,false),(305,true)] [347,346],
  .add 5116 [(305,false),(328,true)] [363,351],
  .add 5117 [(307,false),(309,true)] [356,354],
  .add 5118 [(307,false),(330,true)] [364,355],
  .add 5119 [(309,false),(332,true)] [365,359],
  .add 5120 [(559,false),(803,false)] [1142,1131],
  .add 5121 [(560,false),(802,false)] [1142,1132],
  .add 5122 [(561,false),(801,false)] [1142,1133],
  .add 5123 [(562,false),(800,false)] [1142,1134],
  .add 5124 [(563,false),(799,false)] [1142,1135],
  .add 5125 [(564,false),(798,false)] [1142,1136],
  .add 5126 [(565,false),(797,false)] [1142,1137],
  .add 5127 [(566,false),(796,false)] [1142,1138],
  .add 5128 [(567,false),(795,false)] [1142,1139],
  .add 5129 [(568,false),(794,false)] [1142,1140],
  .add 5130 [(569,false),(793,false)] [1142,1141],
  .add 5131 [(1004,false),(1194,false)] [4850,2880],
  .add 5132 [(1005,false),(1193,false)] [4850,2908],
  .add 5133 [(1006,false),(1192,false)] [4850,2937],
  .add 5134 [(1006,false),(1193,false)] [4851,2938],
  .add 5135 [(1452,false),(1649,false)] [5015,4318],
  .add 5136 [(1453,false),(1648,false)] [5015,4325],
  .add 5137 [(1203,false),(1719,false)] [4390,4327],
  .add 5138 [(1204,false),(1718,false)] [4390,4328],
  .add 5139 [(1205,false),(1717,false)] [4390,4329],
]

theorem transition14 : RupFast.runPrefix prefix14 state14 depth = some state15 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
