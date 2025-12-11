---
source_branch: master
source_path: src/Ledger/Conway/Specification/Chain/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Chain.Properties.Computational
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Specification.BlockBody.Properties.Computational txs abs
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure using (EnactState)
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.RewardUpdate txs abs
open import Ledger.Conway.Specification.RewardUpdate.Properties.Computational txs abs
open import Ledger.Conway.Specification.Transaction

open Computational ⦃...⦄

module _
  (nes : NewEpochState)
  (open EpochState (NewEpochState.epochState nes) using (ls) renaming (es to es'))
  (open EnactState es' using (pparams))
  (open PParams ∣ pparams ∣ using (maxRefScriptSizePerBlock))
  (ts : List Tx)
  where
  refScriptSize≤?Bound : Dec (totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock)
  refScriptSize≤?Bound = totalRefScriptsSize ls ts ≤? maxRefScriptSizePerBlock

instance
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
  Computational-CHAIN .computeProof Γ s b = do
    nes , tickStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,TICK⦈_} _ _ _
    (_ , _) , bbStep ← computeProof _ (LStateOf nes , nes .NewEpochState.bcur) b
    case refScriptSize≤?Bound nes (b .Block.ts) of λ where
      (no ¬p) → failure "totalRefScriptsSize > maxRefScriptSizePerBlock"
      (yes p) → success (_ , CHAIN (p , tickStep , bbStep))

  Computational-CHAIN .completeness _ s b _ (CHAIN {nes = nes} (p , tickStep , bbStep))
    with recomputeProof tickStep | completeness _ _ _ _ tickStep
  ... | success _ | refl
    with recomputeProof bbStep | completeness _ _ _ _ bbStep
  ... | success _ | refl
    with refScriptSize≤?Bound nes (Block.ts b)
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p p)
```
