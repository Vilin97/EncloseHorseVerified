import EncloseHorseVerified.Certificate.Generated.Daily20260112.LookupNode024

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260112.Lookup

def scoreTree : Tree := .node 11985 t444 (.leaf [(3081,false)])
theorem scoreTree_eq : scoreTree.clauses = scoreLiteral := cat_eq _ eq444 rfl

def fullTree : Tree := .node 4296 (.node 1369 baseTree budgetTree) scoreTree

theorem fullTree_eq : fullTree.clauses = fullCNF DailyLevels.daily20260112 counters := by
  unfold fullCNF
  rw [base_eq, budget_eq, complement_eq]
  exact cat_eq _ (cat_eq _ baseTree_eq budgetTree_eq) scoreTree_eq

end EncloseHorse.Certificate.Generated.Daily20260112.Lookup
