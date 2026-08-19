# Leios ledger rules: the skeleton's default decisions

This note records the defaults behind the skeleton formalization of the Ouroboros
Linear Leios ledger rules ([CIP-164]) in the Dijkstra-era specification, so that the
Agda encodes decisions instead of debating them.

Each subsection states one default, cites the source that fixes it, and gives the
rationale; where every source is silent, the note picks a default and says so.

Comments from the consensus and ledger implementers are welcome on all of it; the
skeleton proceeds on these defaults and folds corrections in as they arrive.

In CIP-164's protocol, a block producer may announce an *endorser block* (EB), an
ordered list of transaction references (hash and declared byte size), alongside its
ordinary *ranking block* (RB).  A committee of stake pools votes on the announced EB,
a quorum of votes is aggregated into a *certificate*, and the immediately following
RB may carry that certificate, at which point the EB's transactions enter the ledger.
Throughout this note, the *closure* of an EB means its referenced transactions,
resolved and taken in reference order.

The note draws on the following sources: [CIP-164] (the normative text), the
implementation team's [Leios design document][design-doc] with its requirement
register (REQ-…), the cardano-ledger prototype ([#5626][cl-5626]: announcement,
certificate bit, and voting-key carriage in the Dijkstra era) and its parameter
proposal ([#5965][cl-5965]), and the protocol-level Agda specification
[ouroboros-leios-formal-spec][leios-formal-spec], for which the ledger is the base
layer.

## Module placement

Leios lands in the Dijkstra era as an additive subtree
`Ledger.Dijkstra.Specification.Leios.*` plus minimal edits to five existing modules;
no separate era, and no change to `Ledger.Core`.  CIP-164 requires a new ledger era
for the block-format change ([Versioning][cip-versioning]), and the implementation
prototypes Leios in Dijkstra ([#5626][cl-5626] targets `eras/dijkstra`), so the
Dijkstra specification is where the rules belong; keeping the new material in its own
subtree keeps merges from `master` cheap.  The abstract voting crypto is a
`LeiosAbstract` record threaded as a new field of `AbstractFunctions`, so the
signatures of the edited modules do not change; promoting the aggregate-signature
abstraction into `Ledger.Core`, where Peras could share it, is follow-up work.

```text
src/Ledger/Dijkstra/Specification/
├── Leios.lagda.md          -- umbrella: overview prose, re-exports
├── Leios/
│   ├── Abstract.lagda.md   -- LeiosAbstract: abstract voting crypto
│   ├── Types.lagda.md      -- EndorserBlock, Announcement, Vote, Certificate
│   ├── Committee.lagda.md  -- Seat, Committee, quorum arithmetic
│   └── Validity.lagda.md   -- ValidVote, ValidCert, ValidEB
├── Abstract.lagda.md       -- edit: leiosAbstract field in AbstractFunctions
├── PParams.lagda.md        -- edit: the Leios parameter block
├── Certs.lagda.md          -- edit: voting key in StakePoolParams
├── BlockBody.lagda.md      -- edit: announcement/certificate fields, BBODY premises
└── Chain.lagda.md          -- edit: pending-announcement threading, window check
```

## Certified application uses the full rules

The skeleton applies a certified EB's closure with the ordinary iterated LEDGER
relation (`LEDGERS`), exactly as `BBODY` applies a block's own transactions.  CIP-164
fixes what a vote attests: the closure forms "a valid extension of the RB that
announced it" ([vote condition 5][cip-step3]), under "the same validation rules used
in Praos, with phase-1 and phase-2 validation applying equally to both RB and EB
transactions" ([Ledger Management][cip-ledger]).  `ValidEB`, the property a
certificate ultimately certifies, conjoins reference/closure agreement, nonemptiness
([vote condition 6][cip-step3]), the per-EB bounds, and this valid-extension
condition stated with `LEDGERS`.

The implementation, by contrast, applies a certified closure by "reapplication with
minimal checks and UTxO updates", "omitting previously performed phase 1 & 2
validation" ([CIP-164 Table 2][cip-params]; [REQ-LedgerTxNoValidation and
REQ-LedgerCheapReapply][dd-txlevels]).  The skeleton treats that as an optimization,
not a semantics: the relation defines certified application by the full rules, and
the theorem that minimal reapplication agrees with the full rules on a closure some
quorum has validated is exactly the soundness result the optimization needs — a
follow-up proof, not a skeleton input.  Nothing in the skeleton therefore needs a
separate reapply relation.

Phase-2 failures need no special account.  Spec-level transactions carry their
`isValid` flag, so `LEDGERS` covers collateral-forfeiting transactions in a closure
exactly as it does in a block body.  Whether the wire format should carry those flags
is an open upstream question (the CIP's EB [CDDL][cip-cddl] has no validity bits,
while the [design document][dd-blockval] proposes adding them) and does not touch the
relational rules.

## Environment and ordering

For a block `B` at slot `s_B` carrying a certificate for the EB announced by its
predecessor `A` at slot `s_A` (admissible only when
`s_B ≥ s_A + 3·L_hdr + L_vote + L_diff`; [Step 5][cip-step5]) the rules fix the
following total order:

1.  **EB application**.  The closure applies via `LEDGERS` to the ledger state left
    by A's block-body transition, in A's environment: slot `s_A` and the protocol
    parameters in force at A.  CIP-164: "EB transactions are validated against the
    ledger state from the RB that announced the EB (i.e., the predecessor RB of the
    certifying RB)" ([Ledger Management][cip-ledger]); the design document requires
    the same ("the ledger must validate endorsed transactions against the ledger
    state before updating it with the new ranking block",
    [REQ-LedgerUntickedEBValidation][dd-blockval]).
2.  **Tick**.  The chain ticks to `s_B` on the EB-updated state; if an epoch boundary
    lies between the two blocks, the reward update, enactment, and the snapshots all
    see the closure's effects.
3.  **Block body**.  B's `BBODY` runs on the ticked state.  B carries no transactions
    of its own — "When a certificate is included, no further transactions are allowed
    in the RB" ([Step 5][cip-step5]) — so its body contributes the certificate
    premises and the usual bookkeeping.

A block may announce its own EB while certifying its predecessor's ("it may
optionally announce its own EB for future certification", [Step 5][cip-step5]); it
consumes A's announcement and records its own afterwards.  Relationally, the
certificate premises and the application premise are simultaneous conjuncts; only an
executable implementation orders certificate verification against closure
application.

One corollary settles the parameter-change question, on which the CIP is silent:
everything about an announced EB is evaluated in the announcing world.  The closure
runs under A's parameters; the certificate is checked against the committee, the
total active stake, and the quorum threshold τ pinned at announcement; the timing
window uses the period lengths in force at A.  A certificate proves what the voters
checked, and the voters could check only A's world; validating it against data none
of them could have seen would break that reading.  The vote signature is bound to `s_A`
for the same reason: the binding "ensures voters validated the EB against the same
ledger state it extends when certified on chain" ([Vote Structure][cip-vote]).  This
corollary is a note-set default to confirm with the implementers.

This ordering also answers the following open question of the design document:
"How much of the work lives in `BBODY` itself versus a dedicated EB-body rule, and
the precise ordering of applying the closure relative to verifying the certificate"
([Certificate verification][dd-certver]).  There is no dedicated EB-body rule: the
certificate checks and the closure's application are premises of the existing block
and chain transitions, with the pending announcement threaded through the chain-level
context and application ordered before the tick as above.

## Certificate failure is the absence of a transition

CIP-164's [Certificate Validation][cip-certval] lists five checks that must pass
"before accepting the block".  The skeleton renders failure the way the spec renders
every block fault: a block whose certificate fails a check, or that pairs a
certificate with transactions of its own, or that certifies before the window opens,
simply admits no `BBODY`/`CHAIN` derivation.  The block is invalid, and nothing in
the relational spec distinguishes why; a predicate-failure taxonomy belongs to the
`Computational` instances and the conformance work, deferred with the rest of
executability, and the five checks are its raw material when it comes.  The
missing-certificate case needs no bookkeeping at all: only the immediate successor
may certify, and otherwise "the EB certificate cannot be included and the EB is
discarded" ([Step 5][cip-step5]); the pending announcement is simply replaced by the
next one, with no ledger trace and no expiry accounting.  For consensus, the reading
is the usual one: an invalid certificate makes an invalid block, nothing more drastic.

## The committee

CIP-164 fixes the committee once per epoch by stake-based truncation: "pools are
ordered by stake in descending order and selected, in order, until the cumulative
selected stake reaches" the coverage target `σ_c`, and the resulting committee "is
fixed for the entire epoch", with no per-EB sortition and no non-persistent voters
([Committee Structure][cip-committee]; the boundary procedure in [Epoch
Boundary][cip-epoch]).  The skeleton adds the following defaults, each grounded in
the design document:

-   **Snapshot**.  The committee for an epoch derives from the stake distribution
    available at the epoch boundary, which is the pool-stake distribution the ledger
    already maintains for leader election (`PoolDistr` in the implementation;
    [REQ-StakeBasedCommitteeSelection][dd-committee]).  This is materialized into the
    epoch state at the boundary rather than recomputed per use
    ([REQ-LedgerStateVotingCommittee][dd-certver]).
-   **Order and indices**.  The descending-stake order fixes the seat indices that
    votes (`voter_id`) and certificate bitfields address.  The CIP names no
    tie-break; the design document breaks ties by pool id, and the skeleton adopts
    that.  Selection enters the skeleton abstractly, as a function with stated laws
    (registered pools, descending stake, coverage `σ_c`); the concrete construction can
    land later without disturbing anything downstream of the laws.
-   **Keyless seats**.  Membership is by stake alone, "independent of key
    registration" ([REQ-KeylessSeat][dd-committee]): a selected pool without
    a registered voting key still occupies its seat and holds its weight, but
    the seat cannot sign, and a certificate whose bitfield sets a keyless
    seat is invalid ([REQ-LedgerCertificateVerification][dd-certver]).
    Keyless stake can therefore lower the quorum a certificate is able to
    reach, never inflate it.
-   **Keys**.  Pool registration carries the voting key with its proof of
    possession, as in the prototype's `spsLeiosKey` ([#5626][cl-5626]), and
    registration checks the proof
    ([REQ-CheckProofOfPossession][dd-committee]); the prototype stores the
    key without checking the proof, a divergence to flag upstream.  Rotation
    is re-registration, activated at an epoch boundary
    ([REQ-RotateBLSKeys][dd-keys]); CIP-164 leaves the real rotation
    mechanism "to a follow-up PR amending this CIP"
    ([Design Decisions][cip-design]).
-   **The pin**.  A certificate is validated against the committee of the
    epoch in which the announcing RB was produced; the CIP sizes the signer
    bitfield by exactly that committee ([Appendix B][cip-cddl]).  A
    certificate landing just after an epoch boundary is therefore checked
    against the announcing epoch's committee and total active stake, per the
    ordering corollary above.

## Protocol parameters

CIP-164's [Table 3][cip-params] declares the Leios parameters
governance-tunable; cardano-ledger [#5965][cl-5965] maps them onto the
Dijkstra `PParams` and adds one bound the table lacks.  The skeleton adds
nine fields, with the mechanical `PParamsUpdate` and group companions; every
field sits in the network and security groups, following [#5965][cl-5965]
(all of its proposed parameters are assigned to exactly those two groups).

| Field                         | CIP-164 (Table 3)                         | Type         | Notes |
| ----------------------------- | ----------------------------------------- | ------------ | ----- |
| `leiosHeaderDiffusionPeriod`  | `L_hdr`, header diffusion period          | ℕ (slots)    |       |
| `leiosVotingPeriod`           | `L_vote`, voting period                   | ℕ (slots)    |       |
| `leiosDiffusionPeriod`        | `L_diff`, diffusion period                | ℕ (slots)    | [#5965][cl-5965] renames it the *additional* diffusion period |
| `leiosMaxEBSize`              | `S_EB`, endorser block max size           | ℕ (bytes)    | bounds the reference structure itself, which [#5965][cl-5965] calls the EB *header* |
| `leiosMaxEBTxsSize`           | `S_EB-tx`, referenceable transaction size | ℕ (bytes)    | bounds the closure's total bytes, [#5965][cl-5965]'s EB *body* |
| `leiosCommitteeStakeCoverage` | `σ_c`, committee stake coverage           | UnitInterval |       |
| `leiosQuorumStakeThreshold`   | `τ`, quorum stake threshold               | UnitInterval | normative constraint `τ < σ_c` |
| `leiosMaxEBExUnits`           | max Plutus steps and memory per EB        | ExUnits      | Table 3's two budget rows in one field, after [#5965][cl-5965]'s `OrdExUnits` |
| `leiosMaxRefScriptSizePerEB`  | (not in the table)                        | ℕ (bytes)    | from [#5965][cl-5965]; the per-EB analog of `maxRefScriptSizePerBlock` |

Table 3's remaining row, the ranking-block max size `S_RB`, is the existing
`maxBlockSize`; there is no new field ([#5965][cl-5965] maps it to
`ppMaxBBSize`).  Well-formedness: `τ < σ_c` is normative ("Must satisfy
`τ < σ_c`", [Table 3][cip-params]) and joins positivity of the periods and
sizes in the parameter well-formedness predicate; the constraint is what
keeps a quorum achievable inside the committee's guaranteed stake coverage.
Types follow the spec's house conventions; [#5965][cl-5965]'s `SlotInterval`,
`Word32`, and `OrdExUnits` are the Haskell counterparts, and name or type
divergences get recorded in module prose.  The network characteristics of the
CIP's Tables 1 and 2 (the Δ quantities) are not protocol parameters and do
not enter the spec.

## Availability

The rules take the closure as input and never ask whether data is available.  The
block, as the spec sees it, is the resolved block: alongside the certificate it
carries the certified EB and the closure ("the ledger must be provided with all
endorsed transactions resolved", [REQ-LedgerResolvedBlockValidation][dd-blockval]),
and a matching premise checks the closure against the EB's references pointwise, hash
and declared size.  Availability is a consensus and storage concern; CIP-164 keeps
EBs out of chain validity altogether ("EBs are treated as auxiliary data that do not
affect chain validity or selection decisions", [Chain Selection][cip-chainsel]), and
a certificate whose closure has not yet arrived is a block consensus cannot yet hand
to the ledger, not a new failure mode.  Two wire artifacts deliberately stay out of
the rules: the header's `certified_eb` bit is a syncing optimization, derived in the
spec from the presence of the body's certificate; and a wrong `announced_eb_size`
makes nothing invalid: "neither the RB header nor the RB are invalid, but no
honest node should vote for the EB" ([Inclusion Rules][cip-inclusion]).  Thus,
announcement-size agreement belongs to the voters' checks, not to block validity.

## The consensus↔ledger interface

The interface proposed by Nicolas Frisby in the implementation design discussion
shapes the consensus↔ledger boundary as eight functions.  The table maps each to its
skeleton counterpart, or records what stays outside the skeleton and why.

| Proposed function             | Skeleton counterpart |
| ----------------------------- | -------------------- |
| `applyCertifiedEb`            | The certificate branch of the block and chain rules: `ValidCert` plus the closure applied via `LEDGERS` from the announcing state, per the ordering above. |
| `validateCertificate`         | `ValidCert` (`Leios.Validity`): signers are seats of the pinned committee, the aggregate signature verifies over (slot, EB hash), and the signers' stake meets τ times the total active stake.  The contextual half — agreement with the pending announcement, the timing window — sits as block/chain premises. |
| `validateVote`                | `ValidVote` (`Leios.Validity`): the voter index denotes a keyed committee seat whose key verifies the signature over (slot, EB hash).  Votes never appear on-chain individually; this is the meaning consensus uses to filter votes before aggregation. |
| `doesEpochCommitteeIncludeMe` | Decidable membership on `Committee` (`Leios.Committee`), a seat lookup by pool.  The "me" binding is consensus-local; the ledger side is the seat lookup on the materialized committee ([REQ-LedgerStateVotingCommittee][dd-certver]). |
| `initializeVotingLedgerState` | Follow-up (the voting-state interface).  Meaning fixed now: the announcing block's post-`BBODY` state paired with fresh EB accumulators (bytes, `ExUnits`). |
| `applyTxForVoting`            | Follow-up.  Meaning fixed now: one LEDGER step plus accumulator updates and bound checks; folding it over the closure from the initialized state succeeds exactly when `ValidEB`'s extension-and-bounds conjuncts hold. |
| `reapplyTxForVoting`          | Follow-up.  The minimal-checks variant; its agreement with `applyTxForVoting` on previously validated transactions is the certified-application soundness theorem. |
| `forgetVotingLedgerState`     | Follow-up.  The projection back to the ledger state, with the evident round-trip law against initialization. |

The protocol-level Agda specification consumes exactly this division: its base-layer
interface submits ranking blocks carrying `txsOrEbCert : List Tx ⊎ EBCert` and asks
the base layer for a single judgment, the certificate check `V-chkCerts`, which is
`ValidCert`'s role here.  The node-local vote conditions (header arrival,
equivocation, deadlines, chain position: CIP [vote conditions 1–4][cip-step3]) stay
on its side of the line, and `ValidEB` carries the ledger-checkable remainder
(conditions 5 and 6).

[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
[cip-step3]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-3-committee-validation
[cip-step5]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-5-chain-inclusion
[cip-params]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#protocol-parameters
[cip-ledger]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#ledger-management
[cip-chainsel]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#chain-selection
[cip-epoch]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#epoch-boundary
[cip-certval]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#certificate-validation
[cip-committee]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#committee-structure
[cip-vote]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#vote-structure
[cip-inclusion]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#rb-inclusion-rules
[cip-cddl]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#appendix-b-cddl
[cip-design]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#design-decisions
[cip-versioning]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#versioning
[design-doc]: https://github.com/input-output-hk/ouroboros-leios/blob/main/docs/leios-design/README.md
[dd-txlevels]: https://github.com/input-output-hk/ouroboros-leios/blob/main/docs/leios-design/README.md#transaction-validation-levels
[dd-keys]: https://github.com/input-output-hk/ouroboros-leios/blob/main/docs/leios-design/README.md#key-registration-and-rotation
[dd-committee]: https://github.com/input-output-hk/ouroboros-leios/blob/main/docs/leios-design/README.md#committee-selection
[dd-certver]: https://github.com/input-output-hk/ouroboros-leios/blob/main/docs/leios-design/README.md#certificate-verification
[dd-blockval]: https://github.com/input-output-hk/ouroboros-leios/blob/main/docs/leios-design/README.md#block-validation
[cl-5626]: https://github.com/IntersectMBO/cardano-ledger/pull/5626
[cl-5965]: https://github.com/IntersectMBO/cardano-ledger/issues/5965
[leios-formal-spec]: https://github.com/input-output-hk/ouroboros-leios-formal-spec
