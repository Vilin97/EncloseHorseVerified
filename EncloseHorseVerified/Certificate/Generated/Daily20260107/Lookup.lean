import EncloseHorseVerified.Certificate.Generated.Daily20260107.LookupNode014

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace EncloseHorse.Certificate.Generated.Daily20260107.Lookup

def scoreTree : Tree := .node 9278 t258 (.leaf [(1801,false)])
theorem scoreTree_eq : scoreTree.clauses = scoreLiteral := cat_eq _ eq258 rfl

def fullTree : Tree := .node 2421 (.node 676 baseTree budgetTree) scoreTree

theorem fullTree_eq : fullTree.clauses = fullCNF DailyLevels.daily20260107 counters := by
  unfold fullCNF
  rw [base_eq, budget_eq, complement_eq]
  exact cat_eq _ (cat_eq _ baseTree_eq budgetTree_eq) scoreTree_eq

end EncloseHorse.Certificate.Generated.Daily20260107.Lookup
