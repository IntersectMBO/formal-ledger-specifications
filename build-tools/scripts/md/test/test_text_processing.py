# tests/test_text_processing.py

# Run this test from the main, top-level repository directory
# with the following command:
#
#     pytest build-tools/scripts/md/test/test_text_processing.py

import re
import sys
from pathlib import Path

# Make `md/` the root of the importable module tree
sys.path.insert(0, str(Path(__file__).resolve().parents[0].parent))

from build_tools.scripts.md.utils.text_processing import replace_cross_ref_placeholder
from utils.text_processing import replace_cross_ref_placeholder

def test_replace_cross_ref_placeholder_resolves_label():
    # Simulate a label map entry
    label_map = {
        "fig:example": {
            "file": "chapter1.md",
            "anchor": "#example-figure",
            "caption_text": "Example-Figure"
        },
        "sec:intro": {
            "file": "intro.md",
            "anchor": "#introduction",
            "caption_text": "Introduction"
        }
    }

    # Simulate a match from the regex
    match = re.match(
        r"@@CROSS_REF@@command=(.*?)@@targets=(.*?)@@",
        "@@CROSS_REF@@command=Cref@@targets=fig:example, sec:intro@@"
    )

    assert match is not None

    result = replace_cross_ref_placeholder(match, label_map)

    expected = (
        "Section [Example Figure](chapter1.md#example-figure) and "
        "Section [Introduction](intro.md#introduction)"
    )
    assert result == expected


def test_replace_cross_ref_placeholder_handles_unresolved():
    label_map = {}  # empty map
    match = re.match(
        r"@@CROSS_REF@@command=(.*?)@@targets=(.*?)@@",
        "@@CROSS_REF@@command=Cref@@targets=missing-label@@"
    )
    assert match is not None

    result = replace_cross_ref_placeholder(match, label_map)

    assert "*'missing-label' (unresolved reference)*" in result
