# LCMS symbolen-icoon-keuze + publicatie — Implementatieplan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** De "nieuw symbool"-wizard van de LCMS-tool laat iconen uit `lcms-bibliotheek/symbolen/` kiezen, óók op GitHub Pages, en de tool is vindbaar vanuit de hoofdpagina.

**Architecture:** Een Python-script genereert `symbolen-manifest.json` (een index van de SVG's in `symbolen/`). De bestaande functie `loadSymbolen()` in `index.html` wordt omgebouwd zodat hij dit manifest leest in plaats van te leunen op een directory-listing (die GitHub Pages niet serveert), met de huidige directory-scrape als lokale fallback. Het bestaande grid en de `ingestNewIcon()`-route blijven ongewijzigd. De hoofd-`index.html` krijgt een zichtbare link naar de tool.

**Tech Stack:** Python 3 (stdlib only) voor het generator-script; vanilla JavaScript (browser) voor de tool; statische hosting via GitHub Pages.

## Global Constraints

- Geen externe dependencies: het Python-script gebruikt **alleen de standlibrary**; de tool blijft **vanilla JS** zonder libraries of build-stap.
- Het manifest-pad wordt **relatief** aan `lcms-bibliotheek/index.html` ge-fetcht (`symbolen-manifest.json`); icoonpaden zijn relatief (`symbolen/<naam>.svg`).
- Manifest-formaat: een JSON-array van objecten `{ "name": "<bestandsnaam-zonder-.svg>", "path": "symbolen/<bestandsnaam>.svg" }`, alfabetisch gesorteerd op bestandsnaam.
- `symbolenCache` wordt gesleuteld op de **volledige bestandsnaam met extensie** (bv. `"bench.svg"`), zodat `renderSymbolenGrid()` (regel 885, ongewijzigd) blijft werken.
- Alle commit-messages: **geen** `Co-Authored-By`-trailer.
- Werkmap voor commando's: `lcms-bibliotheek/` (tenzij anders vermeld). Branch: `lcms-symbolen-icoon-keuze` (bestaat al).

---

## File Structure

- `lcms-bibliotheek/build_symbolen.py` — **nieuw**. Scant `symbolen/`, schrijft `symbolen-manifest.json`. Eén verantwoordelijkheid: index genereren.
- `lcms-bibliotheek/test_build_symbolen.py` — **nieuw**. Unittest (stdlib `unittest`) voor de manifest-generatie.
- `lcms-bibliotheek/symbolen-manifest.json` — **nieuw, gegenereerd**. Gecommit artefact.
- `lcms-bibliotheek/index.html` — **wijzigen**. Alleen `loadSymbolen()` (regels 869–883).
- `index.html` (project-root) — **wijzigen**. Eén navbar-link naar de tool.

---

## Task 1: Python generator + manifest

**Files:**
- Create: `lcms-bibliotheek/build_symbolen.py`
- Test: `lcms-bibliotheek/test_build_symbolen.py`
- Create (gegenereerd): `lcms-bibliotheek/symbolen-manifest.json`

**Interfaces:**
- Produces: `build_symbolen.build_manifest(symbolen_dir: pathlib.Path) -> list[dict]` — geeft een gesorteerde lijst `{"name": str, "path": str}`. `main()` schrijft die naar `symbolen-manifest.json` naast het script.
- Produces: `lcms-bibliotheek/symbolen-manifest.json` — gelezen door Task 2 (`loadSymbolen()`).

- [ ] **Step 1: Write the failing test**

Create `lcms-bibliotheek/test_build_symbolen.py`:

```python
import tempfile
import unittest
from pathlib import Path

import build_symbolen


class BuildManifestTest(unittest.TestCase):
    def test_lists_only_svgs_sorted_with_relative_paths(self):
        with tempfile.TemporaryDirectory() as d:
            dirp = Path(d)
            (dirp / "ggz.svg").write_text("<svg/>", encoding="utf-8")
            (dirp / "bench.svg").write_text("<svg/>", encoding="utf-8")
            (dirp / "readme.txt").write_text("nope", encoding="utf-8")

            result = build_symbolen.build_manifest(dirp)

            self.assertEqual(
                result,
                [
                    {"name": "bench", "path": "symbolen/bench.svg"},
                    {"name": "ggz", "path": "symbolen/ggz.svg"},
                ],
            )

    def test_empty_dir_returns_empty_list(self):
        with tempfile.TemporaryDirectory() as d:
            self.assertEqual(build_symbolen.build_manifest(Path(d)), [])


if __name__ == "__main__":
    unittest.main()
```

- [ ] **Step 2: Run test to verify it fails**

Run (vanuit `lcms-bibliotheek/`): `python -m unittest test_build_symbolen -v`
Expected: FAIL — `ModuleNotFoundError: No module named 'build_symbolen'`

- [ ] **Step 3: Write the generator**

Create `lcms-bibliotheek/build_symbolen.py`:

```python
#!/usr/bin/env python3
"""Genereer symbolen-manifest.json: een index van de SVG-iconen in symbolen/.

De tool (index.html) leest dit manifest om de icoon-keuze in de wizard te vullen.
Nodig omdat GitHub Pages geen directory-listing serveert; een gecommit manifest
werkt overal.

Gebruik (vanuit lcms-bibliotheek/):

    python build_symbolen.py

Draai dit opnieuw na het toevoegen of verwijderen van een SVG in symbolen/.
"""
import json
from pathlib import Path

BASE = Path(__file__).resolve().parent
SYMBOLEN_DIR = BASE / "symbolen"
OUTPUT = BASE / "symbolen-manifest.json"


def build_manifest(symbolen_dir):
    """Geef een gesorteerde lijst {name, path} voor elke *.svg in symbolen_dir."""
    files = sorted(p.name for p in symbolen_dir.glob("*.svg"))
    return [{"name": f[:-4], "path": f"symbolen/{f}"} for f in files]


def main():
    manifest = build_manifest(SYMBOLEN_DIR)
    OUTPUT.write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    print(f"{len(manifest)} symbolen geschreven naar {OUTPUT.name}")


if __name__ == "__main__":
    main()
```

- [ ] **Step 4: Run test to verify it passes**

Run (vanuit `lcms-bibliotheek/`): `python -m unittest test_build_symbolen -v`
Expected: PASS — beide tests OK.

- [ ] **Step 5: Generate the manifest**

Run (vanuit `lcms-bibliotheek/`): `python build_symbolen.py`
Expected: print zoals `24 symbolen geschreven naar symbolen-manifest.json` (aantal ≈ aantal `.svg` in `symbolen/`).

- [ ] **Step 6: Verify the generated manifest**

Run (vanuit `lcms-bibliotheek/`): `python -c "import json; d=json.load(open('symbolen-manifest.json')); print(len(d)); print(d[0])"`
Expected: een getal (~24) en een eerste item zoals `{'name': 'bench', 'path': 'symbolen/bench.svg'}`. Controleer dat het aantal overeenkomt met: `ls symbolen/*.svg | wc -l`.

- [ ] **Step 7: Commit**

```bash
cd /Users/spatialcoen/dev/diversen
git add lcms-bibliotheek/build_symbolen.py lcms-bibliotheek/test_build_symbolen.py lcms-bibliotheek/symbolen-manifest.json
git commit -m "Genereer symbolen-manifest.json via build_symbolen.py"
```

---

## Task 2: loadSymbolen() leest manifest (met directory-scrape fallback)

**Files:**
- Modify: `lcms-bibliotheek/index.html` (functie `loadSymbolen`, huidige regels 869–883)

**Interfaces:**
- Consumes: `lcms-bibliotheek/symbolen-manifest.json` (Task 1) — array van `{name, path}`.
- Consumes (ongewijzigd): `symbolenCache` (object, regel 866), `renderSymbolenGrid()` (regel 885). `symbolenCache` wordt gesleuteld op bestandsnaam mét extensie.
- Produces: een gevulde `symbolenCache` ongeacht of de host directory-listings serveert.

- [ ] **Step 1: Vervang de functie `loadSymbolen`**

Zoek in `lcms-bibliotheek/index.html` dit blok (regels 869–883):

```javascript
async function loadSymbolen() {
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
  renderSymbolenGrid();
}
```

Vervang het door:

```javascript
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
      if (r.ok) {
        const html = await r.text();
        const names = [...html.matchAll(/href="([^"#?]+\.svg)"/gi)].map(m => m[1]);
        for (const name of names) {
          try {
            const r2 = await fetch('symbolen/' + name);
            if (r2.ok) symbolenCache[name] = await r2.text();
          } catch(e) {}
        }
      }
    } catch(e) {}
  }
  renderSymbolenGrid();
}
```

- [ ] **Step 2: Start een lokale server**

Run (vanuit `lcms-bibliotheek/`): `python -m http.server 8000`
Laat draaien; open `http://localhost:8000` in de browser.

- [ ] **Step 3: Verify het grid vult via het manifest**

In de browser:
1. Klik op de tab **"Nieuw symbool"**.
2. Doorloop de wizard naar **stap 3 ("Voeg een icoon toe")**.
3. Onder **"Kies een symbool"** moet het miniatuur-grid de iconen uit `symbolen/` tonen (bench, ggz, natuurbrand, …) — niet de tekst "Geen symbolen gevonden".
4. Open DevTools → tabblad **Network**, herlaad de pagina, en bevestig: `symbolen-manifest.json` geeft **200**, en er is **geen** request naar de directory `symbolen/` (alleen naar individuele `symbolen/*.svg`). Dit bewijst dat de manifest-route (de GitHub Pages-route) het grid vult, niet de fallback.

Expected: grid gevuld; `symbolen-manifest.json` = 200; geen `GET symbolen/`-listing.

- [ ] **Step 4: Verify klik → icoon overgenomen**

Klik op een tegel in het grid (bv. "natuurbrand"). De tegel krijgt een selectie-rand en de live-preview rechts toont het sjabloon met het gekozen icoon (diagnostiek onder de upload-knop verschijnt). Dit bevestigt dat de ongewijzigde `ingestNewIcon()`-route werkt met manifest-iconen.

Expected: preview update direct na klik.

- [ ] **Step 5: Stop de server en commit**

Stop de server (Ctrl-C).

```bash
cd /Users/spatialcoen/dev/diversen
git add lcms-bibliotheek/index.html
git commit -m "loadSymbolen: laad iconen uit manifest, met directory-scrape als fallback"
```

---

## Task 3: Zichtbare link naar de tool vanuit de hoofdpagina

**Files:**
- Modify: `index.html` (project-root, navbar rond regels 19–21)

**Interfaces:**
- Consumes: niets. Puur een navigatie-link naar `lcms-bibliotheek/`.

- [ ] **Step 1: Voeg een navbar-link toe**

Zoek in de root `index.html` dit blok (regels 19–21):

```javascript
            <div class="navbar-nav">
                <a class="nav-link" href="https://github.com/imroi/diversen">README</a>
            </div>
```

Vervang het door:

```javascript
            <div class="navbar-nav">
                <a class="nav-link" href="lcms-bibliotheek/">LCMS Symbool-tool</a>
                <a class="nav-link" href="https://github.com/imroi/diversen">README</a>
            </div>
```

- [ ] **Step 2: Verify de link**

Run (vanuit de project-root): `python -m http.server 8001`
Open `http://localhost:8001`. In de navigatiebalk staat nu **"LCMS Symbool-tool"**. Klik erop → de tool (`lcms-bibliotheek/index.html`) opent.

Expected: zichtbare link in de navbar; klik opent de tool.

- [ ] **Step 3: Stop de server en commit**

Stop de server (Ctrl-C).

```bash
cd /Users/spatialcoen/dev/diversen
git add index.html
git commit -m "Voeg zichtbare link naar de LCMS Symbool-tool toe in de hoofdnavigatie"
```

---

## Verificatie achteraf (hele feature)

1. `lcms-bibliotheek/symbolen-manifest.json` bestaat, is geldige JSON, en het aantal entries komt overeen met `ls lcms-bibliotheek/symbolen/*.svg | wc -l`.
2. Met een lokale server vult het icoon-grid in wizard-stap 3, en de Network-tab bevestigt dat `symbolen-manifest.json` (niet de directory-listing) de bron is.
3. De hoofdpagina toont een zichtbare link naar de tool.
4. Bij het toevoegen van een nieuwe SVG in `symbolen/` is de werkwijze: `python build_symbolen.py` draaien en het bijgewerkte manifest committen (gedocumenteerd in de docstring van het script).
