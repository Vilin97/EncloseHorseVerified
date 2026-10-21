import EncloseHorseVerified.Certificate.SelectionTree
import Lean

open EncloseHorse.Certificate Totalizer SelectionTree
namespace SelectionTreeTests

def tree : Tree := .node 1 (.leaf [(0,true)]) (.leaf [(1,false)])
example : check tree [1,0,9] [[(1,false)],[(0,true)]] = true := by decide +kernel
example : check tree [9] [[]] = false := by decide +kernel
example : check tree [0] [[(0,false)]] = false := by decide +kernel
example : check (.node 99 (.leaf [(0,true)]) .nil) [1] [[]] = false := by decide +kernel
example : check (.node 0 (.leaf [(0,true)]) (.leaf [(1,false)])) [0] [[(1,false)]] = true := by
  decide +kernel
example (a : Nat → Bool) (hs : Satisfies a tree.clauses) :
    Satisfies a [[(1,false)],[(0,true)]] :=
  check_sat tree [1,0,9] _ (by decide +kernel) a hs

open Lean Elab Command
elab "#audit_selection_tree" : command => do
  for name in [``Tree.mem_of_get, ``check_sound, ``check_sat, ``unsat_of_check] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"
#audit_selection_tree
end SelectionTreeTests
