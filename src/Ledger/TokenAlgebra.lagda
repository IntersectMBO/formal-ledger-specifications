\section{Token Algebra}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.TokenAlgebra where

open import Ledger.Prelude

open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism
open import Data.Integer
open import Data.Nat.Properties using (+-0-commutativeMonoid)

record TokenAlgebra : Set₁ where
  field PolicyId : Set
        Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  MemoryEstimate = ℕ

  open CommutativeMonoid Value-CommutativeMonoid using (_≈_; ε)
       renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public

  field coin     : Value → Coin
        inject   : Coin → Value
        policies : Value → ℙ PolicyId
        size     : Value → MemoryEstimate
        _≥ᵗ_      : Value → Value → Set

        property             : coin ∘ inject ≗ id
        coinIsMonoidMorphism : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid

        instance DecEq-Value : DecEq Value

  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)
\end{code}
