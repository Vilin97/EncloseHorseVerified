import EncloseHorseVerified
import Lean

open Lean Elab Command

/-- Fail CI if a principal theorem uses anything beyond Lean's standard axioms. -/
elab "#audit_enclose_trust" : command => do
  let names := [``EncloseHorse.mem_choices, ``EncloseHorse.bestBy_spec,
    ``EncloseHorse.solve_optimal, ``EncloseHorse.solve_optimal_physical,
    ``EncloseHorse.solve_eq_none_iff, ``EncloseHorse.exists_optimal_iff,
    ``EncloseHorse.mem_reach_iff, ``EncloseHorse.reach_nodup,
    ``EncloseHorse.enclosed_iff]
  for name in names do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_enclose_trust
