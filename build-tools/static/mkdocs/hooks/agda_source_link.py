"""
MkDocs hook: set a per-page “source” link for Material theme (blob, not raw)

What this hook does
-------------------
For each page, this hook sets `page.edit_url` so Material’s `content.action.edit`
button links to the correct file in our repository (GitHub `blob/<branch>/…`; not raw).

Precedence rules (in order)
1) `mkdocs.yml -> extra.source_overrides`: a mapping from docs filenames to
   repo paths or absolute URLs. This wins over any page metadata.
2) Page front-matter: `source_path: <repo-relative path>` (e.g. `src/Foo/Bar.agda`).

If neither is present, the hook leaves `page.edit_url` unset and Material won’t
render the button.

Important non-behavior
----------------------
- The hook does **not** mutate `config.repo_url`. That keeps the top-right
  repository icon (git diamond + stars/forks) pointing at the repo root.
- It does not depend on MkDocs internals: minimal Protocol types let us type-check
  without importing mkdocs.

How it integrates with Material
-------------------------------
- Enable the action: `theme.features: [content.action.edit]`
- (Optional) Override the tooltip via `overrides/partials/actions.html` and use
  `page.edit_url` (e.g., title “View the source of this page”).
- Keep the default header icon by *not* overriding `partials/source.html`.

Recommended mkdocs.yml snippet
------------------------------
extra:
  source_branch: master           # default branch (used if page doesn’t override)
  source_overrides:               # pages that don’t live under src/ or have special sources
    index.md: README.md
    guide.md: CONTRIBUTING.md
    Notation.md: build-tools/static/md/common/src/Notation.md

repo_url: https://github.com/IntersectMBO/formal-ledger-specifications
theme:
  features:
    - content.action.edit
  icon:
    repo: fontawesome/brands/git-alt
    edit: fontawesome/brands/github

Page front-matter (optional)
----------------------------
Add something like this to any generated Markdown for which the true source is known:
---
source_path: src/Ledger/Prelude.lagda.md
source_branch: master
---

Notes on key matching for overrides
-----------------------------------
The hook builds several candidate keys for the current page and picks the first
match from `extra.source_overrides`:
- docs-relative path: e.g. `"Preliminaries/Notation.md"`
- basename:           e.g. `"Notation.md"`
- URL stem variants:  e.g. `"Notation.md"` and `"Notation.html"`

Absolute URLs in `source_overrides` are supported (they bypass blob URL building).

Failure & safety
---------------
- If `repo_url` is missing, the hook is a no-op.
- If neither override nor front-matter is present, the button is omitted.
- This hook does not validate that `source_path` exists in the repo (by design).

After editing this file
-----------------------
Restart `mkdocs serve` so the new hook and templates are reloaded.
"""

from __future__ import annotations
from typing import Any, Dict, Iterable, List, Mapping, Optional, Sequence, Tuple, Protocol
from urllib.parse import quote
from pathlib import Path

# --- Minimal structural types (Protocols) so we can type-check without mkdocs imports ---

class _PageFile(Protocol):
    src_path: str   # e.g. "guide.md", "Preliminaries/Notation.md"
    url: str        # e.g. "guide/", "Notation/"

class _Page(Protocol):
    meta: Mapping[str, Any]
    file: _PageFile

class _Config(Protocol):
    repo_url: str
    extra: Mapping[str, Any]

# --- Pure helpers ---

def _uniq(seq: Sequence[str]) -> List[str]:
    """Order-preserving de-duplication without explicit mutation."""
    return list(dict.fromkeys(seq))

def _candidate_keys(page: _Page) -> List[str]:
    """
    Keys that users may put in extra.source_overrides.
    We try (in order): docs-relative src_path, basename, stem.md, stem.html.
    """
    src_path: Optional[str] = getattr(page.file, "src_path", None)
    url: Optional[str] = getattr(page.file, "url", None)

    # stem from url: "guide/" -> "guide"; "Notation/" -> "Notation"
    stem = ""
    if url:
        s = Path(url).stem or url.strip("/").split("/")[-1]
        stem = s or ""

    keys: List[str] = []
    if src_path:
        keys.append(src_path)
        keys.append(Path(src_path).name)
    if stem:
        keys.append(f"{stem}.md")
        keys.append(f"{stem}.html")

    return _uniq([k for k in keys if k])

def _pick_override(overrides: Mapping[str, str], keys: Sequence[str]) -> Optional[str]:
    """Return the first overrides[key] that exists, else None."""
    return next((overrides[k] for k in keys if k in overrides), None)

def _is_markdown_like(path: str) -> bool:
    p = path.lower()
    return p.endswith(".md") or p.endswith(".markdown") or p.endswith(".lagda.md")

def _add_plain_param(url: str) -> str:
    # Append ?plain=1 (or &plain=1) before any fragment
    if "?plain=1" in url:
        return url
    parts = url.split("#", 1)
    base = parts[0]
    frag = "#" + parts[1] if len(parts) == 2 else ""
    sep = "&" if "?" in base else "?"
    return f"{base}{sep}plain=1{frag}"

def _blob(repo_root: str, branch: str, rel_path_or_url: str) -> str:
    """Build a blob URL unless the override is already absolute; add ?plain=1 for Markdown."""
    if rel_path_or_url.startswith(("http://", "https://")):
        # Optional: also force Code view for absolute GitHub blob URLs
        if "/blob/" in rel_path_or_url and _is_markdown_like(rel_path_or_url):
            return _add_plain_param(rel_path_or_url)
        return rel_path_or_url

    url = f"{repo_root.rstrip('/')}/blob/{branch}/{quote(rel_path_or_url)}"
    return _add_plain_param(url) if _is_markdown_like(rel_path_or_url) else url

# --- Hook entrypoint ---

def on_page_context(context: Dict[str, Any], page: _Page, config: _Config, nav: Any) -> Dict[str, Any]:
    """
    Set page.edit_url to a file-specific URL:
      1) Prefer mkdocs.yml -> extra.source_overrides for this page
      2) Else use page.meta['source_path'] if present
    Does not mutate config.repo_url (so the repo icon/stats remain correct).
    """
    repo_root: Optional[str] = getattr(config, "repo_url", None)
    if not repo_root:
        return context

    extras: Mapping[str, Any] = getattr(config, "extra", {}) or {}
    branch: str = (page.meta or {}).get("source_branch") or extras.get("source_branch") or "master"
    overrides: Mapping[str, str] = extras.get("source_overrides") or {}

    keys: List[str] = _candidate_keys(page)
    src: Optional[str] = _pick_override(overrides, keys) or (page.meta or {}).get("source_path")

    if not src:
        return context

    context["page"].edit_url = _blob(repo_root, branch, src)
    return context
