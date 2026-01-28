---
source_branch: master
source_path: src/Ledger/Conway/Specification/BlockBody/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open import Ledger.Conway.Specification.Abstract using (AbstractFunctions)

module Ledger.Conway.Specification.BlockBody.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Data.String.Base              using () renaming (_++_ to _+ˢ_)
open import Ledger.Conway.Specification.BlockBody txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Prelude

open Computational ⦃...⦄

open Block

BBODY-computeProof
  : (Γ : BBodyEnv) (s : BBodyState) (block : Block)
  → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ block ,BBODY⦈ s')
BBODY-computeProof Γ (ls , _) block
  using maxBlockExUnits ← PParams.maxBlockExUnits (PParamsOf (proj₁ Γ))
  using sumTotExUnits ← (∑ˡ[ tx ← block .ts ] totExUnits tx)
  with Dec (maxBlockExUnits ≥ᵉ sumTotExUnits) ∋ dec
... | yes p = do
    _ , lsStep ← computeProof _ ls (block .ts)
    success
      ( _
      , BBODY-Block-Body
          ( block .≡-bBodySize
          , block .≡-bBodyHash
          , p
          , lsStep
          )
      )
... | no _ = failure $ "¬ (" +ˢ show sumTotExUnits +ˢ ", " +ˢ show maxBlockExUnits +ˢ ")"

BBODY-completeness
  : (Γ : BBodyEnv) (s : BBodyState) (block : Block) (s' : BBodyState)
  → Γ ⊢ s ⇀⦇ block ,BBODY⦈ s'
  → map proj₁ (BBODY-computeProof Γ s block) ≡ success s'
BBODY-completeness Γ s block _ (BBODY-Block-Body (_ , _ , p , lsStep))
  using maxBlockExUnits ← PParams.maxBlockExUnits (PParamsOf (proj₁ Γ))
  using sumTotExUnits ← (∑ˡ[ tx ← block .ts ] totExUnits tx)
  with Dec (maxBlockExUnits ≥ᵉ sumTotExUnits) ∋ dec
... | no ¬p = ⊥-elim $ ¬p p
... | yes _
    with recomputeProof lsStep | completeness _ _ _ _ lsStep
...    | success _ | refl = refl

instance
  Computational-BBODY : Computational _⊢_⇀⦇_,BBODY⦈_ String
  Computational-BBODY .computeProof = BBODY-computeProof
  Computational-BBODY .completeness = BBODY-completeness
```
