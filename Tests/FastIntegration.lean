import EncloseHorseVerified.FastSolver
import EncloseHorseVerified.Levels

/-!
Integration checks for the executable proved solver. These equations are checked
by kernel reduction, including acceptance of a valid seed and rejection of an
illegal seed. The tactic's fixed tutorial1 [23] goal remains in Tests/Tactic.lean.
-/
open EncloseHorse EncloseHorse.Levels
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem fast_tutorial1_answer : solveFast tutorial1 = some [23] := by
  decide +kernel

theorem fast_valid_seed_answer : solveFastWithSeed tutorial1 (some [23]) = some [23] := by
  decide +kernel

theorem fast_illegal_seed_ignored : solveFastWithSeed tutorial1 (some [0]) = some [23] := by
  decide +kernel

theorem fast_seeded_tutorial1_optimal : Optimal tutorial1 [23] :=
  solveFastWithSeed_optimal tutorial1 (some [23]) [23] fast_valid_seed_answer

#print axioms fast_seeded_tutorial1_optimal
