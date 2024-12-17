{-# OPTIONS --safe #-}

module Interface.HasSubset.Instance where

open import abstract-set-theory.FiniteSetTheory hiding (_⊆_)
open import Data.Product using (_,_)

open import Interface.HasSubset

module _ {A B : Set}  where
  _⊆ᵐ_ : (m₁ m₂ : A ⇀ B) → _
  m₁ ⊆ᵐ m₂ = {k : A} {v : B} → (k , v) ∈ (m₁ ˢ) → (k , v) ∈ (m₂ ˢ)

  instance
    subsetMap : HasSubset (A ⇀ B)
    subsetMap ._⊆_ = _⊆ᵐ_
