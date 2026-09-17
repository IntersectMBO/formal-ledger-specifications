<!-- File: docs/leios/roadmap.md -->

# Leios ledger formalization (LLF) roadmap

Where the Leios Ledger Formalization stands on `leios-main`, what is in review, in
what order it lands, and what remains.  The [design note](design-note.md) records
the decisions; this file records the state, and is updated as PRs merge.  Last
updated 2026-09-17, after the parameters and the design note merged.

## Merged

+  [#1317] Leios protocol parameters (Sebastian), squash-merged 2026-09-17: the nine
   fields of CIP-164's Table 3 with their update companions; zero values are the
   disabled state.  Follow-up: the quorum threshold's lower bound, `τ ≡ 0` or
   `½ < τ`, as a conditional well-formedness premise.

+  [#1297] The design note and this roadmap, squash-merged 2026-09-17.

`leios-main` was fast-forwarded to `master` on 2026-09-16 before these merges.

## In review, in merge order

1.  [#1304] The Leios crypto structure and the primitive types (William).
    `LeiosCryptoStructure`, a Dijkstra-local extension of the core crypto
    structure carried by `GovStructure` (BLS carriers and predicates, the
    key-hash order for committee ties, the hash carriers), and `Leios.Types`
    (`EndorserBlock`, `hashEB`, `Announcement`, `Vote`).  Closes #1298 and #1301.
    Awaiting re-review.
2.  [#1300] The voting committee and certificate validity (Sebastian).  The pool
    state carries the voting key; the committee is materialized at the epoch
    boundary; `LeiosCert` and `ValidLeiosCert`; the key age derived from the KES
    constants.  Its branch builds on #1304's; GitHub refuses to move its base off
    `leios-main`, so its diff overlaps #1304's until that merges.

Parked branches, no PR: `leios-bls-key-registration` holds the dedicated-certificate
registration (one commit on #1300's branch) until the registration mechanism is
decided ([cardano-scaling/CIPs #38], cardano-ledger 6048); `leios-bls-committee-pre-split`
is a backup of #1300's head before the split, to delete once #1300 merges.

## What remains

The milestones are those of the six-week plan; items are done when merged.

**Foundations.**  All five items are in the PRs above: the design note, the
abstract voting crypto, the primitive types, the parameters, and the pool-state
half of key registration.  Open: the registration mechanism itself, on hold.

**Validity.**

+  Committee, seats, and quorum arithmetic: in #1300.  Remaining after it merges:
   the `certifiable` predicate, the order lemma, and the worked examples.
+  Certificate validity: in #1300 (`ValidLeiosCert`); decidability and the mapping
   of the CIP's five checks to conjuncts remain.
+  Vote validity: not started.  A rule-free definition, `ValidVote`, per the note's
   addendum.
+  `ValidEB`: not started.  Reference and closure agreement, the per-EB bounds, and
   the valid-extension conjunct through `LEDGERS`.

**Integration.**

+  Block structure: the announcement on the header body, the certificate with the
   certified EB and its closure on the block.  Not started; the consensus
   repository's own Agda spec is adding the header half ([consensus PR #2278]),
   so the two must agree.
+  `BBODY`: the certificate branch and certified application from the announcing
   state.  Not started.
+  `CHAIN`: the pending-announcement pin, the timing window, the epoch pin, and the
   announcing header's hash as an input.  Not started.
+  Worked example and overview prose.  Not started.
+  Protocol-spec alignment: three Agda specifications now define the announcement
   (this one, the consensus spec, the protocol-level spec), so the correspondence
   table matters more than the plan assumed.  Not started.

**Deferred by design.**  Metatheory (certified-application soundness, preservation
of value through the new rules, no double application, quorum safety); the
`Computational` instances; conformance and extraction, including the byte-exact
preimage of the EB identifier; the voting-state interface; feature gating.

## Next

+  Land the queue above in order, then retarget and rebase #1300.
+  `ValidEB` is being drafted on #1304's branch (it needs the types and the
   parameters, not the committee); the block structure follows on #1300; then the
   `½ < τ` follow-up.
+  Keep the header question moving with consensus: the ledger's header classes and
   `cardano-protocol` package already carry the Leios fields, and the consensus
   spec's chain-head rules pin the announcement the way `CHAIN` will.

[#1297]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1297
[#1300]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1300
[#1304]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1304
[#1317]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1317
[cardano-scaling/CIPs #38]: https://github.com/cardano-scaling/CIPs/pull/38
[consensus PR #2278]: https://github.com/IntersectMBO/ouroboros-consensus/pull/2278
