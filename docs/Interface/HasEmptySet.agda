{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasEmptySet (th : Theory) where

open Theory th renaming (Set to ℙ_; ∅ to ∅ˢ)
open import Axiom.Set.Map th

record HasEmptySet (A : Set) : Set where
  field
    ∅ : A

instance
  HasEmptySet-Set : {A : Set} → HasEmptySet (ℙ A)
  HasEmptySet-Set = record { ∅ = ∅ˢ }

  HasEmptySet-Map : {A B : Set} → HasEmptySet (Map A B)
  HasEmptySet-Map = record { ∅ = ∅ᵐ }

open HasEmptySet ⦃...⦄ public
