# Ontwerp — Catalogus oog-lagen & Maker code-editor

Datum: 2026-06-24
App: `lcms-bibliotheek/index.html` (single-file statische webapp)

Twee onafhankelijke features. Ze raken verschillende delen van `index.html` en kunnen
los geïmplementeerd en getest worden.

---

## Feature 1 — Catalogus: oog-lagen (multi-select met visibility-toggle)

### Doel
De catalogus-filters voor **bron**, **afzender** en **categorie** worden multi-select
"lagen" zoals in een geoviewer: elke optie heeft een oog-icoon (open = zichtbaar,
dicht = verborgen). Meerdere lagen per groep kunnen tegelijk aan staan.

Type (svg/png) blijft een gewoon single-select filter — buiten scope.

### UI
- Bovenaan de filterkolom (`aside.filters`) komt één grote knop **"Toon alles"** =
  globale reset (alle groepen terug op alles).
- Per groep (bron, afzender, categorie) blijft de bestaande "Alle &lt;groep&gt;"-rij bovenaan;
  die fungeert als "zet deze hele groep weer aan".
- Elke laag-rij (`.fitem`) krijgt een oog-icoon dat de zichtbaarheidsstaat toont.

### Datamodel
Huidige scalairen vervallen:
```
catBronFilter = "*"   →  catBronVis : Set<string>   (+ "groep staat op alles"-notie)
catAfzFilter  = "*"   →  catAfzVis  : Set<string>
catCatFilter  = "*"   →  catCatVis  : Set<string>
```
"Groep staat op alles" wordt gerepresenteerd door een lege Set OF een vlag
`allOn` per groep. Aanpak: een lege Set betekent "alles aan" (geen filter actief);
een niet-lege Set betekent "alleen deze waarden". Dit houdt `catMatches()` simpel
en matcht het default-gedrag (lege Set → toont alles).

### Interactielogica (per groep, identiek voor alle drie)
Toestand "alles aan" = lege Set.

1. **Groep op "alles"** (lege Set) → alle ogen tonen open/actief. Klik op laag X →
   **isoleren**: Set wordt `{X}` (alleen X open, rest dicht).
2. **Groep deels aan** (niet-lege Set) → klik op laag Y toggelt Y in/uit de Set
   (additief: zo bouw je Politie + Brandweer op).
3. **Laatste laag uit de Set klikken** → Set wordt leeg → groep valt terug op
   "alles aan" (nooit een lege grid door een lege groep).
4. **"Alle &lt;groep&gt;"-rij** → Set leegmaken → groep terug op alles.
5. **"Toon alles"-knop** bovenaan → alle drie Sets leegmaken.

### Combinatielogica
Binnen een groep OR, tussen groepen AND — exact het huidige `catMatches()`-gedrag.
Concreet wordt elke regel:
```
if (catBronVis.size && !catBronVis.has(catBron(entry))) return false;
if (catAfzVis.size && !catAfzVis.has(catAfz(entry)))   return false;
if (catCatVis.size && !catCatVis.has(catCat(entry)))   return false;
```
(Lege Set = geen restrictie.) Type- en zoek-filter blijven ongewijzigd.

### Niet-LCMS items
Bron-items zonder afzender/categorie (`catAfz`/`catCat` geven `null`): zolang de
afzender- en categorie-Sets leeg zijn vallen ze gewoon mee. Zodra een afzender- of
categorie-laag geïsoleerd is, vallen niet-LCMS items buiten de selectie (verwacht
gedrag — ze horen niet bij die afzender/categorie).

### Bestaande code die verandert
- `renderFilterList()` (regel ~1043): rendert nu oog-iconen en bedient toggle/isolate
  i.p.v. single-select set. Krijgt per-groep een Set + handlers.
- `catMatches()` (regel ~1058): `=== filter` → `set.size && !set.has(...)`.
- `buildCatFilters()` (regel ~1031): geeft Sets door i.p.v. get/set-scalair.
- Nieuwe "Toon alles"-knop in de markup van `aside.filters` (rond regel 177).

---

## Feature 2 — Maker: gesplitste canvas met editbare code

### Doel
De rechterkolom van de maker (`view-add`, nu alleen preview + zoom) splitst verticaal:
- **Boven**: symbool-preview + zoom-schuif (ongewijzigd).
- **Onder**: een editbaar code-veld met een **"Valideer & toon"**-knop en diagnose-regel.

Je kunt de gegenereerde SVG handmatig aanpassen, valideren, en het resultaat erboven zien.

### Bron van waarheid: "wizard genereert, code neemt over" met knop-vergrendeling
- De wizard (`wizCompose()`) genereert de SVG zoals nu → vult automatisch het
  code-veld én de preview.
- **Zodra je handmatig in het code-veld typt** → de maker gaat in "handmatige modus":
  - Wizard-bedieningen worden **uitgeschakeld** (pointer-cards, afzender-cards,
    icoon-grid/upload, schuiven, recolor) — visueel grijs.
  - Er verschijnt een knop **"Terug naar wizard"**.
- De preview verandert pas bij **"Valideer & toon"** (geen live-preview).
- **"Terug naar wizard"** → één bevestiging → regenereert uit de wizard-state
  (handmatige edits weg) en heractiveert de wizard-bedieningen.

Zo is een botsing onmogelijk: óf wizard-modus, óf handmatige modus.

### "Valideer & toon" — validatie
Parset de code via `DOMParser` (hergebruik patroon uit `ingestNewIcon`):
- **Parse-fout / geen `<svg>`-root** → rode melding, preview blijft ongewijzigd.
- **Geldig maar LCMS-afwijking** → gele waarschuwing, preview toont wél de code:
  - viewBox ≠ `0 0 121 121`
  - externe referenties (`<image href>`, `<use href>` naar http/extern)
- **Schoon** → groene bevestiging + preview ververst.

Diagnose-weergave hergebruikt de bestaande `row(type, msg)`-helper.

### Download / Kopieer / ZIP
Gebruiken vanaf nu de **huidige code-veld-inhoud** (de gevalideerde/handmatige versie
als die er is, anders de wizard-output). De export-functies lezen het code-veld
i.p.v. opnieuw `wizCompose()` aan te roepen.

### Layout / markup
- Rechterkolom `.col` met `.stage` (rond regel 309-317) splitst in twee verticale
  vlakken (bv. flex-column): preview-blok boven, code-editor-blok onder.
- Nieuw editbaar `<textarea>` (monospace) vervangt functioneel de read-only
  `<div class="code" id="addCode">` (regel 300) in de linker stap-3-kolom; de
  read-only versie links vervalt.
- Nieuwe knop "Valideer & toon" + diagnose-regel onder het textarea.
- Nieuwe knop "Terug naar wizard" (zichtbaar in handmatige modus).

### Bestaande code die verandert
- `wizCompose()` (regel ~814): schrijft naar het nieuwe textarea i.p.v. read-only div;
  bij regenereren alleen toegestaan in wizard-modus.
- Nieuwe functies: `enterManualMode()`, `exitManualMode()`, `validateAndRender()`.
- Export-handlers (`dlNew`, `copyNew`, ZIP rond regel 980) lezen het textarea.
- Wizard-bediening-handlers krijgen een guard / disabled-state in handmatige modus.

### Buiten scope (YAGNI)
- Geen syntax-highlighting.
- Geen live-preview tijdens typen.
- Geen terug-parsen van handmatige code naar wizard-state.

---

## Testen
- Bestaande `test_build_catalog.py` raakt dit niet (catalog-manifest-build).
- Handmatige verificatie in de browser per feature:
  - Feature 1: isoleer/voeg-toe/reset per groep; AND tussen groepen; "Toon alles".
  - Feature 2: wizard→code sync; handmatig editen vergrendelt wizard; valideren
    (fout/waarschuwing/schoon); "Terug naar wizard"; download gebruikt code-veld.
