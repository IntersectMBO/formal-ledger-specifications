{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Chain.Properties (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.Gov TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open import Ledger.Ratify txs
open import Ledger.Chain txs
open import Ledger.PParams epochStructure
open import Ledger.Ledger txs

open import Ledger.Ratify.Properties txs

open import Data.Nat.Properties hiding (_≟_)

open Computational

instance
  _ = +-0-monoid
  _ = +-0-commutativeMonoid

-- TODO: get rid of all of those arguments once we have them globally

module _ (accepted? : ∀ Γ es st → Dec (accepted Γ es st))
         (expired? : ∀ e st → Dec (expired e st))
         (delayed? : ∀ a p es d → Dec (delayed a p es d))
         (Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_) where

  NEWEPOCH-total : ∀ {Γ s sig}
                 → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,NEWEPOCH⦈ s'
  NEWEPOCH-total {Γ} {nes} {e} =
    let open NewEpochState nes hiding (es)
        open RatifyState fut using (removed) renaming (es to esW)
        open LState ls
        open CertState certState
        open Acnt acnt

        es = record esW { withdrawals = ∅ᵐ }

        govSt' = filter (¬? ∘ (_∈? map proj₁ removed) ∘ proj₁) govSt

        (_ , pFut) = RATIFY-total accepted? expired? delayed? Computational-ENACT
          {record { currentEpoch = e ; treasury = treasury ; GState gState ; NewEpochEnv Γ }}
          {⟦ es , ∅ , false ⟧ʳ} {govSt'}
    in
    case e ≟ sucᵉ lastEpoch of λ where
      (no ¬p) → -, NEWEPOCH-Not-New ¬p
      (yes p) → -, NEWEPOCH-New p pFut
