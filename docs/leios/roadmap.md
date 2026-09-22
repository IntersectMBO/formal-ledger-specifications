<!-- File: docs/leios/roadmap.md -->

# Leios ledger formalization (LLF) roadmap

Where the Leios Ledger Formalization stands on `leios-main`, what is in review, in
what order it lands, and what remains.  The [design note](design-note.md) records
the decisions; this file records the state, and is updated as PRs merge.  Last
updated 2026-09-22, after Carlos approved [#1304] and Andre's review comments on it
were addressed.

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
    key-hash order that supplies the committee tie-break, the hash carriers), and
    `Leios.Types` (`EndorserBlock`, `hashEB`, `Announcement`).  Closes #1298 and
    #1301.  Approved by Carlos on 2026-09-22; Andre's comments of the same day
    are addressed: no vote type, the order stated as the tie-break, its
    decidability derived.
2.  [#1300] The voting committee and certificate validity (Sebastian).  The pool
    state carries the voting key; the committee is materialized at the epoch
    boundary; `LeiosCert` and `ValidLeiosCert`; the key age derived from the KES
    constants.  Stacked on #1304.

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
+  Vote validity: out of scope, decided 2026-09-22 in the review of [#1304]: vote
   validation is node behavior, and a specification of the consensus↔ledger
   interface, if one is written, is where it belongs (the note's addendum).
+  `ValidEB`: not started.  Reference and closure agreement, the per-EB bounds, and
   the valid-extension conjunct through `LEDGERS`.

**Integration.**

+  Block structure: the announcement on the header body, the certificate with the
   certified EB and its closure on the block, the header's certified bit checked
   against the body.  Not started.
+  Consensus-spec alignment: the consensus repository's own Agda spec is adding
   the header half ([consensus PR #2278]); the note's [alignment subsection] fixes
   the division and the adjustments on each side.  Ledger side: `SlotLengthᶜ` in
   the core constants and the milliseconds-to-slots conversion defined once.
   Consensus side: the three periods as `Milliseconds` parameters and the copied
   conversion.  Not started.
+  Common library ([#919]): move the shared units (the epoch structure with
   `SlotLengthᶜ`, the crypto structures with their hash carriers, `Milliseconds`
   with its slot conversion) to `agda-cardano-common` and make both specs depend
   on it; the note's alignment table is the checklist.  After the release
   candidate; the consensus spec's move to `agda-sets` ([ouroboros-consensus
   #1677]) and the library's flake ([agda-cardano-common #2]) come first.
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

+  Land the queue above in order; #1300 rebases onto `leios-main` once #1304
   merges.
+  `ValidEB` is being drafted on #1304's branch (it needs the types and the
   parameters, not the committee); the block structure follows on #1300; then the
   `½ < τ` follow-up.
+  Consensus alignment: hand the note's adjustments to the consensus team; the
   ledger's two items (`SlotLengthᶜ` with the slot conversion, the certified-bit
   premise) ride with the block structure.

[#1297]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1297
[#1300]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1300
[#1304]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1304
[#1317]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1317
[cardano-scaling/CIPs #38]: https://github.com/cardano-scaling/CIPs/pull/38
[consensus PR #2278]: https://github.com/IntersectMBO/ouroboros-consensus/pull/2278
[alignment subsection]: design-note.md#alignment-with-the-consensus-specification
[#919]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/919
[ouroboros-consensus #1677]: https://github.com/IntersectMBO/ouroboros-consensus/issues/1677
[agda-cardano-common #2]: https://github.com/input-output-hk/agda-cardano-common/pull/2
