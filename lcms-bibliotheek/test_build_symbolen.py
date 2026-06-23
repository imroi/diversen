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
