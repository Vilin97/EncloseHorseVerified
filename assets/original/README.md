# Original enclose.horse artwork

`default.webp` is the unmodified default-theme sprite atlas retrieved from:

- Game: https://enclose.horse/
- Atlas: https://enclose.horse/themes/default.webp?v=4
- Sprite coordinate reference: https://enclose.horse/play.js
- Retrieved: 2026-10-20
- Dimensions: 576 × 94 pixels
- SHA-256: `d87f605d04fb7775e37e1e9d0733029d8f4c983f2b55fc4630c22f49498adb46`

The original artwork belongs to enclose.horse and its respective artists. It is
third-party material and is **not covered by this repository's MIT license**.
This repository does not claim ownership or grant a license to that artwork.

The native Lean infoview embeds this same atlas as a data URI in
`widget/encloseHorse.js`, so it can render offline without cross-origin image
requests. CSS crops select the original grass, water and shoreline, wheat,
horse, cube-wall, cherry, apple, bee, and portal pixels. The source atlas itself
is not cropped, repainted, or re-encoded. Ground and item frames animate every
400 ms. The player's enclosed region uses the original golden-wheat tiles.

All game rules, placement validation, reachability, scores, and exact solving
remain in the Lean implementation. JavaScript performs visual sprite selection
and collects pointer input.
