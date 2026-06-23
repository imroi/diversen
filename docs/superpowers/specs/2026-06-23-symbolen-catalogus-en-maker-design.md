# Ontwerp: Symbolen-catalogus + symbool-maker (één app, twee tabs)

**Datum:** 2026-06-23
**Status:** Goedgekeurd (ontwerpfase)
**Vervangt:** `2026-06-23-lcms-symbolen-icoon-keuze-design.md` (dat ontwerp gaat op in dit grotere geheel; de al-gecommitte Tasks 1 & 2 worden gegeneraliseerd, zie "Migratie").

## Doel

De bestaande tool in `lcms-bibliotheek/` uitbouwen tot één web-app met twee
functionaliteiten, en deze als hoofdingang van het project ontsluiten:

1. **Catalogus** — alle SVG-iconen uit de hele repo zichtbaar en doorzoekbaar;
   gebruikers kopiëren de directe link naar een symbool voor gebruik in hun
   kaartplatform.
2. **Nieuw symbool** — nieuwe symbolen maken op basis van 4 templates, met keuze
   voor drie kleuren (buitenrand, rand, vul) en vooringestelde afzenderkleuren.

## Context

- Het `diversen`-project is volledig statisch, gepubliceerd via GitHub Pages op
  `https://imroi.github.io/diversen/`. De huidige root `index.html` is een
  mappen-browser die via de GitHub API de top-level mappen toont.
- De repo bevat ~854 `*.svg` verspreid over vele mappen (kro, knmi, kvk, melvin,
  lcms, lcms-bibliotheek, …). Deze symbolen zijn al in gebruik; **hun paden mogen
  niet veranderen**.
- `lcms-bibliotheek/index.html` is een zelfstandige app (vanilla JS) met al een
  tab-structuur: een "Bibliotheek"-tab en een "Nieuw symbool"-wizard. De wizard
  kent 4 pointer-templates (incident, eenheid, object, gebeurtenis), vaste
  afzenders met preset-kleuren, en `ingestNewIcon()` voor icoonverwerking.
- De 4 template-SVG's (`lcms-bibliotheek/lcms-svgs/template/*.svg`) hebben nu
  **twee** gekleurde vlakken: een ring (`fill="#000"`) en een binnenvlak
  (`fill="#D5D5D5"`). De afzender-`ink` kleurt de ring, de afzender-`fill` het
  binnenvlak.
- Referentie voor de gewenste catalogus-UX (klik symbool → kopieer link):
  `https://cogocollect.github.io/symbols-data4oov/`.

## Beslissingen (uit brainstorm)

| Onderwerp | Keuze |
|---|---|
| Catalogus-scope | Alle `*.svg` én `*.png` in de hele repo (beide met kopieer-link; alleen SVG's bruikbaar in de maker) |
| Kopieer-link formaat | Beide tonen: GitHub Pages-URL én raw-URL, elk met kopieerknop |
| Indexering | Gegenereerd `catalog-manifest.json`, automatisch ververst door een GitHub Action bij push |
| Structuur | Eén app, twee tabs (Catalogus + Nieuw symbool), voortbouwend op `lcms-bibliotheek/index.html` |
| Plaatsing | App blijft op `/lcms-bibliotheek/`; de root-landing krijgt een prominente knop ernaartoe |
| Kleur-mapping | Template-ring splitsen in buitenrand (dunne buitenlijn) + rand (ringband); plus vul (binnenvlak) = 3 regio's |
| Icoon-bron maker | Kiezen uit de catalogus + eigen SVG uploaden |
| Buitenrand-default | Zwart (`#000`) voor alle afzenders |

## Architectuur

```
build_catalog.py  ──scant hele repo──▶  lcms-bibliotheek/catalog-manifest.json
       ▲ (GitHub Action draait dit bij elke push, commit het manifest)        │
                                                                              │ fetch
lcms-bibliotheek/index.html ──┬── Tab "Catalogus"  : grid + filters + kopieer-link
                              └── Tab "Nieuw symbool": templates(3 kleuren) + icoon uit catalogus/upload

index.html (root) ── prominente knop ──▶ lcms-bibliotheek/
```

## Componenten

### 1. `build_catalog.py` (nieuw, in repo-root)
- Scant de repo recursief naar `*.svg` én `*.png`, exclusief `.git/`.
- Schrijft `lcms-bibliotheek/catalog-manifest.json`: een array van
  `{ "name": "<bestandsnaam-zonder-extensie>", "folder": "<map-pad>", "path": "<repo-relatief-pad>", "type": "svg" | "png" }`,
  gesorteerd op `path`. Voorbeeld: `{ "name": "natuurbrand", "folder": "lcms-bibliotheek/symbolen", "path": "lcms-bibliotheek/symbolen/natuurbrand.svg", "type": "svg" }`.
- Standaardbibliotheek only; draaibaar met `python3 build_catalog.py`.
- **Open detail (spec-review):** template-SVG's (`lcms-bibliotheek/lcms-svgs/template/*.svg`)
  worden wél meegenomen tenzij anders besloten; `symbolen/files.zip` is geen `.svg`/`.png`
  en valt vanzelf buiten de scan.

### 2. `.github/workflows/build-catalog.yml` (nieuw)
- Trigger: push naar `main`.
- Stappen: checkout → `python3 build_catalog.py` → als `catalog-manifest.json`
  wijzigde, commit & push het terug (met `[skip ci]` in de message om een lus te
  voorkomen). Vereist `contents: write`-permissie.
- Resultaat: beheerder voegt een SVG toe en pusht; het manifest wordt vanzelf
  bijgewerkt.

### 3. `lcms-bibliotheek/index.html` — Tab "Catalogus" (func 1)
- Laadt `catalog-manifest.json` via `fetch()`.
- Toont een doorzoekbaar grid (zoekveld op naam) met een filter per map/afzender,
  en een filter op type (SVG / PNG / beide).
- Toont zowel SVG's als PNG's; previews worden geladen via relatief pad
  (`../<path>`, want de app staat één map diep). Het `type`-veld bepaalt hoe de
  thumbnail wordt weergegeven.
- Klik op een symbool → detailpaneel met grote preview en **twee** velden met
  kopieerknop:
  - Pages-URL: `https://imroi.github.io/diversen/<path>`
  - raw-URL: `https://raw.githubusercontent.com/imroi/diversen/main/<path>`
- Deze tab vervangt de huidige LCMS-specifieke "Bibliotheek"-tab als
  browse-functie; LCMS-mappen verschijnen gewoon als filter.

### 4. `lcms-bibliotheek/index.html` — Tab "Nieuw symbool" (func 2)
- **Drie kleurkiezers:** buitenrand, rand, vul.
- **Afzender-presets:** kies een vaste afzender → de drie kleuren worden
  voorgevuld (vul = afzender-fill, rand = afzender-ink, buitenrand = `#000`); elke
  kleur is daarna handmatig te overschrijven.
- **Icoon-bron:** kies een icoon uit de catalogus (zelfde data als Tab 1, maar
  **alleen de SVG-entries** — PNG's zijn niet als vector-icoon bruikbaar) óf
  upload een eigen SVG; beide lopen door de bestaande `ingestNewIcon()`-pijplijn.
- Output: zelfstandige 121×121 SVG, te downloaden/kopiëren (zoals nu).

### 5. Template-SVG's met 3 kleurregio's (wijziging)
- De 4 bestanden in `lcms-bibliotheek/lcms-svgs/template/` krijgen een derde,
  apart inkleurbare regio zodat buitenrand, rand en vul onafhankelijk te zetten
  zijn.
- **Conventie:** elk van de drie regio's draagt een eigen herkenbare
  sentinel-kleur in het template-SVG, zodat de recolor-logica (uitbreiding van
  `templateShape()`) elke regio gericht kan vervangen door de gekozen kleur:
  vul-regio (`#D5D5D5`), rand-regio (`#000`), en een nieuwe buitenrand-regio met
  een eigen sentinel.
- **Open detail (uitwerking in plan):** de exacte SVG-techniek voor de dunne
  buitenlijn (extra outline-path of `stroke` op de ringvorm) wordt in het
  implementatieplan vastgelegd; de spec legt alleen de eis (3 onafhankelijke
  regio's) en de conventie vast.

### 6. `index.html` (root) — doorverwijzing (wijziging)
- Voeg een prominente knop/link toe naar `lcms-bibliotheek/` ("Symbolen-app" of
  vergelijkbaar), zodat de app de hoofdingang is. De mappen-browser blijft
  verder **ongewijzigd bestaan** — daardoor blijven ook de PNG's (en alle andere
  bestanden) vindbaar via de bestaande mappen- en per-map preview-route, ook al
  zou je later besluiten de catalogus tot bepaalde types te beperken.

## Datamodel: afzenderkleuren

`SENDERS` breidt uit van `{label, fill, ink}` naar `{label, fill, ink, buitenrand}`.
- `vul`  ← `fill`
- `rand` ← `ink`
- `buitenrand` ← `buitenrand` (default `#000` voor alle bestaande afzenders)

## Migratie van het al-gecommitte werk (Tasks 1 & 2)

- `build_symbolen.py` (alleen `symbolen/`) wordt **gegeneraliseerd** naar
  `build_catalog.py` (hele repo). `build_symbolen.py` + `symbolen-manifest.json`
  + `test_build_symbolen.py` worden vervangen/verwijderd ten gunste van de
  catalogus-variant (met een eigen test).
- `loadSymbolen()` (Task 2) gaat op in de catalogus-laadlogica en de
  icoon-keuze van de maker.

## Buiten scope (YAGNI)

- Authenticatie/accounts; de catalogus is publiek lees-only.
- Wijzigen van bestaande symboolpaden of mapstructuur.
- Server-side rendering of een build-stap voor de app zelf (blijft één statisch
  HTML-bestand met vanilla JS).
- Vervangen of herzien van de per-map preview-pagina's met SLD/GeoStyler-export.
- Behoud-beslissingen over bestaande LCMS-specifieke extra's (Controle-tab,
  localStorage "mijn symbolen", ZIP-export) — die blijven as-is tenzij ze direct
  botsen met bovenstaande.

## Besliste punten (waren open in review)

1. **Template-SVG's worden in de catalogus opgenomen** (zoals alle andere SVG's).
2. **De app-map blijft `lcms-bibliotheek/`** — niet hernoemen, om URL-churn te
   vermijden.

## Revisie 1 — na lokale test (2026-06-23)

Feedback na het lokaal testen van Plan A, met de doorgevoerde keuzes:

1. Root-`index.html` kreeg `<meta charset="UTF-8">` (de "▶"-knop toonde mojibake).
2. **Bibliotheek-tab verwijderd** — dupliceerde de catalogus. *Interim:* alleen de
   tab is weg; de view + bijbehorende JS blijven (verborgen) staan omdat de maker
   er nog mee verweven is (`saveEigenSymbool → rebuild()`, `initManifest → lzServer`).
   Volledige code-opruiming gebeurt in **Plan B** (maker-herbouw).
3. Catalogus-filters herbouwd en geverifieerd (de map-filter werkte niet/onhandig).
4. Lelijke diepe-pad "Map"-filter verwijderd.
5. **Filters = Type + Bron + Afzender + Categorie.** Bron = hoofdmap (kro, knmi,
   brandkranen, lcms-bibliotheek, …; 23 stuks). Afzender (9 LCMS-afzenders) en
   Categorie (eenheden/gebeurtenissen/incidenten/objecten) worden afgeleid uit
   LCMS-paden `lcms-bibliotheek/lcms-svgs/<afzender>/<categorie>/<naam>.svg`;
   niet-LCMS-bestanden hebben deze niet (afzender/categorie-filter narrowt dan
   vanzelf naar LCMS).
6. **Controle-tab verwijderd** (geen icoon-import meer nodig). *Interim:* zelfde
   aanpak als punt 2 — tab weg, view/JS-opruiming in Plan B.
7. **Thema: licht standaard + dark-toggle** (knop in de header; voorkeur in
   localStorage `lcms_theme`).
8. "256/235 geladen"-teller verdween met het weghalen van de Bibliotheek-tab.

## Revisie 2 — maker-kleuren teruggebracht naar 2 (na lokale test)

De 3-kleuren-aanpak (buitenrand/rand/vul, "ring splitsen") is **vervallen**. In de
praktijk gaf de buitenrand-als-stroke een ongewenste **dubbele rand** (de afzender-ring
plus een extra dunne lijn). De template heeft maar twee inkleurbare vlakken, dus de
maker werkt nu met **twee kleuren**:
- **Rand** = het ringpad (default afzender-`ink`).
- **Vul** = het binnenvlak (default afzender-`fill`).
Beide met afzender-presets + "Reset naar afzender". Geen `buitenrand`-veld meer.
