import EncloseHorseVerified.Certificate.Generated.Daily20260310.LookupNode018

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260310.Lookup

def scoreTree : Tree := .node 13466 t368 (.leaf [(2695,false)])
theorem scoreTree_eq : scoreTree.clauses = scoreLiteral := cat_eq _ eq368 rfl

def fullTree : Tree := .node 3871 (.node 1091 baseTree budgetTree) scoreTree

theorem fullTree_eq : fullTree.clauses = fullCNF DailyLevels.daily20260310 counters := by
  unfold fullCNF
  rw [base_eq, budget_eq, complement_eq]
  exact cat_eq _ (cat_eq _ baseTree_eq budgetTree_eq) scoreTree_eq

end EncloseHorse.Certificate.Generated.Daily20260310.Lookup
