import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk000
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix1 : List TreeAction := [
  .add 4440 [(872,false),(884,true)] [4424,1246],
  .add 4441 [(875,false),(887,true)] [4424,1247],
  .add 4442 [(876,false),(888,true)] [4424,1248],
  .add 4443 [(895,true)] [36,1289],
  .add 4444 [(45,true),(896,true)] [36,1290],
  .add 4445 [(899,true)] [4444,1294],
  .add 4446 [(897,false),(900,true)] [4444,1295],
  .add 4447 [(898,false),(901,true)] [4444,1296],
  .add 4448 [(53,true),(904,true)] [1301],
  .add 4449 [(915,true)] [4446,1319],
  .add 4450 [(910,false),(916,true)] [4446,1320],
  .add 4451 [(911,false),(917,true)] [4446,1321],
  .add 4452 [(913,false),(919,true)] [4446,1322],
  .add 4453 [(932,true)] [71,1349],
  .add 4454 [(69,true),(933,true)] [71,1350],
  .add 4455 [(75,true),(935,true)] [1353],
  .add 4456 [(936,true)] [72,1354],
  .add 4457 [(934,false),(937,true)] [72,1355],
  .add 4458 [(935,false),(938,true)] [72,1356],
  .add 4459 [(939,true)] [4457,1357],
  .add 4460 [(940,true)] [4454,4457,1359],
  .add 4461 [(937,false),(941,true)] [4454,1360],
  .add 4462 [(938,false),(942,true)] [4454,1361],
  .add 4463 [(933,false),(941,true)] [4457,1362],
  .add 4464 [(944,true)] [4460,1365],
  .add 4465 [(945,true)] [4461,1366],
  .add 4466 [(928,false),(946,true)] [4461,1370],
  .add 4467 [(929,false),(946,true)] [4460,1374],
  .add 4468 [(929,false),(947,true)] [4461,1375],
  .add 4469 [(930,false),(948,true)] [4461,1379],
  .add 4470 [(931,false),(948,true)] [4460,1383],
  .add 4471 [(931,false),(949,true)] [4461,1384],
  .add 4472 [(953,true)] [4465,1388],
  .add 4473 [(954,true)] [4466,1389],
  .add 4474 [(955,true)] [4450,4466,1391],
  .add 4475 [(946,false),(956,true)] [4450,1392],
  .add 4476 [(947,false),(957,true)] [4450,1393],
  .add 4477 [(948,false),(958,true)] [4450,1394],
  .add 4478 [(949,false),(959,true)] [4450,1395],
  .add 4479 [(952,false),(962,true)] [4450,1396],
  .add 4480 [(916,false),(956,true)] [4466,1397],
  .add 4481 [(917,false),(957,true)] [4466,1405],
  .add 4482 [(918,false),(957,true)] [4465,1413],
  .add 4483 [(918,false),(958,true)] [4466,1414],
  .add 4484 [(919,false),(959,true)] [4466,1420],
  .add 4485 [(920,false),(960,true)] [4466,1429],
  .add 4486 [(921,false),(960,true)] [4465,1434],
  .add 4487 [(921,false),(961,true)] [4466,1435],
  .add 4488 [(922,false),(962,true)] [4466,1443],
  .add 4489 [(971,true)] [4473,1456],
]

theorem transition1 : RupFast.runPrefix prefix1 state1 depth = some state2 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
