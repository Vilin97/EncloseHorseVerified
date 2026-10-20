/** Automated UI integration check for CI: screenshots come from the real Lean infoview. */
import { chromium } from '@playwright/test';
import { spawn } from 'node:child_process';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const here = path.dirname(fileURLToPath(import.meta.url));
const root = path.dirname(here);
const output = path.join(root, 'docs/screenshots');
fs.mkdirSync(output, { recursive: true });
const host = spawn(process.execPath, [path.join(here, 'infoview-server.mjs'), '../Demo.lean', '8765'], { cwd: here, stdio: 'inherit' });
let browser;
try {
  for (let i = 0; i < 100; i++) {
    try { const response = await fetch('http://127.0.0.1:8765/document'); if (response.ok) break; } catch {}
    await new Promise(resolve => setTimeout(resolve, 200));
  }
  browser = await chromium.launch({ headless: true });
  const page = await browser.newPage({ viewport: { width: 1360, height: 1000 }, deviceScaleFactor: 1 });
  const errors = [];
  const solverSeeds = [];
  page.on('request', request => {
    if (request.url().endsWith('/lsp') && request.method() === 'POST') {
      const body = request.postDataJSON();
      if (body.method === '$/lean/rpc/call' && body.params.method === 'EncloseHorse.Widget.findOptimal') {
        solverSeeds.push(body.params.params.walls);
      }
    }
  });
  page.on('pageerror', error => errors.push(error.message));
  await page.goto('http://127.0.0.1:8765/');
  await page.getByRole('region', { name: 'Enclose Horse interactive Lean widget' }).waitFor({ timeout: 90000 });
  // The displayed board must load the original atlas, rather than fallback glyphs.
  const atlas = await page.locator('[data-original-sprite="horse"]').evaluate(el =>
    getComputedStyle(el).backgroundImage.slice(5, -2));
  if (!atlas.startsWith('data:image/webp;base64,')) throw new Error('Original sprite atlas is missing');
  await page.evaluate(async src => { const image = new Image(); image.src = src; await image.decode(); }, atlas);
  await page.screenshot({ path: path.join(output, 'infoview-initial.png'), fullPage: true });
  // The game is manually playable: one click closes the official first tutorial.
  await page.getByRole('button', { name: 'row 2 column 7 grass', exact: true }).click();
  await page.getByText('✓ Enclosed', { exact: true }).waitFor({ timeout: 30000 });
  await page.screenshot({ path: path.join(output, 'infoview-manual-play.png'), fullPage: true });
  // The current manually placed enclosure is forwarded as a checked seed.
  await page.getByRole('button', { name: 'Find optimal solution', exact: true }).click();
  await page.getByText('✓ Exact optimum · proved branch-and-bound').waitFor({ timeout: 120000 });
  if (JSON.stringify(solverSeeds.at(-1)) !== '[23]') throw new Error('Current walls were not passed as solver seed');
  await page.getByRole('button', { name: 'Reset', exact: true }).click();
  await page.getByText('↗ Horse can escape', { exact: true }).waitFor({ timeout: 30000 });
  await page.getByRole('button', { name: 'Find optimal solution', exact: true }).click();
  await page.getByText('✓ Exact optimum · proved branch-and-bound').waitFor({ timeout: 120000 });
  if (JSON.stringify(solverSeeds.at(-1)) !== '[]') throw new Error('Reset did not clear the solver seed');
  await page.getByText('15', { exact: true }).last().waitFor();
  await page.screenshot({ path: path.join(output, 'infoview-optimal.png'), fullPage: true });
  // Remove a necessary wall: this must perform a Lean RPC and report an escape.
  await page.getByRole('button', { name: 'row 2 column 7 wall', exact: true }).click();
  await page.getByText('↗ Horse can escape', { exact: true }).waitFor({ timeout: 30000 });
  await page.getByRole('button', { name: 'row 2 column 7 grass', exact: true }).click();
  await page.getByText('✓ Enclosed', { exact: true }).waitFor({ timeout: 30000 });
  // Moving the Lean cursor must initialize the newly selected board.
  await page.getByText('#enclose_horse tutorial5', { exact: true }).click();
  await page.getByText('0 / 3', { exact: true }).waitFor({ timeout: 30000 });
  await page.getByRole('button', { name: 'row 1 column 6 portal:0', exact: true }).waitFor();
  await page.screenshot({ path: path.join(output, 'infoview-portals.png'), fullPage: true });
  await page.getByText('#enclose_horse tutorial4', { exact: true }).click();
  await page.getByText('0 / 6', { exact: true }).waitFor({ timeout: 30000 });
  await page.getByRole('button', { name: 'row 2 column 5 apple', exact: true }).waitFor();
  await page.screenshot({ path: path.join(output, 'infoview-items.png'), fullPage: true });
  await page.getByText('#enclose_horse tutorial1', { exact: true }).click();
  await page.getByText('0 / 1', { exact: true }).waitFor({ timeout: 30000 });
  if (errors.length) throw new Error(errors.join('\n'));
  console.log('PASS: native infoview module, exact search RPC, score, placement toggles, and screenshots.');
} finally {
  await browser?.close(); host.kill('SIGINT');
}
