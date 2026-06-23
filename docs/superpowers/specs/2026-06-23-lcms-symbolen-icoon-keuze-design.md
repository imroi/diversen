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
- De "nieuw symbool"-wizard (stap 3 "Icoon") accepteert nu alleen een handmatig
  geüpload SVG-bestand. De verwerking gebeurt in `ingestNewIcon()`: viewBox-detectie
  (fallback 24×24), behoud van harde kleuren, en sliders voor schaal/verschuiving/recolor.
- De map `lcms-bibliotheek/symbolen/` bevat ~25 losse SVG's met wisselende viewBoxes
  (o.a. 1200×1200, 400×400, 121×121) en harde kleuren.

## Beslissingen (uit brainstorm)

| Onderwerp | Keuze |
|---|---|
| Bronmap voor iconen | Alleen `lcms-bibliotheek/symbolen/` |
| Index-strategie | Gegenereerd manifest via een generator-script |
| Taal generator | Python (geen dependencies, `python build_symbolen.py`) |
| Icoon-keuze UI | Doorzoekbaar miniatuur-grid náást de bestaande upload-knop |
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
- Bij laden in server-modus naast `lcms-manifest.json` ook `symbolen-manifest.json`
  fetchen.
- In wizard-stap 3: een doorzoekbaar miniatuur-grid ("Kies uit bibliotheek")
  boven de bestaande "↑ SVG uploaden"-knop. Stijl volgt het bestaande `.sym-grid`.
- Klik op een tegel: fetch de SVG-tekst van het bijbehorende `path` en geef die
  door aan `ingestNewIcon()`. Preview verschijnt direct.

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
