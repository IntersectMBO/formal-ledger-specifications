{-# OPTIONS --safe #-}

module Ledger.Conway.Conformance.Equivalence.Bisimilarity where

open import Prelude
open import Data.Product.Base
open import Interface.STS

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

open Bisimilar

bisimilarity*
  : {C Sig S₁ S₂ : Set}
    {STS₁ : C → S₁ → Sig → S₁ → Set}
    {STS₂ : C → S₂ → Sig → S₂ → Set}
  → Bisimilar STS₁ STS₂
  → Bisimilar
      (ReflexiveTransitiveClosure {sts = STS₁})
      (ReflexiveTransitiveClosure {sts = STS₂})

bisimilarity* bsm ._≈_ = bsm ._≈_

bisimilarity* bsm .to eq (BS-base Id-nop) =
  _ , eq , BS-base Id-nop
bisimilarity* bsm .to eq (BS-ind sts₁ sts₁*) =
  let _ ,  eq' , sts₂ = bsm .to eq sts₁
      _ , eq'' , sts₂* = bisimilarity* bsm .to eq' sts₁*
   in
      _ , eq'' , BS-ind sts₂ sts₂*

bisimilarity* bsm .from eq (BS-base Id-nop) =
  _ , eq , BS-base Id-nop
bisimilarity* bsm .from eq (BS-ind sts₂ sts₂*) =
  let _ ,  eq' , sts₁ = bsm .from eq sts₂
      _ , eq'' , sts₁* = bisimilarity* bsm .from eq' sts₂*
   in
      _ , eq'' , BS-ind sts₁ sts₁*
