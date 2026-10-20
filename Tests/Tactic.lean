import EncloseHorseVerified
open EncloseHorse EncloseHorse.Levels
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-- The tactic discovers the walls and leaves a kernel-checked proof. -/
theorem tactic_finds_official_solution : ∃ walls, Optimal tutorial1 walls := by
  enclose_horse

/-- A requested solver-selected placement can be certified directly. -/
theorem tactic_certifies_official_solution : Optimal tutorial1 [23] := by
  enclose_horse

/-- The physical-placement specification follows without recomputation. -/
theorem tactic_physical_solution : PhysicalOptimal tutorial1 [23] :=
  tactic_certifies_official_solution.physical

#solve_enclosure tutorial1
#print axioms tactic_finds_official_solution
