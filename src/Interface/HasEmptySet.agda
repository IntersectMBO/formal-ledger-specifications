{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasEmptySet {ℓ} (th : Theory {ℓ}) where

open Theory th using () renaming (Set to ℙ_)

record HasEmptySet (A : Set ℓ) : Set ℓ where
  field
    ∅ : ℙ A
