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

    computeProof : ComputationResult String (∃ (Γ ⊢ s ⇀⦇ tx ,UTXOW⦈_))
    computeProof =
      case H? of λ where
        (yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂)) →
          map (map₂′ (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂)) (computeProof' Γ s tx)
        (no ¬p) → failure $ genErrors ¬p

    completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                        → map proj₁ computeProof ≡ success s'
    completeness s' (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ h) with H?
    ... | no ¬p = ⊥-elim $ ¬p ((p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂))
    ... | yes _ with computeProof' Γ s tx | completeness' _ _ _ _ h
    ... | success _ | refl = refl
