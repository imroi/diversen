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
