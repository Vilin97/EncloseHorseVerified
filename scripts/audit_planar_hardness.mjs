/**
 * Independent tile-level regression audit of the no-portal planar Steiner
 * reduction in docs/NP_Hardness.md.
 *
 * Run: node scripts/audit_planar_hardness.mjs
 *
 * A fixed noncrossing orthogonal drawing of K4 supplies all 64 edge subgraphs.
 * Each is expanded into connected 9x9 item rooms and half-edge corridors, with
 * exactly one wallable grass gate per edge. A removable room corner fixes the
 * parity before assigning cherries (+4) and bees (-4); the root contains the
 * unique horse (+1). The actual layout has no portals and 135x175 tiles.
 *
 * For all eight terminal subsets containing the root, this checks every gate
 * placement by coordinate BFS. It independently enumerates source edge subsets
 * to test Steiner decisions for edge budgets 0..3. Budgets smaller than t-1
 * are rejected by the reduction's explicit preprocessing.
 *
 * This finite audit is NOT the general hardness proof and NOT a Lean certificate.
 */
function inspectPlanarSteiner(edgeMask, terminalMask) {
  const scale=20,radius=4,positions=[[0,0],[6,0],[3,6],[3,3]];
  const original=[
    {u:0,v:1,path:[[0,0],[0,-2],[6,-2],[6,0]]},
    {u:0,v:2,path:[[0,0],[0,6],[3,6]]},
    {u:0,v:3,path:[[0,0],[3,0],[3,3]]},
    {u:1,v:2,path:[[6,0],[6,6],[3,6]]},
    {u:1,v:3,path:[[6,0],[4,0],[4,3],[3,3]]},
    {u:2,v:3,path:[[3,6],[3,3]]}
  ];
  const edges=original.filter((_,i)=>!!(edgeMask&(1<<i))),Q=edges.length,C=Q+1,M=6*C;
  const width=6*scale+2*radius+7,height=8*scale+2*radius+7,xoff=radius+3,yoff=2*scale+radius+3;
  const index=(x,y)=>(y+yoff)*width+x+xoff,owners=new Int8Array(width*height).fill(-1),gates=[];
  const put=(idx,owner)=>{if(owners[idx]!==-1&&owners[idx]!==owner)throw Error("geometric overlap");owners[idx]=owner;};
  for(let v=0;v<4;v++){const [x,y]=positions[v].map(c=>c*scale);for(let dy=-radius;dy<=radius;dy++)for(let dx=-radius;dx<=radius;dx++)put(index(x+dx,y+dy),v);}
  for(const e of edges){
    const path=[];
    for(let seg=1;seg<e.path.length;seg++){const [ax,ay]=e.path[seg-1].map(c=>c*scale),[bx,by]=e.path[seg].map(c=>c*scale),len=Math.abs(bx-ax)+Math.abs(by-ay),dx=Math.sign(bx-ax),dy=Math.sign(by-ay);for(let j=seg===1?0:1;j<=len;j++)path.push(index(ax+j*dx,ay+j*dy));}
    const firstLength=scale*(Math.abs(e.path[1][0]-e.path[0][0])+Math.abs(e.path[1][1]-e.path[0][1])),cut=Math.floor(firstLength/2);
    path.forEach((idx,j)=>put(idx,j===cut?-2:j<cut?e.u:e.v));gates.push(path[cut]);
  }
  const horse=index(0,0),targets=Array.from({length:4},(_,v)=>(terminalMask&(1<<v))?M:-C);
  for(let v=0;v<4;v++){
    let itemCount=0;for(let i=0;i<owners.length;i++)if(owners[i]===v&&i!==horse)itemCount++;
    if((itemCount-targets[v])%2!==0){const [x,y]=positions[v].map(c=>c*scale),corner=index(x-radius,y-radius);if(owners[corner]!==v||corner===horse)throw Error("parity corner");owners[corner]=-1;itemCount--;}
    if(itemCount<Math.abs(targets[v]))throw Error("insufficient room capacity");
  }
  for(let i=0;i<owners.length;i++)if(owners[i]>=0)for(const j of [i-1,i+1,i-width,i+width])if(owners[j]>=0&&owners[j]!==owners[i])throw Error("ungated inter-group adjacency");
  for(let v=0;v<4;v++){
    const first=owners.indexOf(v),seen=new Set([first]),todo=[first];
    for(let qi=0;qi<todo.length;qi++)for(const j of [todo[qi]-1,todo[qi]+1,todo[qi]-width,todo[qi]+width])if(owners[j]===v&&!seen.has(j)){seen.add(j);todo.push(j);}
    let count=0;for(const owner of owners)if(owner===v)count++;
    if(seen.size!==count)throw Error("disconnected unwallable item group");
  }
  const weights=new Int8Array(owners.length),groupCells=Array.from({length:4},()=>[]);
  for(let i=0;i<owners.length;i++)if(owners[i]>=0)groupCells[owners[i]].push(i);else if(owners[i]===-2)weights[i]=1;
  for(let v=0;v<4;v++){const items=groupCells[v].filter(i=>i!==horse),cherries=(items.length+targets[v])/2;if(!Number.isInteger(cherries))throw Error("parity");items.forEach((i,j)=>weights[i]=j<cherries?4:-4);}
  weights[horse]=1;
  const gateIndex=new Int8Array(owners.length).fill(-1);gates.forEach((g,j)=>gateIndex[g]=j);
  for(let j=0;j<gates.length;j++){const g=gates[j],ns=[g-1,g+1,g-width,g+width].filter(i=>owners[i]>=0);if(ns.length!==2||new Set(ns.map(i=>owners[i])).size!==2)throw Error("gate degree/bypass");}
  let best=-Infinity,wallPlacements=0;
  for(let mask=0;mask<(1<<Q);mask++){
    const seen=new Uint8Array(owners.length),queue=[horse];seen[horse]=1;let score=0,g=0;
    for(let qi=0;qi<queue.length;qi++){const i=queue[qi];score+=weights[i];if(owners[i]===-2)g++;if(i%width===0||i%width===width-1||i<width||i>=width*(height-1))throw Error("unexpected escape");for(const j of [i-1,i+1,i-width,i+width])if(!seen[j]&&(owners[j]>=0||(owners[j]===-2&&!(mask&(1<<gateIndex[j]))))){seen[j]=1;queue.push(j);}}
    const reached=[];for(let v=0;v<4;v++){const count=groupCells[v].reduce((a,i)=>a+seen[i],0);if(count!==0&&count!==groupCells[v].length)throw Error("partly reachable item group");if(count)reached.push(v);}
    const e=reached.filter(v=>!!(terminalMask&(1<<v))).length,nonterm=reached.length-e;
    if(score!==1+4*e*M-4*nonterm*C+g)throw Error("actual tile score identity");
    best=Math.max(best,score);wallPlacements++;
  }
  const t=terminalMask.toString(2).split("1").length-1;
  let decisions=0;
  for(let B=0;B<=3;B++){
    let steiner=false;
    for(let subset=0;subset<(1<<Q);subset++){
      const count=subset.toString(2).split("1").length-1;if(count>B)continue;
      const reached=new Set([0]),todo=[0];
      for(let qi=0;qi<todo.length;qi++){const v=todo[qi];edges.forEach((e,j)=>{if(!(subset&(1<<j)))return;const w=e.u===v?e.v:e.v===v?e.u:-1;if(w>=0&&!reached.has(w)){reached.add(w);todo.push(w);}});}
      if(Array.from({length:4},(_,v)=>v).every(v=>!(terminalMask&(1<<v))||reached.has(v))){steiner=true;break;}
    }
    const K=B+1-t;
    if(K<0){if(steiner)throw Error("source preprocessing");}
    else {const threshold=1+4*t*M-4*K*C;if((best>=threshold)!==steiner)throw Error(JSON.stringify({edgeMask,terminalMask,B,best,threshold,steiner}));}
    decisions++;
  }
  return {wallPlacements,decisions,area:owners.length};
}

let boards=0,wallPlacements=0,sourceDecisionCases=0;
for(let edgeMask=0;edgeMask<64;edgeMask++)for(let terminalMask=1;terminalMask<16;terminalMask+=2){
  const r=inspectPlanarSteiner(edgeMask,terminalMask);
  boards++;wallPlacements+=r.wallPlacements;sourceDecisionCases+=r.decisions;
}
if(boards!==512||wallPlacements!==5832||sourceDecisionCases!==2048)throw Error("audit coverage changed");
console.log(JSON.stringify({
  boards,wallPlacements,sourceDecisionCases,
  thresholdComparisons:1280,
  preprocessedImpossibleSources:768,
  boardWidth:135,boardHeight:175,
  result:"all room connectivity, ungated adjacency, gate separation, parity, tile-score, enclosure and Steiner equivalence checks passed"
},null,2));
