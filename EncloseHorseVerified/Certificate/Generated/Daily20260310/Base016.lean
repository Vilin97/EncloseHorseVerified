import EncloseHorseVerified.Certificate.Generated.Daily20260310.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310

def cellBlock16 : List Nat := [256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271]

def baseBlock16 : CNF := [[(512,false),(513,false)],[(513,false),(478,true),(479,true)],[(513,false),(514,true),(515,true)],[(514,false),(515,false)],[(515,false),(512,true),(513,true)],[(515,false),(516,true),(517,true)],[(516,false),(517,false)],[(517,false),(514,true),(515,true)],[(517,false),(518,true),(519,true)],[(518,false),(519,false)],[(519,false),(516,true),(517,true)],[(519,false),(520,true),(521,true)],[(520,false),(521,false)],[(521,false),(518,true),(519,true)],[(521,false),(522,true),(523,true)],[(521,false),(554,true),(555,true)],[(522,false),(523,false)],[(523,false),(520,true),(521,true)],[(523,false),(524,true),(525,true)],[(523,false),(556,true),(557,true)],[(524,false),(525,false)],[(525,false),(490,true),(491,true)],[(525,false),(522,true),(523,true)],[(525,false),(526,true),(527,true)],[(526,false),(527,false)],[(527,false),(492,true),(493,true)],[(527,false),(524,true),(525,true)],[(527,false),(528,true),(529,true)],[(528,false),(529,false)],[(529,false),(494,true),(495,true)],[(529,false),(526,true),(527,true)],[(529,false),(530,true),(531,true)],[(530,false),(531,false)],[(531,false),(528,true),(529,true)],[(531,false),(532,true),(533,true)],[(532,false),(533,false)],[(533,false),(498,true),(499,true)],[(533,false),(530,true),(531,true)],[(533,false),(534,true),(535,true)],[(534,false),(535,false)],[(535,false),(532,true),(533,true)],[(535,false),(536,true),(537,true)],[(536,false),(537,false)],[(537,false),(534,true),(535,true)],[(537,false),(538,true),(539,true)],[(538,false),(539,false)],[(539,false),(536,true),(537,true)],[(539,false),(540,true),(541,true)],[(540,false),(541,false)],[(541,false),(506,true),(507,true)],[(541,false),(538,true),(539,true)],[(542,false)],[(543,false)],[(543,false)],[(542,false),(543,false)]]

theorem baseBlock16_eq :
    cellBlock16.flatMap (cellClauses DailyLevels.daily20260310 Input.staticCells) = baseBlock16 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260310
