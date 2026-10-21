import EncloseHorseVerified.Certificate.Generated.Daily20260112.StaticData

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

def cellBlock16 : List Nat := [256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271]

def baseBlock16 : CNF := [[(512,false),(513,false)],[(513,false),(474,true),(475,true)],[(513,false),(514,true),(515,true)],[(513,false),(550,true),(551,true)],[(514,false),(515,false)],[(515,false),(476,true),(477,true)],[(515,false),(512,true),(513,true)],[(515,false),(552,true),(553,true)],[(516,false)],[(517,false)],[(516,false),(517,false)],[(518,false)],[(519,false)],[(518,false),(519,false)],[(520,false)],[(521,false)],[(520,false),(521,false)],[(522,false),(523,false)],[(523,false),(484,true),(485,true)],[(523,false),(524,true),(525,true)],[(523,false),(560,true),(561,true)],[(524,false),(525,false)],[(525,false),(522,true),(523,true)],[(525,false),(562,true),(563,true)],[(526,false)],[(527,false)],[(526,false),(527,false)],[(528,false)],[(529,false)],[(528,false),(529,false)],[(531,false)],[(530,false),(531,false)],[(531,false),(568,true),(569,true)],[(532,false)],[(533,false)],[(533,false)],[(532,false),(533,false)],[(534,false)],[(535,false)],[(534,false),(535,false)],[(536,false),(537,false)],[(537,false),(498,true),(499,true)],[(537,false),(574,true),(575,true)],[(538,false)],[(539,false)],[(538,false),(539,false)],[(540,false)],[(541,false)],[(540,false),(541,false)],[(542,false)],[(543,false)],[(542,false),(543,false)]]

theorem baseBlock16_eq : cellBlock16.flatMap (cellClauses DailyLevels.daily20260112 Input.staticCells) = baseBlock16 := by
  decide +kernel

end EncloseHorse.Certificate.Generated.Daily20260112
