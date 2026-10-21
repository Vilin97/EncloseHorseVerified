import EncloseHorseVerified.Certificate.Generated.Daily20260107.Link
import EncloseHorseVerified.Certificate.Generated.Daily20260107.Final
import EncloseHorseVerified.Certificate.Generated.Daily20260107.Witness
import Lean

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace EncloseHorse.Certificate.Generated.Daily20260107


theorem full_unsat : ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF DailyLevels.daily20260107 counters) :=
  full_unsat_of_selected unsat

theorem optimal : Optimal DailyLevels.daily20260107 DailyLevels.daily20260107Witness :=
  optimal_of_unsat _ _ counters incumbentChecked.1 incumbentCountersAccepted full_unsat

theorem physicalOptimal : PhysicalOptimal DailyLevels.daily20260107 DailyLevels.daily20260107Witness := optimal.physical

open Lean Elab Command

elab "#audit_daily_20260107" : command => do
  for name in [``selectionAccepted, ``countersAccepted, ``incumbentChecked,
      ``full_unsat, ``optimal, ``physicalOptimal] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_daily_20260107

end EncloseHorse.Certificate.Generated.Daily20260107
