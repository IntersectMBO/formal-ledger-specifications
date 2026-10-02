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
([Step 5][cip-step5]; the design note's [ordering][dn-ordering]).

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
  using (LeiosCommittee; ValidEBCert; certificationDelay)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
  using (Announcement; hashEB)
open import Ledger.Dijkstra.Specification.Leios.Validity txs abs using (ValidEB)
open import Ledger.Prelude; open Equivalence
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.RewardUpdate txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open LeiosCryptoStructure leiosCryptoStructure using (EBHash; RBHeaderHash; rbHeaderHashBytes)
```
-->

## Definition of <span class="AgdaRecord">ChainState</span> {#sec:definition-of-chainstate}

Beside the new-epoch state, the chain state remembers the last applied block:
its slot, the hash of its header, and the EB its header announced, if any.  Every block replaces this record, so an announcement
survives exactly one block and only the immediate successor can certify it
([Step 5][cip-step5]).  The consensus specification keeps the same record
under the same name ([alignment][dn-alignment]).

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

totalRefScriptsSize : LedgerState → List TopLevelTx → ℕ
totalRefScriptsSize ls txs = sum $ map (λ txTop → refScriptsSize txTop (UTxOOf ls)) txs

private variable
  ls' : LedgerState
```
-->

## The <span class="AgdaDatatype">CERTIFY</span> Transition System {#sec:the-certify-transition-system}

The certificate branch judges a block's certificate, when the block carries
one, in the world of the block that announced the EB.  That world is the chain
state before the tick: its enact state and treasury are those the announcing
block's own body ran under, and its committee is the announcing epoch's.  The
branch's environment packs what it reads from there, with the certifying
block's slot, and `certifyEnv`{.AgdaFunction} reads it off the chain state.

```agda
record CertifyEnv : Type where
  field
    lastApplied  : Maybe LastAppliedBlock
    committee    : LeiosCommittee
    enactState   : EnactState
    treasury     : Treasury
    slot         : Slot
```

<!--
```agda
instance
  unquoteDecl HasCast-CertifyEnv = derive-HasCast
    [ (quote CertifyEnv , HasCast-CertifyEnv) ]
```
-->

```agda
certifyEnv : ChainState → Block → CertifyEnv
certifyEnv cs b = ⟦ lastApplied , leiosCommittee , EnactStateOf cs , TreasuryOf newEpochState , slot ⟧
  where
    open ChainState cs
    open NewEpochState newEpochState using (leiosCommittee)
    open BHBody (BHeader.bhbody (Block.bheader b)) using (slot)

pendingEB : LastAppliedBlock → Maybe EBHash
pendingEB la = proj₁ <$> LastAppliedBlock.announcedEB la
```

`pendingEB`{.AgdaFunction} is the hash of the EB the last applied block
announced, if it announced one; the declared size beside it is no validity
condition (see `Leios.Types`{.AgdaModule}).

Without a certificate the ledger state is unchanged.  With one, the block
certifies the EB its predecessor announced, and the branch requires the
following, all in the announcing block's world:

+  the chain has a last applied block, and the EB it announced is the certified
   one ([Step 5][cip-step5], rule 1);
+  the certifying block's slot is at least `certificationDelay`{.AgdaFunction}
   slots after the announcing block's ([Step 5][cip-step5], rule 3);
+  the certificate is valid for the announcing block's header hash, against the
   committee and the quorum threshold of the announcing epoch
   (`ValidEBCert`{.AgdaRecord}; [Certificate Validation][cip-certval], whose
   fifth check, that the message is the announcing header's hash taken from the
   chain context, is met by the message supplied here);
+  the EB is valid in the announcing block's environment, which is what the
   voters checked (`ValidEB`{.AgdaRecord});
+  the closure applies through `LEDGERS`{.AgdaDatatype} to the ledger state the
   announcing block left, and the resulting state is the one the chain rule
   continues from ([Ledger Management][cip-ledger]).

```agda
data _⊢_⇀⦇_,CERTIFY⦈_ : CertifyEnv → LedgerState → Maybe CertifiedEB → LedgerState → Type where

  CERTIFY-None : ∀ {Γ : CertifyEnv} {ls : LedgerState} →
      ────────────────────────────────
      Γ ⊢ ls ⇀⦇ nothing ,CERTIFY⦈ ls

  CERTIFY-EB : ∀ {Γ : CertifyEnv} {ls ls₁ : LedgerState} {ceb : CertifiedEB} {la : LastAppliedBlock}
```

<!--
```agda
    → let open CertifyEnv Γ; open CertifiedEB ceb
          open LastAppliedBlock la renaming (slot to announcingSlot)
          open EnactState enactState using (constitution)
          open PParams (PParamsOf enactState) using (leiosQuorumStakeThreshold) in
```
-->

```agda
    let  pp  = PParamsOf enactState
         Γ'  = ⟦ announcingSlot , ∣ constitution ∣ , pp , enactState , treasury ⟧
    in
    ∙ lastApplied ≡ just la
    ∙ pendingEB la ≡ just (hashEB eb)
    ∙ announcingSlot + certificationDelay pp ≤ slot
    ∙ ValidEBCert committee leiosQuorumStakeThreshold (rbHeaderHashBytes headerHash) cert
    ∙ ValidEB {Γ'} {ls} eb closure
    ∙ Γ' ⊢ ls ⇀⦇ closure ,LEDGERS⦈ ls₁
      ────────────────────────────────
      Γ ⊢ ls ⇀⦇ just ceb ,CERTIFY⦈ ls₁
```

Two decisions fix the world the branch reads, and both follow from the pin of
the design note's [committee section][dn-committee]: a certificate proves what
the voters checked, and the voters could check only the announcing block's
world.

+  **The committee** is the one in the chain state before the tick, the
   committee of the announcing block's epoch, which also sizes the certificate's
   signer bitfield.  Reading it there needs no new state.
+  **The parameters that bound the delay** are the announcing block's, read from
   the same state.  The alternative, the parameters forecast at the certifying
   block, is not one quantity: header validation forecasts from the chain tip
   without the closure, while a check after the tick sees a state that includes
   it, and the two can name different parameters for the same block.  The
   announcing block's parameters have no such ambiguity ([alignment item
   6][dn-alignment]).

A certificate that fails a check admits no transition, like every other block
fault; the `Computational`{.AgdaRecord} instance names the failed premise
([the design note][dn-failure]).

## The <span class="AgdaDatatype">CHAIN</span> Transition System {#sec:the-chain-transition-system}

The chain rule applies a block in three steps.  The certificate branch takes
the ledger state the last applied block left to `ls₁`{.AgdaBound}; the
new-epoch state with that ledger state ticks to the block's slot, so an epoch
boundary between the two blocks sees the closure's effects in its reward
update, enactment, and snapshots; and the block's body runs on the ticked
state, under the reference-script bound as before.  A certifying block carries
no transactions of its own, by `leiosBodyChecks`{.AgdaFunction}, so its body
contributes the bookkeeping alone.

```agda
data _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type where

  CHAIN : ∀ {bcur'} {b : Block} {nes : NewEpochState} {cs : ChainState} {ls₁ : LedgerState}
```

<!--
```agda
    → let open ChainState cs; open Block b; open BHeader bheader
          open BHBody bhbody; open NewEpochState nes
          open EpochState epochState; open EnactState es renaming (pparams to pp)
          open PParams ∣ pp ∣ using (maxRefScriptSizePerBlock) in
```
-->

```agda
    let  nes₁  = record newEpochState { epochState = record (EpochStateOf cs) {ls = ls₁} }
         cs'   = record cs
                   { newEpochState  = record nes { bcur = bcur'; epochState = record epochState {ls = ls'} }
                   ; lastApplied    = just ⟦ slot , bHeaderHash , announcedEB ⟧
                   }
    in
    ∙ certifyEnv cs b ⊢ LedgerStateOf cs ⇀⦇ ebCert ,CERTIFY⦈ ls₁
    ∙ tt ⊢ nes₁ ⇀⦇ slot ,TICK⦈ nes
    ∙ totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock
    ∙ (es , acnt) ⊢ (ls , bcur) ⇀⦇ b ,BBODY⦈ (ls' , bcur')
      ────────────────────────────────
      _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
```

The resulting chain state records the block as the last applied block, with
its announcement, if any, pending for its successor.

[cip-step5]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-5-chain-inclusion
[cip-certval]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#certificate-validation
[cip-ledger]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#ledger-management
[dn-ordering]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/leios-docs/docs/leios/design-note.md#environment-and-ordering
[dn-committee]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/leios-docs/docs/leios/design-note.md#the-committee
[dn-failure]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/leios-docs/docs/leios/design-note.md#certificate-failure-is-the-absence-of-a-transition
[dn-alignment]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/leios-docs/docs/leios/design-note.md#alignment-with-the-consensus-specification
