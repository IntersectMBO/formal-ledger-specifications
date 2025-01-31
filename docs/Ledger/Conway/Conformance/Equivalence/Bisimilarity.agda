{-# OPTIONS --safe #-}

module Ledger.Conway.Conformance.Equivalence.Bisimilarity where

open import Data.Product.Base

record Bisimilar {C Sig S₁ S₂ : Set} (_⊢_⇀⦇_⦈₁_ : C → S₁ → Sig → S₁ → Set) (_⊢_⇀⦇_⦈₂_ : C → S₂ → Sig → S₂ → Set) : Set₁ where
  field
    _≈_  : S₁ → S₂ → Set
    to   : ∀ {Γ sig s₁ s₁' s₂}
         → s₁ ≈ s₂
         → Γ ⊢ s₁ ⇀⦇ sig ⦈₁ s₁'
         → ∃[ s₂' ] s₁' ≈ s₂' × Γ ⊢ s₂ ⇀⦇ sig ⦈₂ s₂'
    from : ∀ {Γ sig s₁ s₂ s₂'}
         → s₁ ≈ s₂
         → Γ ⊢ s₂ ⇀⦇ sig ⦈₂ s₂'
         → ∃[ s₁' ] s₁' ≈ s₂' × Γ ⊢ s₁ ⇀⦇ sig ⦈₁ s₁'
