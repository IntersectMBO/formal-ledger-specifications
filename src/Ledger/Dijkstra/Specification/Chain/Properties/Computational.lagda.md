---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Chain/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">CHAIN</span>: Computational {#sec:chain-computational}

This module proves that the `CHAIN`{.AgdaDatatype} transition rule is computational.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract using (AbstractFunctions)

module Ledger.Dijkstra.Specification.Chain.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Dijkstra.Specification.BlockBody.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Chain txs abs
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Leios govStructure
  using (ValidEBCert; Dec-ValidEBCert)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
  using (hashEB)
open import Ledger.Dijkstra.Specification.Leios.Validity txs abs using (ValidEB?)
open import Ledger.Dijkstra.Specification.RewardUpdate txs abs
open import Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational txs abs
open import Ledger.Prelude

open LeiosCryptoStructure leiosCryptoStructure using (rbHeaderHashBytes)
open Computational ⦃...⦄

module _
  (nes : NewEpochState)
  (open EpochState (NewEpochState.epochState nes) using (ls) renaming (es to es'))
  (open EnactState es' using (pparams))
  (open PParams ∣ pparams ∣ using (maxRefScriptSizePerBlock))
  (ts : List TopLevelTx)
  where
  refScriptSize≤?Bound : Dec (totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock)
  refScriptSize≤?Bound = totalRefScriptsSize ls ts ≤? maxRefScriptSizePerBlock

-- The decisions of the certificate branch, one per premise of CERTIFY-EB.
pending? : (m : Maybe LastAppliedBlock) → Dec (∃[ la ] m ≡ just la)
pending? nothing   = no λ where (_ , ())
pending? (just la) = yes (la , refl)

blockSlot : Block → Slot
blockSlot b = BHBody.slot (BHeader.bhbody (Block.bheader b))

pendingFailure : LastAppliedBlock → String
pendingFailure la with LastAppliedBlock.announcedEB la
... | nothing = "the last applied block announced no EB"
... | just _  = "the certified EB is not the one the last applied block announced"

module _ (Γ : CertifyEnv) (la : LastAppliedBlock) (ceb : CertifiedEB) where
  open CertifyEnv Γ; open CertifiedEB ceb
  open LastAppliedBlock la using (headerHash)
  open PParams (PParamsOf enactState) using (leiosQuorumStakeThreshold)

  pendingEB? : Dec (pendingEB la ≡ just (hashEB eb))
  pendingEB? = pendingEB la ≟ just (hashEB eb)

  validCert? : Dec (ValidEBCert committee leiosQuorumStakeThreshold (rbHeaderHashBytes headerHash) cert)
  validCert? = ¿ _ ¿

instance
```
-->

```agda
  Computational-CERTIFY : Computational _⊢_⇀⦇_,CERTIFY⦈_ String
  Computational-CERTIFY .computeProof Γ ls nothing = success (ls , CERTIFY-None)
  Computational-CERTIFY .computeProof Γ ls (just ceb)
    with pending? (CertifyEnv.lastApplied Γ)
  ... | no _ = failure "the chain has no last applied block, so no EB is pending"
  ... | yes (la , la≡)
    with pendingEB? Γ la ceb
  ... | no _ = failure (pendingFailure la)
  ... | yes pend
    with validCert? Γ la ceb
  ... | no _ = failure "the EB certificate is not valid against the announcing epoch's committee"
  ... | yes vc = do
    ls₁ , ext ← computeProof _ ls (CertifiedEB.closure ceb)
    case ValidEB? (CertifiedEB.eb ceb) (CertifiedEB.closure ceb) (ls₁ , ext) of λ where
      (no _)  → failure "the certified EB is not valid in the announcing block's environment"
      (yes v) → success (ls₁ , CERTIFY-EB (la≡ , pend , vc , v , ext))

  Computational-CERTIFY .completeness Γ ls nothing    _   CERTIFY-None = refl
  Computational-CERTIFY .completeness Γ ls (just ceb) ls₁ (CERTIFY-EB {la = la} (la≡ , pend , vc , v , ext))
    with pending? (CertifyEnv.lastApplied Γ)
  ... | no ¬pending = ⊥-elim (¬pending (la , la≡))
  ... | yes (la' , la≡')
    with trans (sym la≡') la≡
  ... | refl
    with pendingEB? Γ la ceb
  ... | no ¬pend = ⊥-elim (¬pend pend)
  ... | yes _
    with validCert? Γ la ceb
  ... | no ¬vc = ⊥-elim (¬vc vc)
  ... | yes _
    with recomputeProof ext | completeness _ _ _ _ ext
  ... | success (_ , ext') | refl
    with ValidEB? (CertifiedEB.eb ceb) (CertifiedEB.closure ceb) (_ , ext')
  ... | no ¬v = ⊥-elim (¬v v)
  ... | yes _ = refl
```

```agda
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
  Computational-CHAIN .computeProof Γ cs b = do
    ls₁ , certStep ← computeProof (certifyEnv cs) (LedgerStateOf cs) (b .Block.ebCert)
    nes , tickStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,TICK⦈_} _ _ _
    case delayChecks? (PParamsOf (EpochState.es (NewEpochState.epochState nes))) (cs .ChainState.lastApplied) (b .Block.ebCert) (blockSlot b) of λ where
      (no _)  → failure "the certificate comes before the certification delay has elapsed"
      (yes d) → do
        (_ , _) , bbStep ← computeProof _ (LedgerStateOf nes , nes .NewEpochState.bcur) b
        case refScriptSize≤?Bound nes (b .Block.ts) of λ where
          (no ¬p) → failure "totalRefScriptsSize > maxRefScriptSizePerBlock"
          (yes p) → success (_ , CHAIN (certStep , tickStep , d , p , bbStep))

  Computational-CHAIN .completeness _ cs b _ (CHAIN {nes = nes} (certStep , tickStep , d , p , bbStep))
    with recomputeProof certStep | completeness _ _ _ _ certStep
  ... | success _ | refl
    with recomputeProof tickStep | completeness _ _ _ _ tickStep
  ... | success _ | refl
    with delayChecks? (PParamsOf (EpochState.es (NewEpochState.epochState nes))) (cs .ChainState.lastApplied) (b .Block.ebCert) (blockSlot b)
  ... | no ¬d = ⊥-elim (¬d d)
  ... | yes _
    with recomputeProof bbStep | completeness _ _ _ _ bbStep
  ... | success _ | refl
    with refScriptSize≤?Bound nes (Block.ts b)
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p p)
```
