#!/usr/bin/env python3
# =============================================================================
# gh_project_populate.py
# =============================================================================
#
# Seed GitHub from the property catalog (build-tools/scripts/property-tracking/properties.yaml):
#   * create the era umbrella tracking issues (reuse existing where set),
#   * create labels (property, era:*, status:*, sts:*),
#   * create one issue per catalog property that has no issue yet,
#   * reconcile the derived status:* label on already-tracked issues,
#   * best-effort link new issues as sub-issues of the era umbrella,
#   * write new issue numbers back into the catalog (preserving comments),
#     immediately after each creation so an interrupted run loses nothing.
#
# This is the catalog -> GitHub direction. The inverse (GitHub -> issues view) is
# gh_project_render.py. Formal status is owned by scan_properties.py.
#
# Auth/runtime: requires the GitHub CLI `gh`, authenticated with write access to
# the target repo. Run it locally (CI cannot reach GitHub-write here).
#
#   python3 build-tools/scripts/property-tracking/gh_project_populate.py --dry-run     # preview
#   python3 build-tools/scripts/property-tracking/gh_project_populate.py               # apply
#   python3 build-tools/scripts/property-tracking/gh_project_populate.py --era dijkstra
#
# Dependencies: Python 3.8+, PyYAML, gh.
# -----------------------------------------------------------------------------

from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import time
from pathlib import Path

try:
    import yaml
except ImportError:  # pragma: no cover
    sys.exit("error: PyYAML is required (pip install pyyaml)")

# Reuse the single source of truth for status derivation (same directory).
sys.path.insert(0, str(Path(__file__).resolve().parent))
from scan_properties import derive_status, display_path  # noqa: E402

REPO_ROOT = Path(__file__).resolve().parents[3]
DEFAULT_CATALOG = Path(__file__).resolve().parent / "properties.yaml"


def prop_status(p: dict) -> str:
    """Derived status of a catalog property (idea | planned | stated | proved)."""
    return derive_status(p.get("module") or "")[0]

LABEL_COLORS = {
    "property": "5319e7",
    "era": "0e8a16",
    "status": "fbca04",
    "sts": "1d76db",
}


# ---- gh helpers -------------------------------------------------------------

class GH:
    def __init__(self, repo: str, dry_run: bool, delay: float):
        self.repo = repo
        self.dry_run = dry_run
        self.delay = delay

    def _run(self, args, capture=True):
        proc = subprocess.run(["gh", *args], capture_output=capture, text=True)
        if proc.returncode != 0:
            raise RuntimeError(f"gh {' '.join(args)} failed:\n{proc.stderr.strip()}")
        return proc.stdout

    def api_json(self, *args):
        return json.loads(self._run(["api", *args]))

    def mutate(self, args, capture=True):
        if self.dry_run:
            print(f"DRY-RUN: gh {' '.join(args)}")
            return ""
        out = self._run(args, capture=capture)
        if self.delay:
            time.sleep(self.delay)
        return out


def ensure_label(gh: GH, name: str, color: str, desc: str):
    # idempotent: `gh label create --force` updates or creates.
    gh.mutate(["label", "create", name, "--repo", gh.repo,
               "--color", color, "--description", desc, "--force"])


def create_issue(gh: GH, title: str, body: str, labels: list[str]) -> int | None:
    args = ["issue", "create", "--repo", gh.repo, "--title", title, "--body", body]
    for lbl in labels:
        args += ["--label", lbl]
    out = gh.mutate(args)
    if gh.dry_run:
        return None
    m = re.search(r"/issues/(\d+)", out.strip())
    if not m:
        raise RuntimeError(f"could not parse issue number from: {out!r}")
    return int(m.group(1))


def link_sub_issue(gh: GH, parent: int, child_number: int):
    """Best-effort: attach child as a sub-issue of parent (GitHub sub-issues API)."""
    try:
        child = gh.api_json(f"repos/{gh.repo}/issues/{child_number}")
        gh.mutate(["api", "--method", "POST",
                   f"repos/{gh.repo}/issues/{parent}/sub_issues",
                   "-F", f"sub_issue_id={child['id']}"])
    except Exception as exc:  # noqa: BLE001
        print(f"  note: could not link #{child_number} under #{parent} "
              f"(sub-issue API): {exc}", file=sys.stderr)


def sync_status_label(gh: GH, num: int, desired: str) -> int:
    """Reconcile the derived status:* label on one already-tracked issue.

    The label is coordination, not truth (truth stays with the Agda), but a
    stale label is worse than none: add the current one, drop competing
    status:* labels, preserve everything else. Returns 1 if (to be) edited."""
    try:
        labels = [lbl["name"] for lbl in
                  gh.api_json(f"repos/{gh.repo}/issues/{num}").get("labels", [])]
    except Exception as exc:  # noqa: BLE001
        print(f"  note: could not read labels of #{num}: {exc}", file=sys.stderr)
        return 0
    stale = [lbl for lbl in labels if lbl.startswith("status:") and lbl != desired]
    if desired in labels and not stale:
        return 0
    cmd = ["issue", "edit", str(num), "--repo", gh.repo, "--add-label", desired]
    for lbl in stale:
        cmd += ["--remove-label", lbl]
    try:
        gh.mutate(cmd)
    except Exception as exc:  # noqa: BLE001
        print(f"  note: could not edit labels of #{num}: {exc}", file=sys.stderr)
        return 0
    print(f"synced status label on #{num}: +{desired}"
          + (f" -{', '.join(stale)}" if stale else ""))
    return 1


# ---- catalog write-back (comment-preserving, targeted) ----------------------

def set_issue_numbers(text: str, prop_id: str, numbers: list[int]) -> str:
    """Replace the `issues:` line of the `- id: <prop_id>` block, preserving the rest.

    Line-oriented (no DOTALL) so a match cannot run past the block boundary.
    """
    id_re = re.compile(r"^\s*- id:\s*" + re.escape(prop_id) + r"\s*(?:#.*)?$")
    next_item_re = re.compile(r"^\s*- id:\s*")
    issues_re = re.compile(r"^(\s*issues:\s*)\[[^\]]*\]([ \t]*(?:#[^\n]*)?)\n?$")
    repl = "[" + ", ".join(str(n) for n in numbers) + "]"
    out, in_block, done = [], False, False
    for line in text.splitlines(keepends=True):
        if not done:
            if id_re.match(line):
                in_block = True
                out.append(line)
                continue
            if in_block and next_item_re.match(line):
                in_block = False  # left the block without an issues: line
            if in_block:
                m = issues_re.match(line)
                if m:
                    out.append(f"{m.group(1)}{repl}{m.group(2)}\n")
                    in_block, done = False, True
                    continue
        out.append(line)
    if not done:
        print(f"  warning: could not write issue number(s) back for {prop_id}", file=sys.stderr)
    return "".join(out)


def set_umbrella(text: str, era: str, number: int) -> str:
    """Replace `<era>: null` under the `umbrella_issues:` mapping."""
    umb_re = re.compile(r"^\s*umbrella_issues:\s*$")
    era_re = re.compile(r"^(\s*" + re.escape(era) + r":\s*)null([ \t]*(?:#[^\n]*)?)\n?$")
    out, in_umb, done = [], False, False
    for line in text.splitlines(keepends=True):
        if not done:
            if umb_re.match(line):
                in_umb = True
                out.append(line)
                continue
            if in_umb:
                m = era_re.match(line)
                if m:
                    out.append(f"{m.group(1)}{number}{m.group(2)}\n")
                    in_umb, done = False, True
                    continue
                if re.match(r"^\S", line):  # dedented to a new top-level key
                    in_umb = False
        out.append(line)
    if not done:
        print(f"  warning: could not write umbrella issue for {era}", file=sys.stderr)
    return "".join(out)


# ---- main -------------------------------------------------------------------

def issue_body(p: dict, umbrella: int | None) -> str:
    defs = ", ".join(f"`{d}`" for d in (p.get("defs") or [])) or "—"
    mod = f"`{p['module']}`" if p.get("module") else "_(none yet)_"
    lines = [
        f"**Property:** {p['title']}",
        "",
        f"- Catalog id: `{p['id']}`",
        f"- Era: **{p['era']}**  ·  STS: **{p['sts']}**",
        f"- Agda module: {mod}" + (f"  (anchor: `{p['anchor']}`)" if p.get("anchor") else ""),
        f"- Key definitions: {defs}",
        f"- Status (derived from the Agda): **{prop_status(p)}**",
    ]
    if p.get("notes"):
        lines += ["", p["notes"].strip()]
    lines += [
        "",
        "---",
        "Tracked in `build-tools/scripts/property-tracking/properties.yaml`; see the \"Tracking Properties "
        "of the Ledger\" section of CONTRIBUTING.md and the dashboard "
        "`build-tools/static/mkdocs/docs/ledger-properties-dashboard.md`.",
    ]
    if umbrella:
        lines.append(f"Part of the ledger-properties tracking (umbrella #{umbrella}).")
    return "\n".join(lines)


def main() -> int:
    ap = argparse.ArgumentParser(description="Seed GitHub issues/labels from the property catalog.")
    ap.add_argument("--catalog", type=Path, default=DEFAULT_CATALOG)
    ap.add_argument("--repo", default=None, help="OWNER/NAME (default: catalog meta.repo)")
    ap.add_argument("--era", help="limit to one era (must be listed in catalog meta.eras)")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--delay", type=float, default=1.0, help="seconds between mutating calls")
    ap.add_argument("--skip-labels", action="store_true")
    ap.add_argument("--no-link-subissues", action="store_true")
    ap.add_argument("--no-write-back", action="store_true", help="do not edit the catalog")
    args = ap.parse_args()

    text = args.catalog.read_text(encoding="utf-8")
    cat = yaml.safe_load(text)
    meta = cat["meta"]
    if args.era and args.era not in meta["eras"]:
        sys.exit(f"error: unknown era {args.era!r} (catalog meta.eras: {', '.join(meta['eras'])})")
    repo = args.repo or meta["repo"]
    gh = GH(repo, args.dry_run, args.delay)
    print(f"Target repo: {repo}{'  (dry-run)' if args.dry_run else ''}")

    # 1) labels
    if not args.skip_labels:
        ensure_label(gh, "property", LABEL_COLORS["property"], "Ledger property (tracked in the catalog)")
        for era in meta["eras"]:
            if args.era and era != args.era:
                continue
            ensure_label(gh, f"era:{era}", LABEL_COLORS["era"], f"{era} era")
        for st in meta["status_values"]:
            ensure_label(gh, f"status:{st}", LABEL_COLORS["status"], meta["status_values"][st])
        for s in meta["sts_values"]:
            ensure_label(gh, f"sts:{s}", LABEL_COLORS["sts"], f"{s} transition system")

    # 2) umbrellas
    written = 0
    umbrellas = dict(meta.get("umbrella_issues") or {})
    for era in meta["eras"]:
        if args.era and era != args.era:
            continue
        if not umbrellas.get(era):
            title = f"Properties of the ledger — {era} era"
            body = (f"Umbrella tracking issue for **{era}** ledger properties.\n\n"
                    f"Sub-issues are generated from `build-tools/scripts/property-tracking/properties.yaml`. "
                    f"See CONTRIBUTING.md (\"Tracking Properties of the Ledger\").")
            num = create_issue(gh, title, body, ["property", f"era:{era}"])
            if num:
                umbrellas[era] = num
                text = set_umbrella(text, era, num)
                if not args.no_write_back:
                    args.catalog.write_text(text, encoding="utf-8")
                    written += 1
                print(f"created umbrella for {era}: #{num}")

    # 3) per-property issues
    created = 0
    for p in cat["properties"]:
        if args.era and p["era"] != args.era:
            continue
        if p.get("issues"):
            continue  # already tracked; labels reconciled in 3b below
        umbrella = umbrellas.get(p["era"])
        labels = ["property", f"era:{p['era']}", f"status:{prop_status(p)}", f"sts:{p['sts']}"]
        num = create_issue(gh, p["title"], issue_body(p, umbrella), labels)
        print(f"created issue for {p['id']}: " + (f"#{num}" if num else "(dry-run)"))
        if num:
            created += 1
            text = set_issue_numbers(text, p["id"], [num])
            if not args.no_write_back:
                # Persist before the next remote mutation: a later failure must
                # not lose this number (a rerun would file a duplicate issue).
                args.catalog.write_text(text, encoding="utf-8")
                written += 1
            if umbrella and not args.no_link_subissues:
                link_sub_issue(gh, umbrella, num)

    # 3b) reconcile derived status labels on already-tracked issues. An issue
    # shared by several entries (e.g. GOV + LEDGER lifts) may derive differing
    # statuses; skip those rather than ping-pong the label.
    wanted = {}
    for p in cat["properties"]:
        if args.era and p["era"] != args.era:
            continue
        for num in p.get("issues") or []:
            wanted.setdefault(num, set()).add(f"status:{prop_status(p)}")
    synced = 0
    for num in sorted(wanted):
        statuses = wanted[num]
        if len(statuses) > 1:
            print(f"  note: #{num} is shared by entries with differing statuses "
                  f"({', '.join(sorted(statuses))}); leaving its label alone",
                  file=sys.stderr)
            continue
        synced += sync_status_label(gh, num, statuses.pop())

    # 4) summary (write-back is persisted right after each creation above)
    if written:
        print(f"updated {display_path(args.catalog)} "
              f"({created} issue number(s) written back)")
        print("next: re-run scan_properties.py to refresh the dashboard.")
    if synced:
        print(f"reconciled status labels on {synced} issue(s)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
