"""Untrusted ordered-tree emitter; every literal block and assembled CNF is proved in Lean."""
from __future__ import annotations
import json
from pathlib import Path
from counter_clause_checkpoints import split_merge_rows


def emit_selection_tree(encoding: dict, folder: Path, namespace: str, module: str, block_size=16):
    def lit(value):return f'({abs(value)-1},{str(value>0).lower()})'
    def clause(c):return '['+','.join(map(lit,c))+']'
    def tree(cs):
        if not cs:return '.nil'
        if len(cs)==1:return '(.leaf '+clause(cs[0])+')'
        mid=len(cs)//2
        return f'(.node {mid} '+tree(cs[:mid])+' '+tree(cs[mid:])+')'
    def header(imports):return ''.join('import '+i+'\n' for i in imports)+f'''
open EncloseHorse EncloseHorse.Certificate
open Totalizer Clingo
open SelectionTree
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace {namespace}.Lookup

'''
    def write(name,s): (folder/(name+'.lean')).write_text(s+'\nend '+namespace+'.Lookup\n')
    from solve_certificate import board_graph
    cells,graph,reached,horse=board_graph(encoding['level'].get('rows') or encoding['level']['map'].splitlines())
    nbase=encoding['baseClauseCount'];cuts=[];cursor=0;w=encoding['width'];h=encoding['height']
    for i,c in enumerate(cells):
        size=int(c!='.')+int(i not in reached)+int(i%w in(0,w-1) or i//w in(0,h-1))+1+len(graph.get(i,()))
        cuts.append(encoding['clauses'][cursor:cursor+size]);cursor+=size
    assert cursor==nbase-1
    source=header([module+'.Base',module+'.CounterClauses','EncloseHorseVerified.Certificate.SelectionTree'])
    source+='''theorem cat_eq {left right : Tree} {a b : CNF} (count : Nat)
    (hl : left.clauses = a) (hr : right.clauses = b) :
    (Tree.node count left right).clauses = a ++ b := by
  change left.clauses ++ right.clauses = a ++ b
  cases hl; cases hr; rfl

'''
    previous=None;total=0;expression='';count_blocks=0
    for index,start in enumerate(range(0,len(cells),block_size)):
        block=sum(cuts[start:start+block_size],[]);count_blocks+=1
        source+=f'def baseLeaf{index} : Tree := '+tree(block)+'\n'
        source+=f'theorem baseLeaf{index}_eq : baseLeaf{index}.clauses = baseBlock{index} := by rfl\n\n'
        if previous is None:
            source+=f'def basePart{index} : Tree := baseLeaf{index}\n'
            expression=f'baseBlock{index}'
            source+=f'theorem basePart{index}_eq : basePart{index}.clauses = {expression} := baseLeaf{index}_eq\n\n'
        else:
            source+=f'def basePart{index} : Tree := .node {total} basePart{previous} baseLeaf{index}\n'
            expression+=f' ++ baseBlock{index}'
            source+=f'theorem basePart{index}_eq : basePart{index}.clauses = {expression} :=\n  cat_eq _ basePart{previous}_eq baseLeaf{index}_eq\n\n'
        previous=index;total+=len(block)
    source+=f'def baseTree : Tree := .node {total} basePart{previous} (.leaf [({2*horse+1},true)])\n'
    source+=f'theorem baseTree_eq : baseTree.clauses = baseLiteral := cat_eq _ basePart{previous}_eq rfl\n\n'
    budget_end=nbase+encoding['constraints'][0]['clauseEnd'];budget=encoding['clauses'][nbase:budget_end]
    source+='def budgetTree : Tree := '+tree(budget)+'\n'
    source+='theorem budgetTree_eq : budgetTree.clauses = budgetLiteral := by rfl\n'
    write('LookupBase',source)

    merges={tuple(m['outputs']):m for m in encoding['merges']};items=[];memo={}
    def visit(node):
        key=('leaf',node['lit']) if 'lit' in node else ('node',tuple(node['outputs']))
        if key in memo:return memo[key]
        if 'lit' in node:l=r=None
        else:l=visit(node['left']);r=visit(node['right'])
        index=len(items);memo[key]=index;items.append((node,l,r));return index
    root=visit(encoding['constraints'][1]['tree']);sizes={};chunks=[];current=[];nmerges=0
    for index,(node,l,r) in enumerate(items):
        if 'lit' in node:
            sizes[index]=0
            current.append(f'def t{index} : Tree := .nil\ntheorem eq{index} : t{index}.clauses = ScoreNodes.c{index} := by rfl\n\n')
        else:
            merge=merges[tuple(node['outputs'])];clauses=encoding['clauses'][nbase+merge['clauseStart']:nbase+merge['clauseEnd']]
            if len(clauses) > 1200:
                parts=split_merge_rows(encoding,merge);prefix=0;row_expr=''
                for part,(_,row_clauses) in enumerate(parts):
                    current.append(f'def rowTree{index}_{part} : Tree := '+tree(row_clauses)+'\n')
                    current.append(f'theorem rowTree{index}_{part}_eq : rowTree{index}_{part}.clauses = ScoreNodes.rowCNF{index}_{part} := by rfl\n')
                    if part == 0:
                        current.append(f'def rowPart{index}_{part} : Tree := rowTree{index}_{part}\n')
                        row_expr=f'ScoreNodes.rowCNF{index}_{part}'
                        current.append(f'theorem rowPart{index}_{part}_eq : rowPart{index}_{part}.clauses = {row_expr} := rowTree{index}_{part}_eq\n')
                    else:
                        current.append(f'def rowPart{index}_{part} : Tree := .node {prefix} rowPart{index}_{part-1} rowTree{index}_{part}\n')
                        row_expr+=f' ++ ScoreNodes.rowCNF{index}_{part}'
                        current.append(f'theorem rowPart{index}_{part}_eq : rowPart{index}_{part}.clauses = {row_expr} := cat_eq _ rowPart{index}_{part-1}_eq rowTree{index}_{part}_eq\n')
                    prefix+=len(row_clauses)
                current.append(f'def m{index} : Tree := rowPart{index}_{len(parts)-1}\n')
                current.append(f'theorem merge{index} : m{index}.clauses = ScoreNodes.m{index} := rowPart{index}_{len(parts)-1}_eq\n')
            else:
                current.append(f'def m{index} : Tree := {tree(clauses)}\n')
                current.append(f'theorem merge{index} : m{index}.clauses = ScoreNodes.m{index} := by rfl\n')
            current.append(f'''
def t{index} : Tree := .node {sizes[l]+sizes[r]} (.node {sizes[l]} t{l} t{r}) m{index}
theorem eq{index} : t{index}.clauses = ScoreNodes.c{index} :=
  cat_eq _ (cat_eq _ eq{l} eq{r}) merge{index}

''')
            sizes[index]=sizes[l]+sizes[r]+len(clauses);nmerges+=1
        if nmerges==10:chunks.append(current);current=[];nmerges=0
    if current:chunks.append(current)
    for index,chunk in enumerate(chunks):
        imports=[module+'.LookupBase'] if index==0 else [module+f'.LookupNode{index-1:03d}']
        write(f'LookupNode{index:03d}',header(imports)+''.join(chunk))
    rootvar=encoding['constraints'][1]['outputs'][encoding['constraints'][1]['bound']]-1
    source=header([module+f'.LookupNode{len(chunks)-1:03d}'])
    source+=f'''def scoreTree : Tree := .node {sizes[root]} t{root} (.leaf [({rootvar},false)])
theorem scoreTree_eq : scoreTree.clauses = scoreLiteral := cat_eq _ eq{root} rfl

def fullTree : Tree := .node {nbase+len(budget)} (.node {nbase} baseTree budgetTree) scoreTree

theorem fullTree_eq : fullTree.clauses = fullCNF DailyLevels.daily{namespace[-8:]} counters := by
  unfold fullCNF
  rw [base_eq, budget_eq, complement_eq]
  exact cat_eq _ (cat_eq _ baseTree_eq budgetTree_eq) scoreTree_eq
'''
    write('Lookup',source)
    print('ordered lookup tree:',count_blocks,'base blocks,',len(chunks),'counter checkpoints')
