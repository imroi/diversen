# LCMS Symbool Bibliotheek

Statische webapp om de 235 LCMS-symbolen te bekijken, doorzoeken en uit te breiden.

## Mapstructuur

```
lcms-bibliotheek/
├── index.html           # de app (open direct in browser of serveer)
├── lcms-manifest.json   # verwachte inhoud: 235 symbolen, 9 afzenders
├── assets/
│   └── LCMS SVG/        # ← plaats hier je symbolenset (afzender/categorie/naam.svg)
│       ├── algemeen/
│       ├── politie/
│       └── …
└── README.md
```

## Symbolen laden

### Optie 1 — drag-&-drop (werkt altijd, ook via `file://`)

Open `index.html` direct in de browser en sleep je `LCMS SVG`-map op het laadvlak,
of klik om een map te kiezen via de folder-picker.

### Optie 2 — automatisch via een lokale server

Plaats je `LCMS SVG`-map in `assets/` en start een server in deze map:

```bash
python -m http.server
# open http://localhost:8000
```

De app detecteert de server automatisch, laadt het manifest, en toont de knop
**"Laad uit assets/LCMS SVG/"**. Hiermee worden alle 235 SVG's via `fetch()` ingeladen.

> **Waarom werkt fetch() niet via `file://`?**
> Browsers blokkeren `fetch()` naar lokale bestanden vanwege het same-origin-beleid
> (CORS). Drag-&-drop omzeilt dit en is de betrouwbare route zonder server.

## Gebruik

- **Bibliotheek**: filter op afzender/categorie, zoek op naam, klik een kaart om het SVG te downloaden.
- **Nieuw symbool**: kies een sjabloon (pointer + kleur) en laad een icoon-SVG. De app vervangt
  het icoon in het sjabloon en toont een preview. Download het resultaat als zelfstandige 121×121 SVG.
