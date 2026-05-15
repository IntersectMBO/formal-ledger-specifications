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
open import Ledger.Dijkstra.Specification.Enact govStructure using (EnactState)
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.RewardUpdate txs abs
open import Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational txs abs
open import Ledger.Prelude

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

instance
```
-->

```agda
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
  Computational-CHAIN .computeProof Γ s b = do
    nes , tickStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,TICK⦈_} _ _ _
    (_ , _) , bbStep ← computeProof _ (LedgerStateOf nes , nes .NewEpochState.bcur) b
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
