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
    where module Go Γ s tx (let H , ⁇ H? = UTXOW-inductive-premises {tx}{s}{Γ}) where

    open Computational Computational-UTXO
      renaming (computeProof to computeProof'; completeness to completeness')

    genErr : ¬ H → String
    genErr  ¬p = case dec-de-morgan ¬p of λ where
      (inj₁ a) → "¬ ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ"
      (inj₂ b) → case dec-de-morgan b of λ where
        (inj₁ a₁) → "∀[ s ∈ scriptsP1 ] validP1Script witsKeyHashes txvldt s"
        (inj₂ b₁) → case dec-de-morgan b₁ of λ where
          (inj₁ a₂) → "witsVKeyNeeded utxo txb ⊆ witsKeyHashes"
          (inj₂ b₂) → case dec-de-morgan b₂ of λ where
            (inj₁ a₃) → "(neededHashes ＼ refScriptHashes) ≡ᵉ witsScriptHashes"
            (inj₂ b₃) → case dec-de-morgan b₃ of λ where
              (inj₁ a₄) → "inputHashes ⊆ txdatsHashes"
              (inj₂ b₄) → case dec-de-morgan b₄ of λ where
                (inj₁ a₅) → "txdatsHashes ⊆ (inputHashes ∪ allOutHashes ∪ getDataHashes (range (utxo ∣ refInputs)))"
                (inj₂ b₅) → case dec-de-morgan b₅ of λ where
                  (inj₁ a₆) → "languages ⊆ allowedLanguages"
                  (inj₂ b₆) → "txADhash ≡ map hash txAD"
 
    computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s')
    computeProof = 
      case H? of λ where
        (yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p10)) →
          map (map₂′ (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p10)) (computeProof' Γ s tx)
        (no ¬p) → failure $ genErr ¬p

    completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                        → map proj₁ computeProof ≡ success s'
    completeness s' (UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p10 h) with H?
    ... | no ¬p = ⊥-elim $ ¬p ((p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p10))
    ... | yes _ with computeProof' Γ s tx | completeness' _ _ _ _ h
    ... | success _ | refl = refl
 