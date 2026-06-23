# Symbolen-maker (Plan B) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development to execute this plan. Dispatch each Step to a subagent, verify its work against the stated verification before moving on, and never let a later task start before the earlier one is committed and green. There is no jsdom/browser in this environment, so verification is grep + a Node JS-parse check + curl of a locally served copy; visual/rendering correctness is explicitly deferred to manual human verification.

**Goal**
Rebuild the "Nieuw symbool" maker in `lcms-bibliotheek/index.html` so that (1) the 4 pointer templates support three independently chosen colours — buitenrand (thin outer line), rand (ring band), vul (inner area) — instead of the current two; (2) step 3 offers three colour pickers prefilled from the selected sender (with a per-sender `buitenrand` default of `#000`); (3) the maker's icon source is the repo-wide CATALOG (svg entries) plus the existing SVG upload, instead of the obsolete `symbolen/` scrape; and (4) all now-dead code from the removed Bibliotheek and Controle tabs, plus the superseded `build_symbolen.py` / `test_build_symbolen.py` / `symbolen-manifest.json`, are deleted and the maker is decoupled from the old library `rebuild()`.

**Architecture**
One static HTML file (`lcms-bibliotheek/index.html`) with vanilla JS, no build step. The maker is a 3-step wizard. The colour model flows: a `SENDERS[key]` preset (`{label, fill, ink, buitenrand?}`) seeds three picker overrides (`vulOverride`, `randOverride`, `buitenOverride`); `wizCompose()` resolves the three effective colours and passes them to `POINTER_TYPES[key].shape(vul, rand, buitenrand)`. For the 4 real templates fetched from `lcms-bibliotheek/lcms-svgs/template/*.svg`, `shape` delegates to `templateShape(svg, vul, rand, buitenrand)`, which recolours the inner fill, recolours the black ring to `rand`, and adds a `stroke="<buitenrand>"` to the black ring path so the thin outer line is realized as a stroke. The icon picker reads `CATALOG.filter(e=>e.type==='svg')` (already loaded by `loadCatalog()`), fetches `'../'+entry.path`, and feeds the unchanged `ingestNewIcon()` pipeline. The Catalogus tab and theme toggle are untouched.

**Tech Stack**
- Frontend: one static `index.html`, vanilla JS (no framework, no bundler, no npm).
- Python: stdlib-only, Python 3.11; tests via `python3 -m unittest` (only relevant for the files being *deleted* in B4 — no new Python here).
- Verification (no browser/jsdom): `grep` for presence/absence of symbols; a Node syntax-only parse check that extracts the `<script>` body and runs `new Function(body)` (parses, does not execute, since there is no DOM); `curl` against a repo-root `python3 -m http.server 8777` (app at `http://127.0.0.1:8777/lcms-bibliotheek/`). Visual/rendering correctness deferred to manual human verification.

## Global Constraints

- **Vanilla JS only.** No new dependencies, no build step, no framework. All maker code stays inline in `lcms-bibliotheek/index.html`.
- **Python stdlib only**, Python 3.11; no third-party packages. (Plan B only *deletes* Python; it adds none.)
- **No `Co-Authored-By` trailer** on any commit in this plan. Commit messages are plain.
- **`templateShape` signature is exactly `templateShape(svgStr, vul, rand, buitenrand)`** — three colour arguments, in that order.
- **Sender `buitenrand` default is `#000`** — read in code with `sender.buitenrand || '#000'`; the `SENDERS` manifest/object is NOT required to add the field to every entry.
- **Icon source for the maker = CATALOG svg entries + SVG upload.** No `symbolen/` directory scrape, no `symbolen-manifest.json`.
- **Verification = grep + Node parse-check + curl; no jsdom.** Visual rendering is deferred to manual human verification. Never claim a wizard renders correctly from these checks alone.
- **Branch:** work on `lcms-symbolen-icoon-keuze` (already checked out).
- **The actual template SVGs each contain exactly two paths:** one `fill="#000"` (combined ring outline + band) and one inner-fill path (`#D5D5D5` for incident/eenheid/gebeurtenis, `#D8D8D8` for object). There is no pre-existing third region; the buitenrand is therefore realized as a *stroke added to the black ring path*, not as a separate fill region. The recolor regexes must treat `#D8D8D8` like any non-black, non-none fill (the existing `(?!none|#000…|black)` negative-lookahead already does).

## File Structure

| Path | Change | Why |
|---|---|---|
| `lcms-bibliotheek/index.html` | edit (B1, B2, B3, B4) | the whole app; all maker logic + markup lives here |
| `lcms-bibliotheek/lcms-svgs/template/*.svg` | read-only | source for the 4 fetched templates; not modified by Plan B |
| `lcms-bibliotheek/build_symbolen.py` | delete (B4) | superseded by repo-root `build_catalog.py` |
| `lcms-bibliotheek/test_build_symbolen.py` | delete (B4) | tests the deleted script |
| `lcms-bibliotheek/symbolen-manifest.json` | delete (B4) | manifest of the obsolete `symbolen/` icon source |

> Note: the three superseded files live in `lcms-bibliotheek/`, NOT repo root. `build_catalog.py` (repo root) and `lcms-bibliotheek/catalog-manifest.json` already exist and are the replacement; they are NOT touched here. The `lcms-bibliotheek/symbolen/` *directory* of SVGs is itself part of the catalog and is NOT deleted — only the maker's dependency on scraping it is removed.

---

## Task B1 — 3-colour `templateShape` + sender `buitenrand` default

**Files:** `lcms-bibliotheek/index.html`

**Interfaces:**
- `templateShape(svgStr, vul, rand, buitenrand)` → string (inner SVG markup)
- `POINTER_TYPES[key].shape(vul, rand, buitenrand)` → string (inner SVG markup) — for all 4 keys (`incident`, `eenheid`, `object`, `gebeurtenis`)
- `fetchTemplates()` sets `pt.shape = (vul,rand,buitenrand)=>templateShape(svg,vul,rand,buitenrand)`
- `SENDERS[key]` may carry optional `buitenrand`; read as `SENDERS[key].buitenrand || '#000'` (no manifest change required)

### Step 1: Rewrite `templateShape` to 3 colours + buitenrand stroke

Find this exact block (around lines 854–867):

```js
/* vervangt de vul- en randkleur in een template SVG met de afzenderkleuren.
   Template-conventie: het zwarte vlak (#000/#000000/black) is de rand,
   het overige gekleurde vlak (niet 'none') is de vulling. */
function templateShape(svgStr, fill, ink) {
  let out = svgStr;
  /* eerst inner-fill: alles wat NIET zwart en NIET none is */
  out = out.replace(/\bfill="(?!none|#000(?:000)?|black)([^"]*)"/gi, `fill="${fill}"`);
  /* daarna de rand: zwart → ink */
  if (ink) {
    out = out.replace(/\bfill="(#000(?:000)?|black)"/gi, `fill="${ink}"`);
  }
  const inner = out.match(/<svg[^>]*>([\s\S]*?)<\/svg>/i);
  return inner ? inner[1].trim() : '';
}
```

Replace it with:

```js
/* Kleurt een template-SVG in met drie onafhankelijke kleuren:
   - vul        → elk gekleurd vlak dat NIET zwart en NIET 'none' is (binnenvlak)
   - rand       → het zwarte vlak (#000/#000000/black) = de ringband
   - buitenrand → als dunne buitenlijn op datzelfde zwarte (ring)pad, via stroke
   De templates hebben twee paden: een zwart ringpad en een binnenvlak; de
   buitenrand bestaat niet als eigen vlak en wordt daarom als stroke op het
   ringpad gerealiseerd (stroke-width 2). Geeft de inner-markup van de SVG terug. */
function templateShape(svgStr, vul, rand, buitenrand) {
  let out = svgStr;
  /* 1. binnenvlak: alles wat NIET zwart en NIET none is → vul */
  out = out.replace(/\bfill="(?!none|#000(?:000)?|black)([^"]*)"/gi, `fill="${vul}"`);
  /* 2. ringpad: zwart → rand, en voeg meteen de buitenrand-stroke toe op datzelfde
        element (één regex-vervanging zodat de stroke alleen op de ring(en) landt) */
  out = out.replace(/\bfill="(#000(?:000)?|black)"/gi,
    `fill="${rand}" stroke="${buitenrand}" stroke-width="2"`);
  const inner = out.match(/<svg[^>]*>([\s\S]*?)<\/svg>/i);
  return inner ? inner[1].trim() : '';
}
```

Rationale grounded in the real SVGs: each template's first path is `fill="#000"` (the full ring), the second is the inner fill. Recoloring black→`rand` and stamping a `stroke`/`stroke-width` onto exactly those black paths gives an independent thin outer line without a dedicated region. The vul regex's negative lookahead already covers `#D8D8D8` (object) and `#D5D5D5` (others).

### Step 2: Update the 4 `POINTER_TYPES` fallback `shape` functions to the 3-colour signature

Find this exact block (around lines 843–852):

```js
const POINTER_TYPES = {
  incident:    {label:"Incident",    desc:"Badge met punt",   iconCx:61, iconCy:40, iconSize:52,
    shape:(f,s)=>`<path d="M60.5,6 L115,60.5 L60.5,115 L6,60.5 Z" fill="${f}" stroke="${s}" stroke-width="3"/>`},
  eenheid:     {label:"Eenheid",     desc:"Ronde vorm",       iconCx:60, iconCy:60, iconSize:58,
    shape:(f,s)=>`<circle cx="60.5" cy="60.5" r="54" fill="${f}" stroke="${s}" stroke-width="3"/>`},
  object:      {label:"Object",      desc:"Spraakballon",     iconCx:61, iconCy:55, iconSize:65,
    shape:(f,s)=>`<rect x="8" y="8" width="105" height="105" rx="12" fill="${f}" stroke="${s}" stroke-width="3"/>`},
  gebeurtenis: {label:"Gebeurtenis", desc:"Druppel-ballon",   iconCx:61, iconCy:51, iconSize:58,
    shape:(f,s)=>`<path d="M60.5,116 L31,85 A46,46,0,1,1,90,85 Z" fill="${f}" stroke="${s}" stroke-width="3" stroke-linejoin="round"/>`},
};
```

Replace it with (signature `(vul,rand,buitenrand)`; fallback shapes have no separate buitenrand region, so `buitenrand` is accepted but unused — the real fetched templates carry the buitenrand stroke):

```js
const POINTER_TYPES = {
  incident:    {label:"Incident",    desc:"Badge met punt",   iconCx:61, iconCy:40, iconSize:52,
    shape:(vul,rand,buitenrand)=>`<path d="M60.5,6 L115,60.5 L60.5,115 L6,60.5 Z" fill="${vul}" stroke="${rand}" stroke-width="3"/>`},
  eenheid:     {label:"Eenheid",     desc:"Ronde vorm",       iconCx:60, iconCy:60, iconSize:58,
    shape:(vul,rand,buitenrand)=>`<circle cx="60.5" cy="60.5" r="54" fill="${vul}" stroke="${rand}" stroke-width="3"/>`},
  object:      {label:"Object",      desc:"Spraakballon",     iconCx:61, iconCy:55, iconSize:65,
    shape:(vul,rand,buitenrand)=>`<rect x="8" y="8" width="105" height="105" rx="12" fill="${vul}" stroke="${rand}" stroke-width="3"/>`},
  gebeurtenis: {label:"Gebeurtenis", desc:"Druppel-ballon",   iconCx:61, iconCy:51, iconSize:58,
    shape:(vul,rand,buitenrand)=>`<path d="M60.5,116 L31,85 A46,46,0,1,1,90,85 Z" fill="${vul}" stroke="${rand}" stroke-width="3" stroke-linejoin="round"/>`},
};
```

### Step 3: Update `fetchTemplates()` to pass three colours

Find this exact line (inside `fetchTemplates`, around line 878):

```js
      pt.shape = (fill, ink) => templateShape(svg, fill, ink);
```

Replace it with:

```js
      pt.shape = (vul, rand, buitenrand) => templateShape(svg, vul, rand, buitenrand);
```

### Step 4: Document the optional `SENDERS.buitenrand` default (no data change)

No edit to the `SENDERS` object literal is required — the default lives in code where the field is read (Task B2). To make the intent explicit, find this exact comment line above the `SENDERS` literal (around line 381):

```js
/* Fallback sender-info (ook in manifest, maar direct beschikbaar zonder fetch) */
```

Replace it with:

```js
/* Fallback sender-info (ook in manifest, maar direct beschikbaar zonder fetch).
   Optioneel veld `buitenrand` per afzender; afwezig → default '#000' (gelezen in
   de maker als `sender.buitenrand || '#000'`). Geen manifest-wijziging nodig. */
```

### Commit B1

```
git add lcms-bibliotheek/index.html
git commit -m "B1: 3-kleuren templateShape (vul/rand/buitenrand) + buitenrand default #000"
```

(No `Co-Authored-By` trailer.)

### Verification B1

1. Grep — new signature present, old 2-arg forms gone:
   ```
   grep -n 'function templateShape(svgStr, vul, rand, buitenrand)' lcms-bibliotheek/index.html
   grep -n 'templateShape(svg, vul, rand, buitenrand)' lcms-bibliotheek/index.html
   grep -n 'stroke="${buitenrand}" stroke-width="2"' lcms-bibliotheek/index.html
   grep -n 'shape:(vul,rand,buitenrand)' lcms-bibliotheek/index.html | wc -l   # expect 4
   ! grep -n 'function templateShape(svgStr, fill, ink)' lcms-bibliotheek/index.html
   ! grep -n 'pt.shape = (fill, ink)' lcms-bibliotheek/index.html
   ! grep -n 'shape:(f,s)=>' lcms-bibliotheek/index.html
   ```
2. Node parse-check (extract the inline script body and confirm it parses):
   ```
   node -e "const fs=require('fs');const h=fs.readFileSync('lcms-bibliotheek/index.html','utf8');const m=h.match(/<script>([\s\S]*)<\/script>/);if(!m){console.error('no script block');process.exit(1);}new Function(m[1]);console.log('parse OK');"
   ```
3. Visual rendering of the recoloured ring/stroke is **deferred to manual human verification** (no jsdom).

---

## Task B2 — Three colour pickers + sender presets in `wizCompose`

**Files:** `lcms-bibliotheek/index.html`

**Interfaces:**
- New step-3 markup: three `<input type="color">` with ids `clrBuiten`, `clrRand`, `clrVul`, plus one reset button `btnClrReset`.
- State: `vulOverride`, `randOverride`, `buitenOverride` (replace `outerRingOverride`).
- `syncWizPickers()` (replaces `syncOuterPicker`) — prefills the three pickers from the selected sender, respecting active overrides.
- `wizCompose()` resolves `vul`, `rand`, `buitenrand` and calls `pt.shape(vul, rand, buitenrand)`; icon recolor target = `rand`.

### Step 1: Replace the single "Buitenrandkleur" picker block with three pickers + one reset

Find this exact markup block in step 3 (around lines 312–316):

```html
          <div style="display:flex;align-items:center;gap:8px;margin-bottom:14px;padding:8px 11px;background:var(--panel2);border:1px solid var(--line);border-radius:7px">
            <span style="font-size:11px;color:var(--muted);flex:1">Buitenrandkleur</span>
            <input type="color" id="clrOuter" value="#000000" style="width:42px;height:26px;border:1px solid var(--line);border-radius:4px;cursor:pointer;background:transparent;padding:1px">
            <button id="btnOuterReset" style="background:transparent;border:1px solid var(--line);color:var(--muted);padding:4px 9px;border-radius:4px;cursor:pointer;font-size:10px;font-family:var(--mono)">Reset</button>
          </div>
```

Replace it with:

```html
          <div style="margin-bottom:14px;padding:10px 11px;background:var(--panel2);border:1px solid var(--line);border-radius:7px">
            <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:8px">
              <span style="font-size:11px;color:var(--muted)">Kleuren</span>
              <button id="btnClrReset" style="background:transparent;border:1px solid var(--line);color:var(--muted);padding:4px 9px;border-radius:4px;cursor:pointer;font-size:10px;font-family:var(--mono)">Reset naar afzender</button>
            </div>
            <div style="display:flex;align-items:center;gap:8px;margin-bottom:6px">
              <span style="font-size:11px;color:var(--muted);flex:1">Buitenrand</span>
              <input type="color" id="clrBuiten" value="#000000" style="width:42px;height:26px;border:1px solid var(--line);border-radius:4px;cursor:pointer;background:transparent;padding:1px">
            </div>
            <div style="display:flex;align-items:center;gap:8px;margin-bottom:6px">
              <span style="font-size:11px;color:var(--muted);flex:1">Rand</span>
              <input type="color" id="clrRand" value="#000000" style="width:42px;height:26px;border:1px solid var(--line);border-radius:4px;cursor:pointer;background:transparent;padding:1px">
            </div>
            <div style="display:flex;align-items:center;gap:8px">
              <span style="font-size:11px;color:var(--muted);flex:1">Vul</span>
              <input type="color" id="clrVul" value="#888888" style="width:42px;height:26px;border:1px solid var(--line);border-radius:4px;cursor:pointer;background:transparent;padding:1px">
            </div>
          </div>
```

### Step 2: Replace the `outerRingOverride` state with three overrides

Find this exact line (around line 889):

```js
let outerRingOverride=null; /* override voor de buitenrand-kleur in stap 3 */
```

Replace it with:

```js
let vulOverride=null, randOverride=null, buitenOverride=null; /* per-kleur overrides in stap 3; null = volg afzender */
```

### Step 3: Replace `syncOuterPicker` with `syncWizPickers`

Find this exact function (around lines 891–895):

```js
function syncOuterPicker(){
  const p=document.getElementById("clrOuter");
  if(!p)return;
  p.value=outerRingOverride||(SENDERS[wizSender]?.ink||"#000000");
}
```

Replace it with:

```js
/* Zet de drie kleurkiezers op de effectieve kleuren: per kleur de override
   indien gezet, anders de afzender-preset (vul=fill, rand=ink, buitenrand=buitenrand||#000). */
function syncWizPickers(){
  const s=SENDERS[wizSender];
  const vEl=document.getElementById("clrVul");
  const rEl=document.getElementById("clrRand");
  const bEl=document.getElementById("clrBuiten");
  if(vEl) vEl.value=vulOverride||(s?.fill||"#888888");
  if(rEl) rEl.value=randOverride||(s?.ink||"#000000");
  if(bEl) bEl.value=buitenOverride||(s?.buitenrand||"#000000");
}
```

### Step 4: Update the `wizGoStep` call into the picker sync

Find this exact line inside `wizGoStep` (around line 1045):

```js
  if(n===3) syncOuterPicker();
```

Replace it with:

```js
  if(n===3) syncWizPickers();
```

### Step 5: Rewrite the colour resolution + `shape` call in `wizCompose`

Find this exact block inside `wizCompose` (around lines 1076–1078):

```js
  const fill=sender?.fill||"#888888";
  const senderInk=sender?.ink||"#000000";
  const outerInk=outerRingOverride||senderInk;
```

Replace it with:

```js
  const vul=vulOverride||sender?.fill||"#888888";
  const rand=randOverride||sender?.ink||"#000000";
  const buitenrand=buitenOverride||sender?.buitenrand||"#000000";
```

Then find the icon recolor block in `wizCompose` (around lines 1084–1090) which still references `senderInk`:

```js
    if(recolorToInk){
      const recolored=applyRecolor(newIconInner).replace(/currentColor/gi,senderInk);
      iconEl=`<g transform="translate(${tx},${ty}) scale(${sc})" fill="${senderInk}">${recolored}</g>`;
    } else {
      const inner=newIconInner.replace(/currentColor/gi,senderInk);
      iconEl=`<g transform="translate(${tx},${ty}) scale(${sc})">${inner}</g>`;
    }
```

Replace it with (recolor target follows the old `senderInk` behaviour, which is now `rand`):

```js
    if(recolorToInk){
      const recolored=applyRecolor(newIconInner).replace(/currentColor/gi,rand);
      iconEl=`<g transform="translate(${tx},${ty}) scale(${sc})" fill="${rand}">${recolored}</g>`;
    } else {
      const inner=newIconInner.replace(/currentColor/gi,rand);
      iconEl=`<g transform="translate(${tx},${ty}) scale(${sc})">${inner}</g>`;
    }
```

Then find the result-build line in `wizCompose` (around line 1092):

```js
  const result=`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 121 121" width="121" height="121"><g>${pt.shape(fill,outerInk)}${iconEl}</g></svg>`;
```

Replace it with:

```js
  const result=`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 121 121" width="121" height="121"><g>${pt.shape(vul,rand,buitenrand)}${iconEl}</g></svg>`;
```

### Step 6: Rewire the picker handlers (replace the `clrOuter`/`btnOuterReset` handlers)

Find these exact two lines (around lines 1171–1172):

```js
document.getElementById("clrOuter").oninput=e=>{outerRingOverride=e.target.value;wizCompose();};
document.getElementById("btnOuterReset").onclick=()=>{outerRingOverride=null;syncOuterPicker();wizCompose();};
```

Replace them with:

```js
document.getElementById("clrVul").oninput=e=>{vulOverride=e.target.value;wizCompose();};
document.getElementById("clrRand").oninput=e=>{randOverride=e.target.value;wizCompose();};
document.getElementById("clrBuiten").oninput=e=>{buitenOverride=e.target.value;wizCompose();};
document.getElementById("btnClrReset").onclick=()=>{
  vulOverride=randOverride=buitenOverride=null;
  syncWizPickers();
  wizCompose();
};
```

### Step 7: Prefill pickers when a sender is chosen

When the user picks a sender on step 2, the chosen sender should seed the pickers (overrides win if set). `renderSenderCards`' onclick already calls `wizCompose()`; add a sync so the picker UI reflects the new sender even before reaching step 3.

Find this exact block inside `renderSenderCards` (around lines 1024–1026):

```js
    wizSender=c.dataset.key;
    el.querySelectorAll(".scard").forEach(x=>x.classList.toggle("sel",x.dataset.key===wizSender));
    wizUpdateNav(); wizCompose();
```

Replace it with:

```js
    wizSender=c.dataset.key;
    el.querySelectorAll(".scard").forEach(x=>x.classList.toggle("sel",x.dataset.key===wizSender));
    syncWizPickers(); wizUpdateNav(); wizCompose();
```

### Commit B2

```
git add lcms-bibliotheek/index.html
git commit -m "B2: drie kleurkiezers (buitenrand/rand/vul) met afzender-presets in maker"
```

(No `Co-Authored-By` trailer.)

### Verification B2

1. Grep — three pickers + new state present, old single picker/state gone:
   ```
   grep -n 'id="clrBuiten"' lcms-bibliotheek/index.html
   grep -n 'id="clrRand"' lcms-bibliotheek/index.html
   grep -n 'id="clrVul"' lcms-bibliotheek/index.html
   grep -n 'id="btnClrReset"' lcms-bibliotheek/index.html
   grep -n 'let vulOverride=null, randOverride=null, buitenOverride=null' lcms-bibliotheek/index.html
   grep -n 'pt.shape(vul,rand,buitenrand)' lcms-bibliotheek/index.html
   grep -n 'function syncWizPickers' lcms-bibliotheek/index.html
   ! grep -n 'outerRingOverride' lcms-bibliotheek/index.html
   ! grep -n 'syncOuterPicker' lcms-bibliotheek/index.html
   ! grep -n 'clrOuter' lcms-bibliotheek/index.html
   ! grep -n 'btnOuterReset' lcms-bibliotheek/index.html
   ! grep -n 'senderInk' lcms-bibliotheek/index.html
   ```
2. Node parse-check (same one-liner as B1) → `parse OK`.
3. Picker prefill / live preview correctness is **deferred to manual human verification**.

---

## Task B3 — Icon source from the CATALOG (svg) + upload

**Files:** `lcms-bibliotheek/index.html`

**Interfaces:**
- `renderMakerIconGrid()` — renders `CATALOG.filter(e=>e.type==='svg')` into `#symbolenGrid`; thumbnails via `../<path>` (`<img>`); on click `fetch('../'+entry.path)` → text → `ingestNewIcon(text)`. Optional name search via `#makerIconSearch`.
- `makerIconSel` — currently selected catalog path (for the `.sel` highlight), replacing `selectedSymbol`.
- Upload button (`#btnUploadIcon` → `#addIcon`) and `ingestNewIcon()` unchanged.

> The icon grid must render after the catalog is loaded. `loadCatalog()` already runs at init and populates the global `CATALOG`. We call `renderMakerIconGrid()` at the end of `loadCatalog()` and again in `wizInit()` so it is populated whether the user opens the maker before or after the catalog finishes loading.

### Step 1: Replace the icon picker state + grid renderer

Find this exact block (the symbolen-picker section, around lines 927–986):

```js
/* ---- symbolen-picker ---- */
const symbolenCache = {};
let selectedSymbol = null;

async function loadSymbolen() {
  /* Primair: gegenereerd manifest (werkt op GitHub Pages, geen directory-listing nodig) */
  let loaded = false;
  try {
    const r = await fetch('symbolen-manifest.json');
    if (r.ok) {
      const list = await r.json();
      for (const entry of list) {
        try {
          const r2 = await fetch(entry.path);
          if (r2.ok) {
            symbolenCache[entry.path.split('/').pop()] = await r2.text();
            loaded = true;
          }
        } catch(e) {}
      }
    }
  } catch(e) {}
  /* Fallback: directory-listing schrapen (bv. lokaal via `python -m http.server`) */
  if (!loaded) {
    try {
      const r = await fetch('symbolen/');
      if (!r.ok) return;
      const html = await r.text();
      const names = [...html.matchAll(/href="([^"#?]+\.svg)"/gi)].map(m => m[1]);
      for (const name of names) {
        try {
          const r2 = await fetch('symbolen/' + name);
          if (r2.ok) symbolenCache[name] = await r2.text();
        } catch(e) {}
      }
    } catch(e) {}
  }
  renderSymbolenGrid();
}

function renderSymbolenGrid() {
  const el = document.getElementById('symbolenGrid');
  if (!el) return;
  const entries = Object.entries(symbolenCache);
  if (!entries.length) {
    el.innerHTML = '<span style="color:var(--muted);font-size:11px">Geen symbolen gevonden in symbolen/</span>';
    return;
  }
  el.innerHTML = entries.map(([name, svg]) => {
    const lbl = name.replace(/\.svg$/i, '').replace(/[-_]/g, ' ');
    return `<div class="symcard${selectedSymbol===name?' sel':''}" data-name="${name}">
      <div class="sym-thumb">${svg}</div>
      <div class="sym-lbl">${lbl}</div></div>`;
  }).join('');
  el.querySelectorAll('.symcard').forEach(c => c.onclick = () => {
    selectedSymbol = c.dataset.name;
    el.querySelectorAll('.symcard').forEach(x => x.classList.toggle('sel', x.dataset.name === selectedSymbol));
    ingestNewIcon(symbolenCache[selectedSymbol]);
  });
}
```

Replace it with (catalog-driven; no scrape, no cache object — thumbnails are `<img>` from `../<path>`, the SVG text is fetched lazily on click):

```js
/* ---- icoon-picker (uit de CATALOG, alleen svg-entries) ---- */
let makerIconSel = null;       /* path van het gekozen catalogus-icoon (voor .sel) */
let makerIconQ = "";           /* zoekterm op naam */

function renderMakerIconGrid() {
  const el = document.getElementById('symbolenGrid');
  if (!el) return;
  if (!CATALOG.length) {
    el.innerHTML = '<span style="color:var(--muted);font-size:11px">Catalogus nog niet geladen…</span>';
    return;
  }
  let svgs = CATALOG.filter(e => e.type === 'svg');
  if (makerIconQ) svgs = svgs.filter(e => e.name.toLowerCase().includes(makerIconQ));
  if (!svgs.length) {
    el.innerHTML = '<span style="color:var(--muted);font-size:11px">Geen symbolen gevonden.</span>';
    return;
  }
  el.innerHTML = svgs.map(e => {
    const lbl = e.name.replace(/[-_]/g, ' ');
    return `<div class="symcard${makerIconSel===e.path?' sel':''}" data-path="${e.path}">
      <div class="sym-thumb"><img src="../${e.path}" alt="${e.name}" loading="lazy" style="width:40px;height:40px;object-fit:contain"></div>
      <div class="sym-lbl">${lbl}</div></div>`;
  }).join('');
  el.querySelectorAll('.symcard').forEach(c => c.onclick = async () => {
    makerIconSel = c.dataset.path;
    el.querySelectorAll('.symcard').forEach(x => x.classList.toggle('sel', x.dataset.path === makerIconSel));
    try {
      const r = await fetch('../' + makerIconSel);
      if (r.ok) ingestNewIcon(await r.text());
    } catch (e) {}
  });
}
```

### Step 2: Add a name-search box above the icon grid

Find this exact markup line in step 3 (around line 317):

```html
          <div class="wiz-sectlbl">Kies een symbool</div>
```

Replace it with:

```html
          <div class="wiz-sectlbl">Kies een symbool</div>
          <input type="text" id="makerIconSearch" placeholder="Zoek icoon op naam…" style="margin-bottom:7px">
```

Then wire the search handler. Find this exact line (the upload-button wiring, around line 988):

```js
document.getElementById('btnUploadIcon').onclick = () => document.getElementById('addIcon').click();
```

Replace it with:

```js
document.getElementById('btnUploadIcon').onclick = () => document.getElementById('addIcon').click();
document.getElementById('makerIconSearch').oninput = e => { makerIconQ = e.target.value.toLowerCase(); renderMakerIconGrid(); };
```

### Step 3: Repoint the references to `renderSymbolenGrid` / `selectedSymbol`

These live in the upload `onchange` and the `clearIcon` handler.

Find this exact block (the upload onchange, around lines 1102–1106):

```js
document.getElementById("addIcon").onchange=e=>{
  const f=e.target.files[0]; if(!f)return;
  selectedSymbol=null; renderSymbolenGrid();
  const r=new FileReader(); r.onload=()=>{ingestNewIcon(r.result);}; r.readAsText(f);
};
```

Replace it with:

```js
document.getElementById("addIcon").onchange=e=>{
  const f=e.target.files[0]; if(!f)return;
  makerIconSel=null; renderMakerIconGrid();
  const r=new FileReader(); r.onload=()=>{ingestNewIcon(r.result);}; r.readAsText(f);
};
```

Find this exact line inside the `clearIcon` handler (around line 1153):

```js
  selectedSymbol=null; renderSymbolenGrid();
```

Replace it with:

```js
  makerIconSel=null; renderMakerIconGrid();
```

### Step 4: Populate the grid from `loadCatalog()` and `wizInit()`

Find this exact block at the end of `loadCatalog` (around lines 1386–1388):

```js
  buildCatFilters();
  renderCatalog();
}
```

Replace it with:

```js
  buildCatFilters();
  renderCatalog();
  renderMakerIconGrid();
}
```

Then find this exact `wizInit` function (around lines 1056–1059):

```js
function wizInit(){
  renderPointerCards(); renderSenderCards();
  wizGoStep(wizStep); wizCompose();
}
```

Replace it with:

```js
function wizInit(){
  renderPointerCards(); renderSenderCards();
  renderMakerIconGrid();
  wizGoStep(wizStep); wizCompose();
}
```

### Commit B3

```
git add lcms-bibliotheek/index.html
git commit -m "B3: maker-icoon uit catalogus (svg) + zoekveld, upload ongewijzigd"
```

(No `Co-Authored-By` trailer.)

### Verification B3

1. Grep — catalog-driven grid in, scrape out:
   ```
   grep -n 'function renderMakerIconGrid' lcms-bibliotheek/index.html
   grep -n "CATALOG.filter(e => e.type === 'svg')" lcms-bibliotheek/index.html
   grep -n "id=\"makerIconSearch\"" lcms-bibliotheek/index.html
   grep -n 'renderMakerIconGrid();' lcms-bibliotheek/index.html | wc -l   # expect >=4 (def + loadCatalog + wizInit + handlers)
   ! grep -n 'renderSymbolenGrid' lcms-bibliotheek/index.html
   ! grep -n 'selectedSymbol' lcms-bibliotheek/index.html
   ```
   (`loadSymbolen`/`symbolenCache` removal is finished and asserted in B4; B3 still has the now-unreferenced `loadSymbolen()` call at init — that is cleaned in B4.)
2. Node parse-check (same one-liner) → `parse OK`.
3. curl the served page and confirm the new ids ship to the client:
   ```
   python3 -m http.server 8777 >/tmp/srv.log 2>&1 &   # from repo root
   curl -s http://127.0.0.1:8777/lcms-bibliotheek/ | grep -o 'id="makerIconSearch"'
   curl -s http://127.0.0.1:8777/lcms-bibliotheek/catalog-manifest.json | head -c 80
   curl -s "http://127.0.0.1:8777/lcms-bibliotheek/../lcms-bibliotheek/lcms-svgs/GHOR/eenheden/biker.svg" | head -c 40
   # stop the server when done
   ```
4. Thumbnail rendering and click-to-ingest behaviour are **deferred to manual human verification**.

---

## Task B4 — Cleanup (LAST, riskiest)

**Files:** `lcms-bibliotheek/index.html`, `lcms-bibliotheek/build_symbolen.py` (delete), `lcms-bibliotheek/test_build_symbolen.py` (delete), `lcms-bibliotheek/symbolen-manifest.json` (delete)

**Interfaces:** after this task, none of these symbols/ids may remain referenced: `view-library`, `view-ctrl`, `rebuild`, `buildFilters`, `renderGrid`, `matchesFilter`, `fetchAssets`, `btnFetchAssets`, `fetchStatus`, `runCtrl`, `btnRunCtrl`, `btnExportManifest`, `loadSymbolen`, `lzServer`, `loadzone`, `folderInput`, `search` (the library search input), `statusbar`, `emptyMsg`, `grid` (library grid id), `senderFilters`, `catFilters`.

> Decoupling decision (resolved): `deleteEigenSymbool()` and the `dlNew` handler both call `rebuild()` to refresh the now-removed library grid. Since the library is gone, both `rebuild()` calls are dropped. The localStorage save (`saveEigenSymbool`/`deleteEigenSymbool` persistence) and the ZIP export (`btnExportZip`) live entirely in the maker view and are KEPT. `deleteEigenSymbool` keeps its `eigenSymbolen.delete` + `_persistEigen()` and simply loses its trailing `rebuild()`.

### Step 1: Remove the `#view-library` section

Find and delete this entire block (around lines 237–267):

```html
  <!-- ===== LIBRARY ===== -->
  <section class="view" id="view-library">
    <div class="lib">
      <aside class="filters">
        <input class="search" id="search" placeholder="Zoek op naam…">
        <h2>Afzender</h2>
        <div id="senderFilters"></div>
        <h2>Categorie</h2>
        <div id="catFilters"></div>
      </aside>
      <div class="gridwrap">
        <div class="loadzone" id="loadzone">
          <input type="file" id="folderInput" webkitdirectory directory multiple accept=".svg">
          <div class="lzdrop">Sleep je <b>LCMS SVG</b>-map hier of <b>klik</b> om een map te kiezen.</div>
          <div class="lznote">
            De app verwacht 235 symbolen in 9 afzendermappen. Niet-geladen symbolen worden grijs getoond.<br>
            <span style="color:var(--muted)">Via een server (<code style="font-family:var(--mono)">python -m http.server</code>) worden de symbolen automatisch geladen uit <code style="font-family:var(--mono)">lcms-svgs/</code>. Via <b>file://</b> gebruik je drag-&amp;drop hieronder.</span>
          </div>
          <div class="lzserver" id="lzServer">
            <span style="color:var(--ok);font-size:16px;line-height:1">●</span>
            <span style="color:var(--muted)">Server actief</span>
            <button class="btnsm" id="btnFetchAssets">Herladen</button>
            <span id="fetchStatus" style="font-family:var(--mono);color:var(--muted)"></span>
          </div>
        </div>
        <div class="statusbar" id="statusbar">Nog niets geladen.</div>
        <div class="grid" id="grid"></div>
        <div class="empty" id="emptyMsg" style="display:none">Geen symbolen die aan de filters voldoen.</div>
      </div>
    </div>
  </section>
```

### Step 2: Remove the `#view-ctrl` section

Find and delete this entire block (around lines 359–368):

```html
  <!-- ===== CONTROLE ===== -->
  <section class="view" id="view-ctrl">
    <div class="ctrl">
      <div class="ctrl-actions">
        <button class="btnsm" id="btnRunCtrl">Analyseer geladen set</button>
        <button class="btnsm" id="btnExportManifest" style="background:transparent;border-color:var(--ok);color:var(--ok)">Exporteer manifest.json</button>
      </div>
      <div id="ctrlResults"><p style="color:var(--muted);font-size:13px">Laad eerst de set en klik op "Analyseer geladen set".</p></div>
    </div>
  </section>
```

### Step 3: Simplify `initManifest()` to keep only what the maker needs

Find this exact function (around lines 471–492):

```js
/* ---------- manifest laden ---------- */
async function initManifest() {
  try {
    const r = await fetch('lcms-manifest.json');
    if (!r.ok) return;
    MANIFEST = await r.json();
    /* Vul SENDERS aan vanuit manifest voor het geval er nieuwe zijn */
    if (MANIFEST.senders) {
      Object.assign(SENDERS, MANIFEST.senders);
    }
    /* Eigen afzenders mogen niet overschreven worden door manifest */
    for (const [k, v] of eigenSenders) SENDERS[k] = {...v};
    /* Server gedetecteerd: toon statusbalk en laad meteen */
    document.getElementById('lzServer').classList.add('visible');
    rebuild();
    fetchTemplates();
    fetchAssets();
    loadSymbolen();
  } catch(e) {
    /* file:// of geen manifest — stille fallback naar drag-&-drop */
  }
}
```

Replace it with (keep manifest fetch → merge SENDERS → fetchTemplates; drop `lzServer`, `rebuild`, `fetchAssets`, `loadSymbolen`):

```js
/* ---------- manifest laden (alleen nog voor afzender-presets + templates) ---------- */
async function initManifest() {
  try {
    const r = await fetch('lcms-manifest.json');
    if (r.ok) {
      MANIFEST = await r.json();
      /* Vul SENDERS aan vanuit manifest voor het geval er nieuwe zijn */
      if (MANIFEST.senders) Object.assign(SENDERS, MANIFEST.senders);
      /* Eigen afzenders mogen niet overschreven worden door manifest */
      for (const [k, v] of eigenSenders) SENDERS[k] = {...v};
    }
  } catch(e) {
    /* file:// of geen manifest — afzender-fallback in SENDERS blijft gelden */
  }
  /* Templates zijn nodig voor de maker; los van het manifest proberen te laden */
  fetchTemplates();
}
```

### Step 4: Remove `fetchAssets()` and its button wiring

Find and delete this entire block (around lines 494–522):

```js
/* ---------- laden uit lcms-svgs/ (alleen via server) ---------- */
async function fetchAssets() {
  if (!MANIFEST) return;
  const btn = document.getElementById('btnFetchAssets');
  const status = document.getElementById('fetchStatus');
  btn.disabled = true;
  btn.textContent = 'Laden…';
  status.textContent = '';
  let loaded = 0, failed = 0;
  for (const sym of MANIFEST.symbols) {
    try {
      const url = 'lcms-svgs/' + sym.path.split('/').map(encodeURIComponent).join('/');
      const r = await fetch(url);
      if (r.ok) {
        store.set(sym.id, await r.text());
        loaded++;
      } else {
        failed++;
      }
    } catch(e) {
      failed++;
    }
  }
  rebuild();
  btn.textContent = 'Herladen';
  btn.disabled = false;
  status.textContent = `${loaded} geladen${failed ? `, ${failed} ontbreken` : ''}`;
}
document.getElementById('btnFetchAssets').onclick = fetchAssets;
```

### Step 5: Remove the `ctrl` and `add`-side-effect-free branches from the tab switcher

Find this exact block (around lines 524–533):

```js
/* ---------- tabs ---------- */
document.querySelectorAll(".tab").forEach(t=>t.onclick=()=>{
  document.querySelectorAll(".tab").forEach(x=>x.classList.remove("active"));
  document.querySelectorAll(".view").forEach(x=>x.classList.remove("active"));
  t.classList.add("active");
  document.getElementById("view-"+t.dataset.view).classList.add("active");
  if(t.dataset.view==="add") wizInit();
  if(t.dataset.view==="ctrl") runCtrl();
  if(t.dataset.view==="catalog" && !CATALOG.length) loadCatalog();
});
```

Replace it with (drop the `ctrl` branch only; `add` and `catalog` tabs remain):

```js
/* ---------- tabs ---------- */
document.querySelectorAll(".tab").forEach(t=>t.onclick=()=>{
  document.querySelectorAll(".tab").forEach(x=>x.classList.remove("active"));
  document.querySelectorAll(".view").forEach(x=>x.classList.remove("active"));
  t.classList.add("active");
  document.getElementById("view-"+t.dataset.view).classList.add("active");
  if(t.dataset.view==="add") wizInit();
  if(t.dataset.view==="catalog" && !CATALOG.length) loadCatalog();
});
```

### Step 6: Remove the loadzone drag-&-drop + folder-picker block

Find and delete this entire block (around lines 535–580), which spans the `lz`/`folderInput` wiring, `walkEntry`, `readFile`, and `idFromPath`:

```js
/* ---------- map/bestanden laden (drag-&-drop + folder-picker) ---------- */
const lz=document.getElementById("loadzone");
const folderInput=document.getElementById("folderInput");
lz.onclick=e=>{
  /* klik op de laadknop triggert geen folder-picker */
  if(e.target.closest('.lzserver')) return;
  folderInput.click();
};
lz.ondragover=e=>{e.preventDefault();lz.classList.add("drag");};
lz.ondragleave=()=>lz.classList.remove("drag");
lz.ondrop=async e=>{
  e.preventDefault();lz.classList.remove("drag");
  const items=[...e.dataTransfer.items].map(i=>i.webkitGetAsEntry&&i.webkitGetAsEntry()).filter(Boolean);
  if(items.length){ for(const it of items) await walkEntry(it,""); }
  else { for(const f of e.dataTransfer.files) await readFile(f, f.webkitRelativePath||f.name); }
  rebuild();
};
folderInput.onchange=async e=>{
  for(const f of e.target.files) await readFile(f, f.webkitRelativePath||f.name);
  rebuild();
};
function walkEntry(entry,prefix){
  return new Promise(res=>{
    if(entry.isFile){ entry.file(async f=>{ await readFile(f, prefix+entry.name); res();}); }
    else if(entry.isDirectory){
      const rd=entry.createReader();
      rd.readEntries(async ents=>{ for(const en of ents) await walkEntry(en, prefix+entry.name+"/"); res();});
    } else res();
  });
}
function readFile(file, relpath){
  return new Promise(res=>{
    if(!file.name.toLowerCase().endsWith(".svg")){res();return;}
    const r=new FileReader();
    r.onload=()=>{ store.set(idFromPath(relpath), r.result); res(); };
    r.readAsText(file);
  });
}
/* normaliseer pad → "afzender/categorie/naam" (negeer LCMS SVG-root & __MACOSX) */
function idFromPath(p){
  const parts=p.split("/").filter(x=>x && x!=="__MACOSX" && x.toLowerCase()!=="lcms svg");
  const name=parts.pop().replace(/\.svg$/i,"");
  const cat=parts.pop()||"(root)";
  const sender=parts.pop()||"(onbekend)";
  return `${sender}/${cat}/${name}`;
}
```

### Step 7: Remove the library render block (`matchesFilter`, `rebuild`, `buildFilters`, `#search` handler, `renderGrid`, `downloadOne`)

Find and delete this entire block (around lines 582–685), from the `matchesFilter` comment through the end of `downloadOne`:

```js
/* ---------- library render ---------- */
function matchesFilter(id){
  const[s,c,n]=id.split("/");
  if(filterSender==="__eigen__")return eigenSymbolen.has(id)&&(!q||n.toLowerCase().includes(q));
  if(filterSender!=="*"&&s!==filterSender)return false;
  if(filterCat!=="*"&&c!==filterCat)return false;
  if(q&&!n.toLowerCase().includes(q))return false;
  return true;
}
function rebuild(){
  buildFilters(); renderGrid();
  const n=store.size;
  const total=MANIFEST?MANIFEST.total:235;
  const missing=MANIFEST?MANIFEST.symbols.filter(s=>!store.has(s.id)).length:null;
  let st=n?`${n} van ${total} geladen`:"Nog niets geladen.";
  if(missing!==null&&missing>0) st+=` — ${missing} ontbreken`;
  document.getElementById("statusbar").textContent=st+(n?".":"");
  if(n) lz.style.display="none";
}
function buildFilters(){
  /* Gebruik manifest als bron voor zender/categorie-lijsten als die beschikbaar is */
  const allSenders=MANIFEST
    ?[...new Set([...Object.keys(MANIFEST.senders),...eigenSenders.keys()])].sort()
    :[...new Set([...[...store.keys()].map(id=>id.split("/")[0]),...eigenSenders.keys()])].sort();
  const allCats=MANIFEST
    ?[...new Set(
        MANIFEST.symbols
          .filter(s=>filterSender==="*"||s.sender===filterSender)
          .map(s=>s.category)
      )].sort()
    :[...new Set([...store.keys()]
        .filter(id=>filterSender==="*"||id.split("/")[0]===filterSender)
        .map(id=>id.split("/")[1]))].sort();
  const sEl=document.getElementById("senderFilters");
  const cEl=document.getElementById("catFilters");
  const countLoaded=(s,c)=>[...store.keys()].filter(id=>{
    const[a,b]=id.split("/");
    return(s==="*"||a===s)&&(c==="*"||b===c);
  }).length;
  const mk=(label,val,kind,sw)=>{
    const active=(kind==="s"?filterSender:filterCat)===val;
    const n=kind==="s"?countLoaded(val,"*"):countLoaded(filterSender,val);
    return `<div class="fitem ${active?"active":""}" data-kind="${kind}" data-val="${val}">
      ${sw?`<span class="sw" style="background:${sw}"></span>`:""}${label}
      <span class="cnt">${n}</span></div>`;
  };
  let sh=mk("Alle afzenders","*","s","");
  allSenders.forEach(s=>sh+=mk(SENDERS[s]?.label||s,s,"s",SENDERS[s]?.fill));
  if(eigenSymbolen.size>0){
    const active=filterSender==="__eigen__";
    sh+=`<div class="fitem ${active?"active":""}" data-kind="s" data-val="__eigen__" style="margin-top:6px;border-top:1px solid var(--line);padding-top:6px">
      <span class="sw" style="background:var(--ok)"></span>Mijn symbolen
      <span class="cnt">${eigenSymbolen.size}</span></div>`;
  }
  sEl.innerHTML=sh;
  let ch=mk("Alle categorieën","*","c","");
  allCats.forEach(c=>ch+=mk(c,c,"c",""));
  cEl.innerHTML=ch;
  document.querySelectorAll("#senderFilters .fitem, #catFilters .fitem").forEach(el=>el.onclick=()=>{
    if(el.dataset.kind==="s") filterSender=el.dataset.val; else filterCat=el.dataset.val;
    buildFilters(); renderGrid();
  });
}
document.getElementById("search").oninput=e=>{q=e.target.value.toLowerCase();renderGrid();};
function renderGrid(){
  const grid=document.getElementById("grid");
  /* Geladen symbolen die voldoen aan filter */
  const loadedIds=[...store.keys()].filter(matchesFilter);
  /* Verwachte-maar-ontbrekende symbolen uit manifest */
  const missingIds=MANIFEST
    ?MANIFEST.symbols.filter(s=>!store.has(s.id)&&matchesFilter(s.id)).map(s=>s.id)
    :[];
  const allIds=[...new Set([...loadedIds,...missingIds])].sort();
  document.getElementById("emptyMsg").style.display=allIds.length?"none":"block";
  grid.innerHTML=allIds.map(id=>{
    const[s,,n]=id.split("/");
    const loaded=store.has(id);
    const isEigen=eigenSymbolen.has(id);
    let cls="card";
    if(!loaded) cls+=" missing";
    if(isEigen) cls+=" eigen-symbol";
    const delBtn=isEigen?`<button class="card-del" data-id="${id}" title="Verwijder uit Mijn symbolen">×</button>`:"";
    return `<div class="${cls}"${loaded?` data-id="${id}"`:' title="Niet geladen — verwacht door manifest"'}${isEigen?' title="Eigen symbool (persistent opgeslagen)"':''}>
      ${delBtn}
      <div class="thumb">${loaded?store.get(id):""}</div>
      <div class="nm">${n.replace(/[-_]/g," ")}</div>
      <div class="meta">${SENDERS[s]?.label||s}</div></div>`;
  }).join("");
  grid.querySelectorAll(".card:not(.missing)").forEach(c=>c.onclick=e=>{
    if(e.target.closest(".card-del"))return;
    downloadOne(c.dataset.id);
  });
  grid.querySelectorAll(".card-del").forEach(btn=>btn.onclick=e=>{
    e.stopPropagation();
    const id=btn.dataset.id;
    if(confirm(`Verwijder "${id.split("/").pop().replace(/[-_]/g," ")}" uit Mijn symbolen?`))deleteEigenSymbool(id);
  });
}
function downloadOne(id){
  const svg=store.get(id); if(!svg)return;
  const a=document.createElement("a");
  a.href=URL.createObjectURL(new Blob([svg],{type:"image/svg+xml"}));
  a.download=id.split("/").pop()+".svg"; a.click(); URL.revokeObjectURL(a.href);
}
```

> `store`, `MANIFEST`, `filterSender`, `filterCat`, `q` become write-only/unused after this. Leave their declarations in place for now — they are harmless inert state and removing them risks touching the ZIP/eigen-symbool code that still reads `store`/`eigenSymbolen`. (`saveEigenSymbool` writes `store`; that is fine.) The grep verification below only asserts the *functions and element ids* are gone, not the variable declarations.

### Step 8: Drop the `rebuild()` call from `deleteEigenSymbool`

Find this exact function (around lines 454–459):

```js
function deleteEigenSymbool(id) {
  eigenSymbolen.delete(id);
  store.delete(id);
  _persistEigen();
  rebuild();
}
```

Replace it with:

```js
function deleteEigenSymbool(id) {
  eigenSymbolen.delete(id);
  store.delete(id);
  _persistEigen();
}
```

### Step 9: Drop the `rebuild()` call from the `dlNew` handler

Find this exact line inside the `dlNew` onclick (around line 1209):

```js
  saveEigenSymbool(id, result); rebuild();
```

Replace it with:

```js
  saveEigenSymbool(id, result);
```

### Step 10: Remove `runCtrl`, its button wiring, and the manifest-export handler

Find and delete this entire block (around lines 1227–1336), from the `runCtrl` comment header through the end of the `btnExportManifest` handler:

```js
/* ============================================================
   CONTROLE & VALIDATIE (Stap 5)
   ============================================================ */

function runCtrl(){
  const out=document.getElementById("ctrlResults");
  if(!store.size){
    out.innerHTML='<p style="color:var(--muted);font-size:13px">Laad eerst de set.</p>'; return;
  }
  const ids=[...store.keys()];
  const sections=[];
```

…through (this is the END of the block to delete — the `btnExportManifest` handler's closing):

```js
  const a=document.createElement("a");
  a.href=URL.createObjectURL(new Blob([JSON.stringify(manifest,null,2)],{type:"application/json"}));
  a.download="lcms-manifest.json"; a.click(); URL.revokeObjectURL(a.href);
};
```

> This single contiguous deletion spans `runCtrl()`, `document.getElementById("btnRunCtrl").onclick=runCtrl;`, the `/* ---------- manifest-export (Stap 6) ---------- */` comment, and the full `document.getElementById("btnExportManifest").onclick=…` handler (lines ~1227–1336). The very next surviving block is `/* ---------- ZIP-export nieuwe symbolen ---------- */`, which is KEPT.

### Step 11: Fix the init block

Find this exact block (around lines 1513–1520):

```js
/* ---------- init ---------- */
loadEigenSymbolen();
loadEigenSenders();
initManifest();
rebuild();
wizInit();
loadCatalog();
if(eigenSymbolen.size>0) document.getElementById("btnExportZip").style.display="block";
```

Replace it with (drop `rebuild()`; keep the rest):

```js
/* ---------- init ---------- */
loadEigenSymbolen();
loadEigenSenders();
initManifest();
wizInit();
loadCatalog();
if(eigenSymbolen.size>0) document.getElementById("btnExportZip").style.display="block";
```

### Step 12: Delete the three superseded files

```
git rm lcms-bibliotheek/build_symbolen.py lcms-bibliotheek/test_build_symbolen.py lcms-bibliotheek/symbolen-manifest.json
```

(These three live in `lcms-bibliotheek/`, not repo root. The `lcms-bibliotheek/symbolen/` directory of SVGs is part of the catalog and is NOT removed. Repo-root `build_catalog.py` and `lcms-bibliotheek/catalog-manifest.json` are NOT touched.)

### Commit B4

```
git add lcms-bibliotheek/index.html
git commit -m "B4: verwijder dode Bibliotheek/Controle-code en superseded symbolen-build; ontkoppel maker"
```

(The `git rm` from Step 12 is included in this commit. No `Co-Authored-By` trailer.)

### Verification B4 (this is the safety net — no jsdom)

1. Grep — every removed symbol/id is gone (each line must print nothing):
   ```
   for s in 'view-library' 'view-ctrl' 'function rebuild' 'function buildFilters' \
            'function renderGrid' 'function matchesFilter' 'function fetchAssets' \
            'function runCtrl' 'function downloadOne' 'btnFetchAssets' 'fetchStatus' \
            'btnRunCtrl' 'btnExportManifest' 'loadSymbolen' 'symbolenCache' \
            'id="lzServer"' 'id="loadzone"' 'id="folderInput"' 'id="search"' \
            'id="statusbar"' 'id="emptyMsg"' 'id="senderFilters"' 'id="catFilters"' \
            'idFromPath' 'walkEntry' 'renderSymbolenGrid' 'selectedSymbol' ; do
     echo -n "$s -> "; grep -c "$s" lcms-bibliotheek/index.html
   done
   ```
   Every count must be `0`. Also confirm the leftover `rebuild()` *calls* are gone:
   ```
   ! grep -n 'rebuild()' lcms-bibliotheek/index.html
   ```
2. Confirm the kept maker pieces survive:
   ```
   grep -n 'function wizCompose' lcms-bibliotheek/index.html
   grep -n 'function renderMakerIconGrid' lcms-bibliotheek/index.html
   grep -n 'btnExportZip' lcms-bibliotheek/index.html
   grep -n 'function saveEigenSymbool' lcms-bibliotheek/index.html
   grep -n 'fetchTemplates' lcms-bibliotheek/index.html
   ```
3. Confirm the files are deleted:
   ```
   ! test -e lcms-bibliotheek/build_symbolen.py
   ! test -e lcms-bibliotheek/test_build_symbolen.py
   ! test -e lcms-bibliotheek/symbolen-manifest.json
   ```
4. Node parse-check (same one-liner as B1) → `parse OK`. This proves no dangling reference left a syntax error and the script still parses as a whole.
5. curl smoke test (repo root server): the two surviving tabs are present and the removed views are not:
   ```
   python3 -m http.server 8777 >/tmp/srv.log 2>&1 &   # from repo root
   curl -s http://127.0.0.1:8777/lcms-bibliotheek/ | grep -c 'id="view-catalog"'   # expect 1
   curl -s http://127.0.0.1:8777/lcms-bibliotheek/ | grep -c 'id="view-add"'        # expect 1
   curl -s http://127.0.0.1:8777/lcms-bibliotheek/ | grep -c 'id="view-library"'    # expect 0
   curl -s http://127.0.0.1:8777/lcms-bibliotheek/ | grep -c 'id="view-ctrl"'       # expect 0
   # stop the server when done
   ```
6. Full maker round-trip (pick pointer → sender → 3 colours → catalog icon → download) is **deferred to manual human verification** (no jsdom).
