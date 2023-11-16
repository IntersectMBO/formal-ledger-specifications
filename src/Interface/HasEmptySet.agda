{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasEmptySet (th : Theory) where

open Theory th renaming (Set to ℙ_)
open import Axiom.Set.Map th

record HasEmptySet (A : Set) : Set where
  field
    ∅ : A

instance
  _ : {A : Set} → HasEmptySet (ℙ A)
  _ = record { ∅ = ∅ˢ }

  _ : {A B : Set} → HasEmptySet (Map A B)
  _ = record { ∅ = ∅ᵐ }

open HasEmptySet ⦃...⦄ public
