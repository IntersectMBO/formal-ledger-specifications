# ADR 0001 — Tracking ledger properties across eras

- Status: proposed
- Date: 2026-06-23
- Applies to: `Ledger.Conway.Specification.*` and `Ledger.Dijkstra.Specification.*`

## Context

We are formalising and proving properties of the ledger (preservation of value,
governance invariants, the items under issue #45, …) in two eras simultaneously:
**Conway** (mature; many properties stated, several proved) and **Dijkstra**
(newer; only executability/`Computational` properties so far). The work has no
shared organisation, and three representations of each property drift apart:

1. **The Agda** under `src/**/Specification/**/Properties/**.lagda.md` — the only
   artifact that can actually say whether a property is *proved*.
2. **GitHub issues** (#45 and its sub-issues #412–#417, plus scattered others).
3. **Our mental/prose model** of what is done.

Concrete evidence of the drift, found while auditing for this ADR:

- **#413 is effectively done but looks open and unlinked.** "k proposals grow the
  GA deposit pot by `k·govActionDeposit`" is *proved* as `updatePropDeps≡` in
  `Utxo.Properties.GenMinSpend` and feeds the `UTXO-minspend` theorem — yet the
  issue is open with no pointer to the proof.
- **#414 was easy to mistake for done, but had no statement at all** until a stub
  was drafted (2026-06). It is *not* proved.
- Several real claims/theorems (`PParamsWellFormed`, `VoteDelegsVDeleg`,
  `ConstRwds`, `CredDepsEqualDomRwds`, `NoPropSameDReps`, the `GovDepsMatch` and
  PoV theorems) have **no tracking issue at all**.
- The `#45` comment properties ("`dom rewards` constant at the epoch boundary",
  "`dom rewards = CredentialDeposit⁻¹(dom deposits)`") became Agda claims
  (`ConstRwds`, `CredDepsEqualDomRwds`) but were never turned into issues.

If two readers can disagree about whether #413 or #414 is "the done one", the
tracking has to make that disagreement impossible.

## Decision

Adopt a **three-layer model with a single source of truth per concern**, and make
formal status *derivable* so it cannot silently drift:

| Concern | Source of truth | Where |
| --- | --- | --- |
| Is a property **proved**? | **The Agda** (`--safe` typecheck; `coming soon` marker = pending) | `src/**/Properties/**.lagda.md` |
| What properties exist, their identity, location, tracking issue | **The catalog** (version-controlled; declares no status) | `docs/notes/properties.yaml` |
| Human dashboard | **Generated** from catalog ⨯ Agda | `docs/notes/ledger-properties-roadmap.md` |
| Work coordination (discussion, assignment, open/closed) | **GitHub issues** | `#45` (Conway umbrella) + sub-issues; a Dijkstra umbrella |

Rationale for keeping the catalog/roadmap **in the repo** (rather than a GitHub
Projects board): a fresh clone, CI, and a fresh Claude Code session can all see
it. A Projects board is invisible to the code and to automation.

### Status is derived, not asserted

The catalog declares **no** status field. `scripts/python/scan_properties.py`
computes each property's status from its `module` reference and the Agda on disk:

- `idea` — no module set (nothing in Agda yet);
- `planned` — module named but the file is not on this branch (drafted in a PR);
- `stated` — file present **with** a `coming soon` marker (a `Claim`, proof pending);
- `proved` — file present with **no** `coming soon` marker.

Because status is computed, the anti-drift gate is the generated roadmap itself:
`scan_properties.py --check` regenerates the dashboard and fails if the committed
copy is stale. So if a proof lands (the `coming soon` marker disappears) but the
roadmap is not regenerated and committed, CI fails. The Agda `--safe` typecheck in
the main CI is what guarantees a `proved` property has no holes or postulates; this
script guarantees the *bookkeeping* matches the code. Together they make the
#413/#414 class of drift a CI failure.

### Status vocabulary

- `idea` — identified; no statement in Agda yet.
- `planned` — statement drafted in an open PR/branch; not yet on the tracked branch.
- `stated` — statement present as a `Claim`; proof pending (`*Proof*. (coming soon)`).
- `proved` — statement and proof present; `--safe` typechecks.

### Conventions for property modules

- A property lives in its STS's `Properties/` directory, one focused module per
  property (e.g. `Chain/Properties/EpochStep.lagda.md`), matching existing
  practice. Aggregator modules (`X/Properties.lagda.md`) just re-export.
- While unproved, the module states the proposition and ends with
  `*Proof*. (coming soon)`. When proved, the proof replaces that line. (This
  `coming soon` string is the machine-readable "pending" signal — keep it.)
- Headings carry a stable anchor: `## Claim: … {#clm:Foo}` or `## Theorem: … {#thm:Foo}`.
- The catalog records the dotted `module`, the `anchor`, the key `defs`, and the
  tracking `issues` — this is where the property↔issue link lives, in-repo and
  machine-checkable.

## How to … (workflow)

**Add a new property.** Add an entry to `properties.yaml` (no status field; with
no module it derives as `idea`), open a tracking issue (or let
`gh_project_populate.py` create it), then write the module with the statement and
`coming soon` (it now derives as `stated`). Run `scan_properties.py` and commit
the regenerated roadmap.

**Record a proof.** Replace `coming soon` with the proof (it now derives as
`proved`); run `scan_properties.py` and commit the regenerated roadmap; close (or
let render mark) the issue.

**Keep everything in sync.** `scan_properties.py --check` runs in CI
(`.github/workflows/properties-check.yml`) and fails if the catalog disagrees with
the Agda or the roadmap is stale. `gh_project_render.py` pulls issue open/closed
state into the roadmap; `gh_project_populate.py` seeds issues/labels from the
catalog. (Both use `gh` and are run locally — see `scripts/python/README.md`.)

## Reconciliation actions (initial)

Snapshot at the time of writing — see the live roadmap for current state.

| Issue | Property | Action |
| --- | --- | --- |
| #413 | deposit-pot growth (`updatePropDeps≡`) | **Done.** Link the proof; close. |
| #414 | GA deposits eventually refunded | Statement stub drafted (PR pending). Keep open; label *stated, proof pending*. |
| #415 | voting power on self-proposal | Exact statement still missing. **Un-block** (the stake calculation it waited on now exists). |
| #412 | `EnactState` only at epoch boundary | Statement exists (`enact-change⇒newEpoch`); link it; label *stated, proof pending*. |
| #417 | voter's last vote applied | Statement stub drafted (PR pending). Keep open; link it. |
| — | `ConstRwds` (=#45 comment P6) | Create an issue. |
| — | `CredDepsEqualDomRwds` (=#45 comment P7) | Create an issue. |
| — | `PParamsWellFormed`, `NoPropSameDReps`, `VoteDelegsVDeleg`, `ChangePPGroup` | Create issues (stated, proof pending). |
| — | `GovDepsMatch` ×3, PoV ×4, `ExpiredDReps` | Create issues, mark proved (regression-tracking). |
| — | **Dijkstra**: all of the above | Create a Dijkstra umbrella + porting sub-issues (all derive as `idea`). |

`gh_project_populate.py` performs the "create an issue" rows from the catalog and
writes the new numbers back into `properties.yaml`.

## Suggested sequencing

1. **Reconcile** the existing Conway issues (#412–#417) — cheap, removes the worst
   drift.
2. **Finish the self-contained Conway proofs**: `EpochStep` (#412), `ConstRwds`
   (P6), then `CredDepsEqualDomRwds` (P7) — all currently `stated`.
3. **State the missing Conway properties**: #414 and #417 stubs (in flight), then
   the exact #415 statement (now unblocked).
4. **Dijkstra**: scaffold the `Gov`/`Chain`/`Epoch` property modules and port the
   proved Conway theorems first (PoV, `GovDepsMatch`) as they are most mechanical.

## Consequences

- One `git grep`-able catalog and one generated dashboard; new contributors and
  future Claude sessions get the whole picture from the repo.
- CI refuses to let the bookkeeping lie about the code.
- Small ongoing cost: edit the catalog and regenerate the roadmap when a
  property's status changes (one command, gated by CI).

## Alternatives considered

- **Markdown-as-database synced to issues** (status = issue open/closed). Rejected
  as the *primary* status source: closing an issue by hand does not make a proof
  exist. We keep the issue-sync scripts, but for *coordination*, not for truth.
- **GitHub Projects board.** Nice views, but not version-controlled and invisible
  to CI / fresh sessions. May be added later as a read-only view.
