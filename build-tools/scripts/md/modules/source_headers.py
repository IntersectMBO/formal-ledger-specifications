# build-tools/scripts/md/modules/source_headers.py
from __future__ import annotations
import re
from pathlib import Path
from typing import Optional
from utils.pipeline_types import Result, PipelineError, ErrorType
from utils.file_ops import read_text, write_text

# Front matter: match the *first* YAML block at top of file
_FRONT_MATTER_RE = re.compile(r"^(---\s*\n.*?\n---\s*\n?)", re.DOTALL)

def _split_front_matter(content: str) -> tuple[Optional[str], str]:
    m = _FRONT_MATTER_RE.match(content)
    if m:
        return m.group(1), content[m.end():]
    return None, content

def _set_kv_in_front_matter(fm: Optional[str], key: str, value: str) -> str:
    if fm:
        if re.search(rf"^{re.escape(key)}\s*:", fm, flags=re.MULTILINE):
            return re.sub(rf"^{re.escape(key)}\s*:.*$",
                          f"{key}: {value}", fm, flags=re.MULTILINE)
        # insert just after first '---\n'
        return fm.replace("---\n", f"---\n{key}: {value}\n", 1)
    return f"---\n{key}: {value}\n---\n"

def ensure_source_header_str(content: str, source_path: str,
                             source_branch: Optional[str] = None) -> str:
    """
    Pure: return content with a YAML front matter that includes:
      source_path: <value>
    and (optionally) source_branch: <value>
    """
    fm, body = _split_front_matter(content)
    new_fm = _set_kv_in_front_matter(fm, "source_path", source_path)
    if source_branch:
        new_fm = _set_kv_in_front_matter(new_fm, "source_branch", source_branch)
    # Guarantee a blank line after front matter for Markdown renderers
    if not new_fm.endswith("\n"):
        new_fm += "\n"
    return new_fm + ("\n" if body and not body.startswith("\n") and not new_fm.endswith("\n\n") else "") + body

def ensure_source_header_file(md_file: Path, source_path: str,
                              source_branch: Optional[str] = None) -> Result[Path, PipelineError]:
    """
    Stateful: read, patch, and write the file iff changed.
    Returns Ok(path) on success.
    """
    def _patch(s: str):
        new = ensure_source_header_str(s, source_path, source_branch)
        return (new, new != s)

    return (
        read_text(md_file)
        .map(_patch)
        .and_then(lambda tup:
            write_text(md_file, tup[0]) if tup[1] else Result.ok(None)
        )
        .map(lambda _: md_file)
    )
