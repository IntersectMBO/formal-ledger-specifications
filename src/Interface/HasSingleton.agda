{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasSingleton (th : Theory) where

open Theory th renaming (Set to ℙ_; ❴_❵ to ❴_❵ˢ)
open import Axiom.Set.Map th
open import Data.Product using (_×_)

record HasSingleton (A B : Set) : Set where
  field
    ❴_❵ : A → B

instance
  HasSingletonSet-Set : {A : Set} → HasSingleton A (ℙ A)
  HasSingletonSet-Set = record { ❴_❵ = ❴_❵ˢ }

  HasSingletonSet-Map : {A B : Set} → HasSingleton (A × B) (Map A B)
  HasSingletonSet-Map = record { ❴_❵ = ❴_❵ᵐ }

open HasSingleton ⦃...⦄ public
