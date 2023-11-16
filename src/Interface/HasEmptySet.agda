{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasEmptySet {ℓ} (th : Theory {ℓ}) where

open Theory th using () renaming (Set to ℙ_)

record HasEmptySet (A : Set ℓ) : Set ℓ where
  field
    ∅ : A

instance
  _ : {A : Set} → HasEmptySet (ℙ A)
  _ = record { ∅ = ∅ˢ }

  _ : {A B : Set} → HasEmptySet (Map A B)
  _ = record { ∅ = ∅ᵐ }
