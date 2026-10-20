import Lean
import EncloseHorseVerified.FastSolver

/-!
`enclose_horse` computes an exact branch-and-bound solution and constructs a kernel-checked
application of `solveFast_optimal`. Computation used to discover a witness is not
trusted: Lean checks the solver equation using `decide +kernel`.
-/
namespace EncloseHorse
open Lean Meta Elab Tactic

private unsafe def evaluateSolutionUnsafe (b : Expr) : MetaM (Option Placement) :=
  do
    let expr := mkApp (mkConst ``solveFast) b
    evalExpr (Option Placement) (← inferType expr) expr

@[implemented_by evaluateSolutionUnsafe]
private opaque evaluateSolution (b : Expr) : MetaM (Option Placement)

/-- Solve `Optimal board walls`, or synthesize the walls in `∃ walls, Optimal board walls`.
The final solver equality is checked by the kernel, not by native reflection. -/
elab "enclose_horse" : tactic => do
  let target ← instantiateMVars (← getMainTarget)
  let mut existential := false
  let mut proposition := target
  if target.isAppOfArity ``Exists 2 then
    existential := true
    let pred := target.getArg! 1
    proposition := (mkApp pred (toExpr ([] : Placement))).headBeta
  unless proposition.isAppOfArity ``Optimal 2 do
    throwError "enclose_horse expects `Optimal board walls` or `∃ walls, Optimal board walls`"
  let board := proposition.getArg! 0
  if board.hasFVar || board.hasMVar || board.hasLooseBVars then
    throwError "enclose_horse needs a closed, executable board"
  let some walls ← evaluateSolution board
    | throwError "the exact search found no legal enclosure"
  let wallSyntax ← Term.exprToSyntax (toExpr walls)
  if existential then
    evalTactic (← `(tactic| refine ⟨$wallSyntax, ?_⟩))
  evalTactic (← `(tactic| apply EncloseHorse.solveFast_optimal))
  evalTactic (← `(tactic| decide +kernel))

/-- Print a solution without adding a theorem. For a checked proof use `enclose_horse`. -/
elab "#solve_enclosure " b:term : command => do
  let result ← Command.liftTermElabM do
    let expr ← Term.elabTerm b (some (mkConst ``Board))
    Term.synthesizeSyntheticMVarsNoPostponing
    evaluateSolution (← instantiateMVars expr)
  logInfo m!"{repr result}"

end EncloseHorse
