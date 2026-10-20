/** A small editor host for the real @leanprover/infoview, backed by Lean LSP.
 * Not a simulation: user-widget modules, references, and RPC all come from Lean.
 * Usage: cd tools && npm ci && npm run infoview -- [../Demo.lean] [8765]
 */
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';
import { spawn } from 'node:child_process';

const here = path.dirname(fileURLToPath(import.meta.url));
const root = path.dirname(here);
const filename = path.resolve(here, process.argv[2] ?? '../Demo.lean');
const port = Number(process.argv[3] ?? 8765);
const uri = pathToFileURL(filename).href;
const text = fs.readFileSync(filename, 'utf8');
const infoviewDir = path.join(here, 'node_modules/@leanprover/infoview/dist');
const lean = spawn('lake', ['env', 'lean', '--server'], { cwd: root, stdio: ['pipe', 'pipe', 'pipe'] });
let seq = 0, buffer = Buffer.alloc(0);
const pending = new Map(), listeners = new Set(), backlog = [];
lean.stderr.on('data', data => process.stderr.write(data));
lean.on('exit', code => { console.error(`Lean server stopped (${code}).`); process.exitCode = 1; });
function write(message) {
  const body = JSON.stringify({ jsonrpc: '2.0', ...message });
  lean.stdin.write(`Content-Length: ${Buffer.byteLength(body)}\r\n\r\n${body}`);
}
function request(method, params) {
  const id = ++seq;
  return new Promise((resolve, reject) => { pending.set(id, { resolve, reject }); write({ id, method, params }); });
}
function notify(method, params) { write({ method, params }); }
function broadcast(message) {
  backlog.push(message); if (backlog.length > 100) backlog.shift();
  for (const listener of listeners) listener.write(`data: ${JSON.stringify(message)}\n\n`);
}
lean.stdout.on('data', chunk => {
  buffer = Buffer.concat([buffer, chunk]);
  while (true) {
    const end = buffer.indexOf('\r\n\r\n'); if (end < 0) break;
    const length = Number(/Content-Length:\s*(\d+)/i.exec(buffer.subarray(0, end).toString())?.[1]);
    if (!Number.isFinite(length)) throw new Error('Invalid Lean LSP header');
    if (buffer.length < end + 4 + length) break;
    const message = JSON.parse(buffer.subarray(end + 4, end + 4 + length));
    buffer = buffer.subarray(end + 4 + length);
    if ('id' in message && !message.method) {
      const p = pending.get(message.id); pending.delete(message.id);
      if (p) message.error ? p.reject(message.error) : p.resolve(message.result);
    } else if (message.method && 'id' in message) {
      // The host has one immutable editor document and no workspace edits.
      write({ id: message.id, result: null });
    } else broadcast(message);
  }
});
const initialized = request('initialize', {
  processId: process.pid, rootUri: pathToFileURL(root).href,
  capabilities: { textDocument: { publishDiagnostics: { relatedInformation: true }, synchronization: { didSave: true } }, experimental: { silentDiagnosticSupport: true } },
  initializationOptions: { hasWidgets: true }
}).then(result => {
  notify('initialized', {});
  notify('textDocument/didOpen', { textDocument: { uri, languageId: 'lean4', version: 1, text } });
  return result;
});

const mime = { '.html': 'text/html', '.js': 'text/javascript', '.css': 'text/css', '.ttf': 'font/ttf' };
const server = http.createServer(async (req, res) => {
  try {
    const url = new URL(req.url, `http://localhost:${port}`);
    if (url.pathname === '/events') {
      res.writeHead(200, { 'Content-Type': 'text/event-stream', 'Cache-Control': 'no-cache', Connection: 'keep-alive' });
      listeners.add(res); for (const entry of backlog) res.write(`data: ${JSON.stringify(entry)}\n\n`);
      req.on('close', () => listeners.delete(res)); return;
    }
    if (url.pathname === '/document') {
      const init = await initialized;
      res.setHeader('Content-Type', 'application/json');
      res.end(JSON.stringify({ uri, text, filename: path.basename(filename), init })); return;
    }
    if (url.pathname === '/lsp' && req.method === 'POST') {
      let body = ''; for await (const chunk of req) body += chunk;
      const value = JSON.parse(body);
      const result = value.notification ? notify(value.method, value.params) : await request(value.method, value.params);
      res.setHeader('Content-Type', 'application/json'); res.end(JSON.stringify({ result })); return;
    }
    const target = url.pathname === '/' ? path.join(here, 'infoview/index.html') :
      url.pathname === '/app.js' ? path.join(here, 'infoview/app.js') :
      url.pathname.startsWith('/dist/') ? path.join(infoviewDir, path.basename(url.pathname)) : null;
    if (!target || !fs.existsSync(target)) { res.writeHead(404); res.end('Not found'); return; }
    res.setHeader('Content-Type', mime[path.extname(target)] ?? 'application/octet-stream');
    fs.createReadStream(target).pipe(res);
  } catch (error) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify({ error: { code: error.code ?? -32603, message: error.message ?? String(error) } }));
  }
});
server.listen(port, '0.0.0.0', () => console.log(`Real Lean infoview: http://127.0.0.1:${port} (${filename})`));
process.on('SIGINT', () => { lean.kill(); server.close(); process.exit(); });
