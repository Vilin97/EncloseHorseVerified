import EncloseHorseVerified
import Lean

open Lean Elab Command

/-- Fail CI if a principal theorem uses anything beyond Lean's standard axioms. -/
elab "#audit_enclose_trust" : command => do
  let required := [``EncloseHorse.mem_choices, ``EncloseHorse.bestBy_spec,
    ``EncloseHorse.solve_optimal, ``EncloseHorse.solve_optimal_physical,
    ``EncloseHorse.solve_eq_none_iff, ``EncloseHorse.exists_optimal_iff,
    ``EncloseHorse.mem_reach_iff, ``EncloseHorse.reach_nodup,
    ``EncloseHorse.enclosed_iff,
    ``EncloseHorse.BranchBound.search_spec,
    ``EncloseHorse.solveFastWithSeed_optimal,
    ``EncloseHorse.solveFast_optimal, ``EncloseHorse.solveFast_optimal_physical]
  let optionalFast : List Name :=
    [Name.str (Name.str .anonymous "EncloseHorse") "solveFast_eq_none_iff",
     Name.str (Name.str .anonymous "EncloseHorse") "solveFastWithSeed_eq_none_iff",
     Name.str (Name.str .anonymous "EncloseHorse") "solveFastWithSeed_optimal_physical"]
  let env ← getEnv
  let names := required ++ optionalFast.filter (fun name => env.contains name)
  for name in names do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_enclose_trust
