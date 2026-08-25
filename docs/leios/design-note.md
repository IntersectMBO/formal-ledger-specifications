<!-- File: docs/leios/design-note.md -->

# Leios ledger formalization (LLF) plan

The **Leios Ledger Formalization** (**LLF**) is the formalization, in Agda, of the
ledger rules of Ouroboros Linear Leios ([CIP-164]) within the Dijkstra-era
specification.  This note is the LLF plan: it records the design decisions our Agda
work builds on, so that the code encodes settled decisions instead of debating open
questions.  Each subsection states one decision, cites the source that fixes it, and
gives the rationale; where every source is silent, the note picks a default and says
so.

Comments from the consensus and ledger implementers are welcome on all of it; work
proceeds on these decisions, and corrections are folded in as they arrive.

In the protocol of [CIP-164], a block producer may announce an *endorser block* (EB), an
ordered list of transaction references (hash and declared byte size), alongside its
ordinary *ranking block* (RB).  A committee of stake pools votes on the announced EB,
a quorum of votes is aggregated into a *certificate*, and the immediately following
RB may carry that certificate, at which point the EB's transactions enter the ledger.
Throughout this note, the **closure** of an EB means its referenced transactions,
resolved and taken in reference order.

The note draws on the following sources:

+  [CIP-164] (the normative text);
+  the implementation team's [Leios design document][design-doc] with its requirement
   register (`REQ-…`);
+  the cardano-ledger prototype ([#5626][cl-5626]: announcement, certificate bit,
   and voting-key carriage in the Dijkstra era) and its parameter proposal
   ([#5965][cl-5965]);
+  the protocol-level Agda specification
   [ouroboros-leios-formal-spec][leios-formal-spec], for which the ledger is the
   base layer.

## Module placement

Leios lands in the Dijkstra era as an additive subtree
`Ledger.Dijkstra.Specification.Leios.*` plus minimal edits to six existing modules;
no separate era, and no change to `Ledger.Core`.

[CIP-164] requires a new ledger era for the block-format change
([Versioning][cip-versioning]), and the implementation prototypes Leios in
Dijkstra ([#5626][cl-5626] targets `eras/dijkstra`), so the Dijkstra specification
is where the rules belong; keeping the new material in its own subtree keeps
merges from `master` cheap.

The abstract voting crypto is a `LeiosAbstract` record, included as a new field of
`GovStructure`, the era's bundle of abstract structures, and supplied through
`TransactionStructure`.  This placement is forced by the import order: the
proof-of-possession premise lives in `POOL`, inside `Certs`, which sees only
`GovStructure` and sits upstream of `AbstractFunctions`, so nothing threaded
through `AbstractFunctions` is in scope where the registration rule states that
premise.

A `GovStructure` field, by contrast, reaches `Certs` and every rule module
downstream of the transaction telescope without changing any module signature.[^1]

The new modules, and the edits to existing modules, are as follows:

```text
src/Ledger/Dijkstra/Specification/
├── Leios.lagda.md          -- umbrella: overview prose, re-exports
├── Leios/
│   ├── Abstract.lagda.md   -- LeiosAbstract: abstract voting crypto
│   ├── Types.lagda.md      -- EndorserBlock, Announcement, Vote, Certificate
│   ├── Committee.lagda.md  -- Seat, Committee, quorum arithmetic
│   └── Validity.lagda.md   -- ValidVote, ValidCert, ValidEB
├── Gov/Base.lagda.md       -- edit: leiosAbstract field in GovStructure
├── Transaction.lagda.md    -- edit: supply leiosAbstract via TransactionStructure
├── PParams.lagda.md        -- edit: the Leios parameter block
├── Certs.lagda.md          -- edit: voting key in StakePoolParams
├── BlockBody.lagda.md      -- edit: announcement/certificate fields, BBODY premises
└── Chain.lagda.md          -- edit: pending-announcement threading, window check
```

## Certified application uses the full rules

The LLF applies a certified EB's closure with the ordinary iterated `LEDGER`
relation (`LEDGERS`), exactly as `BBODY` applies a block's own transactions.

[CIP-164] fixes what a vote attests:

> the closure forms "a valid extension of the RB that announced it"
> ([vote condition 5][cip-step3]), under "the same validation rules used
> in Praos, with phase-1 and phase-2 validation applying equally to both RB
> and EB transactions" ([Ledger Management][cip-ledger]).

`ValidEB`, the property a certificate ultimately certifies, conjoins
reference/closure agreement, nonemptiness ([vote condition 6][cip-step3]), the
per-EB bounds, and this valid-extension condition stated with `LEDGERS`.

The implementation, by contrast, applies a certified closure by "reapplication
with minimal checks and UTxO updates", "omitting previously performed phase 1 & 2
validation" ([CIP-164 Table 2][cip-params]; [REQ-LedgerTxNoValidation and
REQ-LedgerCheapReapply][dd-txlevels]).

The LLF treats that as an optimization, not the semantics: the relation defines
certified application by the full rules, and the theorem that minimal reapplication
agrees with the full rules on a closure some quorum has validated is exactly the
soundness result the optimization needs.  That theorem is follow-up work, outside
the initial LLF, so the rules include no separate reapply relation.

Phase-2 failures need no special accounting.  Spec-level transactions carry their
`isValid` flag, so `LEDGERS` covers collateral-forfeiting transactions in a closure
exactly as it does in a block body.  The flag is not a free input: the `UTXOS` rule
requires `evalP2Scripts … ≡ IsValidFlagOf txTop`, forcing the flag to agree with
actual phase-2 evaluation against the state the closure runs in, so a closure
matching an EB's references admits at most one derivable application.  Whether the
wire format should carry those flags is an open upstream question (the CIP's EB
[CDDL][cip-cddl] has no validity bits, while the [design document][dd-blockval]
proposes adding them) and does not touch the relational rules.

## Environment and ordering

For a block `B` at slot `s_B` carrying a certificate for the EB announced by its
predecessor `A` at slot `s_A` (admissible only when
`s_B ≥ s_A + 3·L_hdr + L_vote + L_diff`; [Step 5][cip-step5]), the rules fix the
following total order:

1.  **EB application**.  The closure applies via `LEDGERS` to the ledger state
    left by `A`'s block-body transition, in `A`'s environment: slot `s_A` and the
    protocol parameters in force at `A`.

    [CIP-164][]: "EB transactions are validated against the ledger state from the
    RB that announced the EB (i.e., the predecessor RB of the certifying RB)"
    ([Ledger Management][cip-ledger]); the design document requires the same ("the
    ledger must validate endorsed transactions against the ledger state before
    updating it with the new ranking block", [REQ-LedgerUntickedEBValidation][dd-blockval]).

2.  **Tick**.  The chain ticks to `s_B` on the EB-updated state; if an epoch boundary
    lies between the two blocks, the reward update, enactment, and the snapshots all
    see the closure's effects.

3.  **Block body**.  `B`'s `BBODY` runs on the ticked state.  `B` carries no
    transactions of its own: "When a certificate is included, no further
    transactions are allowed in the RB" ([Step 5][cip-step5]); so its body
    contributes the certificate premises and the usual bookkeeping.

(The implementation already diverges from the lower bound
`s_B ≥ s_A + 3·L_hdr + L_vote + L_diff`.  The prototype's `minCertificationGap` is
10 slots whereas `3·L_hdr + L_vote + L_diff` gives 14 with the Musashi parameters.
Both sides are live and measured by the trace-verifier work; the divergence is
flagged upstream, like the proof-of-possession divergence in the committee section.)

A block may announce its own EB while certifying its predecessor's ("it may
optionally announce its own EB for future certification", [Step 5][cip-step5]); it
consumes `A`'s announcement and records its own afterwards; a block that neither
certifies nor announces still clears the pending announcement.  Relationally, the
certificate premises and the application premise are simultaneous conjuncts; only
an executable implementation orders certificate verification against closure
application.

**Ordering corollary**.  One corollary settles the parameter-change question, on
which the CIP is silent: everything about an announced EB is evaluated in the
announcing world.  The closure runs under `A`'s parameters; the certificate is
checked against the committee, the total active stake, and the quorum threshold
`τ` pinned at announcement; the timing window uses the period lengths in force at
`A`.  A certificate proves what the voters checked, and the voters could check only
`A`'s world; validating it against data none of them could have seen would break
that reading.  The vote signature is bound to `s_A` for the same reason: the
binding "ensures voters validated the EB against the same ledger state it extends
when certified on chain" ([Vote Structure][cip-vote]).
*The LLF assumes this corollary as a working default, pending confirmation from
the implementers.*

This ordering also answers the following open question of the design document:
"How much of the work lives in `BBODY` itself versus a dedicated EB-body rule, and
the precise ordering of applying the closure relative to verifying the certificate"
([Certificate verification][dd-certver]).  There is no dedicated EB-body rule: the
certificate checks and the closure's application are premises of the existing
block and chain transitions, with the pending announcement carried through the
chain-level context and application ordered before the tick, as above.

## Certificate failure is the absence of a transition

CIP-164's [Certificate Validation][cip-certval] lists five checks that must pass
"before accepting the block."  The LLF renders failure the way the spec
renders every block fault: a block whose certificate fails a check, or that pairs
a certificate with transactions of its own, or that certifies before the window
opens, simply admits no `BBODY`/`CHAIN` derivation.  The block is invalid, and
nothing in the relational spec distinguishes why.

A predicate-failure taxonomy belongs to the `Computational` instances and the
conformance work, deferred with the rest of executability; the five checks are the
raw material for that follow-up work.

The missing-certificate case needs no bookkeeping at all: only the immediate
successor may certify, and otherwise "the EB certificate cannot be included and
the EB is discarded" ([Step 5][cip-step5]).

The pending announcement is a function of the chain head alone: applying any block
replaces it with that block's own announcement, or clears it when the block
announces nothing, so no announcement survives an intervening block, with no
ledger trace and no expiry accounting.  The protocol-level spec models the same
rule: the certifiable EB is the one announced by `currentRB`, the head
(`Leios/Protocol.lagda.md`, with the `Base₂` certificate premise in
`Linear.lagda.md`; [ouroboros-leios-formal-spec][leios-formal-spec]).
For consensus, the reading is the usual one: an invalid certificate makes an
invalid block.

## The committee

[CIP-164] fixes the committee once per epoch by stake-based truncation: "pools are
ordered by stake in descending order and selected, in order, until the cumulative
selected stake reaches" the coverage target `σ_c`, and the resulting committee
"is fixed for the entire epoch", with no per-EB sortition and no non-persistent
voters ([Committee Structure][cip-committee]; the boundary procedure in [Epoch
Boundary][cip-epoch]).

The LLF adds the following defaults, each grounded in the design document:

+  **Snapshot**.  The committee for an epoch derives from the stake distribution
   available at the epoch boundary, which is the pool-stake distribution the
   ledger already maintains for leader election (`PoolDistr` in the
   implementation; [REQ-StakeBasedCommitteeSelection][dd-committee]).

   The implementation materializes the committee in the ledger state at the
   boundary rather than recomputing it per use
   ([REQ-LedgerStateVotingCommittee][dd-certver]); the LLF's rules consume the
   committee only through the announcement pin (see **The pin** below), and
   materializing it as an
   epoch-state field is follow-up work together with the concrete construction,
   which is why no epoch module appears among the touched modules in the [Module
   placement](#module-placement) section above.

+  **Order and indices**.  The descending-stake order fixes the seat indices that
   votes (`voter_id`) and certificate bitfields address.

   The CIP names no tie-break; the design document breaks ties by pool id, and the
   LLF adopts it as a stated law, not a remark: equal-stake pools are
   common at the committee tail, and two implementations that order ties
   differently disagree about the validity of every certificate.

   Selection enters the LLF abstractly, as a function with stated laws (membership
   by stake truncation at coverage `σ_c`, independent of key registration;
   descending stake with ties broken by ascending pool id; determinism of the
   order); the concrete construction can land later without disturbing anything
   downstream of the laws; the order itself, being a law, cannot be deferred.  The
   byte-exact comparison on pool ids is a conformance detail to confirm upstream.

+  **Keyless seats**.  Membership is by stake alone, "independent of key
   registration" ([REQ-KeylessSeat][dd-committee]): a selected pool without a
   registered voting key still occupies its seat and holds its weight, but the
   seat cannot sign, and a certificate whose bitfield sets a keyless seat is
   invalid ([REQ-LedgerCertificateVerification][dd-certver]).  Keyless stake can
   therefore lower the quorum a certificate is able to reach, never inflate it.

   Parameter well-formedness therefore does not imply certifiability: the LLF
   names the gap with a `certifiable` predicate (keyed committee stake at least
   `τ` of the total active stake), so the condition implementers must monitor has
   a name.

   The gap is not hypothetical: on the Musashi testnet (2026-08, trace-verifier
   observations) 19 of 66 registered pools had no voting key and certificates
   appeared on roughly 3% of blocks, with every individual rule satisfied
   (cf. [ouroboros-leios #1046][ol-1046]).

+  **Keys**.  Pool registration carries the voting key with its proof of
   possession, as in the prototype's `sppLeiosKey` on `StakePoolParams`
   ([#5626][cl-5626]; `spsLeiosKey` is its pool-state mirror), and *registration*
   checks the proof ([REQ-CheckProofOfPossession][dd-committee]); however, the
   prototype stores the key *without checking the proof*, which is a divergence to
   flag upstream.

   Rotation is re-registration, activated at an epoch boundary
   ([REQ-RotateBLSKeys][dd-keys]); CIP-164 leaves the real rotation mechanism
   "to a follow-up PR amending this CIP" ([Design Decisions][cip-design]).

+  **The pin**.  A certificate is validated against the committee of the epoch in
   which the announcing RB was produced; the CIP sizes the signer bitfield by
   exactly that committee ([Appendix B][cip-cddl]).  A certificate landing just
   after an epoch boundary is therefore checked against the announcing epoch's
   committee and total active stake, per the ordering corollary above.

## Protocol parameters

CIP-164's [Table 3][cip-params] declares the Leios parameters governance-tunable;
cardano-ledger [#5965][cl-5965] maps them onto the Dijkstra `PParams` and adds one
bound the table lacks.

The LLF adds nine fields, with the mechanical `PParamsUpdate` and group
companions; every field sits in the network and security groups, matching the
assignment [#5965][cl-5965] gives its proposed parameters.

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
`maxBlockSize`; there is no new field ([#5965][cl-5965] maps it to `ppMaxBBSize`).

Well-formedness: `τ < σ_c` is normative ("Must satisfy `τ < σ_c`",
[Table 3][cip-params]) and joins positivity of the periods and sizes in the
parameter well-formedness predicate.  The constraint makes a quorum arithmetically
reachable by a fully keyed committee (truncation guarantees committee stake of at
least `σ_c` of the total, and `τ < σ_c` puts the threshold strictly inside that
coverage); keyless seats can still leave the signable stake short of `τ`, as the
committee section records.

Types follow the spec's house conventions; [#5965][cl-5965]'s `SlotInterval`,
`Word32`, and `OrdExUnits` are the Haskell counterparts, and name or type
divergences get recorded in module prose.  The network characteristics of the
CIP's Tables 1 and 2 (the Δ quantities) are not protocol parameters and do not
enter the spec.

## Availability

The rules take the closure as input and never ask whether data is available.
The block, as the spec sees it, is the resolved block: alongside the certificate
it carries the certified EB and the closure ("the ledger must be provided with all
endorsed transactions resolved", [REQ-LedgerResolvedBlockValidation][dd-blockval]),
and a matching premise checks the closure against the EB's references pointwise,
hash and declared size.  The CIP documents the reference hash as covering the
complete transaction bytes ([Appendix B][cip-cddl]), so the references pin the
closure's full content, not only the transaction bodies.

Availability is a consensus and storage concern; CIP-164 keeps EBs out of chain
validity altogether ("EBs are treated as auxiliary data that do not affect chain
validity or selection decisions", [Chain Selection][cip-chainsel]), and a
certificate whose closure has not yet arrived is a block that consensus cannot yet
hand to the ledger, not a new failure mode.

One boundary in this section deserves an explicit warning.  The EB identifier is
the hash of the reference structure itself, which the LLF abstracts as
`hashEBRefs` without pinning the byte-exact preimage.  Cardano has been here
before (the block-body hash's segmented preimage exists only in implementation
internals), so pinning that preimage is a named conformance prerequisite, not an
afterthought.

Two wire artifacts deliberately stay out of the rules.  The header's `certified_eb`
bit is a syncing optimization, derived in the spec from the presence of the body's
certificate.  A wrong `announced_eb_size` makes nothing invalid: "neither the RB
header nor the RB are invalid. But no honest node should vote for the EB"
([Inclusion Rules][cip-inclusion]); announcement-size agreement therefore belongs
to the voters' checks, not to block validity.

## The consensus↔ledger interface

The interface proposed by Nicolas Frisby in the implementation design discussion
shapes the consensus↔ledger boundary as eight functions.  The following table maps
each to its LLF counterpart, or records what stays outside the LLF and why.

| Proposed function             | LLF counterpart |
| ----------------------------- | -------------------- |
| `applyCertifiedEb`            | The certificate branch of the block and chain rules: `ValidCert` plus the closure applied via `LEDGERS` from the announcing state, per the ordering above. |
| `validateCertificate`         | `ValidCert` (`Leios.Validity`): signers are seats of the pinned committee, the aggregate signature verifies over (slot, EB hash), and the signers' stake meets τ times the total active stake.  The contextual half — agreement with the pending announcement, the timing window — sits as block/chain premises. |
| `validateVote`                | `ValidVote` (`Leios.Validity`): the voter index denotes a keyed committee seat whose key verifies the signature over (slot, EB hash).  Votes never appear on-chain individually; this is the meaning consensus uses to filter votes before aggregation. |
| `doesEpochCommitteeIncludeMe` | Decidable membership on `Committee` (`Leios.Committee`), a seat lookup by pool.  The "me" binding is consensus-local; the ledger side is the seat lookup, which the implementation serves from its materialized committee ([REQ-LedgerStateVotingCommittee][dd-certver]). |
| `initializeVotingLedgerState` | Follow-up (the voting-state interface).  Meaning fixed now: the announcing block's post-`BBODY` state paired with fresh EB accumulators, one per cumulative `ValidEB` bound: referenced-transaction bytes, `ExUnits`, and reference-script bytes. |
| `applyTxForVoting`            | Follow-up.  Meaning fixed now: one LEDGER step plus accumulator updates and bound checks; folding it over the closure from the initialized state succeeds exactly when `ValidEB`'s extension-and-bounds conjuncts hold. |
| `reapplyTxForVoting`          | Follow-up.  The minimal-checks variant; its agreement with `applyTxForVoting` on previously validated transactions is the certified-application soundness theorem. |
| `forgetVotingLedgerState`     | Follow-up.  The projection back to the ledger state, with the evident round-trip law against initialization. |

The protocol-level Agda specification is shaped for the same division: its
base-layer interface submits ranking blocks carrying
`txsOrEbCert : List Tx ⊎ EBCert` and declares a single base-layer judgment,
the certificate check `V-chkCerts`, the role `ValidCert` is intended to fill.
(An intended correspondence: that specification declares the hook but its
transition rules do not yet call it.)

CIP-164's six vote-casting conditions split across the same boundary: conditions 1–4
(header arrival, equivocation detection, validation deadlines, chain position) are
node-local, so they stay with the protocol-level specification and never enter the
ledger rules; conditions 5 (the closure is a valid extension) and 6 (the EB is
nonempty) are ledger-checkable and land in `ValidEB`, together with the
reference/closure agreement and the per-EB bounds ([vote conditions][cip-step3]).

## Out of scope: rewards and incentives

The LLF models no change to the reward calculation, and neither does the
protocol: "Leios does not require any changes to incentives in Cardano"
([Incentives][cip-incentives]); the CIP cites the existing ledger-specification
rewards module as "the current and unchanged specification of rewards".
Blocks-made accounting is likewise untouched (a certificate-bearing block counts
like any other).  Should a Leios incentive mechanism ever become normative
(rewards for voting or EB production, tiered fees), it enters through the full
roadmap, not the LLF.

---

[^1]: Promoting the aggregate-signature abstraction into `Ledger.Core`
      (`CryptoStructure`), where Peras could share it, could be done as follow-up
      work.

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
[ol-1046]: https://github.com/input-output-hk/ouroboros-leios/issues/1046
[cip-incentives]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#incentives
