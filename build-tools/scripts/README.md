<!-- File: build-tools/scripts/README.md -->

# build-tools/scripts/README

## Property-tracking scripts

This section covers tooling for the ledger-properties catalog, specifically, the
three `scan_properties.py` / `gh_project_*.py` scripts.

### Workflow and conventions

See the "Tracking Properties of the Ledger" section of
[CONTRIBUTING.md](../../CONTRIBUTING.md).

The catalog [`build-tools/properties.yaml`](../properties.yaml) declares every
property (identity, era, STS, Agda module, tracking issue). It is what we humans edit.
It declares **no** status; **formal status is derived from the Agda**, and `scan_properties.py`
regenerates the properties dashboard from Agda and the catalog; it fails if the
committed dashboard has drifted.

| Script                   | Direction                       | Network | Writes |
| ------------------------ | ------------------------------- | ------- | --------------------------------------------------------------- |
| `scan_properties.py`     | Agda ⨯ catalog → dashboard      | none    | `build-tools/static/mkdocs/docs/ledger-properties-dashboard.md` |
| `gh_project_populate.py` | catalog → GitHub (+ write-back) | `gh`    | issues/labels; `properties.yaml`                                |
| `gh_project_render.py`   | GitHub → issues view            | `gh`    | `build-tools/static/mkdocs/docs/ledger-properties-issues.md`    |

### Requirements

+  Python 3.8+ and PyYAML (`pip install pyyaml`).
+  For the `gh_project_*` scripts: the [GitHub CLI](https://cli.github.com/) `gh`,
   authenticated (`gh auth login`) with write access to the target repo.

The correct Python dependencies are available in the default Nix devShell (`nix develop`).

### `scan_properties.py` (no network; runs in CI)

```bash
python3 build-tools/scripts/scan_properties.py          # regenerate the dashboard
python3 build-tools/scripts/scan_properties.py --check  # CI: fail on drift or a stale dashboard
```

It resolves each catalog entry's `module` to its `.lagda.md` and classifies it as
one of the following four classes:
+ `idea` (no module);
+ `planned` (module named but the file is not on this branch);
+ `stated` (`coming soon` marker present);
+ `proved` (marker absent).

The catalog declares no status of its own.  The dashboard is written directly into
the mkdocs site tree: `build-tools/static/mkdocs/docs/ledger-properties-dashboard.md`
(the site's "Properties Dashboard" page).

`--check` regenerates it and fails if the committed copy is stale (or the catalog
is structurally invalid). This is the CI gate
(`.github/workflows/properties-check.yml`); the Agda `--safe` typecheck (main CI)
is what guarantees a `proved` property has no holes.

### `gh_project_populate.py` (catalog → GitHub)

Creates the per-era umbrella tracking issues, the `property` / `era:*` /
`status:*` / `sts:*` labels, and one issue per catalog entry that has no issue
yet; best-effort links them as sub-issues of the umbrella, then writes the new
issue numbers back into `properties.yaml` (comment-preserving, targeted edits).

For entries that already have issues, it instead reconciles the derived `status:*`
label (adds the current one, drops stale ones, preserves all other labels; issues
shared by entries with differing statuses are skipped with a note).  New issue
numbers are written back immediately after each creation, so an interrupted run
never loses them (a rerun would otherwise file duplicates).

```bash
python3 build-tools/scripts/gh_project_populate.py --dry-run      # preview everything
python3 build-tools/scripts/gh_project_populate.py                # apply
python3 build-tools/scripts/gh_project_populate.py --era dijkstra # one era only
```

Useful flags: `--repo OWNER/NAME` (default: catalog `meta.repo`), `--delay SECS`
(rate-limit pause), `--skip-labels`, `--no-link-subissues`, `--no-write-back`.

After running `gh_project_populate`, re-run `scan_properties.py` to refresh the
dashboard with the new issue numbers.

### `gh_project_render.py` (GitHub → issues view)

Pulls live issue state (open/closed, assignees, links) for every issue referenced
by the catalog into `build-tools/static/mkdocs/docs/ledger-properties-issues.md`.

```bash
python3 build-tools/scripts/gh_project_render.py          # write the issues view
python3 build-tools/scripts/gh_project_render.py --check  # verify up-to-date (local)
```

The script logs one line per issue as it fetches (✅ fetched / ❌ failed, with the
`gh` error), then posts a summary count on the final `wrote` line.

`--check` needs network, so it is intentionally **not** wired into CI; the
no-network gate is `scan_properties.py --check`.

### Typical workflow

1.  Edit `properties.yaml` (add a property, or update its module/defs/issue links.
    (Never add a `status:` field; the scanner will reject it.)
2.  `scan_properties.py` → regenerate the dashboard; commit it with the catalog.
3.  `gh_project_populate.py` → create any missing issues; commit the write-back.
4.  (optional) `gh_project_render.py` → refresh the live issues view.
