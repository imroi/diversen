# Symbolen-catalogus (Plan A) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development to execute this plan. Each task below is a self-contained, independently reviewable unit ending in a commit. Follow superpowers:test-driven-development for the Python tasks (write the failing test first, then the implementation). Do not batch tasks; complete and verify one before starting the next.

**Goal:** Add functionaliteit 1 ("Catalogus") of the symbolen-app: a generated, repo-wide image manifest (`build_catalog.py`), an auto-refresh GitHub Action, a new default "Catalogus" tab in `lcms-bibliotheek/index.html` that browses every `*.svg`/`*.png` in the repo with search/filter and copy-able Pages/raw URLs, and a prominent link to the app from the root landing page. The symbol *maker* (functionaliteit 2) and the migration/removal of the already-committed `build_symbolen.py` / `symbolen-manifest.json` / `loadSymbolen()` are explicitly OUT OF SCOPE here (they belong to Plan B).

**Architecture:**
```
build_catalog.py (repo root) ──scans whole repo (excl .git)──▶ lcms-bibliotheek/catalog-manifest.json
        ▲ GitHub Action (.github/workflows/build-catalog.yml) runs it on push to main,
          commits the manifest back with [skip ci]
                                                                        │ fetch (relative)
lcms-bibliotheek/index.html ── NEW Tab "Catalogus" (default) : grid + name search + folder filter
                               + type filter (svg/png/all) → detail panel with Pages-URL & raw-URL,
                               each with a "Kopieer" button.
        existing tabs (Bibliotheek / Nieuw symbool / Controle) remain untouched.

index.html (root folder-browser) ── NEW prominent "▶ Symbolen-app" link ──▶ lcms-bibliotheek/
```

**Tech Stack:** Python 3.11 standard library only (pathlib, json) for the generator and `unittest` for its tests; vanilla JavaScript (no libraries, no build step) in a single static HTML file; GitHub Actions YAML; plain `git` inside the Action. The app is served as static files under GitHub Pages; locally it is served with `python3 -m http.server`.

## Global Constraints
- Python uses the standard library ONLY (no pip installs, no third-party packages); tests use `unittest` run via `python3 -m unittest <module> -v`.
- All in-app JavaScript is vanilla (no libraries, no bundler, no build step); the app remains one static HTML file.
- Commit messages MUST NOT contain a `Co-Authored-By` trailer (no co-author trailer anywhere).
- Manifest dict shape is EXACTLY `{"name": <filename without extension>, "folder": <POSIX relative dir>, "path": <POSIX relative file>, "type": "svg"|"png"}`, list sorted by `path`.
- Constants are EXACTLY `const PAGES_BASE = 'https://imroi.github.io/diversen/';` and `const RAW_BASE = 'https://raw.githubusercontent.com/imroi/diversen/main/';`.
- All manifest paths are POSIX (forward-slash) and relative to the repo root (use `Path.as_posix()`), so they equal the public URL path suffix (e.g. `kro/foo.svg`).
- `build_catalog.py` is always run from the repo root (`python3 build_catalog.py`), writing `lcms-bibliotheek/catalog-manifest.json`.
- The app is served one directory deep (`/lcms-bibliotheek/`); asset thumbnails are therefore referenced as `../<path>` from inside the app.

## File Structure
| File | Status | Responsibility |
|---|---|---|
| `build_catalog.py` | NEW (repo root) | `build_catalog(root_dir)` scans repo for svg/png (excl `.git`), returns sorted dict list; `main()` writes `lcms-bibliotheek/catalog-manifest.json` and prints count. |
| `test_build_catalog.py` | NEW (repo root) | `unittest` tests for `build_catalog()` against a tempfile tree. |
| `lcms-bibliotheek/catalog-manifest.json` | NEW (generated, committed) | Generated array of catalog entries consumed by the Catalogus tab. |
| `.github/workflows/build-catalog.yml` | NEW | On push to `main`: run generator, commit & push manifest if changed (`[skip ci]`). |
| `lcms-bibliotheek/index.html` | MODIFIED | Add "Catalogus" tab + `#view-catalog` section + catalog JS/CSS; make Catalogus the default active tab/view. Existing views untouched. |
| `index.html` (root) | MODIFIED | Add a prominent "▶ Symbolen-app" link to `lcms-bibliotheek/`. Folder-browser script unchanged. |

---

### Task 1: `build_catalog.py` + `test_build_catalog.py` + generated manifest

**Files:** `build_catalog.py` (NEW, repo root), `test_build_catalog.py` (NEW, repo root), `lcms-bibliotheek/catalog-manifest.json` (NEW, generated).

**Interfaces:**
- Produces function `build_catalog(root_dir: pathlib.Path) -> list[dict]` — each dict EXACTLY `{"name": str, "folder": str, "path": str, "type": "svg"|"png"}`; `path`/`folder` are POSIX, relative to `root_dir`; list sorted by `path`. Files under any `.git` directory segment are excluded; only `.svg`/`.png` (case-insensitive extension) are included.
- Produces `main() -> None` — writes `build_catalog(Path(__file__).parent)` to `lcms-bibliotheek/catalog-manifest.json` (`json.dump`, `indent=2`, `ensure_ascii=False`) plus a trailing newline, and prints `f"Wrote {len(entries)} entries to lcms-bibliotheek/catalog-manifest.json"`.
- Produces artifact `lcms-bibliotheek/catalog-manifest.json` consumed by Task 3.

- [ ] **Step 1:** Write the failing test file `test_build_catalog.py` (TDD: import target does not exist yet). Full content:

```python
import json
import tempfile
import unittest
from pathlib import Path

from build_catalog import build_catalog


class BuildCatalogTest(unittest.TestCase):
    def setUp(self):
        self._tmp = tempfile.TemporaryDirectory()
        self.root = Path(self._tmp.name)
        # two svgs (one nested in a folder), one png, one non-image, one inside .git
        (self.root / "alpha.svg").write_text("<svg/>", encoding="utf-8")
        (self.root / "sub").mkdir()
        (self.root / "sub" / "beta.svg").write_text("<svg/>", encoding="utf-8")
        (self.root / "sub" / "gamma.png").write_bytes(b"\x89PNG\r\n")
        (self.root / "readme.txt").write_text("nope", encoding="utf-8")
        (self.root / ".git").mkdir()
        (self.root / ".git" / "ignored.svg").write_text("<svg/>", encoding="utf-8")

    def tearDown(self):
        self._tmp.cleanup()

    def test_only_svg_and_png_included(self):
        entries = build_catalog(self.root)
        paths = [e["path"] for e in entries]
        self.assertEqual(paths, ["alpha.svg", "sub/beta.svg", "sub/gamma.png"])
        self.assertNotIn("readme.txt", paths)

    def test_git_directory_excluded(self):
        entries = build_catalog(self.root)
        for e in entries:
            self.assertNotIn(".git", e["path"].split("/"))

    def test_sorted_by_path(self):
        entries = build_catalog(self.root)
        paths = [e["path"] for e in entries]
        self.assertEqual(paths, sorted(paths))

    def test_dict_shape(self):
        entries = build_catalog(self.root)
        by_path = {e["path"]: e for e in entries}
        self.assertEqual(
            by_path["alpha.svg"],
            {"name": "alpha", "folder": ".", "path": "alpha.svg", "type": "svg"},
        )
        self.assertEqual(
            by_path["sub/beta.svg"],
            {"name": "beta", "folder": "sub", "path": "sub/beta.svg", "type": "svg"},
        )
        self.assertEqual(
            by_path["sub/gamma.png"],
            {"name": "gamma", "folder": "sub", "path": "sub/gamma.png", "type": "png"},
        )

    def test_keys_exact(self):
        entries = build_catalog(self.root)
        for e in entries:
            self.assertEqual(set(e.keys()), {"name", "folder", "path", "type"})

    def test_returns_list(self):
        self.assertIsInstance(build_catalog(self.root), list)


if __name__ == "__main__":
    unittest.main()
```

- [ ] **Step 2:** Run the test and confirm it FAILS for the right reason (module missing). Command:
  `python3 -m unittest test_build_catalog -v`
  Expected: an `ImportError`/`ModuleNotFoundError` for `build_catalog` (collection error), NOT assertion failures. This proves the test runs and the target is genuinely absent.

- [ ] **Step 3:** Write `build_catalog.py`. Full content:

```python
#!/usr/bin/env python3
"""Scan the repository for *.svg and *.png files and write a catalog manifest.

Run from the repo root: ``python3 build_catalog.py``.
Standard library only.
"""
import json
from pathlib import Path

EXTENSIONS = {".svg": "svg", ".png": "png"}
MANIFEST_PATH = Path("lcms-bibliotheek") / "catalog-manifest.json"


def build_catalog(root_dir):
    """Return a sorted list of catalog entries for all svg/png files under root_dir.

    root_dir: a pathlib.Path. Files under any ``.git`` directory segment are
    excluded. Paths are POSIX and relative to root_dir.
    """
    root = Path(root_dir)
    entries = []
    for file in root.rglob("*"):
        if not file.is_file():
            continue
        rel = file.relative_to(root)
        if ".git" in rel.parts:
            continue
        kind = EXTENSIONS.get(file.suffix.lower())
        if kind is None:
            continue
        rel_posix = rel.as_posix()
        entries.append(
            {
                "name": file.stem,
                "folder": rel.parent.as_posix(),
                "path": rel_posix,
                "type": kind,
            }
        )
    entries.sort(key=lambda e: e["path"])
    return entries


def main():
    root = Path(__file__).resolve().parent
    entries = build_catalog(root)
    target = root / MANIFEST_PATH
    with target.open("w", encoding="utf-8") as fh:
        json.dump(entries, fh, indent=2, ensure_ascii=False)
        fh.write("\n")
    print(f"Wrote {len(entries)} entries to {MANIFEST_PATH.as_posix()}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 4:** Run the test again and confirm all tests PASS. Command:
  `python3 -m unittest test_build_catalog -v`
  Expected: `Ran 6 tests` ... `OK`. If any fail, fix `build_catalog.py` (do NOT weaken the tests).

- [ ] **Step 5:** Generate the real manifest from the repo root. Command:
  `python3 build_catalog.py`
  Expected stdout: a line like `Wrote 1089 entries to lcms-bibliotheek/catalog-manifest.json` (count is whatever the repo currently holds; the manifest itself is now created/updated).

- [ ] **Step 6:** Cross-check the generated count against `find`. Commands:
  `python3 -c "import json; print(len(json.load(open('lcms-bibliotheek/catalog-manifest.json'))))"`
  `find . -path ./.git -prune -o \( -name '*.svg' -o -name '*.png' \) -print | wc -l`
  Expected: the two numbers match (or differ only by files the `find` lists but the scanner intentionally skips — there should be no difference here since both exclude `.git`). At time of writing both are 1089. If they differ, investigate before continuing.

- [ ] **Step 7:** Verify the manifest is valid JSON with the exact shape on a sample entry. Command:
  `python3 -c "import json; d=json.load(open('lcms-bibliotheek/catalog-manifest.json')); e=d[0]; assert set(e)=={'name','folder','path','type'}, e; assert e['type'] in ('svg','png'); print('OK', e)"`
  Expected: `OK {...}` printed, no assertion error.

- [ ] **Step 8:** Commit. Commands:
  `git add build_catalog.py test_build_catalog.py lcms-bibliotheek/catalog-manifest.json`
  `git commit -m "Add build_catalog.py generator, tests and generated catalog manifest"`
  (No `Co-Authored-By` trailer.)

---

### Task 2: GitHub Action `.github/workflows/build-catalog.yml`

**Files:** `.github/workflows/build-catalog.yml` (NEW).

**Interfaces:**
- Consumes `build_catalog.py` (run via `python3 build_catalog.py` from repo root) and produces/refreshes `lcms-bibliotheek/catalog-manifest.json`, committing it back on `push` to `main` only when it changed, with `[skip ci]` in the message to prevent a re-trigger loop. Requires `permissions: contents: write`.

- [ ] **Step 1:** Create `.github/workflows/build-catalog.yml` with EXACTLY this content:

```yaml
name: Build catalog manifest

on:
  push:
    branches:
      - main

permissions:
  contents: write

jobs:
  build-catalog:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.11"

      - name: Generate catalog manifest
        run: python3 build_catalog.py

      - name: Commit manifest if changed
        run: |
          git config user.name "github-actions[bot]"
          git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
          git add lcms-bibliotheek/catalog-manifest.json
          if git diff --staged --quiet; then
            echo "No manifest changes to commit."
          else
            git commit -m "Update catalog manifest [skip ci]"
            git push
          fi
```

- [ ] **Step 2:** Validate the YAML parses. PyYAML may not be installed; try it, and fall back to a structural check. Command:
  `python3 -c "import yaml,sys; yaml.safe_load(open('.github/workflows/build-catalog.yml')); print('yaml ok')" 2>/dev/null || echo "PyYAML unavailable - skipping parse, using structural grep instead"`
  Expected: either `yaml ok` (parse succeeded) OR the fallback message. Honest note: if PyYAML is unavailable, full schema validity is only confirmed by GitHub on push; that real validation is deferred to the push.

- [ ] **Step 3:** Structural grep checks (always run, independent of PyYAML). Commands:
  `grep -q 'permissions:' .github/workflows/build-catalog.yml && grep -q 'contents: write' .github/workflows/build-catalog.yml && echo "perms ok"`
  `grep -q 'python3 build_catalog.py' .github/workflows/build-catalog.yml && echo "runs generator ok"`
  `grep -q '\[skip ci\]' .github/workflows/build-catalog.yml && echo "skip-ci ok"`
  `grep -q 'git diff --staged --quiet' .github/workflows/build-catalog.yml && echo "diff-guard ok"`
  `grep -E 'branches:|- main' .github/workflows/build-catalog.yml`
  Expected: `perms ok`, `runs generator ok`, `skip-ci ok`, `diff-guard ok`, and the trigger lines printed. The actual end-to-end run (checkout → generate → push) is deferred to manual human verification after the workflow lands on `main`, since it cannot execute in this sandbox.

- [ ] **Step 4:** Commit. Commands:
  `git add .github/workflows/build-catalog.yml`
  `git commit -m "Add GitHub Action to auto-build catalog manifest on push"`
  (No `Co-Authored-By` trailer.)

---

### Task 3: "Catalogus" tab/view in `lcms-bibliotheek/index.html`

**Files:** `lcms-bibliotheek/index.html` (MODIFIED).

**Interfaces:**
- Consumes `catalog-manifest.json` (fetched relative to the app) — array of `{name, folder, path, type}`.
- Produces JS functions `loadCatalog()`, `renderCatalog()`, `showCatalogDetail(entry)`, `copyToClipboard(text, btn)` and constants `PAGES_BASE`, `RAW_BASE`.
- Produces DOM: a tab `<div class="tab active" data-view="catalog">Catalogus</div>` (now the default) and `<section class="view active" id="view-catalog">`. The previously-default Bibliotheek tab/view loses its `active` class.

- [ ] **Step 1:** Make the existing tabs no longer default. In the `<header>` (around line 166-170), replace the tab block. Old:

```html
  <div class="tabs">
    <div class="tab active" data-view="library">Bibliotheek</div>
    <div class="tab" data-view="add">Nieuw symbool</div>
    <div class="tab" data-view="ctrl">Controle</div>
  </div>
```

  New (Catalogus first and active; library loses `active`):

```html
  <div class="tabs">
    <div class="tab active" data-view="catalog">Catalogus</div>
    <div class="tab" data-view="library">Bibliotheek</div>
    <div class="tab" data-view="add">Nieuw symbool</div>
    <div class="tab" data-view="ctrl">Controle</div>
  </div>
```

- [ ] **Step 2:** Make the library section no longer the default active view. Find (around line 175):

```html
  <!-- ===== LIBRARY ===== -->
  <section class="view active" id="view-library">
```

  Replace with (drop `active` from library):

```html
  <!-- ===== LIBRARY ===== -->
  <section class="view" id="view-library">
```

- [ ] **Step 3:** Insert the new Catalogus view as the FIRST view inside `<main>`, immediately after the `<main>` opening line and before the `<!-- ===== LIBRARY ===== -->` comment. Insert this block (note: it becomes the only `active` view):

```html
  <!-- ===== CATALOGUS ===== -->
  <section class="view active" id="view-catalog">
    <div class="lib">
      <aside class="filters">
        <input class="search" id="catSearch" placeholder="Zoek op naam…">
        <h2>Type</h2>
        <div id="catTypeFilters">
          <div class="fitem active" data-cattype="all">Alle <span class="cnt" id="catCntAll"></span></div>
          <div class="fitem" data-cattype="svg">SVG <span class="cnt" id="catCntSvg"></span></div>
          <div class="fitem" data-cattype="png">PNG <span class="cnt" id="catCntPng"></span></div>
        </div>
        <h2>Map</h2>
        <div id="catFolderFilters"></div>
      </aside>
      <div class="gridwrap">
        <div class="statusbar" id="catStatus">Catalogus laden…</div>
        <div class="grid" id="catGrid"></div>
        <div class="empty" id="catEmpty" style="display:none">Geen symbolen die aan de filters voldoen.</div>
      </div>
    </div>
    <div class="cat-detail" id="catDetail">
      <div class="cat-detail-card">
        <button class="cat-detail-close" id="catDetailClose" title="Sluiten">×</button>
        <div class="cat-detail-preview" id="catDetailPreview"></div>
        <div class="cat-detail-name" id="catDetailName"></div>
        <label>Pages-URL</label>
        <div class="cat-copyrow">
          <input type="text" id="catPagesUrl" readonly>
          <button class="btnsm" id="catCopyPages">Kopieer</button>
        </div>
        <label>raw-URL</label>
        <div class="cat-copyrow">
          <input type="text" id="catRawUrl" readonly>
          <button class="btnsm" id="catCopyRaw">Kopieer</button>
        </div>
      </div>
    </div>
  </section>

```

- [ ] **Step 4:** Add minimal CSS for the detail overlay. Insert the following rules just before the closing `</style>` tag (after the `#view-ctrl` / `.ctrl-item b` block, around line 159-160):

```css
  /* ---- catalogus detail ---- */
  .cat-detail{display:none;position:fixed;inset:0;background:rgba(6,12,18,.72);z-index:50;align-items:center;justify-content:center;padding:24px}
  .cat-detail.open{display:flex}
  .cat-detail-card{background:var(--panel);border:1px solid var(--line);border-radius:12px;padding:22px;width:min(460px,92vw);position:relative}
  .cat-detail-close{position:absolute;top:10px;right:12px;width:26px;height:26px;border-radius:6px;border:1px solid var(--line);background:var(--panel2);color:var(--ink);font-size:16px;line-height:1;cursor:pointer}
  .cat-detail-close:hover{border-color:var(--accent)}
  .cat-detail-preview{height:200px;display:flex;align-items:center;justify-content:center;border-radius:9px;margin-bottom:14px;
    background:linear-gradient(45deg,#11161b 25%,transparent 25%),linear-gradient(-45deg,#11161b 25%,transparent 25%),linear-gradient(45deg,transparent 75%,#11161b 75%),linear-gradient(-45deg,transparent 75%,#11161b 75%);
    background-size:18px 18px;background-position:0 0,0 9px,9px -9px,-9px 0}
  .cat-detail-preview img{max-width:170px;max-height:170px}
  .cat-detail-name{font-size:14px;font-weight:600;margin-bottom:6px;word-break:break-word}
  .cat-copyrow{display:flex;gap:8px;margin-bottom:6px}
  .cat-copyrow input{flex:1;font-family:var(--mono);font-size:11px}
  #view-catalog .card .thumb img{max-width:74px;max-height:74px}
```

- [ ] **Step 5:** Add the catalog JavaScript. Insert this block inside the main `<script>`, immediately before the final `/* ---------- init ---------- */` comment (around line 1293). Full content:

```javascript
/* ============================================================
   CATALOGUS (functionaliteit 1) — repo-brede svg/png browser
   ============================================================ */
const PAGES_BASE = 'https://imroi.github.io/diversen/';
const RAW_BASE = 'https://raw.githubusercontent.com/imroi/diversen/main/';

let CATALOG = [];
let catSearchQ = "";
let catTypeFilter = "all";   /* all | svg | png */
let catFolderFilter = "*";

async function loadCatalog() {
  const status = document.getElementById('catStatus');
  try {
    const r = await fetch('catalog-manifest.json');
    if (!r.ok) { status.textContent = 'Kon catalog-manifest.json niet laden (' + r.status + ').'; return; }
    CATALOG = await r.json();
  } catch (e) {
    status.textContent = 'Kon catalog-manifest.json niet laden.';
    return;
  }
  buildCatFolderFilters();
  renderCatalog();
}

function buildCatFolderFilters() {
  const folders = [...new Set(CATALOG.map(e => e.folder))].sort();
  const el = document.getElementById('catFolderFilters');
  const mk = (label, val) =>
    `<div class="fitem${catFolderFilter === val ? ' active' : ''}" data-catfolder="${val}">${label}</div>`;
  let html = mk('Alle mappen', '*');
  folders.forEach(f => { html += mk(f, f); });
  el.innerHTML = html;
  el.querySelectorAll('.fitem').forEach(it => it.onclick = () => {
    catFolderFilter = it.dataset.catfolder;
    buildCatFolderFilters();
    renderCatalog();
  });
}

function catMatches(entry) {
  if (catTypeFilter !== 'all' && entry.type !== catTypeFilter) return false;
  if (catFolderFilter !== '*' && entry.folder !== catFolderFilter) return false;
  if (catSearchQ && !entry.name.toLowerCase().includes(catSearchQ)) return false;
  return true;
}

function renderCatalog() {
  const all = CATALOG.length;
  const svgCount = CATALOG.filter(e => e.type === 'svg').length;
  const pngCount = CATALOG.filter(e => e.type === 'png').length;
  document.getElementById('catCntAll').textContent = all;
  document.getElementById('catCntSvg').textContent = svgCount;
  document.getElementById('catCntPng').textContent = pngCount;

  const shown = CATALOG.filter(catMatches);
  const grid = document.getElementById('catGrid');
  document.getElementById('catEmpty').style.display = shown.length ? 'none' : 'block';
  document.getElementById('catStatus').textContent =
    `${shown.length} van ${all} getoond` + (catFolderFilter !== '*' ? ` — map ${catFolderFilter}` : '') + '.';
  grid.innerHTML = shown.map((e, i) => {
    const lbl = e.name.replace(/[-_]/g, ' ');
    return `<div class="card" data-catidx="${CATALOG.indexOf(e)}">
      <div class="thumb"><img src="../${e.path}" alt="${e.name}" loading="lazy"></div>
      <div class="nm">${lbl}</div>
      <div class="meta">${e.type.toUpperCase()}</div></div>`;
  }).join('');
  grid.querySelectorAll('.card').forEach(c => c.onclick = () => {
    const entry = CATALOG[Number(c.dataset.catidx)];
    if (entry) showCatalogDetail(entry);
  });
}

document.getElementById('catSearch').oninput = e => {
  catSearchQ = e.target.value.toLowerCase();
  renderCatalog();
};
document.querySelectorAll('#catTypeFilters .fitem').forEach(it => it.onclick = () => {
  catTypeFilter = it.dataset.cattype;
  document.querySelectorAll('#catTypeFilters .fitem')
    .forEach(x => x.classList.toggle('active', x.dataset.cattype === catTypeFilter));
  renderCatalog();
});

function showCatalogDetail(entry) {
  const pagesUrl = PAGES_BASE + entry.path;
  const rawUrl = RAW_BASE + entry.path;
  document.getElementById('catDetailPreview').innerHTML =
    `<img src="../${entry.path}" alt="${entry.name}">`;
  document.getElementById('catDetailName').textContent = entry.name + '.' + entry.type;
  document.getElementById('catPagesUrl').value = pagesUrl;
  document.getElementById('catRawUrl').value = rawUrl;
  document.getElementById('catDetail').classList.add('open');
}

function copyToClipboard(text, btn) {
  const done = () => {
    const old = btn.textContent;
    btn.textContent = 'Gekopieerd';
    setTimeout(() => { btn.textContent = old; }, 1200);
  };
  if (navigator.clipboard && navigator.clipboard.writeText) {
    navigator.clipboard.writeText(text).then(done).catch(() => done());
  } else {
    done();
  }
}

document.getElementById('catCopyPages').onclick = () =>
  copyToClipboard(document.getElementById('catPagesUrl').value, document.getElementById('catCopyPages'));
document.getElementById('catCopyRaw').onclick = () =>
  copyToClipboard(document.getElementById('catRawUrl').value, document.getElementById('catCopyRaw'));
document.getElementById('catDetailClose').onclick = () =>
  document.getElementById('catDetail').classList.remove('open');
document.getElementById('catDetail').onclick = e => {
  if (e.target.id === 'catDetail') document.getElementById('catDetail').classList.remove('open');
};
```

- [ ] **Step 6:** Wire `loadCatalog()` into the tab switcher and run it on init. First, in the tab `onclick` handler (around line 462-469), add a catalog branch. Old:

```javascript
  if(t.dataset.view==="add") wizInit();
  if(t.dataset.view==="ctrl") runCtrl();
```

  New:

```javascript
  if(t.dataset.view==="add") wizInit();
  if(t.dataset.view==="ctrl") runCtrl();
  if(t.dataset.view==="catalog" && !CATALOG.length) loadCatalog();
```

  Then, in the init block at the very bottom (around line 1293-1299), add a `loadCatalog()` call. Old:

```javascript
/* ---------- init ---------- */
loadEigenSymbolen();
loadEigenSenders();
initManifest();
rebuild();
wizInit();
```

  New:

```javascript
/* ---------- init ---------- */
loadEigenSymbolen();
loadEigenSenders();
initManifest();
rebuild();
wizInit();
loadCatalog();
```

- [ ] **Step 7:** Start a local static server from the REPO ROOT (backgrounded). Serving from the repo root mirrors GitHub Pages exactly: the app sits at `/lcms-bibliotheek/`, so its `../<path>` asset references resolve to `/<path>` for every repo asset (not just those inside `lcms-bibliotheek/`). Command (run from the repo root, in background):
  `python3 -m http.server 8777`
  Then confirm the app is reachable at its one-dir-deep path:
  `curl -s -o /dev/null -w "%{http_code}\n" http://127.0.0.1:8777/lcms-bibliotheek/index.html`
  Expected: `200`.

- [ ] **Step 8:** Verify the manifest is served (relative to the app) and parses. Commands:
  `curl -s -o /dev/null -w "%{http_code}\n" http://127.0.0.1:8777/lcms-bibliotheek/catalog-manifest.json`
  `curl -s http://127.0.0.1:8777/lcms-bibliotheek/catalog-manifest.json | python3 -c "import sys,json; d=json.load(sys.stdin); print('entries', len(d)); print('sample', d[0])"`
  Expected: `200`, then a positive entry count and a sample dict with keys `name/folder/path/type`.

- [ ] **Step 9:** Verify a CROSS-FOLDER asset resolves exactly as the app's `../<path>` reference will. Because the server is rooted at the repo root, an asset in any folder is reachable at `http://127.0.0.1:8777/<path>` — the same URL the app's `<img src="../<path>">` produces from `/lcms-bibliotheek/`. Pick the first entry OUTSIDE `lcms-bibliotheek/` and curl it. Commands:
  `python3 -c "import json; d=json.load(open('lcms-bibliotheek/catalog-manifest.json')); ext=[e for e in d if not e['path'].startswith('lcms-bibliotheek/')]; print(ext[0]['path'] if ext else 'NONE')"`
  Take that printed path (e.g. `brandkranen/…svg`) and curl it through the server root:
  `curl -s -o /dev/null -w "%{http_code}\n" "http://127.0.0.1:8777/<that-path>"`
  Expected: `200` — proving cross-folder previews load locally just as they will on GitHub Pages. (The full visual grid render and click-to-detail interaction is still deferred to manual human verification, but asset reachability is now genuinely confirmed.)

- [ ] **Step 10:** Grep-verify the new structure exists in `index.html`. Commands:
  `grep -c 'id="view-catalog"' lcms-bibliotheek/index.html`  → expect exactly `1`.
  `grep -q 'data-view="catalog"' lcms-bibliotheek/index.html && echo "tab ok"`
  `grep -q "const PAGES_BASE = 'https://imroi.github.io/diversen/';" lcms-bibliotheek/index.html && echo "pages base ok"`
  `grep -q "const RAW_BASE = 'https://raw.githubusercontent.com/imroi/diversen/main/';" lcms-bibliotheek/index.html && echo "raw base ok"`
  `grep -q 'navigator.clipboard.writeText' lcms-bibliotheek/index.html && echo "copy handler ok"`
  `grep -q 'function loadCatalog' lcms-bibliotheek/index.html && grep -q 'function renderCatalog' lcms-bibliotheek/index.html && grep -q 'function showCatalogDetail' lcms-bibliotheek/index.html && echo "funcs ok"`
  `grep -c 'class="tab active"' lcms-bibliotheek/index.html`  → expect exactly `1` (only the Catalogus tab is active).
  Expected: all the `ok` lines print, `id="view-catalog"` count is 1, active-tab count is 1.

- [ ] **Step 11:** Confirm the existing views were not broken. Commands:
  `grep -c 'id="view-library"' lcms-bibliotheek/index.html`  → expect `1`.
  `grep -c 'id="view-add"' lcms-bibliotheek/index.html`  → expect `1`.
  `grep -c 'id="view-ctrl"' lcms-bibliotheek/index.html`  → expect `1`.
  `grep -c 'class="view active"' lcms-bibliotheek/index.html`  → expect exactly `1` (only Catalogus).
  Expected: each id appears once, exactly one active view. The actual visual grid render, click-to-detail, and copy-to-clipboard behavior is DEFERRED TO MANUAL HUMAN VERIFICATION (no browser in this environment).

- [ ] **Step 12:** Stop the background server. Command: kill the backgrounded `http.server` process (e.g. `pkill -f "http.server 8777"`). Confirm it is gone:
  `curl -s -o /dev/null -w "%{http_code}\n" http://127.0.0.1:8777/index.html || echo "server stopped"`
  Expected: a connection failure / `server stopped`.

- [ ] **Step 13:** Commit. Commands:
  `git add lcms-bibliotheek/index.html`
  `git commit -m "Add default Catalogus tab with repo-wide search, filters and copy-link detail"`
  (No `Co-Authored-By` trailer.)

---

### Task 4: Prominent link from root `index.html` to the app

**Files:** `index.html` (root, MODIFIED).

**Interfaces:**
- Produces a visible anchor `<a ... href="lcms-bibliotheek/">▶ Symbolen-app</a>` injected into the existing navbar of the root folder-browser. The folder-browser fetch/render script remains functionally unchanged (only the navbar markup string gains the link).

- [ ] **Step 1:** Add the link into the navbar markup. In root `index.html`, find the `navbar-nav` div inside the `htmlString` template (around lines 19-21). Old:

```html
            <div class="navbar-nav">
                <a class="nav-link" href="https://github.com/imroi/diversen">README</a>
            </div>
```

  New (adds a prominent button-styled link to the app, before README):

```html
            <div class="navbar-nav align-items-center gap-2">
                <a class="btn btn-primary" href="lcms-bibliotheek/">▶ Symbolen-app</a>
                <a class="nav-link" href="https://github.com/imroi/diversen">README</a>
            </div>
```

  Note: the `htmlString` is a JavaScript template literal using backticks, and `▶`/`href` contain no backticks or `${`, so this is a safe literal edit. Bootstrap (already loaded in the `<head>`) supplies `.btn .btn-primary` styling.

- [ ] **Step 2:** Grep-verify the link is present and the folder-browser logic is untouched. Commands:
  `grep -q 'href="lcms-bibliotheek/"' index.html && echo "link ok"`
  `grep -q '▶ Symbolen-app' index.html && echo "label ok"`
  `grep -q "fetch('https://api.github.com/repos/imroi/diversen/contents/')" index.html && echo "browser fetch intact"`
  `grep -q "file.type === 'dir'" index.html && echo "dir loop intact"`
  `grep -q "document.getElementsByTagName('body')\[0\].innerHTML = htmlString" index.html && echo "render intact"`
  Expected: `link ok`, `label ok`, `browser fetch intact`, `dir loop intact`, `render intact` all print — proving the link was added without altering the folder-browser script. The actual rendered navbar appearance is DEFERRED TO MANUAL HUMAN VERIFICATION (no browser).

- [ ] **Step 3:** Commit. Commands:
  `git add index.html`
  `git commit -m "Add prominent Symbolen-app link to root landing page"`
  (No `Co-Authored-By` trailer.)

---

## Done criteria (Plan A)
- `python3 -m unittest test_build_catalog -v` → `OK`.
- `python3 build_catalog.py` regenerates `lcms-bibliotheek/catalog-manifest.json`; entry count matches the `find` baseline.
- `.github/workflows/build-catalog.yml` exists with `contents: write`, runs the generator, and commits with `[skip ci]` only on change.
- `lcms-bibliotheek/index.html` has exactly one `#view-catalog`, Catalogus is the sole default-active tab/view, both BASE constants and a `navigator.clipboard.writeText` copy handler are present, and the other three views are intact.
- Root `index.html` shows a `▶ Symbolen-app` link to `lcms-bibliotheek/` with the folder-browser script unchanged.
- All commits are free of `Co-Authored-By` trailers.
- Browser-only checks (visual grid, click-to-detail, copy feedback, deployed `../` asset loading, live Action run) are explicitly deferred to manual human verification.
