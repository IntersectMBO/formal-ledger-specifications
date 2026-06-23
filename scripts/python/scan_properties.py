#!/usr/bin/env python3
# =============================================================================
# scan_properties.py
# =============================================================================
#
# Derive the real status of every ledger property from the Agda source and
# reconcile it against the declared catalog (docs/notes/properties.yaml).
#
#   * The CATALOG declares what we want (id, era, sts, module, issues, and the
#     INTENDED status).
#   * The AGDA is the source of truth for whether a property is proved: a
#     property module that still contains the marker "coming soon" is `stated`
#     (proof pending); otherwise it is `proved`. (The Agda `--safe` typecheck,
#     run by the main CI, is what guarantees a `proved` property has no holes.)
#   * This script cross-checks the two and regenerates the human roadmap
#     (docs/notes/ledger-properties-roadmap.md).
#
# Usage:
#   python3 scripts/python/scan_properties.py            # regenerate roadmap
#   python3 scripts/python/scan_properties.py --check    # CI: fail on drift/staleness
#
# Exit codes: 0 = OK, 1 = drift or stale roadmap (see printed report).
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

BEGIN = "<!-- BEGIN GENERATED: roadmap (scan_properties.py) -->"
END = "<!-- END GENERATED: roadmap (scan_properties.py) -->"

PENDING_MARKER = "coming soon"

# Declared statuses that REQUIRE a present, matching Agda artifact.
CONCRETE = {"stated", "proved"}
# Display order for grouping the roadmap.
STATUS_ORDER = ["proved", "stated", "planned", "idea"]
STATUS_BADGE = {
    "proved": "✅ proved",
    "stated": "🟡 stated",
    "planned": "🟦 planned",
    "idea": "⚪ idea",
    "absent": "❌ absent",
    "none": "— n/a",
}


def module_to_path(module: str) -> Path:
    return REPO_ROOT / ("src/" + module.replace(".", "/") + ".lagda.md")


def derive_status(module: str):
    """Return (actual_status, rel_path_or_None, text_or_None)."""
    if not module:
        return ("none", None, None)
    path = module_to_path(module)
    if not path.exists():
        return ("absent", path.relative_to(REPO_ROOT).as_posix(), None)
    text = path.read_text(encoding="utf-8")
    actual = "stated" if PENDING_MARKER in text.lower() else "proved"
    return (actual, path.relative_to(REPO_ROOT).as_posix(), text)


def load_catalog(path: Path) -> dict:
    with path.open(encoding="utf-8") as fh:
        return yaml.safe_load(fh)


def validate_catalog(cat: dict):
    """Structural problems in the catalog itself (ERROR level)."""
    problems = []
    meta = cat.get("meta", {})
    eras = set(meta.get("eras", []))
    statuses = set(meta.get("status_values", {}).keys())
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
        if p.get("status") not in statuses:
            problems.append(("ERROR", pid, f"unknown status {p.get('status')!r}"))
        if p.get("sts") not in sts_vals:
            problems.append(("ERROR", pid, f"unknown sts {p.get('sts')!r}"))
    return problems


def reconcile(p: dict):
    """Compare declared vs Agda-derived status. Returns (actual, path, problems)."""
    pid = p["id"]
    declared = p.get("status")
    module = p.get("module") or ""
    actual, path, text = derive_status(module)
    problems = []

    if declared in CONCRETE:
        if actual == "absent":
            problems.append(("ERROR", pid, f"declared {declared} but module file is missing: {path}"))
        elif actual == "none":
            problems.append(("ERROR", pid, f"declared {declared} but no module is set"))
        elif actual != declared:
            problems.append(("ERROR", pid,
                             f"declared {declared} but Agda looks {actual} "
                             f"('{PENDING_MARKER}' {'present' if actual=='stated' else 'absent'} in {path})"))
        if text is not None:
            missing = [d for d in (p.get("defs") or []) if d and d not in text]
            if missing:
                problems.append(("WARN", pid, f"declared defs not found in {path}: {', '.join(missing)}"))
    elif declared == "planned":
        if actual in CONCRETE:
            problems.append(("WARN", pid, f"planned property has landed (Agda looks {actual}); bump status in the catalog"))
    elif declared == "idea":
        if module and actual in CONCRETE:
            problems.append(("WARN", pid, f"idea has an Agda artifact (looks {actual}); update module/status in the catalog"))

    return actual, path, problems


def render_region(cat: dict, results: dict) -> str:
    props = cat["properties"]
    lines = []
    lines.append(BEGIN)
    lines.append("")
    lines.append("_Generated by `scripts/python/scan_properties.py` — do not edit this region by hand._")
    lines.append("")

    # Summary counts.
    lines.append("### Summary")
    lines.append("")
    lines.append("| Era | proved | stated | planned | idea | total |")
    lines.append("| --- | ---: | ---: | ---: | ---: | ---: |")
    for era in cat["meta"]["eras"]:
        ep = [p for p in props if p["era"] == era]
        counts = {s: sum(1 for p in ep if p["status"] == s) for s in STATUS_ORDER}
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
        ep.sort(key=lambda p: (STATUS_ORDER.index(p["status"]) if p["status"] in STATUS_ORDER else 99, p["id"]))
        for p in ep:
            actual = results[p["id"]]["actual"]
            badge = STATUS_BADGE.get(p["status"], p["status"])
            # Flag a declared/actual mismatch inline.
            if p["status"] in CONCRETE and actual not in ("none",) and actual != p["status"]:
                badge += f" ⚠️(agda:{actual})"
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
**generated** from the catalog (`docs/notes/properties.yaml`) reconciled against
the Agda source by `scripts/python/scan_properties.py`. Do not edit the generated
region below by hand; edit the catalog and regenerate.

See `docs/notes/0001-ledger-property-tracking.md` for the design, conventions,
and workflow.

Status legend: ✅ proved · 🟡 stated (proof pending) · 🟦 planned (PR open) ·
⚪ idea (not yet in Agda). A ⚠️ flag means the catalog and the Agda disagree.

"""


def build_file(cat: dict, results: dict, existing: str | None) -> str:
    region = render_region(cat, results)
    if existing and BEGIN in existing and END in existing:
        pre = existing.split(BEGIN)[0]
        post = existing.split(END, 1)[1]
        return pre + region + post
    return DEFAULT_PREAMBLE + region + "\n"


def main() -> int:
    ap = argparse.ArgumentParser(description="Reconcile the property catalog with the Agda and render the roadmap.")
    ap.add_argument("--catalog", type=Path, default=DEFAULT_CATALOG)
    ap.add_argument("--roadmap", type=Path, default=DEFAULT_ROADMAP)
    ap.add_argument("--check", action="store_true",
                    help="CI mode: do not write; fail on drift or a stale roadmap.")
    args = ap.parse_args()

    cat = load_catalog(args.catalog)
    problems = validate_catalog(cat)

    results = {}
    for p in cat["properties"]:
        actual, path, probs = reconcile(p)
        results[p["id"]] = {"actual": actual, "path": path}
        problems.extend(probs)

    errors = [x for x in problems if x[0] == "ERROR"]
    warns = [x for x in problems if x[0] == "WARN"]

    for level, pid, msg in problems:
        print(f"{level}: {pid}: {msg}", file=sys.stderr)

    rendered = build_file(cat, results, args.roadmap.read_text(encoding="utf-8") if args.roadmap.exists() else None)

    if args.check:
        stale = (not args.roadmap.exists()) or (args.roadmap.read_text(encoding="utf-8") != rendered)
        if stale:
            print("ERROR: roadmap is out of date; run scan_properties.py and commit "
                  f"{args.roadmap.relative_to(REPO_ROOT).as_posix()}", file=sys.stderr)
        ok = (not errors) and (not stale)
        print(f"\n{'OK' if ok else 'FAILED'}: "
              f"{len(errors)} error(s), {len(warns)} warning(s), "
              f"roadmap {'stale' if stale else 'up-to-date'}.", file=sys.stderr)
        return 0 if ok else 1

    args.roadmap.write_text(rendered, encoding="utf-8")
    print(f"\nwrote {args.roadmap.relative_to(REPO_ROOT).as_posix()} "
          f"({len(errors)} error(s), {len(warns)} warning(s))", file=sys.stderr)
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
