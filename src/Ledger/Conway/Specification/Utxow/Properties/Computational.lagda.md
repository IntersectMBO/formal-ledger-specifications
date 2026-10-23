---
source_branch: master
source_path: src/Ledger/Conway/Specification/Utxow/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

import Data.Maybe as M

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxow.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Utxow txs abs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxo.Properties.Computational txs abs
open import stdlib-meta.Tactic.GenError using (genErrors)

instance
  Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_ String
  Computational-UTXOW = record {Go}
    where module Go Γ s tx (let H , ⁇ H? = UTXOW-inductive-premises {tx}{s}{Γ}) where

    open Computational Computational-UTXO
      renaming (computeProof to computeProof'; completeness to completeness')

    lift-step : H → ∀ {s'} → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
    lift-step (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂) =
      UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂

    computeProofH : Dec H → ComputationResult String (∃ (Γ ⊢ s ⇀⦇ tx ,UTXOW⦈_))
    computeProofH (yes p) = map (map₂′ (lift-step p)) (computeProof' Γ s tx)
    computeProofH (no ¬p) = failure $ genErrors ¬p

    computeProof : ComputationResult String (∃ (Γ ⊢ s ⇀⦇ tx ,UTXOW⦈_))
    computeProof = computeProofH H?

    completenessH : (d : Dec H) → ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                  → map proj₁ (computeProofH d) ≡ success s'
    completenessH (no ¬p) s' (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ h) =
      ⊥-elim $ ¬p (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂)
    completenessH (yes p) s' (UTXOW-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ h) =
      trans (sym (fmap-∘ {f = proj₁} {g = map₂′ (lift-step p)} (computeProof' Γ s tx)))
            (completeness' Γ s tx s' h)

    completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                        → map proj₁ computeProof ≡ success s'
    completeness = completenessH H?
