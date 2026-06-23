#!/usr/bin/env python3
# =============================================================================
# scan_properties.py
# =============================================================================
#
# Derive the real status of every ledger property from the Agda source and
# regenerate the human roadmap (docs/notes/ledger-properties-roadmap.md).
#
#   * The CATALOG (docs/notes/properties.yaml) declares what we care about:
#     a property's identity, era, STS, Agda module, key defs, and tracking
#     issues. It does NOT declare a status — status is derived, never asserted.
#   * The AGDA (plus the filesystem) is the single source of truth for status:
#       - module is ""            -> idea     (identified; nothing in Agda yet)
#       - module file is absent   -> planned  (drafted elsewhere; not on this branch)
#       - module has "coming soon"-> stated   (statement present; proof pending)
#       - otherwise               -> proved   (statement + proof present)
#     The Agda `--safe` typecheck, run by the main CI, is what guarantees a
#     `proved` property has no holes or postulates; this script guarantees the
#     bookkeeping (the roadmap) matches the code.
#
# Because status is computed, the anti-drift gate is the roadmap itself: if a
# property's Agda changes (a proof lands, a stub appears) but the committed
# roadmap is not regenerated, `--check` fails. That makes the #413/#414 class of
# drift (a proof exists but the dashboard still says otherwise) a CI failure.
#
# Usage:
#   python3 scripts/python/scan_properties.py            # regenerate roadmap
#   python3 scripts/python/scan_properties.py --check    # CI: fail on drift/staleness
#
# Exit codes: 0 = OK, 1 = catalog error or stale roadmap (see printed report).
#
# Dependencies: Python 3.8+, PyYAML.
# -----------------------------------------------------------------------------

from __future__ import annotations

import argparse
import sys
from pathlib import Path

try:
    import yaml
except ImportError:  # pragma: no cover
    sys.exit("error: PyYAML is required (pip install pyyaml)")

REPO_ROOT = Path(__file__).resolve().parents[2]
DEFAULT_CATALOG = REPO_ROOT / "docs" / "notes" / "properties.yaml"
DEFAULT_ROADMAP = REPO_ROOT / "docs" / "notes" / "ledger-properties-roadmap.md"
# Published copy that the mkdocs site picks up (build-tools/static/mkdocs is
# copied verbatim into the site by the shake `mkdocs` rule). Kept byte-identical
# to the canonical roadmap and gated by --check so the two cannot drift.
DEFAULT_SITE_ROADMAP = REPO_ROOT / "build-tools" / "static" / "mkdocs" / "docs" / "ledger-properties-roadmap.md"

BEGIN = "<!-- BEGIN GENERATED: roadmap (scan_properties.py) -->"
END = "<!-- END GENERATED: roadmap (scan_properties.py) -->"

PENDING_MARKER = "coming soon"

# The four derived status values, in display order. There is no declared status.
STATUS_ORDER = ["proved", "stated", "planned", "idea"]
STATUS_BADGE = {
    "proved": "✅ proved",
    "stated": "🟡 stated",
    "planned": "🟦 planned",
    "idea": "⚪ idea",
}


def module_to_path(module: str) -> Path:
    return REPO_ROOT / ("src/" + module.replace(".", "/") + ".lagda.md")


def derive_status(module: str):
    """Derive status purely from the module reference and the Agda on disk.

    Returns (status, rel_path_or_None, text_or_None). See the file header for the
    full rule; in short: no module -> idea; file missing -> planned;
    "coming soon" present -> stated; otherwise -> proved.
    """
    if not module:
        return ("idea", None, None)
    path = module_to_path(module)
    rel = path.relative_to(REPO_ROOT).as_posix()
    if not path.exists():
        return ("planned", rel, None)
    text = path.read_text(encoding="utf-8")
    status = "stated" if PENDING_MARKER in text.lower() else "proved"
    return (status, rel, text)


def load_catalog(path: Path) -> dict:
    with path.open(encoding="utf-8") as fh:
        return yaml.safe_load(fh)


def validate_catalog(cat: dict):
    """Structural problems in the catalog itself (ERROR level)."""
    problems = []
    meta = cat.get("meta", {})
    eras = set(meta.get("eras", []))
    sts_vals = set(meta.get("sts_values", []))
    seen = set()
    for p in cat.get("properties", []):
        pid = p.get("id")
        if not pid:
            problems.append(("ERROR", "<missing id>", "property has no id"))
            continue
        if pid in seen:
            problems.append(("ERROR", pid, "duplicate id"))
        seen.add(pid)
        if p.get("era") not in eras:
            problems.append(("ERROR", pid, f"unknown era {p.get('era')!r}"))
        if p.get("sts") not in sts_vals:
            problems.append(("ERROR", pid, f"unknown sts {p.get('sts')!r}"))
        if "status" in p:
            problems.append(("ERROR", pid,
                             "catalog must not declare `status:` — status is derived "
                             "from the Agda; remove the field"))
    return problems


def evaluate(p: dict):
    """Derive a property's status and run per-property sanity checks.

    Returns (status, rel_path_or_None, problems)."""
    pid = p["id"]
    module = p.get("module") or ""
    status, path, text = derive_status(module)
    problems = []
    if text is not None:
        missing = [d for d in (p.get("defs") or []) if d and d not in text]
        if missing:
            problems.append(("WARN", pid,
                             f"declared defs not found in {path}: {', '.join(missing)}"))
    return status, path, problems


def render_region(cat: dict, results: dict) -> str:
    props = cat["properties"]
    lines = []
    lines.append(BEGIN)
    lines.append("")
    lines.append("_Generated by `scripts/python/scan_properties.py` from the catalog "
                 "reconciled against the Agda — do not edit this region by hand._")
    lines.append("")

    # Summary counts (by DERIVED status).
    lines.append("### Summary")
    lines.append("")
    lines.append("| Era | proved | stated | planned | idea | total |")
    lines.append("| --- | ---: | ---: | ---: | ---: | ---: |")
    for era in cat["meta"]["eras"]:
        ep = [p for p in props if p["era"] == era]
        counts = {s: sum(1 for p in ep if results[p["id"]]["status"] == s) for s in STATUS_ORDER}
        lines.append(f"| {era} | {counts['proved']} | {counts['stated']} | "
                     f"{counts['planned']} | {counts['idea']} | {len(ep)} |")
    lines.append("")

    # Per-era detail tables.
    for era in cat["meta"]["eras"]:
        ep = [p for p in props if p["era"] == era]
        if not ep:
            continue
        lines.append(f"### {era.capitalize()}")
        lines.append("")
        lines.append("| Status | Property | STS | Agda module | Issue(s) |")
        lines.append("| --- | --- | --- | --- | --- |")
        ep.sort(key=lambda p: (STATUS_ORDER.index(results[p["id"]]["status"]), p["id"]))
        for p in ep:
            status = results[p["id"]]["status"]
            badge = STATUS_BADGE.get(status, status)
            mod = f"`{p['module']}`" if p.get("module") else "—"
            issues = ", ".join(f"#{n}" for n in (p.get("issues") or [])) or "—"
            title = p["title"].replace("|", "\\|")
            lines.append(f"| {badge} | {title} | {p['sts']} | {mod} | {issues} |")
        lines.append("")

    lines.append(END)
    return "\n".join(lines)


DEFAULT_PREAMBLE = """\
# Ledger properties roadmap

This is the human-facing dashboard of ledger properties across eras. It is
**generated** from the catalog (`docs/notes/properties.yaml`) with each
property's status **derived from the Agda source** by
`scripts/python/scan_properties.py`. Do not edit the generated region below by
hand; edit the catalog and regenerate.

See `docs/notes/0001-ledger-property-tracking.md` for the design, conventions,
and workflow.

Status legend: ✅ proved · 🟡 stated (proof pending) · 🟦 planned (drafted on
another branch/PR) · ⚪ idea (not yet in Agda).

"""


def build_file(cat: dict, results: dict, existing: str | None) -> str:
    region = render_region(cat, results)
    if existing and BEGIN in existing and END in existing:
        pre = existing.split(BEGIN)[0]
        post = existing.split(END, 1)[1]
        return pre + region + post
    return DEFAULT_PREAMBLE + region + "\n"


def main() -> int:
    ap = argparse.ArgumentParser(
        description="Derive property status from the Agda and render the roadmap.")
    ap.add_argument("--catalog", type=Path, default=DEFAULT_CATALOG)
    ap.add_argument("--roadmap", type=Path, default=DEFAULT_ROADMAP)
    ap.add_argument("--site-roadmap", type=Path, default=DEFAULT_SITE_ROADMAP,
                    help="mkdocs-site copy of the roadmap (kept identical to --roadmap).")
    ap.add_argument("--check", action="store_true",
                    help="CI mode: do not write; fail on a catalog error or a stale roadmap.")
    args = ap.parse_args()

    cat = load_catalog(args.catalog)
    problems = validate_catalog(cat)

    results = {}
    for p in cat["properties"]:
        status, path, probs = evaluate(p)
        results[p["id"]] = {"status": status, "path": path}
        problems.extend(probs)

    errors = [x for x in problems if x[0] == "ERROR"]
    warns = [x for x in problems if x[0] == "WARN"]

    for level, pid, msg in problems:
        print(f"{level}: {pid}: {msg}", file=sys.stderr)

    rendered = build_file(cat, results,
                          args.roadmap.read_text(encoding="utf-8") if args.roadmap.exists() else None)

    # The canonical roadmap and its published mkdocs copy are kept byte-identical.
    outputs = [args.roadmap, args.site_roadmap]

    if args.check:
        stale = [p for p in outputs
                 if (not p.exists()) or (p.read_text(encoding="utf-8") != rendered)]
        for p in stale:
            print(f"ERROR: {p.relative_to(REPO_ROOT).as_posix()} is out of date; "
                  "run scan_properties.py and commit it", file=sys.stderr)
        ok = (not errors) and (not stale)
        print(f"\n{'OK' if ok else 'FAILED'}: "
              f"{len(errors)} error(s), {len(warns)} warning(s), "
              f"roadmap {'stale' if stale else 'up-to-date'}.", file=sys.stderr)
        return 0 if ok else 1

    for p in outputs:
        p.write_text(rendered, encoding="utf-8")
    print(f"\nwrote {', '.join(p.relative_to(REPO_ROOT).as_posix() for p in outputs)} "
          f"({len(errors)} error(s), {len(warns)} warning(s))", file=sys.stderr)
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
