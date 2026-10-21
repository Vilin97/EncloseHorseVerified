import EncloseHorseVerified.Certificate.Generated.Daily20260107.Data
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix0 : List TreeAction := [
  .add 4390 [(29,false),(4,true)] [1,7],
  .add 4391 [(29,false),(27,true)] [4,8],
  .add 4392 [(31,false),(6,true)] [2,12],
  .add 4393 [(33,false),(31,true)] [11,16],
  .add 4394 [(39,false),(14,true)] [3,25],
  .add 4395 [(51,false),(27,true)] [4,37],
  .add 4396 [(51,false),(48,true)] [36,38],
  .add 4397 [(55,false),(31,true)] [11,47],
  .add 4398 [(55,false),(53,true)] [41,48],
  .add 4399 [(75,false),(72,true)] [72,75],
  .add 4400 [(77,false),(53,true)] [41,79],
  .add 4401 [(77,false),(75,true)] [73,80],
  .add 4402 [(99,false),(75,true)] [73,95],
  .add 4403 [(103,false),(79,true)] [82,97],
  .add 4404 [(147,false),(144,true)] [155,157],
  .add 4405 [(243,false),(240,true)] [269,272],
  .add 4406 [(259,false),(257,true)] [282,287],
  .add 4407 [(281,false),(257,true)] [282,313],
  .add 4408 [(285,false),(261,true)] [290,322],
  .add 4409 [(285,false),(283,true)] [317,323],
  .add 4410 [(307,false),(283,true)] [317,352],
  .add 4411 [(307,false),(305,true)] [347,353],
  .add 4412 [(819,true)] [2,1143],
  .add 4413 [(820,true)] [1,2,1144],
  .add 4414 [(821,true)] [3,1145],
  .add 4415 [(27,true),(822,true)] [3,1146],
  .add 4416 [(823,true)] [4415,1147],
  .add 4417 [(824,true)] [4413,4415,1148],
  .add 4418 [(825,true)] [4414,4415,1149],
  .add 4419 [(822,false),(826,true)] [4414,1150],
  .add 4420 [(27,true),(828,true)] [1152],
  .add 4421 [(839,true)] [4417,1168],
  .add 4422 [(840,true)] [4418,1169],
  .add 4423 [(841,true)] [4419,1170],
  .add 4424 [(834,false),(842,true)] [4419,1171],
  .add 4425 [(835,false),(843,true)] [4419,1172],
  .add 4426 [(836,false),(844,true)] [4419,1173],
  .add 4427 [(837,false),(845,true)] [4419,1174],
  .add 4428 [(31,true),(849,true)] [1182],
  .add 4429 [(877,true)] [4422,1235],
  .add 4430 [(871,false),(881,true)] [4422,1236],
  .add 4431 [(878,true)] [4423,1237],
  .add 4432 [(869,false),(880,true)] [4423,1238],
  .add 4433 [(870,false),(881,true)] [4423,1239],
  .add 4434 [(871,false),(882,true)] [4423,1240],
  .add 4435 [(879,true)] [4424,1241],
  .add 4436 [(868,false),(880,true)] [4424,1242],
  .add 4437 [(869,false),(881,true)] [4424,1243],
  .add 4438 [(870,false),(882,true)] [4424,1244],
  .add 4439 [(871,false),(883,true)] [4424,1245],
]

theorem transition0 : RupFast.runPrefix prefix0 state0 depth = some state1 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
