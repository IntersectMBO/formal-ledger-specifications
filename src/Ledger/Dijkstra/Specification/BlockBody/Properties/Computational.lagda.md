---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/BlockBody/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">BBODY</span>: Computational {#sec:bbody-computational}

This module proves that the `BBODY`{.AgdaDatatype} transition rule is computational.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract using (AbstractFunctions)
module Ledger.Dijkstra.Specification.BlockBody.Properties.Computational
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.String.Base using () renaming (_++_ to _+ˢ_)
open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.BlockBody txs abs
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Core.Specification.Epoch
open import Ledger.Dijkstra.Specification.Ledgers.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Leios govStructure using (EBCert)
open import Ledger.Dijkstra.Specification.Utxo txs abs
open Computational ⦃...⦄
open Block

validLeiosBlockFailure : Block → String
validLeiosBlockFailure b = go (certifiedBit b) (Block.ebCert b)
  where
    go : Bool → Maybe EBCert → String
    go _     nothing  = "certifiedEB is set but the block carries no EB certificate"
    go false (just _) = "the block carries an EB certificate but certifiedEB is not set"
    go true  (just _) = "a block carrying an EB certificate carries transactions"
```
-->

```agda
BBODY-computeProof : (Γ : BBodyEnv) (s : BBodyState) (block : Block)
  → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ block ,BBODY⦈ s')
```

<!--
```agda
BBODY-computeProof Γ (ls , _) block
  with ValidLeiosBlock? block
... | no _ = failure $ validLeiosBlockFailure block
... | yes lbc = do
  _ , lsStep ← computeProof _ ls (block .ts)
  success (_ , BBODY-Block-Body (block .≡-bBodySize , block .≡-bBodyHash , lbc , lsStep))
```
-->

```agda
BBODY-completeness : (Γ : BBodyEnv) (s : BBodyState) (block : Block) (s' : BBodyState)
  → Γ ⊢ s ⇀⦇ block ,BBODY⦈ s'
  → map proj₁ (BBODY-computeProof Γ s block) ≡ success s'
```

<!--
```agda
BBODY-completeness Γ s block _ (BBODY-Block-Body (_ , _ , lbc , lsStep))
  with ValidLeiosBlock? block
... | no ¬lbc = ⊥-elim $ ¬lbc lbc
... | yes _
    with recomputeProof lsStep | completeness _ _ _ _ lsStep
...    | success _ | refl = refl

instance
```
-->

```agda
  Computational-BBODY : Computational _⊢_⇀⦇_,BBODY⦈_ String
  Computational-BBODY .computeProof = BBODY-computeProof
  Computational-BBODY .completeness = BBODY-completeness
```
