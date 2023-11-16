{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasSingleton (th : Theory) where

open Theory th renaming (Set to ℙ_)
open import Axiom.Set.Map th
open import Data.Product using (_×_)

record HasSingleton (A B : Set) : Set where
  field
    ❴_❵ : A → B

instance
  _ : {A : Set} → HasSingleton A (ℙ A)
  _ = record { ❴_❵ = singleton }

  _ : {A B : Set} → HasSingleton (A × B) (Map A B)
  _ = record { ❴_❵ = ❴_❵ᵐ }

open HasSingleton ⦃...⦄ public
