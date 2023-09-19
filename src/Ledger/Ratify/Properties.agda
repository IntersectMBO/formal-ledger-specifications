{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Ratify.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov govStructure
open import Ledger.Ratify txs

caseEq_of_ : ∀ {a b} {A : Set a} {B : Set b} → (a : A) → ((a' : A) → a ≡ a' → B) → B
caseEq a of f = f a refl

-- TODO: get rid of all of those arguments once we have them globally

module _ (accepted? : ∀ Γ es st → Dec (accepted Γ es st))
         (expired? : ∀ e st → Dec (expired e st))
         (delayed? : ∀ a p es d → Dec (delayed a p es d))
         (Computational-ENACT : Computational _⊢_⇀⦇_,ENACT⦈_) where


  RATIFY'-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY'⦈ s'
  RATIFY'-total {Γ} {⟦ es , removed , d ⟧ʳ} {sig} =
    let open RatifyEnv Γ; st = proj₂ sig; open GovActionState st
        open Computational Computational-ENACT
    in
    case accepted? Γ es st of λ where
      (no ¬p) → case expired? currentEpoch st of λ where
        (no ¬q) → -, RATIFY-Continue (inj₁ (¬p , ¬q))
        (yes p)  → -, RATIFY-Reject ¬p p
      (yes p) → case delayed? action prevAction es d of λ where
        (no ¬q) → caseEq (compute ⟦ sig .proj₁ , treasury , currentEpoch ⟧ᵉ es action) of λ where
          (just x) eq → -, RATIFY-Accept p ¬q (≡-just⇔STS .Equivalence.to eq)
          nothing  eq → -, RATIFY-Continue (inj₂ (inj₂ (p , ¬q , nothing⇒∀¬STS eq)))
        (yes q) → -, RATIFY-Continue (inj₂ (inj₁ q))

  RATIFY-total : ∀ {Γ s sig} → ∃[ s' ] Γ ⊢ s ⇀⦇ sig ,RATIFY⦈ s'
  RATIFY-total = SS-total⇒BS-total RATIFY'-total
