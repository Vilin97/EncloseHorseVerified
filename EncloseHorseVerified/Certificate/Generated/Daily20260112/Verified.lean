import EncloseHorseVerified.Certificate.Generated.Daily20260112.Link
import EncloseHorseVerified.Certificate.Generated.Daily20260112.Final
import EncloseHorseVerified.Certificate.Generated.Daily20260112.Witness
import Lean

/-! A concrete daily optimum, derived from actual game semantics and a
kernel-checked RUP refutation. The external optimizer's status is not a premise. -/
open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo Selection

namespace EncloseHorse.Certificate.Generated.Daily20260112

theorem full_unsat : ∀ model : Nat → Bool,
    ¬ Satisfies model (fullCNF DailyLevels.daily20260112 counters) :=
  full_unsat_of_selected unsat

/-- The supplied daily placement is optimal against every admissible enclosure. -/
theorem optimal : Optimal DailyLevels.daily20260112 DailyLevels.daily20260112Witness :=
  optimal_of_unsat _ _ counters incumbentChecked.1 incumbentCountersAccepted full_unsat

/-- The result also covers distinct physical wall lists in arbitrary order. -/
theorem physicalOptimal :
    PhysicalOptimal DailyLevels.daily20260112 DailyLevels.daily20260112Witness :=
  optimal.physical

open Lean Elab Command

elab "#audit_daily_20260112" : command => do
  for name in [``selectionAccepted, ``countersAccepted, ``incumbentChecked,
      ``full_unsat, ``optimal, ``physicalOptimal] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_daily_20260112

end EncloseHorse.Certificate.Generated.Daily20260112
