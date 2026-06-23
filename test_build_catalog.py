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
