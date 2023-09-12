{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ratify.Properties (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.Gov TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open import Ledger.Ratify txs

open Computational

caseEq_of_ : ∀ {a b} {A : Set a} {B : Set b} → (a : A) → ((a' : A) → a ≡ a' → B) → B
caseEq a of f = f a refl

-- TODO: get rid of all of those arguments once we have them globally

module _ (accepted? : ∀ Γ es st → Dec (accepted Γ es st))
         (expired? : ∀ e st → Dec (expired e st))
         (delayed? : ∀ a p es d → Dec (delayed a p es d))
         (Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_) where

  RATIFY'-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
  RATIFY'-total {Γ} {⟦ es , removed , d ⟧ʳ} {sig} =
    let open RatifyEnv Γ; st = proj₂ sig; open GovActionState st in
    case accepted? Γ es st , expired? currentEpoch st , delayed? action prevAction es d of λ where
      (no ¬p , no ¬p₁ , _) → -, RATIFY-Continue (inj₁ (¬p , ¬p₁))
      (no ¬p , yes p , _) → -, RATIFY-Reject ¬p p
      (yes p , _ , no ¬p₁) → caseEq (compute Computational-ENACT ⟦ proj₁ sig , treasury ⟧ᵉ es action) of λ where
        (just x) eq → -, RATIFY-Accept p ¬p₁ (Equivalence.to (≡-just⇔STS Computational-ENACT) eq)
        nothing eq  → -, RATIFY-Continue (inj₂ (inj₂ (p , ¬p₁ , nothing⇒∀¬STS Computational-ENACT eq)))
      (yes p , _ , yes p₁) → -, RATIFY-Continue (inj₂ (inj₁ p₁))

  RATIFY-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
  RATIFY-total = SS-total⇒BS-total RATIFY'-total
