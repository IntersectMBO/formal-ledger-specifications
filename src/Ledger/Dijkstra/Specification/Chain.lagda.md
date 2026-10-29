---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Chain.lagda.md
---

# Blockchain Layer {#sec:blockchain-layer}

The chain layer applies one block at a time.  A block without a certificate
ticks the new-epoch state to its slot and runs its body on the ticked state.  A
block whose body certifies the endorser block (EB) announced by its predecessor
first applies that EB's closure to the ledger state the predecessor left, in
the predecessor's environment, and only then ticks and runs its own body
([Step 5][cip-step5]; [Ledger Management][cip-ledger]).

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.BlockBody txs abs public
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Leios govStructure
  using (EBCert; ValidEBCert; certificationDelay)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
  using (EndorserBlock; hashEB)
open import Ledger.Dijkstra.Specification.Leios.Validity txs abs using (_⊢_⇀⦇_,EB⦈_)
open import Ledger.Prelude; open Equivalence
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.RewardUpdate txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open LeiosCryptoStructure leiosCryptoStructure
  using (EBHash; RBHeaderHash; rbHeaderHashBytes)
```
-->

## Definition of <span class="AgdaRecord">ChainState</span> {#sec:definition-of-chainstate}

Beside the `NewEpochState`{.AgdaRecord}, the ChainState records the last applied
block: its slot, the hash of its header, and the EB its header announced, if any.
Every block replaces this record, so an announcement survives exactly one block
and only the immediate successor can certify it ([Step 5][cip-step5]).
(The consensus specification's record of the same name carries the block
number, the slot, and the header hash.)

```agda
record LastAppliedBlock : Type where
  field
    slot         : Slot
    headerHash   : RBHeaderHash
    announcedEB  : Maybe Announcement

record ChainState : Type where
  field
    newEpochState  : NewEpochState
    lastApplied    : Maybe LastAppliedBlock
```

<!--
```agda
instance
  unquoteDecl HasCast-LastAppliedBlock = derive-HasCast
    [ (quote LastAppliedBlock , HasCast-LastAppliedBlock) ]

  HasNewEpochState-ChainState : HasNewEpochState ChainState
  HasNewEpochState-ChainState .NewEpochStateOf = ChainState.newEpochState

  HasLastEpoch-ChainState : HasLastEpoch ChainState
  HasLastEpoch-ChainState .LastEpochOf = LastEpochOf ∘ NewEpochStateOf

  HasEpochState-ChainState : HasEpochState ChainState
  HasEpochState-ChainState .EpochStateOf = EpochStateOf ∘ NewEpochStateOf

  HasEnactState-ChainState : HasEnactState ChainState
  HasEnactState-ChainState .EnactStateOf = EnactStateOf ∘ EpochStateOf

  HasLedgerState-ChainState : HasLedgerState ChainState
  HasLedgerState-ChainState .LedgerStateOf = LedgerStateOf ∘ EpochStateOf

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .UTxOStateOf = UTxOStateOf ∘ LedgerStateOf

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .CertStateOf = CertStateOf ∘ LedgerStateOf

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .PParamsOf = PParamsOf ∘ EnactStateOf

private variable
  ls' : LedgerState
```
-->

## Resolved endorser blocks {#sec:resolved-endorser-blocks}

The block carries its certificate alone.  The EB it certifies and that EB's
*closure*, its referenced transactions resolved and in reference order, reach
the chain rule beside the block.  The rules take the closure as an input.

```agda
record ResolvedEB : Type where
  field
    eb       : EndorserBlock
    closure  : List TopLevelTx

pendingEB : LastAppliedBlock → Maybe EBHash
pendingEB la = proj₁ <$> LastAppliedBlock.announcedEB la

announcingEnv : ChainState → LastAppliedBlock → LedgerEnv
announcingEnv cs la =
  ⟦ LastAppliedBlock.slot la , ∣ constitution ∣ , PParamsOf cs , es , TreasuryOf (NewEpochStateOf cs) ⟧
  where
    es = EnactStateOf cs
    open EnactState es using (constitution)
```

`pendingEB`{.AgdaFunction} reads the announced hash; the declared size beside
it is no validity condition (see `BlockBody`{.AgdaModule}).
`announcingEnv`{.AgdaFunction} uses the announcing slot and the enact state,
parameters, and treasury before the tick.

## The <span class="AgdaDatatype">CHAIN</span> Transition System {#sec:the-chain-transition-system}

`CHAIN-None`{.AgdaInductiveConstructor} handles a block without a certificate
or a resolved EB.  It ticks and runs `BBODY`{.AgdaDatatype}.
`CHAIN-EB`{.AgdaInductiveConstructor} checks the certificate in the chain
context, applies the EB at the announcing slot, and then ticks and runs the
body.  Certificate checking is read-only; the `EB`{.AgdaDatatype} premise
produces the ledger state the tick continues from.

The contextual checks require the previous block to have announced the EB,
the certification delay to have elapsed, the two blocks to share an epoch,
and `ValidEBCert`{.AgdaRecord} to hold for the announcing header's hash and
that epoch's committee and threshold ([Step 5][cip-step5];
[Certificate Validation][cip-certval]).  The same-epoch premise also rules
out certification across an era boundary, since era transitions occur at
epoch boundaries.  It costs at most one EB per boundary.

The `EB`{.AgdaDatatype} premise states full declarative validity and
application (see `Leios.Validity`{.AgdaModule}).  A certifying block carries
no transactions of its own, by `ValidLeiosBlock`{.AgdaFunction}.

```agda
data _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block × Maybe ResolvedEB → ChainState → Type where

  CHAIN-None : ∀ {bcur'} {b : Block} {nes : NewEpochState} {cs : ChainState}
```

<!--
```agda
    → let open ChainState cs; open Block b; open BHeader bheader
          open BHBody bhbody; open NewEpochState nes; open EpochState epochState
      in
```
-->

```agda
    let cs' = record cs
                { newEpochState = record nes
                    { bcur = bcur'; epochState = record (EpochStateOf nes) {ls = ls'} }
                ; lastApplied = just ⟦ slot , bHeaderHash , announcedEB ⟧ }
    in
    ∙ ebCert ≡ nothing
    ∙ tt ⊢ newEpochState ⇀⦇ slot ,TICK⦈ nes
    ∙ (es , acnt) ⊢ (ls , bcur) ⇀⦇ b ,BBODY⦈ (ls' , bcur')
      ────────────────────────────────
      _ ⊢ cs ⇀⦇ (b , nothing) ,CHAIN⦈ cs'

  CHAIN-EB : ∀ {bcur'} {b : Block} {reb : ResolvedEB} {cert : EBCert}
               {la : LastAppliedBlock} {nes : NewEpochState} {cs : ChainState}
               {ls₁ : LedgerState}
```

<!--
```agda
    → let open ChainState cs; open Block b; open BHeader bheader
          open BHBody bhbody; open NewEpochState nes; open EpochState epochState
          open LastAppliedBlock la using (headerHash) renaming (slot to announcingSlot)
          open ResolvedEB reb
      in
```
-->

```agda
    let pp    = PParamsOf cs
        cmt   = NewEpochState.leiosCommittee newEpochState
        nes₁  = record newEpochState { epochState = record (EpochStateOf cs) {ls = ls₁} }
        cs'   = record cs
                  { newEpochState = record nes
                      { bcur = bcur'; epochState = record (EpochStateOf nes) {ls = ls'} }
                  ; lastApplied = just ⟦ slot , bHeaderHash , announcedEB ⟧ }
    in
    ∙ ebCert ≡ just cert
    ∙ lastApplied ≡ just la
    ∙ pendingEB la ≡ just (hashEB eb)
    ∙ announcingSlot + certificationDelay pp ≤ slot
    ∙ epoch announcingSlot ≡ epoch slot
    ∙ ValidEBCert cmt (PParams.leiosQuorumStakeThreshold pp) (rbHeaderHashBytes headerHash) cert
    ∙ (announcingEnv cs la , closure) ⊢ LedgerStateOf cs ⇀⦇ eb ,EB⦈ ls₁
    ∙ tt ⊢ nes₁ ⇀⦇ slot ,TICK⦈ nes
    ∙ (es , acnt) ⊢ (ls , bcur) ⇀⦇ b ,BBODY⦈ (ls' , bcur')
      ────────────────────────────────
      _ ⊢ cs ⇀⦇ (b , just reb) ,CHAIN⦈ cs'
```

A certificate without its resolved EB, or a resolved EB beside a block that
carries no certificate, admits no transition.  Every successful block replaces
`lastApplied`{.AgdaField}, retiring the previous announcement and recording its
own announcement, if any, for its successor.

[cip-step5]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-5-chain-inclusion
[cip-certval]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#certificate-validation
[cip-ledger]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#ledger-management
