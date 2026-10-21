import EncloseHorseVerified.Certificate.Generated.Daily20260107.Verified
import EncloseHorseVerified.Certificate.Generated.Daily20260112.Verified
import EncloseHorseVerified.Certificate.Generated.Daily20260310.Verified
import Lean

open Lean Elab Command
open EncloseHorse.Certificate

/-- Concrete game optimality must remain free of solver/compiler trust axioms. -/
elab "#audit_daily_certificates" : command => do
  for name in [``Generated.Daily20260107.optimal, ``Generated.Daily20260107.physicalOptimal,
      ``Generated.Daily20260112.optimal, ``Generated.Daily20260112.physicalOptimal,
      ``Generated.Daily20260310.optimal, ``Generated.Daily20260310.physicalOptimal] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"
#audit_daily_certificates
