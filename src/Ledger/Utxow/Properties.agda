{-# OPTIONS --safe #-}

import Data.Maybe as M
open import Data.Product using (map₂)

open import Ledger.Prelude; open Computational' ⦃...⦄
open import Ledger.Crypto
open import Ledger.Transaction

module Ledger.Utxow.Properties (⋯ : _) (open TransactionStructure ⋯) where

open import Ledger.Utxow ⋯
open import Ledger.Utxo  ⋯

private
  UTXOW-premise : ∀ Γ s tx → Set
  UTXOW-premise Γ s tx =
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
        open UTxOState s; open UTxOEnv Γ
        witsKeyHashes     = map hash (dom (vkSigs ˢ))
        witsScriptHashes  = map hash scripts
    in
      ∀[ (vk , σ) ∈ vkSigs ˢ ] isSigned vk (txidBytes txid) σ
    × ∀[ s ∈ scriptsP1 ] validP1Script witsKeyHashes txvldt s
    × witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    × scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    × txADhash ≡ M.map hash txAD

open Tx
instance
  Computational'-UTXOW : Computational' _⊢_⇀⦇_,UTXOW⦈_
  Computational'-UTXOW .computeProof Γ s tx@(record {body = txb}) =
    case ¿ UTXOW-premise Γ s tx ¿ of λ where
      (yes (p₁ , p₂ , p₃ , p₄ , p₅)) →
        M.map (map₂ $ UTXOW-inductive p₁ p₂ p₃ p₄ p₅) (computeProof Γ s (tx .body))
      (no _) → nothing
  Computational'-UTXOW .completeness Γ s tx s' (UTXOW-inductive p₁ p₂ p₃ p₄ p₅ h)
    with ¿ UTXOW-premise Γ s tx ¿ | "dumb Agda bug"
  ... | no ¬p | _ = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄ , p₅))
  ... | yes _ | _
    with computeProof Γ s (tx .body) | completeness _ _ _ _ h
  ...   | just h | refl = refl

  Computational-UTXOW = fromComputational' Computational'-UTXOW
