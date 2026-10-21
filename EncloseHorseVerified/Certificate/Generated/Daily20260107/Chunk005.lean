import EncloseHorseVerified.Certificate.Generated.Daily20260107.Chunk004
import EncloseHorseVerified.Certificate.RupFast

open EncloseHorse.Certificate
open Totalizer Rup

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107

def prefix5 : List TreeAction := [
  .add 4640 [(1317,false),(1327,true)] [4626,3040],
  .add 4641 [(1318,false),(1328,true)] [4626,3041],
  .add 4642 [(1319,false),(1329,true)] [4626,3042],
  .add 4643 [(1320,false),(1330,true)] [4626,3043],
  .add 4644 [(1321,false),(1331,true)] [4626,3044],
  .add 4645 [(1322,false),(1332,true)] [4626,3045],
  .add 4646 [(1323,false),(1333,true)] [4626,3046],
  .add 4647 [(1288,false),(1327,true)] [4635,3047],
  .add 4648 [(1289,false),(1328,true)] [4635,3055],
  .add 4649 [(1290,false),(1329,true)] [4635,3063],
  .add 4650 [(1291,false),(1330,true)] [4635,3072],
  .add 4651 [(1292,false),(1331,true)] [4635,3079],
  .add 4652 [(1293,false),(1332,true)] [4635,3087],
  .add 4653 [(1294,false),(1333,true)] [4635,3096],
  .add 4654 [(1353,true)] [269,3121],
  .add 4655 [(237,true),(1354,true)] [269,3122],
  .add 4656 [(1355,true)] [4655,3123],
  .add 4657 [(235,true),(1356,true)] [4655,3125],
  .add 4658 [(1358,true)] [4657,3127],
  .add 4659 [(1351,false),(1359,true)] [4657,3130],
  .add 4660 [(1352,false),(1360,true)] [4657,3133],
  .add 4661 [(1363,true)] [4659,3136],
  .add 4662 [(1347,false),(1364,true)] [4659,3141],
  .add 4663 [(1348,false),(1365,true)] [4659,3146],
  .add 4664 [(1349,false),(1366,true)] [4659,3151],
  .add 4665 [(1350,false),(1367,true)] [4659,3156],
  .add 4666 [(257,true),(1381,true)] [3176],
  .add 4667 [(1401,true)] [4662,3213],
  .add 4668 [(1392,false),(1402,true)] [4662,3214],
  .add 4669 [(1393,false),(1403,true)] [4662,3215],
  .add 4670 [(1394,false),(1404,true)] [4662,3216],
  .add 4671 [(1395,false),(1405,true)] [4662,3217],
  .add 4672 [(1396,false),(1406,true)] [4662,3218],
  .add 4673 [(1398,false),(1408,true)] [4662,3219],
  .add 4674 [(1419,true)] [4668,3279],
  .add 4675 [(1420,true)] [4639,4668,3284],
  .add 4676 [(1404,false),(1423,true)] [4639,3285],
  .add 4677 [(1405,false),(1424,true)] [4639,3286],
  .add 4678 [(1406,false),(1425,true)] [4639,3287],
  .add 4679 [(1407,false),(1426,true)] [4639,3288],
  .add 4680 [(1409,false),(1428,true)] [4639,3289],
  .add 4681 [(1411,false),(1430,true)] [4639,3290],
  .add 4682 [(1421,true)] [4640,4668,3291],
  .add 4683 [(1402,false),(1422,true)] [4640,3292],
  .add 4684 [(1403,false),(1423,true)] [4640,3293],
  .add 4685 [(1404,false),(1424,true)] [4640,3294],
  .add 4686 [(1405,false),(1425,true)] [4640,3295],
  .add 4687 [(1406,false),(1426,true)] [4640,3296],
  .add 4688 [(1407,false),(1427,true)] [4640,3297],
  .add 4689 [(1408,false),(1428,true)] [4640,3298],
]

theorem transition5 : RupFast.runPrefix prefix5 state5 depth = some state6 := by
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
