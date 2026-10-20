/**
 * Independent exhaustive audit of the Set Cover -> signed-portal Board reduction.
 * Run: node scripts/audit_hardness_reduction.mjs
 *
 * This is a regression check, not a replacement for the general mathematical
 * proof in docs/NP_Hardness.md. It constructs full 3-row tile boards and evaluates
 * every wall placement using a four-neighbor BFS with matching portal groups.
 * It does not use the reduction's score identity to evaluate the boards.
 *
 * The universe is explicit: elementCount is its cardinality, not a succinctly
 * encoded exponentially large set. The construction uses unbounded Nat labels
 * and repeated portal groups, as supported by the Lean Board model.
 */
function inspectInstance(s,u,bits,k) {
  const sets=Array.from({length:s},(_,i)=>Array.from({length:u},(_,e)=>e).filter(e=>!!(bits&(1<<(i*u+e)))));
  const inc=[];sets.forEach((xs,i)=>xs.forEach(e=>inc.push([i,e])));
  const Q=s+inc.length,C=Q+1,M=(s+2)*C,R=s+2;
  const P=l=>({t:"portal",l}),bee=()=>({t:"bee"}),W=()=>({t:"water"}),grass=()=>({t:"grass"});
  const gadgets=[[{t:"horse"},P(0)]];
  for(let i=0;i<s;i++)gadgets.push([P(0),grass(),P(i+1)]);
  for(const [i,e]of inc)gadgets.push([P(i+1),grass(),P(s+1+e)]);
  for(let i=0;i<s;i++){const n=1+sets[i].length+C;for(let j=0;j<n;j++)gadgets.push([P(i+1),bee()]);for(let j=0;j<2*n;j++)gadgets.push([P(i+1)]);}
  for(let e=0;e<u;e++){const d=inc.filter(p=>p[1]===e).length;for(let j=0;j<d;j++)gadgets.push([P(s+1+e),bee()]);for(let j=0;j<M+2*d;j++)gadgets.push([P(s+1+e)]);}
  const mid=[W()];for(const g of gadgets)mid.push(...g,W());
  const width=mid.length,tiles=[...Array.from({length:width},W),...mid,...Array.from({length:width},W)],groups=new Map(),candidates=[];
  let horse;
  tiles.forEach((t,i)=>{if(t.t==="portal"){if(!groups.has(t.l))groups.set(t.l,[]);groups.get(t.l).push(i);}if(t.t==="grass")candidates.push(i);if(t.t==="horse")horse=i;});
  if(width!==4+11*Q+7*inc.length+7*s*C+2*u*M)throw Error("width formula");
  const gateByIndex=new Map(candidates.map((idx,j)=>[idx,j]));
  let best=-Infinity,placements=0;
  for(let mask=0;mask<(1<<Q);mask++){
    const seen=new Set([horse]),queue=[horse],portalSeen=new Set();
    for(let qi=0;qi<queue.length;qi++){const i=queue[qi],t=tiles[i];let ns=[i-width,i+width];if(i%width!==0)ns.push(i-1);if(i%width!==width-1)ns.push(i+1);if(t.t==="portal"&&!portalSeen.has(t.l)){portalSeen.add(t.l);ns.push(...groups.get(t.l));}
      for(const j of ns)if(j>=0&&j<tiles.length&&!seen.has(j)&&tiles[j].t!=="water"&&!(gateByIndex.has(j)&&(mask&(1<<gateByIndex.get(j))))){seen.add(j);queue.push(j);}
    }
    if(queue.some(i=>i%width===0||i%width===width-1||Math.floor(i/width)===0||Math.floor(i/width)===2))throw Error("unexpected escape");
    const score=queue.reduce((v,i)=>v+(tiles[i].t==="bee"?-4:1),0);
    best=Math.max(best,score);placements++;
  }
  let covers=false;
  for(let chosen=0;chosen<(1<<s);chosen++){if(chosen.toString(2).split("1").length-1>k)continue;let ok=true;for(let e=0;e<u;e++)if(!sets.some((xs,i)=>!!(chosen&(1<<i))&&xs.includes(e)))ok=false;if(ok)covers=true;}
  const threshold=R+u*M-Math.min(k,s)*C;
  if((best>=threshold)!==covers)throw Error(JSON.stringify({s,u,bits,k,best,threshold,covers}));
  return{placements,width};
}

let inputs=0,placements=0,maxWidth=0;
for(let s=0;s<=2;s++)for(let u=0;u<=2;u++)for(let bits=0;bits<(1<<(s*u));bits++)for(let k=0;k<=s+1;k++){
  const r=inspectInstance(s,u,bits,k);
  inputs++;placements+=r.placements;maxWidth=Math.max(maxWidth,r.width);
}
for(const bits of [0,1,7,56,73,84,170,273,341,438,511])for(let k=0;k<=3;k++){
  const r=inspectInstance(3,3,bits,k);
  inputs++;placements+=r.placements;maxWidth=Math.max(maxWidth,r.width);
}
if(inputs!==155||placements!==22884||maxWidth!==862)throw Error("audit coverage changed");
console.log(JSON.stringify({inputs,wallPlacementsTested:placements,maxBoardWidth:maxWidth,result:"all score-threshold equivalences, exact width formulas, and no-escape checks passed"},null,2));
