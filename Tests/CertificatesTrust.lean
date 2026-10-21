import EncloseHorseVerified.Certificate.Clingo
import EncloseHorseVerified.Certificate.Rup
import EncloseHorseVerified.Certificate.RupFast
import EncloseHorseVerified.Certificate.RupBits
import EncloseHorseVerified.Certificate.PathForest
import EncloseHorseVerified.Certificate.Selection
import Lean

/-! Small semantic and hostile-input regressions for the complete certificate
trust path. These do not rerun a large external SAT proof. -/

namespace CertificatesTrust

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo

set_option maxRecDepth 100000

def signed : Board := Board.ofRows ["~~~~~~", "~HCGS~", "~~~~~~"] 0
def negative : Board := Board.ofRows ["~~~~", "~HS~", "~~~~"] 0
def wallExample : Board := Board.ofRows ["~~~~~", "~H.S~", "~~~~~"] 1

example : admissible signed [] := by decide +kernel
example : score signed [] = 12 := by decide +kernel
example : positiveTotal signed = 16 := by decide +kernel
example : countTrue (baseAssignment signed []) (scoreInputs signed) = 4 := by decide +kernel
example : (scoreInputs signed).length = 20 := by decide +kernel

/-- The strict score comparison consumes exactly one integer unit. -/
example : scoreLimit signed 11 = 4 ∧ scoreLimit signed 12 = 3 := by decide +kernel
example : ¬ countTrue (baseAssignment signed []) (scoreInputs signed) ≤ scoreLimit signed 12 :=
  by decide +kernel

/-- A negative feasible score remains distinguishable from escaping for zero. -/
example : admissible negative [] ∧ score negative [] = -3 := by decide +kernel
example : countTrue (baseAssignment negative []) (scoreInputs negative) = 4 ∧
    scoreLimit negative (-4) = 4 ∧ scoreLimit negative (-3) = 3 := by decide +kernel

example : admissible wallExample [7] ∧ score wallExample [7] = 1 := by decide +kernel
example : countTrue (baseAssignment wallExample [7]) (budgetInputs wallExample) = 1 :=
  by decide +kernel
example : countTrue (baseAssignment wallExample [7]) (scoreInputs wallExample) = 1 :=
  by decide +kernel
example : ¬ legal wallExample [7, 7] := by decide +kernel
example : ¬ admissible (Board.ofRows ["H"] 0) [] := by decide +kernel

/-- Sparse selection may omit a bad index, but may never manufacture an empty clause. -/
example : Selection.selectClauses [[(0, true)]] [999] = [] := by decide +kernel
example : Selection.checkSelection [[(0, true)]] [999] [[]] = false := by decide +kernel
example : Selection.checkSelection [[(0, true)]] [0] [[(0, false)]] = false := by decide +kernel

example : Rup.check [[(0, true)], [(0, false)]] [.empty [1, 2]] = true := by decide +kernel
example : Rup.check [[(0, true)]] [.empty [1]] = false := by decide +kernel
example : Rup.check [[(0, true)]] [.empty [0, 1]] = false := by decide +kernel
example : Rup.check [[(0, true)]] [.empty [2, 1]] = false := by decide +kernel
example : Rup.check [[(0, true)]]
    [.add [(0, false)] [1], .empty [1, 2]] = false := by decide +kernel

/-- Undersized assignment tries compare complete variable names after lookup. -/
example : RupFast.falsified (.leaf [(0, false)]) 0 (1, true) = false := by decide +kernel
example : RupFast.falsified (.leaf [(0, false)]) 0 (0, true) = true := by decide +kernel
example : RupFast.remaining [(1, true)] (.leaf [(0, false)]) 0 = [(1, true)] :=
  by decide +kernel

/-- Bitsets keep both signs and each side of machine-word boundaries separate. -/
def boundaryBits : RupBits.Assignment := RupBits.assignMany
  [(0, true), (63, false), (64, true), (130, false), (4096, true)] RupBits.empty
example : ([(0, false), (63, true), (64, false), (130, true), (4096, false),
    (0, true), (62, true), (65, false), (4097, false)].map
      (RupBits.falsified boundaryBits)) =
    [true, true, true, true, true, false, false, false, false] := by decide +kernel

/-- A collision modulo a machine word would incorrectly refute this formula. -/
def bitsSatisfiable : Rup.ClauseTree :=
  .node (.leaf [(0, true)]) (.leaf [(4096, false)])
example : RupBits.checkTree [.empty [1, 2]] bitsSatisfiable 1 = false := by decide +kernel

/-- Check an actual implication and reject a mutated sign, variable, or hint. -/
def bitsImplication : Rup.ClauseTree :=
  .node (.leaf [(0, true)]) (.leaf [(0, false), (4096, true)])
example : RupBits.checkRup bitsImplication 1 [(4096, true)] [1, 2] = true :=
  by decide +kernel
example : RupBits.checkRup bitsImplication 1 [(4096, false)] [1, 2] = false :=
  by decide +kernel
example : RupBits.checkRup bitsImplication 1 [(4097, true)] [1, 2] = false :=
  by decide +kernel
example : RupBits.checkRup bitsImplication 1 [(4096, true)] [1] = false :=
  by decide +kernel
example : RupBits.runPrefix [.add 0 [(4096, false)] [1, 2]] bitsImplication 1 = none :=
  by decide +kernel

open Lean Elab Command

/-- Fail the build if any generic certificate theorem acquires computational
reflection axioms, `sorryAx`, or any assumption beyond Lean's standard axioms. -/
elab "#audit_certificates_trust" : command => do
  for name in [``Totalizer.checkVars_sound, ``Totalizer.extend_base,
      ``Totalizer.extend_aux, ``Totalizer.output_correct, ``Totalizer.clauses_sat,
      ``Totalizer.atMost_sat, ``Totalizer.two_atMost_sat,
      ``Clingo.baseClauses_sat_of_agrees, ``Clingo.budget_count,
      ``Clingo.tileInputs_count, ``Clingo.score_as_cell_sum,
      ``Clingo.score_complement_count, ``Clingo.better_count_bound,
      ``Clingo.better_has_model, ``Clingo.optimal_of_unsat,
      ``Clingo.physicalOptimal_of_unsat, ``Rup.checkRup_sound,
      ``Rup.checkFrom_sound, ``Rup.check_sound, ``Rup.ClauseTree.put_sat,
      ``Rup.checkRupTree_sound, ``Rup.checkTree_sound, ``Rup.runPrefix_sound,
      ``RupFast.assign_sat, ``RupFast.assignMany_sat, ``RupFast.checkRup_sound,
      ``RupFast.checkTree_sound, ``RupFast.runPrefix_sound,
      ``RupBits.agrees_empty, ``RupBits.assign_sat, ``RupBits.assignMany_sat,
      ``RupBits.checkRup_sound, ``RupBits.checkTree_sound, ``RupBits.runPrefix_sound,
      ``PathForest.checkSteps_sound, ``PathForest.check_sound,
      ``Selection.checkSelection_sound, ``Selection.unsat_of_checkSelection] do
    let axioms ← liftCoreM <| collectAxioms name
    for ax in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains ax do
        throwError "{name} depends on unexpected axiom {ax}"
    logInfo m!"{name}: {axioms}"

#audit_certificates_trust

end CertificatesTrust
