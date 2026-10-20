# Hosting the actual Lean infoview

The recommended UI is the Lean 4 extension in VS Code: open `Demo.lean` and put
the cursor on a `#enclose_horse` command. No JavaScript build or extra Lean
package is needed.

This directory additionally provides a tiny editor host for the **official
`@leanprover/infoview` package**, connected to `lake env lean --server` by a real
LSP bridge. It can reproduce the screenshots without installing VS Code.

```sh
lake build
cd tools
npm ci
npm run infoview
# Open http://127.0.0.1:8765, then click a #enclose_horse line.
```

The left pane displays the source file and moves the Lean cursor when clicked.
The right pane is Lean's own infoview. It fetches the registered widget source
from the Lean server, and every wall click, score update, and solver request
uses Lean RPC. There is no JavaScript implementation of game rules or search.
This small editor host displays an immutable source document; use VS Code to
edit it.

For automated integration tests and screenshots:

```sh
cd tools
npm ci
npx playwright install --with-deps chromium
npm run screenshots
```

The test captures initial, manually played, optimal, and portal-board views in
`docs/screenshots/`. It wins the first tutorial by clicking, resets it, solves it,
removes and replaces the necessary wall, and switches levels to check live RPC
evaluation and fresh board state. Screenshots are actual browser captures,
not rendered mockups.

`Widget.lean` embeds `widget/encloseHorse.js` with `include_str`. Lean's standard
`include_str` does not track a changed JavaScript file as a Lake dependency;
after changing the widget, touch `EncloseHorseVerified/Widget.lean` or run
`lake clean && lake build` before restarting the Lean server.
