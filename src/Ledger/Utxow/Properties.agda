{-# OPTIONS --safe #-}

import Data.Maybe as M
open import Data.Product using (map₂)

open import Ledger.Prelude; open Computational' ⦃...⦄
open import Ledger.Crypto
open import Ledger.Transaction

module Ledger.Utxow.Properties (⋯ : _) (open TransactionStructure ⋯) where

open import Ledger.Utxow ⋯
open import Ledger.Utxo  ⋯
open Tx
open TxBody
open TxWitnesses

private
  UTXOW-premise : ∀ Γ s tx → Set
  UTXOW-premise Γ s tx =
    let open UTxOState s; open UTxOEnv Γ
        txb = tx .body; txw = tx .wits
        witsKeyHashes    = map hash (dom (txw .vkSigs ˢ))
        witsScriptHashes = map hash (txw .scripts )
    in
      ∀[ (vk , σ) ∈ txw .vkSigs ˢ ] isSigned vk (txb .txid .txidBytes) σ
    × ∀[ s ∈ scriptsP1 txw ] validP1Script witsKeyHashes (txb .txvldt) s
    × witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    × scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    × txb .txADhash ≡ M.map hash (tx .txAD)

instance
  Computational'-UTXOW : Computational' _⊢_⇀⦇_,UTXOW⦈_
  Computational'-UTXOW .computeProof Γ s tx =
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
