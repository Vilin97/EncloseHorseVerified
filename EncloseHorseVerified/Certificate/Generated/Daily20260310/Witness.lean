import EncloseHorseVerified.Certificate.Generated.Daily20260310.Counters

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260310


theorem incumbentChecked : admissible DailyLevels.daily20260310 DailyLevels.daily20260310Witness ∧ score DailyLevels.daily20260310 DailyLevels.daily20260310Witness = 99 := by
  decide +kernel

theorem incumbentCountersAccepted : checkCounters DailyLevels.daily20260310 (score DailyLevels.daily20260310 DailyLevels.daily20260310Witness) counters = true := by
  rw [incumbentChecked.2]
  exact countersAccepted

end EncloseHorse.Certificate.Generated.Daily20260310
