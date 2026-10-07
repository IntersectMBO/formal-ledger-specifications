<!-- File: docs/leios/roadmap.md -->

# Leios ledger formalization (LLF) roadmap

Where the Leios Ledger Formalization stands, what is in review, in what order it
lands, and what remains.  The [design note](design-note.md) records the
decisions; this file records the state, and is updated as PRs merge.  Last
updated 2026-10-01, after the integration branch merged into `master`, the first
two Integration PRs opened, and Carlos's two committee PRs were reviewed.

## How the work reaches `master`

The integration branch `leios-main` carried the first four PRs and merged into
`master` on 2026-10-01 ([#1335]), one commit per PR.  Since then every PR
targets `master` directly, stacked where one needs another; `leios-main` is
dormant and to be deleted.  This file and the design note live on `leios-docs`,
which never merges.

## Merged

+  [#1317] Leios protocol parameters (Sebastian): the nine fields of CIP-164's
   Table 3 with their update companions; zero values are the disabled state.
+  [#1304] The Leios crypto structure and the primitive types (William):
   `LeiosCryptoStructure` carried by `GovStructure`; `Leios.Types`
   (`EndorserBlock`, `hashEB`, `Announcement`); no vote type.
+  [#1331] BLS keys on stake pools (Carlos): the optional key with its proof of
   possession in the pool-registration certificate, the `POOL` premises, and the
   pool state keeping the key with its registration epoch.
+  [#1300] The voting committee (Sebastian, rebuilt by Carlos): seats, the
   committee materialized in `NewEpochState` at the boundary, the key age
   derived from the KES constants, the tie-break as a decidable total order.
+  [#1297], [#1329] The design note and this file, on `leios-docs`.

## In review, in merge order

1.  [#1341] Seat weights as fractions of the total active stake (Carlos), the
    shape of `cardano-crypto-leios`.  Before merging: the fraction is computed
    as `d / d`, so every weight is one; and the visible order `_≼_` is no
    longer connected to the order the sort uses.  Reviewed 2026-10-01.
2.  [#1333] Certificate validity (William): `EBCert`, and
    `ValidEBCert cmt τ msg cert` with the quorum over the signers' summed
    weight.  Stacked on #1341.
3.  [#1339] Block structure (William, issue [#1336]): the announcement, the
    certified bit, the header hash, and `CertifiedEB` on the block types;
    `leiosBodyChecks` as one premise of `BBODY`.  Stacked on #1333.
4.  [#1340] Certification delay (William, issue [#1337]): `SlotLengthᶜ`,
    `durationToSlots`, `slotsFromDuration`, and `certificationDelay`, with the
    consensus specification's names; the `½ < τ` bound and its update-level
    mirror.  Independent; one link definition conflicts with #1333 for whoever
    merges second.
5.  [#1330] Endorser-block validity (William): `ValidEB` in `Leios.Validity`.
    Independent.
6.  [#1342] Current and next committees (Carlos); contains #1341's commit.
    Before merging: whether the committee computed at a boundary serves the
    epoch being entered, as the implementation's does, or the next one; the
    epoch passed to the key-age check; the field name and prose.  Reviewed
    2026-10-01.

## Integration

+  [#1336] Block structure: in [#1339].
+  [#1337] Certification delay: in [#1340].
+  [#1338] `CHAIN`, the pending announcement and the certificate branch: not
   started; its two open decisions are below.
+  The wrap-up, not yet filed: the worked example, the `certifiable` predicate,
   the decisions recorded in module prose and the divergences raised with the
   ledger team; the refresh of these documents; the housekeeping.

## Decisions pending

+  **Whose parameters bound the certification delay.**  The consensus
   specification (ouroboros-consensus PR 2278, approved 2026-10-01) reads the
   forecast at the certifying header; the design note's working default is the
   announcing block's world.  Recommendation: the announcing block's, pinned as
   the earliest certifying slot when the announcing block is applied, for the
   reason given in item 6 of the note's alignment subsection.
+  **Which committee the chain rule reads** if [#1342] lands: the committee of
   the state before the tick, as the note's pin says, whatever the pair's
   members are called.  A pair matters to a validator that runs after the tick,
   which the chain rule does not.

## Alignment

+  Consensus specification: PR 2278 reviewed and approved 2026-10-01; the
   ledger side took its names for the slot length and the conversion; the
   parameter question above is the open row of the note's table.
+  Implementation: cardano-ledger `master` seats the committee as the mark
   snapshot rotates into set, judging keys for the epoch being entered
   (`Snap.hs`); `BBODY` validates no certificate yet.  To raise with the ledger
   team: the re-registration epoch (the spec keeps it for an unchanged key; the
   `POOLREAP` rule Dijkstra shares restamps it through `mkStakePoolState`).
   Three items listed here earlier do not hold: cardano-ledger records the
   committee size in the mark snapshot with the parameters `NEWEPOCH` here also
   reads, its Dijkstra `POOL` rule verifies the proof of possession (issue 5993),
   and the prototype's `minCertificationGap` computes the CIP's rounded-up
   formula from the slot length.

## Deferred by design

Metatheory (certified-application soundness, preservation of value, no double
application, quorum safety); the predicate-failure taxonomy; conformance and
extraction beyond keeping the Foreign mirror compiling; the voting-state
interface; feature gating; the common library ([#919]), after the first release.

[#919]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/919
[#1297]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1297
[#1300]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1300
[#1304]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1304
[#1317]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1317
[#1329]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1329
[#1330]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1330
[#1331]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1331
[#1333]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1333
[#1335]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1335
[#1336]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/1336
[#1337]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/1337
[#1338]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/1338
[#1339]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1339
[#1340]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1340
[#1341]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1341
[#1342]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1342
