import EncloseHorseVerified.Certificate.Totalizer

/-! Fast safe selection of clauses from an explicitly represented CNF. Cached
subtree counts guide lookup only; incorrect counts can never invent a clause. -/
namespace EncloseHorse.Certificate.SelectionTree
open Totalizer

inductive Tree where
  | nil
  | leaf (clause : Clause)
  | node (leftCount : Nat) (left right : Tree)
  deriving Repr

namespace Tree

def clauses : Tree → CNF
  | .nil => []
  | .leaf c => [c]
  | .node _ left right => left.clauses ++ right.clauses

def get : Tree → Nat → Option Clause
  | .nil, _ => none
  | .leaf c, i => if i = 0 then some c else none
  | .node count left right, i =>
    if i < count then left.get i else right.get (i - count)

/-- No assumption about cached counts is necessary for selection soundness. -/
theorem mem_of_get {tree : Tree} {i : Nat} {c : Clause}
    (h : tree.get i = some c) : c ∈ tree.clauses := by
  induction tree generalizing i with
  | nil => simp [get] at h
  | leaf d =>
    simp only [get] at h
    split at h
    · have hd : d = c := Option.some.inj h
      simp only [clauses, List.mem_singleton, hd]
    · contradiction
  | node count left right ihl ihr =>
    simp only [get] at h
    split at h
    · exact List.mem_append_left _ (ihl h)
    · exact List.mem_append_right _ (ihr h)

end Tree

def select (tree : Tree) (indices : List Nat) : CNF := indices.filterMap tree.get

def check (tree : Tree) (indices : List Nat) (selected : CNF) : Bool :=
  decide (select tree indices = selected)

theorem check_sound (tree : Tree) (indices : List Nat) (selected : CNF)
    (h : check tree indices selected = true) : select tree indices = selected :=
  of_decide_eq_true h

theorem select_sat (tree : Tree) (indices : List Nat) (model : Nat → Bool)
    (hs : Satisfies model tree.clauses) : Satisfies model (select tree indices) := by
  intro c hc
  obtain ⟨i, _, hg⟩ := List.mem_filterMap.mp hc
  exact hs c (Tree.mem_of_get hg)

theorem check_sat (tree : Tree) (indices : List Nat) (selected : CNF)
    (h : check tree indices selected = true) (model : Nat → Bool)
    (hs : Satisfies model tree.clauses) : Satisfies model selected := by
  rw [← check_sound tree indices selected h]
  exact select_sat tree indices model hs

theorem unsat_of_check (tree : Tree) (indices : List Nat) (selected : CNF)
    (h : check tree indices selected = true)
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model selected) :
    ∀ model : Nat → Bool, ¬ Satisfies model tree.clauses := by
  intro model hs
  exact hu model (check_sat tree indices selected h model hs)

end EncloseHorse.Certificate.SelectionTree
