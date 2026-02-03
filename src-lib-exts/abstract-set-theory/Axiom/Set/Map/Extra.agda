{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module abstract-set-theory.Axiom.Set.Map.Extra (th : Theory) where

open import abstract-set-theory.Prelude using (Type; ¬_)
open import Axiom.Set.Map th

private variable
  A : Type
  B : Type

infix 4 _≢ᵐ_

_≢ᵐ_ : Map A B → Map A B → Type
a ≢ᵐ b = ¬ a ≡ᵐ b
