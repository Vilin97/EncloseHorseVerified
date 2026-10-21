import EncloseHorseVerified.Certificate.Generated.Daily20260112.Counters

open EncloseHorse EncloseHorse.Certificate.Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260112

/-- Independently check the supplied placement's actual enclosure and signed score. -/
theorem incumbentChecked :
    admissible DailyLevels.daily20260112 DailyLevels.daily20260112Witness ∧
    score DailyLevels.daily20260112 DailyLevels.daily20260112Witness = 204 := by
  decide +kernel

/-- Bind the checked counters to the actual incumbent score. -/
theorem incumbentCountersAccepted :
    checkCounters DailyLevels.daily20260112
      (score DailyLevels.daily20260112 DailyLevels.daily20260112Witness) counters = true := by
  rw [incumbentChecked.2]
  exact countersAccepted

end EncloseHorse.Certificate.Generated.Daily20260112
