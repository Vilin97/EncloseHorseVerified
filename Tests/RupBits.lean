import EncloseHorseVerified.Certificate.RupBits
import Lean

open EncloseHorse.Certificate Totalizer Rup
namespace EncloseHorse.Certificate.BitsTests

def units : ClauseTree := .node (.leaf [(65536,true)]) (.leaf [(65536,false)])
example : RupBits.checkTree [.empty [1,2]] units 1 = true := by decide +kernel
example : RupBits.checkTree [.empty [1]] units 1 = false := by decide +kernel
example : RupBits.checkTree [.empty [3]] units 2 = false := by decide +kernel
example : ∀ model, ¬ Satisfies model units.clauses :=
  RupBits.checkTree_sound [.empty [1,2]] units 1 (by decide +kernel)

/-- Assignment storage keeps arbitrarily separated variable names distinct. -/
example : RupBits.falsified (RupBits.assign RupBits.empty (0,true)) (65536,false) = false := by
  decide +kernel
example : RupBits.falsified
    (RupBits.assign (RupBits.assign RupBits.empty (0,true)) (65536,true)) (0,false) = true := by
  decide +kernel
example : RupBits.falsified
    (RupBits.assign (RupBits.assign RupBits.empty (0,true)) (65536,true)) (65536,false) = true := by
  decide +kernel

open Lean Elab Command
elab "#audit_bits_rup" : command => do
  for name in [``RupBits.checkTree_sound, ``RupBits.runPrefix_sound,
      ``RupBits.assignMany_sat] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"
#audit_bits_rup
end EncloseHorse.Certificate.BitsTests
