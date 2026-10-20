import EncloseHorseVerified

open EncloseHorse EncloseHorse.Levels

/- Place your cursor on a command to play in the Lean infoview.
   Click ordinary grass to add/remove a wall; Solve runs the exact Lean solver.
   These are the original, unmodified official tutorial maps. -/
#enclose_horse tutorial1

#enclose_horse tutorial2

#enclose_horse tutorial3

#enclose_horse tutorial4

#enclose_horse tutorial5

/- A concrete theorem, constructed by the tactic and checked by the kernel. -/
set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
example : ∃ walls, Optimal tutorial1 walls := by
  enclose_horse

#print axioms solve_optimal_physical
