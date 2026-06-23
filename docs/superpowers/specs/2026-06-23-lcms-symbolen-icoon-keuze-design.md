# Ontwerp: icoon-keuze uit `/symbolen` + publicatie van de LCMS-tool

**Datum:** 2026-06-23
**Status:** Goedgekeurd (ontwerpfase)
**Component:** `lcms-bibliotheek/`

## Doel

De bestaande LCMS Symbool Bibliotheek-tool (`lcms-bibliotheek/index.html`) publiceren
binnen het `diversen`-project en uitbreiden zodat SVG-iconen uit de map
`lcms-bibliotheek/symbolen/` direct als input gebruikt kunnen worden in de
"nieuw symbool"-wizard — naast de bestaande upload-route.

## Context

- Het `diversen`-project is volledig statisch (HTML + SVG/PNG-assets), gepubliceerd
  via GitHub Pages op `imroi.github.io/diversen/`. Er is geen build-systeem.
- De tool is één zelfstandig bestand: `lcms-bibliotheek/index.html` (markup +
  ingebedde `<style>` + ~970 regels vanilla JavaScript). Geen frameworks of
  externe JS-bestanden.
- De tool laadt zijn 235 LCMS-symbolen via `fetch()` op basis van
  `lcms-manifest.json` (server-modus) of via drag-&-drop (`file://`).
- De "nieuw symbool"-wizard (stap 3 "Icoon") heeft naast de upload-knop **al een
  miniatuur-grid** (`renderSymbolenGrid()`, regel 885) dat iconen uit `symbolen/`
  toont; klik → `ingestNewIcon()`. De verwerking in `ingestNewIcon()` doet
  viewBox-detectie (fallback 24×24), behoud van harde kleuren, en sliders voor
  schaal/verschuiving/recolor — voor zowel grid- als upload-iconen.
- **Blokkade voor publicatie:** `loadSymbolen()` (regel 869) vult dat grid door
  `fetch('symbolen/')` te doen en de HTML directory-listing te schrapen op
  `<a href="*.svg">`. Dat werkt onder `python -m http.server` (auto-index), maar
  **niet op GitHub Pages**, dat geen directory-listings serveert (404). Daardoor
  blijft het grid leeg op de gepubliceerde URL. Dit ontwerp lost dat op met een
  gegenereerd manifest.
- De map `lcms-bibliotheek/symbolen/` bevat ~25 losse SVG's met wisselende viewBoxes
  (o.a. 1200×1200, 400×400, 121×121) en harde kleuren.

## Beslissingen (uit brainstorm)

| Onderwerp | Keuze |
|---|---|
| Bronmap voor iconen | Alleen `lcms-bibliotheek/symbolen/` |
| Index-strategie | Gegenereerd manifest via een generator-script |
| Taal generator | Python (geen dependencies, `python build_symbolen.py`) |
| Icoon-keuze UI | Bestaand miniatuur-grid (geen zoekveld) náást de upload-knop |
| Laad-route | Manifest eerst; directory-scrape als lokale fallback |
| Publicatie-scope | Werkend op de gepubliceerde URL **en** vindbaar via een link |

## Architectuur & data-flow

```
symbolen/*.svg  ──(python build_symbolen.py)──▶  symbolen-manifest.json
                                                        │ (gecommit)
index.html  ──fetch op laden──▶  manifest  ──▶  grid in wizard-stap 3
                                                        │ klik
                                  fetch SVG-tekst ──▶ ingestNewIcon() ──▶ compose ──▶ download
```

Kernprincipe: een via het grid geselecteerd icoon doorloopt **exact dezelfde
`ingestNewIcon()`-pijplijn** als een geüpload bestand. Er komt geen tweede codepad
voor icoonverwerking. Daardoor werken viewBox-detectie, kleurbehoud en de
recolor/schaal/verschuif-sliders identiek voor beide routes.

## Componenten

### `lcms-bibliotheek/build_symbolen.py` (nieuw)
- Scant `symbolen/` op `*.svg`-bestanden.
- Schrijft `symbolen-manifest.json` als een lijst:
  `[{ "name": "bench", "path": "symbolen/bench.svg" }, …]`
  (`name` = bestandsnaam zonder extensie; `path` = pad relatief aan `index.html`).
- Geen externe dependencies; draaien met `python build_symbolen.py` vanuit
  `lcms-bibliotheek/`.
- Bewust minimaal — het eerste en enige script in het project. Geen CI-koppeling.

### `lcms-bibliotheek/symbolen-manifest.json` (nieuw, gegenereerd)
- De index die de tool via `fetch()` inleest.
- Gegenereerd artefact, wordt gecommit.

### `lcms-bibliotheek/index.html` (wijziging)
- `loadSymbolen()` ombouwen: eerst `symbolen-manifest.json` fetchen en de daarin
  vermelde paden laden in `symbolenCache` (werkt op GitHub Pages). Mislukt het
  manifest, dan terugvallen op de huidige directory-scrape (`fetch('symbolen/')`)
  zodat lokaal draaien zonder script-run blijft werken.
- Het bestaande grid (`renderSymbolenGrid()`) en de klik → `ingestNewIcon()`-route
  blijven ongewijzigd; ze werken zodra `symbolenCache` gevuld is. Geen zoekveld.

### Hoofd-`index.html` (project-root, wijziging)
- Een zichtbare link naar de tool (`lcms-bibliotheek/`) toevoegen vanuit de
  preview-ingang, zodat de tool vindbaar is.

## Server vs. `file://`

Net als de bestaande "Laad uit assets"-knop werkt het grid alleen onder een server
of de gepubliceerde URL, omdat `fetch()` onder `file://` door het same-origin-beleid
mislukt. Onder `file://` blijft het grid leeg en valt de gebruiker terug op de
upload-knop — consistent met het huidige gedrag van de tool. Voor de gepubliceerde
context (het doel van dit ontwerp) werkt het grid gewoon.

## Buiten scope (YAGNI)

- Andere bronmappen dan `lcms-bibliotheek/symbolen/`.
- Automatisch (her)genereren van `lcms-manifest.json`.
- Een CI-stap of build-pipeline voor het generator-script.
- Drag-&-drop ondersteuning voor het grid (upload dekt de `file://`-route al).
- Een zoekveld boven het grid (bij ~25 iconen niet nodig).
