# modules/header_injection.py
from __future__ import annotations
import re
from pathlib import Path
from typing import Tuple
from config.build_config import BuildConfig
from utils.pipeline_types import Result, PipelineError, ErrorType
from utils.file_ops import read_text, write_text
from utils.text_processing import get_flat_filename

_FRONT_MATTER_RE = re.compile(r"^(---\s*\n.*?\n---\s*\n)", re.DOTALL)

def _has_source_path_front_matter(content: str) -> bool:
    m = _FRONT_MATTER_RE.match(content)
    return bool(m and re.search(r"^source_path\s*:", m.group(1), flags=re.MULTILINE))

def _insert_or_update_source_path(content: str, source_path_value: str) -> str:
    m = _FRONT_MATTER_RE.match(content)
    if m:
        fm, rest = m.group(1), content[m.end():]
        if re.search(r"^source_path\s*:", fm, flags=re.MULTILINE):
            fm = re.sub(r"^source_path\s*:.*$", f"source_path: {source_path_value}", fm, flags=re.MULTILINE)
        else:
            fm = fm.replace("---\n", f"---\nsource_path: {source_path_value}\n", 1)
        return fm + rest
    else:
        return f"---\nsource_path: {source_path_value}\n---\n\n" + content

def _infer_repo_source_path_from_flat(md_file: Path) -> str:
    """
    Best-effort inference:
      docs/Ledger.Conway.Specification.Gov.md
        -> src/Ledger/Conway/Specification/Gov.lagda.md
    If this page already got a header earlier, we won't touch it.
    """
    flat_stem = md_file.stem            # e.g., "Ledger.Conway.Specification.Gov"
    slashed   = flat_stem.replace('.', '/')
    return f"src/{slashed}.lagda.md"

def ensure_source_header_on_file(md_file: Path) -> Result[bool, PipelineError]:
    """
    Ensure `source_path:` is present; return Ok(True) if file was modified, Ok(False) otherwise.
    """
    return (
        read_text(md_file).map(lambda s: (s, _has_source_path_front_matter(s)))
        .and_then(lambda tup:
            Result.ok(False) if tup[1]
            else Result.ok(_insert_or_update_source_path(tup[0], _infer_repo_source_path_from_flat(md_file)))
        )
        .and_then(lambda new_or_false:
            Result.ok(False) if new_or_false is False
            else write_text(md_file, new_or_false).map(lambda _: True)
        )
    )

def inject_source_headers_for_mkdocs(config: BuildConfig) -> Result[int, PipelineError]:
    """
    Sweep `_build/md/mkdocs/docs/` and inject missing headers.
    Returns count of files modified.
    """
    docs_dir: Path = config.build_paths.mkdocs_docs_dir
    if not docs_dir.exists():
        return Result.err(PipelineError(ErrorType.FILE_NOT_FOUND, f"mkdocs docs dir not found: {docs_dir}"))

    modified = 0
    for md_file in docs_dir.glob("*.md"):
        # Skip top-level index if you like; remove if you want it too
        if md_file.name.lower() == "index.md":
            continue
        res = ensure_source_header_on_file(md_file)
        if res.is_err:
            # Not fatal; keep going
            continue
        if res.unwrap():
            modified += 1
    return Result.ok(modified)
