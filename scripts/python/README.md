# Property-tracking scripts

Tooling for the ledger-properties catalog. Design and rationale:
[`docs/notes/0001-ledger-property-tracking.md`](../../docs/notes/0001-ledger-property-tracking.md).

The catalog [`docs/notes/properties.yaml`](../../docs/notes/properties.yaml) declares
every property (identity, era, STS, Agda module, tracking issue, intended status).
**Formal status is derived from the Agda, not asserted** — `scan_properties.py`
reconciles the catalog against the source and fails on disagreement.

| Script | Direction | Network | Writes |
| --- | --- | --- | --- |
| `scan_properties.py` | Agda ⨯ catalog → roadmap | none | `docs/notes/ledger-properties-roadmap.md` |
| `gh_project_populate.py` | catalog → GitHub (+ write-back) | `gh` | issues/labels; `properties.yaml` |
| `gh_project_render.py` | GitHub → issues view | `gh` | `docs/notes/ledger-properties-issues.md` |

## Requirements

- Python 3.8+ and PyYAML (`pip install pyyaml`).
- For the `gh_project_*` scripts: the [GitHub CLI](https://cli.github.com/) `gh`,
  authenticated (`gh auth login`) with write access to the target repo.

## scan_properties.py (no network; runs in CI)

```bash
python3 scripts/python/scan_properties.py          # regenerate the roadmap
python3 scripts/python/scan_properties.py --check  # CI: fail on drift or stale roadmap
```

It resolves each catalog entry's `module` to its `.lagda.md` and derives:
`proved` (no `coming soon` marker), `stated` (marker present), or `absent`. It
then checks the derived status against the declared `status` and fails on
mismatch. `--check` additionally fails if the roadmap on disk is out of date.
This is the CI gate (`.github/workflows/properties-check.yml`); the Agda `--safe`
typecheck (main CI) is what guarantees a `proved` property has no holes.

## gh_project_populate.py (catalog → GitHub)

Creates the per-era umbrella tracking issues, the `property` / `era:*` /
`status:*` / `sts:*` labels, and one issue per catalog entry that has no issue
yet; best-effort links them as sub-issues of the umbrella; then writes the new
issue numbers back into `properties.yaml` (comment-preserving, targeted edits).

```bash
python3 scripts/python/gh_project_populate.py --dry-run      # preview everything
python3 scripts/python/gh_project_populate.py                # apply
python3 scripts/python/gh_project_populate.py --era dijkstra # one era only
```

Useful flags: `--repo OWNER/NAME` (default: catalog `meta.repo`), `--delay SECS`
(rate-limit pause), `--skip-labels`, `--no-link-subissues`, `--no-write-back`.
After running, re-run `scan_properties.py` to refresh the roadmap with the new
issue numbers.

## gh_project_render.py (GitHub → issues view)

Pulls live issue state (open/closed, assignees, links) for every issue
referenced by the catalog into `docs/notes/ledger-properties-issues.md`.

```bash
python3 scripts/python/gh_project_render.py          # write the issues view
python3 scripts/python/gh_project_render.py --check  # verify up-to-date (local)
```

`--check` needs network, so it is intentionally **not** wired into CI; the
no-network gate is `scan_properties.py --check`.

## Typical loop

1. Edit `properties.yaml` (add/justify a property; flip a status when a proof lands).
2. `scan_properties.py` → regenerate the roadmap; commit both.
3. `gh_project_populate.py` → create any missing issues; commit the write-back.
4. (optional) `gh_project_render.py` → refresh the live issues view.
