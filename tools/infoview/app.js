import { loadRenderInfoview } from '/dist/loader.production.min.js';
const doc = await fetch('/document').then(r => r.json());
if (doc.error) throw doc.error;
let info;
const queued = [];
const events = new EventSource('/events');
events.onmessage = e => { const v = JSON.parse(e.data); info ? info.gotServerNotification(v.method, v.params) : queued.push(v); };
async function lsp(method, params, notification = false) {
  const reply = await fetch('/lsp', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ method, params, notification }) }).then(r => r.json());
  if (reply.error) throw reply.error; return reply.result;
}
const sessions = new Map();
const editor = {
  sendClientRequest: (_uri, method, params) => lsp(method, params),
  sendClientNotification: (_uri, method, params) => lsp(method, params, true),
  subscribeServerNotifications: async () => {}, unsubscribeServerNotifications: async () => {},
  subscribeClientNotifications: async () => {}, unsubscribeClientNotifications: async () => {},
  saveConfig: async () => {}, copyToClipboard: async text => navigator.clipboard.writeText(text),
  insertText: async () => {}, applyEdit: async () => {}, showDocument: async () => {}, restartFile: async () => {},
  createRpcSession: async uri => {
    const { sessionId } = await lsp('$/lean/rpc/connect', { uri });
    const timer = setInterval(() => lsp('$/lean/rpc/keepAlive', { uri, sessionId }, true), 10000);
    sessions.set(sessionId, timer); return sessionId;
  },
  closeRpcSession: async id => { clearInterval(sessions.get(id)); sessions.delete(id); }
};
const lines = doc.text.split('\n');
let selected = Math.max(0, lines.findIndex(line => line.startsWith('#enclose_horse')));
function cursorLocation(line) { return { uri: doc.uri, range: { start: { line, character: 2 }, end: { line, character: 2 } } }; }
function move(line) {
  selected = line;
  document.querySelectorAll('.line').forEach((el, i) => el.classList.toggle('selected', i === line));
  info?.changedCursorLocation(cursorLocation(line));
}
document.querySelector('#editor-title').textContent = `${doc.filename}  ·  click a line to move the Lean cursor`;
lines.forEach((line, i) => {
  const element = document.createElement('div'); element.className = 'line' + (i === selected ? ' selected' : '');
  const number = document.createElement('span'); number.className = 'number'; number.textContent = i + 1;
  const code = document.createElement('span'); code.textContent = line;
  element.append(number, code); element.onclick = () => move(i); document.querySelector('#source').append(element);
});
loadRenderInfoview({
  '@leanprover/infoview': `${window.location.origin}/dist/index.production.min.js`,
  react: `${window.location.origin}/dist/react.production.min.js`,
  'react/jsx-runtime': `${window.location.origin}/dist/react-jsx-runtime.production.min.js`,
  'react-dom': `${window.location.origin}/dist/react-dom.production.min.js`
}, [editor, document.querySelector('#infoview')], async api => {
  info = api;
  await info.serverRestarted(doc.init);
  await info.initialize(cursorLocation(selected));
  for (const v of queued) await info.gotServerNotification(v.method, v.params);
});
