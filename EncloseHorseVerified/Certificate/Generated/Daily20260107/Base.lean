import EncloseHorseVerified.Certificate.Generated.Daily20260107.BaseBlocks
import EncloseHorseVerified.Certificate.Generated.Daily20260107.Static

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107


theorem base_eq : baseClauses DailyLevels.daily20260107 = baseLiteral := by
  rw [baseClauses_from_static DailyLevels.daily20260107 Input.staticCells (by exact staticMask_eq)]
  have hc : DailyLevels.daily20260107.cells = cellBlock0 ++ cellBlock1 ++ cellBlock2 ++ cellBlock3 ++ cellBlock4 ++ cellBlock5 ++ cellBlock6 ++ cellBlock7 ++ cellBlock8 ++ cellBlock9 ++ cellBlock10 := by decide +kernel
  rw [hc]
  simp only [List.flatMap_append, baseBlock0_eq, baseBlock1_eq, baseBlock2_eq, baseBlock3_eq, baseBlock4_eq, baseBlock5_eq, baseBlock6_eq, baseBlock7_eq, baseBlock8_eq, baseBlock9_eq, baseBlock10_eq]
  rw [horseIndex]
  rfl

end EncloseHorse.Certificate.Generated.Daily20260107
