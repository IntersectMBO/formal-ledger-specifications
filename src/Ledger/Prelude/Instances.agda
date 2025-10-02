{-# OPTIONS --safe #-}

module Ledger.Prelude.Instances where

open import Prelude
open import Ledger.Prelude.Base
open import Ledger.Prelude.HasCoin
open import Interface.HasSubtract
open import Interface.HasSubset

open import abstract-set-theory.FiniteSetTheory
  renaming (_⊆_ to _⊆ˢ_)

instance
  CommMonoid-ℕ-+ = NonUniqueInstances.CommMonoid-ℕ-+

  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = ∑[ x ← s ] x

  HasCoin-Set : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (ℙ (A × Coin))
  HasCoin-Set .getCoin s = ∑ˢ[ (a , c) ← s ] c

  HasSubset-Set : ∀ {A} → HasSubset (ℙ A)
  HasSubset-Set ._⊆_ = _⊆ˢ_

  HasSubtract-ℙ : ∀ {A} → ⦃ DecEq A ⦄ → HasSubtract (ℙ A) (ℙ A)
  HasSubtract-ℙ {A} ._-_ = _＼_

  HasSubset-Map : {A B : Set} → HasSubset (A ⇀ B)
  HasSubset-Map {A} {B} ._⊆_ m₁ m₂ = {k : A} {v : B} → (k , v) ∈ (m₁ ˢ) → (k , v) ∈ (m₂ ˢ)


