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
open import Ledger.Dijkstra.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open Computational ⦃...⦄
open Block
```
-->

```agda
BBODY-computeProof : (Γ : BBodyEnv) (s : BBodyState) (block : Block)
  → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ block ,BBODY⦈ s')
```

<!--
```agda
BBODY-computeProof Γ (ls , _) block
  using maxBlockExUnits ← PParams.maxBlockExUnits (PParamsOf (proj₁ Γ))
  using sumTotExUnits   ← (∑ˡ[ tx ← block .ts ] totExUnits tx)
  with ¿ maxBlockExUnits ≥ᵉ sumTotExUnits ¿
... | yes p = do
  _ , lsStep ← computeProof _ ls (block .ts)
  success (_ , BBODY-Block-Body (block .≡-bBodySize , block .≡-bBodyHash , p , lsStep))
... | no _ = failure $
  "Block ExUnits constraint failed: total tx ExUnits "
  +ˢ show sumTotExUnits
  +ˢ " exceeds maxBlockExUnits "
  +ˢ show maxBlockExUnits
```
-->

```agda
BBODY-completeness : (Γ : BBodyEnv) (s : BBodyState) (block : Block) (s' : BBodyState)
  → Γ ⊢ s ⇀⦇ block ,BBODY⦈ s'
  → map proj₁ (BBODY-computeProof Γ s block) ≡ success s'
```

<!--
```agda
BBODY-completeness Γ s block _ (BBODY-Block-Body (_ , _ , p , lsStep))
  using maxBlockExUnits ← PParams.maxBlockExUnits (PParamsOf (proj₁ Γ))
  using sumTotExUnits   ← (∑ˡ[ tx ← block .ts ] totExUnits tx)
  with ¿ maxBlockExUnits ≥ᵉ sumTotExUnits ¿
... | no ¬p = ⊥-elim $ ¬p p
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
