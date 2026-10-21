import EncloseHorseVerified.Certificate.RupFast
import EncloseHorseVerified.Certificate.PathForest
import Lean

open EncloseHorse.Certificate Totalizer Rup
namespace EncloseHorse.Certificate.FastTests

def units : ClauseTree := .node (.leaf [(0,true)]) (.leaf [(0,false)])
example : RupFast.checkTree [.empty [1,2]] units 1 = true := by decide +kernel
example : RupFast.checkTree [.empty [1]] units 1 = false := by decide +kernel
example : RupFast.checkTree [.empty [3]] units 2 = false := by decide +kernel

/-- An undersized assignment trie must not mistake a colliding variable for a fact. -/
example : RupFast.falsified (RupFast.assign .nil 0 (0,true)) 0 (2,false) = false := by
  decide +kernel
example : RupFast.falsified (RupFast.assign .nil 0 (0,true)) 0 (0,false) = true := by
  decide +kernel
example : RupFast.falsified
    (RupFast.assign (RupFast.assign .nil 0 (0,true)) 0 (2,true)) 0 (0,false) = false := by
  decide +kernel

def graph (i j : Nat) : Bool := decide (i + 1 = j)
example : PathForest.check graph 0 [(1,0),(2,1),(3,2)] = true := by decide +kernel
example : PathForest.check graph 0 [(2,1),(1,0)] = false := by decide +kernel
example : PathForest.check graph 0 [(1,0),(3,1)] = false := by decide +kernel
example : EncloseHorse.Reachability.Path graph 0 3 :=
  PathForest.check_sound graph 0 [(1,0),(2,1),(3,2)] (by decide +kernel) 3 (by decide +kernel)

open Lean Elab Command
elab "#audit_fast_rup" : command => do
  for name in [``RupFast.checkTree_sound, ``RupFast.runPrefix_sound,
      ``RupFast.assignMany_sat, ``PathForest.check_sound] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"
#audit_fast_rup
end EncloseHorse.Certificate.FastTests
