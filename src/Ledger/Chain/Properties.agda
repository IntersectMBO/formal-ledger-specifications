{-# OPTIONS --safe #-}

open import Data.Nat.Properties hiding (_≟_)

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Chain.Properties (⋯ : _) (open TransactionStructure ⋯) where

open import Ledger.Ratify ⋯
open import Ledger.Chain ⋯
open import Ledger.Ledger ⋯
open import Ledger.Ratify.Properties ⋯

-- TODO: get rid of all of those arguments once we have them globally

module _ (accepted? : ∀ Γ es st → Dec (accepted Γ es st))
         (expired? : ∀ e st → Dec (expired e st))
         (delayed? : ∀ a p es d → Dec (delayed a p es d))
         (Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_) where

  NEWEPOCH-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,NEWEPOCH⦈ s'
  NEWEPOCH-total {Γ} {nes} {e} =
    let open NewEpochState nes hiding (es)
        open RatifyState fut using (removed) renaming (es to esW)
        open LState ls; open CertState certState; open Acnt acnt
        es         = record esW { withdrawals = ∅ᵐ }
        govSt'     = filter (¬? ∘ (_∈? map proj₁ removed) ∘ proj₁) govSt
        (_ , pFut) = RATIFY-total accepted? expired? delayed? Computational-ENACT
          {record { currentEpoch = e ; treasury = treasury
                  ; GState gState ; NewEpochEnv Γ }} {⟦ es , ∅ , false ⟧ʳ} {govSt'}
    in
    case e ≟ sucᵉ lastEpoch of λ where
      (no ¬p) → -, NEWEPOCH-Not-New ¬p
      (yes p) → -, NEWEPOCH-New p pFut
