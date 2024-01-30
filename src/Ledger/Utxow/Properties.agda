{-# OPTIONS --safe #-}

import Data.Maybe as M

open import Ledger.Prelude
open import Ledger.Crypto
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxow.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Utxow txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs

instance
  Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_ String
  Computational-UTXOW = record {Go}
    where module Go Γ s tx (let H , ⁇ H? = UTXOW-inductive-premises {tx}{s}) where

    open Computational Computational-UTXO
      renaming (computeProof to computeProof'; completeness to completeness')

    computeProof : ComputationResult String (∃ (Γ ⊢ s ⇀⦇ tx ,UTXOW⦈_))
    computeProof =
      case H? of λ where
        (yes (p₁ , p₂ , p₃ , p₄ , p₅)) →
          map (map₂′ (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅)) (computeProof' Γ s tx)
        (no _) → failure "Failed in UTXOW"

    completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
      → map proj₁ computeProof ≡ success s'
    completeness s' (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ h)
      rewrite dec-yes H? (p₁ , p₂ , p₃ , p₄ , p₅) .proj₂
      with computeProof' Γ s tx | completeness' _ _ _ _ h
    ... | success _ | refl = refl
