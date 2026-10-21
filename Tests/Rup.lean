import EncloseHorseVerified.Certificate.Rup

open EncloseHorse.Certificate
open Totalizer Rup

namespace EncloseHorse.Certificate.Tests

def contradiction : ClauseTree :=
  .node (.leaf [(0,true)]) (.leaf [(0,false)])

theorem contradiction_checked : checkTree [.empty [1,2]] contradiction 1 = true := by
  decide +kernel

theorem contradiction_unsat : ∀ a, ¬ Satisfies a contradiction.clauses :=
  checkTree_sound _ _ _ contradiction_checked

example : checkTree [.empty [1]] contradiction 1 = false := by decide +kernel
example : checkTree [.empty [3]] contradiction 2 = false := by decide +kernel

def unitExample : ClauseTree :=
  .node
    (.node (.leaf [(0,true),(1,true)]) (.leaf [(1,false)]))
    (.node (.leaf [(0,false)]) .nil)

example : checkTree [.add 3 [(1,true)] [2,1], .empty [4,3]] unitExample 2 = true := by
  decide +kernel

example : checkTree [.add 3 [(1,false)] [2,1], .empty [4,3]] unitExample 2 = false := by
  decide +kernel

example : checkTree [.empty [1,2]]
    (.node (.leaf [(0,true),(0,true)]) (.leaf [(0,false)])) 1 = true := by
  decide +kernel

#print axioms Rup.check_sound
#print axioms Rup.checkTree_sound
#print axioms contradiction_unsat

end EncloseHorse.Certificate.Tests
