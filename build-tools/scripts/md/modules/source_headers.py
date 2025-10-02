# build-tools/scripts/md/modules/source_headers.py
"""
Source header utilities for generated Markdown pages.

This module ensures every page has a YAML front matter with a pointer to the
*true* source file in your repo:

  ---
  source_path: src/Ledger/Prelude.agda     # or .lagda / .lagda.md / README.md, etc.
  source_branch: master
  ---

It provides:
  • Pure string-level injection:  ensure_source_header_str(...)
  • File-level injection (idempotent): ensure_source_header_file(...)
  • Heuristics to infer a source path from a flat filename:
        infer_repo_source_from_flat(...)
  • A convenience sweep over a docs directory:
        ensure_headers_for_docs_dir(...)

Design goals:
  - Idempotent (safe to call multiple times)
  - Respect an existing author-supplied `source_path` if desired
  - Minimal dependencies; uses your project's Result/IO helpers

Usage examples
--------------
# Add/update headers in-memory (string):
new_md = ensure_source_header_str(md_text, "src/Ledger/Prelude.agda", "master")

# Add/update a single file on disk (preserve existing header if present):
ensure_source_header_file(Path("_build/md/mkdocs/docs/Notation.md"),
                          "build-tools/static/md/mkdocs/docs/Notation.md",
                          "master",
                          preserve_existing=True)

# Sweep a docs dir, inferring source paths by existence:
ensure_headers_for_docs_dir(docs_dir=Path("_build/md/mkdocs/docs"),
                            src_root=Path("src"),
                            branch="master",
                            preserve_existing=True,
                            skip_names={"index.md"})
"""
from __future__ import annotations
import re
from pathlib import Path
from typing import Optional, Iterable, Set, Tuple

from utils.pipeline_types import Result, PipelineError, ErrorType
from utils.file_ops import read_text, write_text

# Match the *first* YAML block at the very top of the file
_FRONT_MATTER_RE = re.compile(r"^(---\s*\n.*?\n---\s*\n?)", re.DOTALL)

# ----------------------------
# Low-level front matter ops
# ----------------------------

def _split_front_matter(content: str) -> Tuple[Optional[str], str]:
    """Return (front_matter_text or None, body_without_front_matter)."""
    m = _FRONT_MATTER_RE.match(content)
    if m:
        return m.group(1), content[m.end():]
    return None, content

def _has_key(fm: str, key: str) -> bool:
    return re.search(rf"^{re.escape(key)}\s*:", fm, flags=re.MULTILINE) is not None

def _set_kv(fm: Optional[str], key: str, value: str) -> str:
    """Insert or replace KEY: VALUE in existing front matter; create if missing."""
    if fm:
        if _has_key(fm, key):
            return re.sub(rf"^{re.escape(key)}\s*:.*$", f"{key}: {value}", fm, flags=re.MULTILINE)
        return fm.replace("---\n", f"---\n{key}: {value}\n", 1)
    return f"---\n{key}: {value}\n---\n"

# ----------------------------
# Public string-level API
# ----------------------------

def ensure_source_header_str(content: str,
                             source_path: str,
                             source_branch: Optional[str] = None,
                             preserve_existing: bool = False) -> str:
    """
    Return `content` with a YAML front matter that includes at least:
      source_path: <source_path>
    and, if provided:
      source_branch: <source_branch>

    If `preserve_existing` is True and an existing `source_path:` is present,
    it will NOT be changed (but `source_branch:` will be added if missing).

    Always ensures a blank line after the closing `---`.

    Parameters
    ----------
    content : str
        Markdown file contents.
    source_path : str
        Repo-relative path to the true source (e.g., 'src/Foo/Bar.agda' or 'README.md').
    source_branch : Optional[str]
        Branch name (e.g., 'master'). If None, not written.
    preserve_existing : bool
        If True, keep any existing source_path unchanged.

    Returns
    -------
    str : patched content
    """
    fm, body = _split_front_matter(content)
    if preserve_existing and fm and _has_key(fm, "source_path"):
        new_fm = fm
        if source_branch and not _has_key(new_fm, "source_branch"):
            new_fm = _set_kv(new_fm, "source_branch", source_branch)
    else:
        new_fm = _set_kv(fm, "source_path", source_path)
        if source_branch:
            new_fm = _set_kv(new_fm, "source_branch", source_branch)

    if not new_fm.endswith("\n"):
        new_fm += "\n"
    needs_blank = body and not body.startswith("\n") and not new_fm.endswith("\n\n")
    return new_fm + ("\n" if needs_blank else "") + body

# ----------------------------
# Public file-level API
# ----------------------------

def ensure_source_header_file(md_file: Path,
                              source_path: str,
                              source_branch: Optional[str] = None,
                              preserve_existing: bool = True) -> Result[Path, PipelineError]:
    """
    Read/patch/write `md_file` to ensure a `source_path` header exists (and optional branch).

    - Idempotent: writes only if content changes.
    - If `preserve_existing` is True and the file already has a `source_path:`,
      it is kept; `source_branch:` is added if missing.

    Returns
    -------
    Result[Path, PipelineError] : Ok(md_file) on success, Err(...) on I/O failure.
    """
    def _patch(s: str):
        new = ensure_source_header_str(s, source_path, source_branch, preserve_existing=preserve_existing)
        return (new, new != s)

    return (
        read_text(md_file)
        .map(_patch)
        .and_then(lambda tup: write_text(md_file, tup[0]) if tup[1] else Result.ok(None))
        .map(lambda _: md_file)
    )

# ----------------------------
# Inference helpers
# ----------------------------

def infer_repo_source_from_flat(md_file: Path, src_root: Path) -> str:
    """
    Infer a plausible source repo path by checking which file EXISTS under `src_root`
    for the flat page name (Ledger.Conway.Specification.Gov.md):

        1) src/Ledger/Conway/Specification/Gov.lagda.md
        2) src/Ledger/Conway/Specification/Gov.agda
        3) src/Ledger/Conway/Specification/Gov.lagda

    Falls back to the first candidate if none exist.

    Returns
    -------
    str : repo-relative source path ('src/.../Name.ext').
    """
    base = md_file.stem.replace(".", "/")
    candidates = [f"{base}.lagda.md", f"{base}.agda", f"{base}.lagda"]
    for rel in candidates:
        if (src_root / rel).exists():
            return f"src/{rel}"
    return f"src/{candidates[0]}"

# ----------------------------
# Bulk sweep
# ----------------------------

def ensure_headers_for_docs_dir(docs_dir: Path,
                                src_root: Path,
                                branch: Optional[str] = None,
                                preserve_existing: bool = True,
                                skip_names: Optional[Iterable[str]] = None) -> Result[int, PipelineError]:
    """
    Ensure all `*.md` files in `docs_dir` have a `source_path` header.

    For each file:
      - If it already has a header and `preserve_existing=True`, leave it as-is (but add branch).
      - Otherwise infer a source path via `infer_repo_source_from_flat` and write it.

    Parameters
    ----------
    docs_dir : Path
        Directory containing the generated docs (e.g., _build/md/mkdocs/docs).
    src_root : Path
        Root under which your source lives (e.g., Path("src")).
    branch : Optional[str]
        If given, also ensure a `source_branch:` header with this value.
    preserve_existing : bool
        Keep existing `source_path` values intact if present.
    skip_names : Optional[Iterable[str]]
        Filenames (e.g., {'index.md'}) to skip.

    Returns
    -------
    Result[int, PipelineError] : Ok(count_modified) or Err on directory read error.
    """
    if not docs_dir.exists():
        return Result.err(PipelineError(ErrorType.FILE_NOT_FOUND, f"mkdocs docs dir not found: {docs_dir}"))

    skip: Set[str] = set(skip_names or [])
    modified = 0
    for md in docs_dir.glob("*.md"):
        if md.name in skip:
            continue
        desired = infer_repo_source_from_flat(md, src_root)
        res = ensure_source_header_file(md, desired, branch, preserve_existing)
        if res.is_ok and res.unwrap():
            modified += 1
    return Result.ok(modified)
