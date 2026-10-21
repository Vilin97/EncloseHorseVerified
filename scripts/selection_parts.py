"""Untrusted emitter splitting selected-CNF equality into kernel checked subtree pieces."""
from __future__ import annotations
import re,json
from pathlib import Path
from functools import lru_cache


def emit_parts(encoding: dict, folder: Path, namespace: str, module: str, split_depth=3):
    text='\n'.join(p.read_text() for p in sorted(folder.glob('Data*.lean')))
    nodes={}
    for match in re.finditer(r'def n(\d+) : ClauseTree := (.*?)\n',text):
        index=int(match[1]);rhs=match[2]
        if rhs.startswith('.nil'):nodes[index]=None
        elif rhs.startswith('.leaf'):nodes[index]='leaf'
        else:
            m=re.fullmatch(r'\.node n(\d+) n(\d+)',rhs)
            if m is None:raise ValueError('unrecognized initial tree declaration')
            nodes[index]=(int(m[1]),int(m[2]))
    root=int(re.search(r'def state0 : ClauseTree := n(\d+)',text)[1])
    @lru_cache(None)
    def size(index):
        node=nodes[index]
        return 0 if node is None else 1 if node=='leaf' else size(node[0])+size(node[1])
    frontier=[]
    def split(index,depth):
        node=nodes[index]
        if depth==0 or not isinstance(node,tuple):
            part=len(frontier);frontier.append(index);return ('part',part)
        return ('node',split(node[0],depth-1),split(node[1],depth-1))
    shape=split(root,split_depth)
    def shape_tree(shape):
        if shape[0]=='part':return f'initialPart{shape[1]}'
        return '(Rup.ClauseTree.node '+shape_tree(shape[1])+' '+shape_tree(shape[2])+')'
    def shape_sat(shape):
        if shape[0]=='part':return f'hp{shape[1]}'
        return '(sat_initial_node model _ _ '+shape_sat(shape[1])+' '+shape_sat(shape[2])+')'
    assert size(root)==len(encoding['treeClauseIndices'])
    cursor=0
    for part,index in enumerate(frontier):
        count=size(index);indices=encoding['treeClauseIndices'][cursor:cursor+count];cursor+=count
        imported=module+'.Lookup' if part==0 else module+f'.SelectionPart{part-1:03d}'
        source=f'''import {imported}
import {module}.Data

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace {namespace}

def partIndices{part} : List Nat := {json.dumps(indices,separators=(',',':'))}
noncomputable def initialPart{part} : Rup.ClauseTree := n{index}

theorem selectionPart{part} : SelectionTree.check Lookup.fullTree partIndices{part} initialPart{part}.clauses = true := by
  decide +kernel

end {namespace}
'''
        (folder/f'SelectionPart{part:03d}.lean').write_text(source)
    checks=[f'SelectionTree.check Lookup.fullTree partIndices{i} initialPart{i}.clauses' for i in range(len(frontier))]
    proofs=', '.join(f'selectionPart{i}' for i in range(len(frontier)))
    accepted='selectionPart0'
    for i in range(1,len(frontier)):accepted=f'(and_true {accepted} selectionPart{i})'
    source=f'''import {module}.SelectionPart{len(frontier)-1:03d}

open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace {namespace}

theorem and_true {{a b : Bool}} (ha : a = true) (hb : b = true) : (a && b) = true := by
  cases a <;> cases b <;> simp_all

/-- All independently kernel-checked pieces of the sparse proof's initial CNF. -/
theorem selectionAccepted : ({' && '.join(checks)}) = true := {accepted}

theorem initialTree_eq : state0 = {shape_tree(shape)} := by rfl

theorem sat_initial_node (model : Nat → Bool) (left right : Rup.ClauseTree)
    (hl : Satisfies model left.clauses) (hr : Satisfies model right.clauses) :
    Satisfies model (Rup.ClauseTree.node left right).clauses := by
  intro clause hc
  rcases List.mem_append.mp hc with hc | hc
  · exact hl clause hc
  · exact hr clause hc

theorem initial_sat_of_full (model : Nat → Bool)
    (hs : Satisfies model (fullCNF DailyLevels.daily{namespace[-8:]} counters)) :
    Satisfies model state0.clauses := by
  have ht : Satisfies model Lookup.fullTree.clauses := by
    rw [Lookup.fullTree_eq]
    exact hs
'''
    for part in range(len(frontier)):
        source+=f'  have hp{part} := SelectionTree.check_sat Lookup.fullTree partIndices{part} initialPart{part}.clauses selectionPart{part} model ht\n'
    source+='  rw [initialTree_eq]\n  exact '+shape_sat(shape)+'\n'
    source+=f'''
theorem full_unsat_of_selected
    (hu : ∀ model : Nat → Bool, ¬ Satisfies model state0.clauses) :
    ∀ model : Nat → Bool, ¬ Satisfies model (fullCNF DailyLevels.daily{namespace[-8:]} counters) := by
  intro model hs
  exact hu model (initial_sat_of_full model hs)

end {namespace}
'''
    (folder/'Link.lean').write_text(source)
    print('selected input:',len(frontier),'parts, sizes',[size(i) for i in frontier])
