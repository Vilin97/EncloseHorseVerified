import EncloseHorseVerified.Certificate.Generated.Daily20260107.Counters

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107


theorem incumbentChecked : admissible DailyLevels.daily20260107 DailyLevels.daily20260107Witness ∧ score DailyLevels.daily20260107 DailyLevels.daily20260107Witness = 66 := by
  decide +kernel

theorem incumbentCountersAccepted : checkCounters DailyLevels.daily20260107 (score DailyLevels.daily20260107 DailyLevels.daily20260107Witness) counters = true := by
  rw [incumbentChecked.2]
  exact countersAccepted

end EncloseHorse.Certificate.Generated.Daily20260107
