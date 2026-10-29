---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Chain/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">CHAIN</span>: Computational {#sec:chain-computational}

The computation checks the certificate's contextual premises before applying
the EB, ticking, and running the block body.  The EB computation is defined in
`Leios.Validity.Properties.Computational`{.AgdaModule}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract using (AbstractFunctions)

module Ledger.Dijkstra.Specification.Chain.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.BlockBody.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Chain txs abs
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Leios govStructure
  using (EBCert; ValidEBCert; Dec-ValidEBCert; certificationDelay)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
  using (hashEB)
open import Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.RewardUpdate txs abs
open import Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational txs abs

open LeiosCryptoStructure leiosCryptoStructure using (rbHeaderHashBytes)
open Computational ⦃...⦄

pending? : (m : Maybe LastAppliedBlock) → Dec (∃[ la ] m ≡ just la)
pending? nothing = no λ where (_ , ())
pending? (just la) = yes (la , refl)

blockSlot : Block → Slot
blockSlot b = BHBody.slot (BHeader.bhbody (Block.bheader b))

pendingFailure : LastAppliedBlock → String
pendingFailure la with LastAppliedBlock.announcedEB la
... | nothing = "the last applied block announced no EB"
... | just _ = "the certified EB is not the one the last applied block announced"

module _ (cs : ChainState) (b : Block) (la : LastAppliedBlock) (cert : EBCert) (reb : ResolvedEB) where
  open LastAppliedBlock la using (headerHash) renaming (slot to announcingSlot)
  open ResolvedEB reb

  pendingEB? : Dec (pendingEB la ≡ just (hashEB eb))
  pendingEB? = _ ≟ _

  delay? : Dec (announcingSlot + certificationDelay (PParamsOf cs) ≤ blockSlot b)
  delay? = ¿ _ ¿

  sameEpoch? : Dec (epoch announcingSlot ≡ epoch (blockSlot b))
  sameEpoch? = _ ≟ _

  validCert? : Dec (ValidEBCert (NewEpochState.leiosCommittee (NewEpochStateOf cs))
    (PParams.leiosQuorumStakeThreshold (PParamsOf cs)) (rbHeaderHashBytes headerHash) cert)
  validCert? = ¿ _ ¿

instance
```
-->

```agda
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
```

<!--
```agda
  Computational-CHAIN .computeProof _ cs (b , nothing) with Block.ebCert b in cert≡
  ... | just _ = failure "the block carries an EB certificate but no resolved EB came beside it"
  ... | nothing = do
    nes , tickStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,TICK⦈_} _ _ _
    (_ , _) , bbStep ← computeProof _ (LedgerStateOf nes , nes .NewEpochState.bcur) b
    success (_ , CHAIN-None (cert≡ , tickStep , bbStep))
  Computational-CHAIN .computeProof _ cs (b , just reb) with Block.ebCert b in cert≡
  ... | nothing = failure "a resolved EB came beside a block that carries no EB certificate"
  ... | just cert with pending? (ChainState.lastApplied cs)
  ... | no _ = failure "the chain has no last applied block, so no EB is pending"
  ... | yes (la , la≡) with pendingEB? cs b la cert reb
  ... | no _ = failure (pendingFailure la)
  ... | yes pend with delay? cs b la cert reb
  ... | no _ = failure "the certificate comes before the certification delay has elapsed"
  ... | yes d with sameEpoch? cs b la cert reb
  ... | no _ = failure "the certificate crosses an epoch boundary, so the announcement has been retired"
  ... | yes e with validCert? cs b la cert reb
  ... | no _ = failure "the EB certificate is not valid against the announcing epoch's committee"
  ... | yes vc = do
    ls₁ , ebStep ← computeProof (announcingEnv cs la , ResolvedEB.closure reb) (LedgerStateOf cs) (ResolvedEB.eb reb)
    nes , tickStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,TICK⦈_} _ _ _
    (_ , _) , bbStep ← computeProof _ (LedgerStateOf nes , nes .NewEpochState.bcur) b
    success (_ , CHAIN-EB (cert≡ , la≡ , pend , d , e , vc , ebStep , tickStep , bbStep))

  Computational-CHAIN .completeness _ cs (record { ebCert = just _ } , nothing) _ (CHAIN-None (() , _))
  Computational-CHAIN .completeness _ cs (b@(record { ebCert = nothing }) , nothing) _
    (CHAIN-None (cert≡ , tickStep , bbStep))
    with recomputeProof tickStep | completeness _ _ _ _ tickStep
  ... | success _ | refl
    with recomputeProof bbStep | completeness _ _ _ _ bbStep
  ... | success _ | refl = refl
  Computational-CHAIN .completeness _ cs (record { ebCert = nothing } , just reb) _ (CHAIN-EB (() , _))
  Computational-CHAIN .completeness _ cs (b@(record { ebCert = just cert }) , just reb) _ (CHAIN-EB {la = la}
    (refl , la≡ , pend , d , e , vc , ebStep , tickStep , bbStep))
    with pending? (ChainState.lastApplied cs)
  ... | no ¬pending = ⊥-elim (¬pending (la , la≡))
  ... | yes (la' , la≡') with trans (sym la≡') la≡
  ... | refl with pendingEB? cs b la cert reb
  ... | no ¬pend = ⊥-elim (¬pend pend)
  ... | yes _ with delay? cs b la cert reb
  ... | no ¬d = ⊥-elim (¬d d)
  ... | yes _ with sameEpoch? cs b la cert reb
  ... | no ¬e = ⊥-elim (¬e e)
  ... | yes _ with validCert? cs b la cert reb
  ... | no ¬vc = ⊥-elim (¬vc vc)
  ... | yes _ with recomputeProof ebStep | completeness _ _ _ _ ebStep
  ... | success _ | refl
    with recomputeProof tickStep | completeness _ _ _ _ tickStep
  ... | success _ | refl
    with recomputeProof bbStep | completeness _ _ _ _ bbStep
  ... | success _ | refl = refl
```
-->
