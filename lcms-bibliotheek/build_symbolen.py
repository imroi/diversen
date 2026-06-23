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
