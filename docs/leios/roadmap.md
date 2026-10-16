<!-- File: docs/leios/roadmap.md -->

# Leios ledger formalization (LLF) roadmap

Where the Leios Ledger Formalization stands, what is in review, in what order it
lands, and what remains.  The [design note](design-note.md) records the
decisions; this file records the state, and is updated as PRs merge.  Last
updated 2026-10-15, after Carlos's review of the block structure, the merge of
the `CHAIN` fix, and the consensus side's Praos2 merge.

## How the work reaches `master`

The integration branch `leios-main` carried the first four PRs and merged into
`master` on 2026-10-01 ([#1335]), one commit per PR.  Since then every PR
targets `master` directly, stacked where one needs another; `leios-main`, which
had nothing of its own, was deleted on 2026-10-16.  This file and the design
note live on `leios-docs`, which never merges.

## Merged

+  [#1317] Leios protocol parameters (Sebastian): the nine fields of CIP-164's
   Table 3 with their update companions; zero values are the disabled state.
+  [#1304] The Leios crypto structure and the primitive types (William):
   `LeiosCryptoStructure` carried by `GovStructure`; `Leios.Types`
   (`EndorserBlock`, `hashEB`); no vote type.
+  [#1331] BLS keys on stake pools (Carlos): the optional key with its proof of
   possession in the pool-registration certificate, the `POOL` premises, and the
   pool state keeping the key with its registration epoch.
+  [#1300] The voting committee (Sebastian, rebuilt by Carlos): seats, the
   committee materialized in `NewEpochState` at the boundary, the key age
   derived from the KES constants, the tie-break as a decidable total order.
+  [#1330] Endorser-block validity (William): `ValidEB` in `Leios.Validity`
   (2026-10-05).
+  [#1340] Certification delay (William, issue [#1337]): `SlotLengthᶜ`,
   `durationToSlots`, `slotsFromDuration`, and `certificationDelay`, with the
   consensus specification's names; the `½ < τ` bound and its update-level
   mirror (2026-10-05).
+  [#1341] Seat weights as fractions of the total active stake (Carlos,
   2026-10-06).
+  [#1333] Certificate validity (William): `EBCert` and `ValidEBCert` with the
   quorum over the signers' summed weight (2026-10-06).
+  [#1342] One committee per epoch (Carlos): selected entering an epoch from the
   set snapshot and serving it, every registered pool ranked (2026-10-08).
   cardano-ledger's conformance tests compare the two committees seat by seat
   (its PR 6149, merged 2026-10-14).
+  [#1354] The executable-instance listing checked from the umbrella
   (2026-10-12); [#1353] `CHAIN` keeps the ticked epoch state in its result
   (issue [#1352], 2026-10-15).
+  [#1297], [#1329] The design note and this file, on `leios-docs`.

## In review, in merge order

1.  [#1339] Block structure (William, issue [#1336]): the announcement, the
    certified bit, and the header hash on the header and block types; the body
    carries the certificate alone; `ValidLeiosBlock` as one premise of `BBODY`.
    Reworked 2026-10-15 to Carlos's four comments of 2026-10-14: the
    certificate in place of a certified-EB record in the body, that record out
    of the PR, the announcement defined beside the header field, and the
    predicate over the block.
2.  [#1346] `CHAIN` (William, issue [#1338]): the last applied block in the
    chain state; `CERTIFY`, which judges the certificate against the announcing
    epoch's committee and threshold and applies the EB's closure to the state
    the announcing block left; the delay checked after the tick; the rule's
    signal the block with the resolved EB beside it.  Stacked on #1339.
3.  [#1355] `certifiable` (William): the keyed seats' summed weight is at least
    `τ`.  Independent; review requested 2026-10-15.

## Integration

+  [#1336] Block structure: in [#1339].  [#1337] Certification delay: merged in
   [#1340].  [#1338] `CHAIN`: in [#1346].
+  The wrap-up, not yet filed: the worked example (the success path of
   `CERTIFY` has not run on data), the decisions recorded in module prose, the
   refresh of these documents, and the housekeeping.

## Decisions taken since 1 October

+  **Whose parameters bound the certification delay**: those in force after the
   tick, at the certifying block; `EPOCH` installs the enact state ratified a
   boundary earlier, so the certified closure cannot move them, and the
   consensus specification and the node's header rule read the same values
   (the design note's alignment item 6).
+  **The block carries the certificate alone** (Carlos, 2026-10-14): the EB it
   certifies and that EB's closure are not chain objects; the chain rule
   receives them beside the block as `ResolvedEB`, and `CERTIFY` judges the
   pair.  cardano-ledger's body likewise carries only the certificate, and its
   `DijkstraEndorserBlock` pairs the references with their transactions as a
   separate object.
+  **The committee the chain rule reads**: the one in the chain state before the
   tick, the announcing epoch's.

## Decisions pending

+  **No certification across an epoch boundary** (consensus PR 2409, approved
   and open): the specification either states it as a premise of `CERTIFY` or
   records that consensus enforces it; CIP-164 does not state it.
+  **Which component checks what**: the node's header rule on `main` checks the
   pending announcement and the delay, and `blockMatchesHeader` the bit and the
   no-transactions rule; cardano-ledger's `BBODY` validates nothing about the
   Leios certificate yet, and where it will apply a certified closure is
   unanswered.  The questions are drafted for the ledger team.

## Alignment

+  Consensus specification: PR 2278, approved 2026-10-01 with six open
   comments, predates Praos2 (PR 2386, merged 2026-10-09) and PR 2409.  The
   ledger side took its names for the slot length and the conversion.
+  Node: Praos2 on `main` carries the last header's announcement in the
   chain-dependent state, bounds the announced EB size, checks the pending
   announcement and the delay in the header rule, and checks the bit against
   the body.
+  Implementation: cardano-ledger `master` seats the committee as the mark
   snapshot rotates into set; `POOL` verifies the proof of possession; the
   endorser block is a separate object, the references with their transactions
   (PR 6174); the forecast and a state query expose the committee to consensus;
   a re-registered unchanged key keeps its epoch (PR 6170), as the
   specification has it.  Open: the pending decisions above.

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
[#1346]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1346
[#1352]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/1352
[#1353]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1353
[#1354]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1354
[#1355]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1355
