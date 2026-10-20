import * as React from 'react';
import { RpcContext, mapRpcError } from '@leanprover/infoview';

const h = React.createElement;
// Original enclose.horse default-theme pixels. See assets/original/README.md.
// Embedded so the native infoview has no cross-origin image dependency.
const ORIGINAL_THEME = 'data:image/webp;base64,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';
const ATLAS_WIDTH = 576, ATLAS_HEIGHT = 94;

/** Crop a sprite without resampling the original pixel artwork. */
function sprite(key, rect, size, x = 0, y = 0, width = size, height = size, flipX = false) {
  const [sx, sy, sw, sh] = rect;
  const scaleX = width / sw, scaleY = height / sh;
  return h('span', { key, 'aria-hidden': true, 'data-original-sprite': key,
    style: { position: 'absolute', pointerEvents: 'none', display: 'block',
      left: x, top: y, width, height, backgroundImage: `url(${ORIGINAL_THEME})`,
      backgroundSize: `${ATLAS_WIDTH * scaleX}px ${ATLAS_HEIGHT * scaleY}px`,
      backgroundPosition: `${-sx * scaleX}px ${-sy * scaleY}px`,
      backgroundRepeat: 'no-repeat', imageRendering: 'pixelated',
      transform: flipX ? 'scaleX(-1)' : undefined }
  });
}
const atlasTile = (col, row = 0) => [col * 18 + 1, row * 18 + 1, 16, 16];

/** Shoreline selection uses only terrain; horse reachability still comes from Lean. */
function waterSprites(view, i, size, frame) {
  const x = i % view.width, y = Math.floor(i / view.width);
  const land = (dx, dy) => x + dx < 0 || y + dy < 0 || x + dx >= view.width || y + dy >= view.height ||
    view.tiles[(y + dy) * view.width + x + dx] !== 'water';
  const up = land(0, -1), right = land(1, 0), down = land(0, 1), left = land(-1, 0);
  const mask = (up ? 1 : 0) | (right ? 2 : 0) | (down ? 4 : 0) | (left ? 8 : 0);
  const row = frame % 2, alt = i % 2, half = size / 2;
  const layers = [];
  if (left && right && !up && !down) {
    layers.push(sprite('water-left', [(4 + alt) * 18 + 1, row * 18 + 1, 8, 16], size, 0, 0, half, size));
    layers.push(sprite('water-right', [(5 - alt) * 18 + 1, row * 18 + 1, 8, 16], size, half, 0, half, size, true));
  } else if (up && down && !left && !right) {
    layers.push(sprite('water-top', [(6 + alt) * 18 + 1, row * 18 + 1, 16, 8], size, 0, 0, size, half));
    layers.push(sprite('water-bottom', [8 * 18 + 1, row * 18 + 9, 16, 8], size, 0, half, size, half));
  } else {
    const shoreline = {
      0: [2, false], 1: [6 + alt, false], 2: [4 + alt, true], 4: [8, false], 8: [4 + alt, false],
      9: [9, false], 3: [9, true], 12: [10, false], 6: [10, true],
      11: [11, false], 14: [12, false], 13: [13, false], 7: [13, true], 15: [14, false]
    }[mask];
    layers.push(sprite('water', atlasTile(shoreline?.[0] ?? 2, row), size, 0, 0, size, size, shoreline?.[1]));
  }
  // Curved land corners where only a diagonal neighbor touches the water.
  const cornerX = row === 0 ? 1 : 10;
  if (land(-1, -1) && !left && !up) layers.push(sprite('shore-nw', [cornerX, 37, 8, 8], size, 0, 0, half, half));
  if (land(1, -1) && !right && !up) layers.push(sprite('shore-ne', [cornerX, 37, 8, 8], size, half, 0, half, half, true));
  if (land(-1, 1) && !left && !down) layers.push(sprite('shore-sw', [cornerX, 46, 8, 8], size, 0, half, half, half));
  if (land(1, 1) && !right && !down) layers.push(sprite('shore-se', [cornerX, 46, 8, 8], size, half, half, half, half, true));
  if (mask === 0 && i % 10 < 7) layers.push(sprite('water-ripples', atlasTile(3, row), size));
  return layers;
}

function tileSprites(view, i, size, wall, inside, frame) {
  const tile = view.tiles[i], golden = inside && view.enclosed;
  if (tile === 'water') return waterSprites(view, i, size, frame);
  const special = tile !== 'grass' && !tile.startsWith('portal:');
  const grassCol = golden ? (special ? 26 : [23, 24, 25, 24][frame % 4]) : (i % 13 === 1 ? 1 : 0);
  const layers = [sprite('ground', atlasTile(grassCol, golden ? 0 : (i + frame) % 2), size)];
  if (wall) {
    layers.push(sprite('wall', [19 * 18 + 1, 37, 16, 24], size, 0, -size / 2, size, size * 1.5));
  } else if (tile === 'horse') {
    const col = golden ? (frame % 2 ? 29 : 27) : (frame % 2 ? 23 : 21);
    const width = size * .9, height = width * 28 / 29;
    layers.push(sprite('horse', [col * 18 + 1, 37, 29, 28], size, (size - width) / 2, (size - height) / 2, width, height));
  } else if (tile === 'cherry' || tile === 'apple' || tile === 'bee') {
    const col = { cherry: 29, apple: 30, bee: 31 }[tile];
    layers.push(sprite(tile, atlasTile(col, frame % 2), size));
  } else if (tile.startsWith('portal:')) {
    const label = Number(tile.slice(7));
    layers.push(sprite('portal', atlasTile(15 + frame % 4), size));
    layers.push(h('span', { key: 'portal-label', 'aria-hidden': true, style: {
      position: 'absolute', pointerEvents: 'none', bottom: 0, right: 2, color: '#fff',
      font: `bold ${Math.max(10, size * .27)}px system-ui`, textShadow: '1px 1px 0 #14242b, -1px -1px 0 #14242b'
    } }, label < 10 ? String(label) : String.fromCharCode(97 + label - 10)));
  }
  return layers;
}
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
  const [frame, setFrame] = React.useState(0);
  React.useEffect(() => {
    const timer = setInterval(() => setFrame(value => (value + 1) % 4), 400);
    return () => clearInterval(timer);
  }, []);
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
  const tileSize = Math.min(48, Math.floor(520 / Math.max(view.width, 1)));
  const cells = view.tiles.map((tile, i) => {
    const wall = wallSet.has(i), inside = reached.has(i);
    const layers = tileSprites(view, i, tileSize, wall, inside, frame);
    return h('button', {
      key: i, type: 'button', onClick: () => toggle(i), disabled: busy || tile !== 'grass',
      title: `(${Math.floor(i / view.width)}, ${i % view.width}) · ${wall ? 'wall' : tile}`,
      'aria-label': `row ${Math.floor(i / view.width)} column ${i % view.width} ${wall ? 'wall' : tile}`,
      style: { position: 'relative', width: tileSize, height: tileSize, border: 0, borderRadius: 0, padding: 0, lineHeight: 1,
        background: tile === 'water' ? '#1e5368' : '#287640', opacity: 1, overflow: 'visible',
        zIndex: Math.floor(i / view.width) * 2 + (wall ? 1 : 0),
        cursor: tile === 'grass' && !busy ? 'pointer' : 'default',
        outlineOffset: -2, boxShadow: 'inset 0 0 0 1px rgba(255,255,255,.08)' }
    }, layers);
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
    h('div', { style: { display: 'grid', gridTemplateColumns: `repeat(${view.width}, ${tileSize}px)`, gap: 0, width: 'fit-content', padding: 2, background: '#183d39', borderRadius: 3 } }, cells),
    h('div', { style: { display: 'flex', gap: 8, marginTop: 15, alignItems: 'center', flexWrap: 'wrap' } },
      h('button', { style: style.button, disabled: busy, onClick: () => act([], true) }, busy ? 'Computing in Lean…' : 'Find optimal solution'),
      h('button', { style: { ...style.button, background: 'transparent' }, disabled: busy, onClick: () => act([]) }, 'Reset'),
      optimal && h('span', { style: { fontSize: 12, color: '#b2f0b3' } }, '✓ Exact optimum · solve_optimal theorem')),
    error && h('p', { role: 'alert', style: { color: '#ffb6a8', fontSize: 12 } }, error),
    h('p', { style: { marginBottom: 0, color: '#8aada0', fontSize: 11, lineHeight: 1.5 } }, 'Original enclose.horse artwork · Scores and reachability are evaluated by Lean. Exact search has a general optimality proof; displaying a result does not itself create a theorem. Use the tactic to certify a concrete result.')
  );
}
