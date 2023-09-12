{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Utxow.Properties (txs : TransactionStructure) where

open import Ledger.Prelude hiding (Dec₁)

open TransactionStructure txs
open import Ledger.Utxow txs
open import Ledger.Utxo txs
open import Ledger.Crypto

open Tx
open TxBody
open TxWitnesses

import Data.Maybe as M

open import Tactic.ReduceDec
open import MyDebugOptions

open import Interface.Decidable.Instance public

open Computational' ⦃...⦄

private
  UTXOW-premiss : ∀ Γ s tx → Set
  UTXOW-premiss Γ s tx =
    let utxo             = UTxOState.utxo s
        ppolicy          = UTxOEnv.ppolicy Γ
        txb              = body tx
        txw              = wits tx
        witsKeyHashes    = map hash (dom (vkSigs txw ˢ))
        witsScriptHashes = map hash (scripts txw)
    in
      ∀[ (vk , σ) ∈ vkSigs txw ˢ ] isSigned vk (txidBytes (txid txb)) σ
    × ∀[ s ∈ scriptsP1 txw ] validP1Script witsKeyHashes (txvldt txb) s
    × witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    × scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    × txADhash txb ≡ M.map hash (txAD tx)

instance
  Computational'-UTXOW : Computational' _⊢_⇀⦇_,UTXOW⦈_
  Computational'-UTXOW .computeProof Γ s tx =
    case ¿ UTXOW-premiss Γ s tx ¿ of λ where
      (yes (p₁ , p₂ , p₃ , p₄ , p₅)) → case computeProof Γ s (body tx) of λ where
        (just (s' , h)) → just (s' , UTXOW-inductive p₁ p₂ p₃ p₄ p₅ h)
        nothing → nothing
      _ → nothing
  Computational'-UTXOW .completeness Γ s tx s' (UTXOW-inductive p₁ p₂ p₃ p₄ p₅ h)
    with ¿ UTXOW-premiss Γ s tx ¿ | "dumb Agda bug"
  ... | no ¬p | _ = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄ , p₅))
  ... | yes (p₁ , p₂ , p₃ , p₄ , p₅) | _ with computeProof {STS = _⊢_⇀⦇_,UTXO⦈_} Γ s (body tx) | completeness _ _ _ _ h
  ...   | just h | refl = refl

  Computational-UTXOW = fromComputational' Computational'-UTXOW
