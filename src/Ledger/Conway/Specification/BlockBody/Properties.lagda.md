```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open import Ledger.Conway.Specification.Abstract using (AbstractFunctions)

module Ledger.Conway.Specification.BlockBody.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Specification.BlockBody txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Prelude

open Computational ⦃...⦄

instance
  Computational-BBODY : Computational _⊢_⇀⦇_,BBODY⦈_ String
  Computational-BBODY .computeProof Γ (ls , _) block = do
    _ , lsStep ← computeProof _ ls (block .ts)
    success
      (_ , BBODY-Block-Body (block .≡-bBodySize , block .≡-bBodyHash , lsStep))
    where open Block

  Computational-BBODY .completeness _ s b _
    (BBODY-Block-Body (_ , _ , lsStep))
    with recomputeProof lsStep | completeness _ _ _ _ lsStep
  ... | success _ | refl = refl
```
