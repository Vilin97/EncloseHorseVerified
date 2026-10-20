import * as React from 'react';
import { RpcContext, mapRpcError } from '@leanprover/infoview';

const h = React.createElement;
const icons = { grass: '', water: '≈', horse: '🐴', cherry: '🍒', apple: '🍎', bee: '🐝' };
const style = {
  panel: { fontFamily: 'system-ui, sans-serif', maxWidth: 650, padding: 18, borderRadius: 14, background: '#101b21', color: '#e4f1e8', border: '1px solid #2d443e' },
  button: { background: '#28463c', color: '#edfff3', border: '1px solid #4a7460', borderRadius: 7, padding: '8px 12px', cursor: 'pointer', fontSize: 13 },
  metric: { background: '#192d29', padding: '9px 13px', borderRadius: 8 },
};

/** Native Lean infoview component. All game evaluation and exact search runs in Lean RPC. */
export default function EncloseHorse(props) {
  const rpc = React.useContext(RpcContext);
  const [view, setView] = React.useState(props.initial);
  const [walls, setWalls] = React.useState(props.initial.walls);
  const [busy, setBusy] = React.useState(false);
  const [error, setError] = React.useState('');
  const [optimal, setOptimal] = React.useState(false);
  const revision = React.useRef(0);
  React.useEffect(() => {
    ++revision.current;
    setView(props.initial); setWalls(props.initial.walls);
    setBusy(false); setError(''); setOptimal(false);
  }, [props.state, props.initial]);
  const act = async (next, solve = false) => {
    const token = ++revision.current;
    setBusy(true); setError('');
    try {
      const result = await rpc.call(solve ? 'EncloseHorse.Widget.findOptimal' : 'EncloseHorse.Widget.evaluate', { state: props.state, walls: next });
      if (token !== revision.current) return;
      setView(result); setWalls(result.walls); setOptimal(solve && result.enclosed);
    } catch (e) {
      if (token === revision.current) setError(mapRpcError(e).message);
    } finally { if (token === revision.current) setBusy(false); }
  };
  const toggle = (i) => {
    if (busy || view.tiles[i] !== 'grass') return;
    const next = walls.includes(i) ? walls.filter(x => x !== i) : [...walls, i].sort((a,b) => a-b);
    if (next.length <= view.budget) act(next);
  };
  const wallSet = new Set(walls), reached = new Set(view.reached);
  const tileSize = Math.min(45, Math.floor(520 / Math.max(view.width, 1)));
  const cells = view.tiles.map((tile, i) => {
    const wall = wallSet.has(i), inside = reached.has(i);
    const portal = tile.startsWith('portal:');
    const color = wall ? '#bf966a' : tile === 'water' ? '#244854' : inside ? (view.enclosed ? '#8ec581' : '#aa8b56') : '#35583f';
    return h('button', {
      key: i, type: 'button', onClick: () => toggle(i), disabled: busy || tile !== 'grass',
      title: `(${Math.floor(i / view.width)}, ${i % view.width}) · ${wall ? 'wall' : tile}`,
      'aria-label': `row ${Math.floor(i / view.width)} column ${i % view.width} ${wall ? 'wall' : tile}`,
      style: { width: tileSize, height: tileSize, border: '1px solid #142a24', borderRadius: 3, padding: 0, fontSize: tile === 'water' ? 25 : Math.max(14, tileSize * .54), lineHeight: 1,
        background: color, color: portal ? '#f7dcff' : '#e9f8e4', opacity: 1, cursor: tile === 'grass' && !busy ? 'pointer' : 'default', boxShadow: wall ? 'inset 0 3px 0 #d9b080, inset 0 -3px 0 #916d4e' : 'none' }
    }, wall ? '▰' : portal ? tile.slice(7) : icons[tile] ?? '?');
  });
  return h('section', { style: style.panel, 'aria-label': 'Enclose Horse interactive Lean widget' },
    h('div', { style: { display: 'flex', justifyContent: 'space-between', alignItems: 'baseline', gap: 12 } },
      h('h2', { style: { margin: '0 0 4px', fontSize: 23, letterSpacing: '-.5px' } }, 'Enclose Horse'),
      h('span', { style: { fontSize: 11, color: '#b0d9bf', border: '1px solid #3c6551', padding: '4px 7px', borderRadius: 12 } }, 'LEAN INFOVIEW')),
    h('p', { style: { margin: '0 0 15px', fontSize: 12, color: '#b0cbbd' } }, 'Click grass to place walls. The horse moves in four directions and through matching portals.'),
    h('div', { style: { display: 'flex', gap: 9, marginBottom: 15, fontSize: 13, flexWrap: 'wrap' } },
      h('div', { style: style.metric }, 'Walls ', h('strong', null, `${walls.length} / ${view.budget}`)),
      h('div', { style: style.metric }, 'Score ', h('strong', null, view.score)),
      h('div', { style: { ...style.metric, color: view.enclosed ? '#b2f0b3' : '#ffd5a3' } }, view.enclosed ? '✓ Enclosed' : '↗ Horse can escape')),
    h('div', { style: { display: 'grid', gridTemplateColumns: `repeat(${view.width}, ${tileSize}px)`, gap: 2, width: 'fit-content', padding: 5, background: '#0a1317', borderRadius: 7 } }, cells),
    h('div', { style: { display: 'flex', gap: 8, marginTop: 15, alignItems: 'center', flexWrap: 'wrap' } },
      h('button', { style: style.button, disabled: busy, onClick: () => act([], true) }, busy ? 'Computing in Lean…' : 'Find optimal solution'),
      h('button', { style: { ...style.button, background: 'transparent' }, disabled: busy, onClick: () => act([]) }, 'Reset'),
      optimal && h('span', { style: { fontSize: 12, color: '#b2f0b3' } }, '✓ Exact optimum · solve_optimal theorem')),
    error && h('p', { role: 'alert', style: { color: '#ffb6a8', fontSize: 12 } }, error),
    h('p', { style: { marginBottom: 0, color: '#8aada0', fontSize: 11, lineHeight: 1.5 } }, 'Scores and reachability are evaluated by Lean. Exact search has a general optimality proof; displaying a result does not itself create a theorem. Use the tactic to certify a concrete result.')
  );
}
