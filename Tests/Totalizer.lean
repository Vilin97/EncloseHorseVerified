import EncloseHorseVerified.Certificate.Totalizer

namespace EncloseHorse.Certificate.Totalizer.Tests

def budgetTree : CounterTree :=
  .node [3, 4] (.leaf (0, true)) (.leaf (1, true))

/-- The repeated negative literal represents a coefficient of two. -/
def scoreTree : CounterTree :=
  .node [7, 8, 9] (.leaf (1, false))
    (.node [5, 6] (.leaf (1, false)) (.leaf (2, true)))

def sampleBase (v : Nat) : Bool := v == 0

example : budgetTree.clauses =
    [[(1, false), (3, true)], [(0, false), (3, true)],
      [(0, false), (1, false), (4, true)]] := by decide

example : scoreTree.leaves = [(1, false), (1, false), (2, true)] := by decide
example : countTrue sampleBase budgetTree.leaves = 1 := by decide
example : countTrue sampleBase scoreTree.leaves = 2 := by decide
example : checkVars 3 [budgetTree, scoreTree] = true := by decide

def sampleModel : Nat → Bool := extend sampleBase (allDefs [budgetTree, scoreTree])

example : [3, 4, 5, 6, 7, 8, 9].map sampleModel =
    [true, false, true, false, true, true, false] := by decide

example : Satisfies sampleModel
    (budgetTree.atMostClauses ⟨1, by decide⟩ ++ scoreTree.atMostClauses ⟨2, by decide⟩) := by
  obtain ⟨_, h⟩ := extend_all 3 sampleBase [budgetTree, scoreTree]
    (checkVars_sound _ _ (by decide))
  intro c hc
  rcases List.mem_append.mp hc with hc | hc
  · exact atMost_sat sampleBase sampleModel budgetTree (h _ (by simp))
      ⟨1, by decide⟩ (by decide) c hc
  · exact atMost_sat sampleBase sampleModel scoreTree (h _ (by simp))
      ⟨2, by decide⟩ (by decide) c hc

/-- A colliding auxiliary variable cannot pass the checked allocation boundary. -/
example : checkVars 3 [budgetTree, .node [3] (.leaf (1, true)) (.leaf (2, false))] = false :=
  by decide

/-- Nor can an input literal refer to the auxiliary allocation. -/
example : checkVars 3 [.node [3] (.leaf (0, true)) (.leaf (3, true))] = false := by decide

/-- A single negative leaf is covered by the same root-bound theorem. -/
example : Satisfies (fun _ => true)
    ((CounterTree.leaf (0, false)).atMostClauses ⟨0, by decide⟩) := by
  apply atMost_sat (fun _ => true) (fun _ => true) (.leaf (0, false))
  · constructor
    · intro _ _; rfl
    · intro d hd; simp [CounterTree.auxDefs] at hd
  · decide

#print axioms two_atMost_sat
#print axioms clauses_sat

end EncloseHorse.Certificate.Totalizer.Tests
