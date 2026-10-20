import EncloseHorseVerified.FastSolver
import EncloseHorseVerified.Levels

open EncloseHorse

/-!
The optimized solver's bound, validity, score, and candidate callbacks are linked
to the independent game specification. These tests pin those transport contracts;
the native FastBench workflow exercises the resulting search on real boards.
-/
example (b : Board) (c : GraphCache b) (seed : Option Placement) (w : Placement) :
    (FastSolver.cachedProblem b c (FastSolver.makeScoreCache b c seed)).score w =
      score b w := FastSolver.cachedScore_eq b c _ w

example (b : Board) (c : GraphCache b) (s : FastState) :
    (FastSolver.problem b c).upper s =
      completionBound b s.placed (s.placed ++ s.remaining) :=
  c.completionBound_eq _ _

example (b : Board) (c : GraphCache b) (w : Placement) :
    (FastSolver.problem b c).valid w = decide (admissible b w) :=
  c.admissible_eq w

example (b : Board) (c : GraphCache b) (s : FastState) :
    (FastSolver.problem b c).candidate s = canonicalize b s.placed :=
  c.canonicalize_eq s.placed

#print axioms GraphCache.edge_eq
#print axioms GraphCache.reach_eq
#print axioms FastSolver.cachedScore_eq
#print axioms solveFastWithSeed_optimal
#print axioms solveFastWithSeed_eq_none_iff
