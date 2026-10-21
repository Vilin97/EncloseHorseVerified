import EncloseHorseVerified.Certificate.Generated.Daily20260310.BaseBlocks
import EncloseHorseVerified.Certificate.Generated.Daily20260310.Static

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310


theorem base_eq : baseClauses DailyLevels.daily20260310 = baseLiteral := by
  rw [baseClauses_from_static DailyLevels.daily20260310 Input.staticCells (by exact staticMask_eq)]
  have hc : DailyLevels.daily20260310.cells = cellBlock0 ++ cellBlock1 ++ cellBlock2 ++ cellBlock3 ++ cellBlock4 ++ cellBlock5 ++ cellBlock6 ++ cellBlock7 ++ cellBlock8 ++ cellBlock9 ++ cellBlock10 ++ cellBlock11 ++ cellBlock12 ++ cellBlock13 ++ cellBlock14 ++ cellBlock15 ++ cellBlock16 ++ cellBlock17 ++ cellBlock18 := by decide +kernel
  rw [hc]
  simp only [List.flatMap_append, baseBlock0_eq, baseBlock1_eq, baseBlock2_eq, baseBlock3_eq, baseBlock4_eq, baseBlock5_eq, baseBlock6_eq, baseBlock7_eq, baseBlock8_eq, baseBlock9_eq, baseBlock10_eq, baseBlock11_eq, baseBlock12_eq, baseBlock13_eq, baseBlock14_eq, baseBlock15_eq, baseBlock16_eq, baseBlock17_eq, baseBlock18_eq]
  rw [horseIndex]
  rfl

end EncloseHorse.Certificate.Generated.Daily20260310
