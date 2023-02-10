\section{Token Algebra}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.TokenAlgebra where

open import Ledger.Prelude hiding (T)
open import Data.Integer
open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism
open import Data.Nat.Properties using (+-0-commutativeMonoid)

record TokenAlgebra : Set₁ where
  field  PolicyId : Set
         Value-Commutative-Monoid : CommutativeMonoid 0ℓ 0ℓ

  Coin = ℕ
  MemoryEstimate = ℕ

  open CommutativeMonoid Value-Commutative-Monoid renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public

  field coin     : Value → Coin
        inject   : Coin → Value
        policies : Value → ℙ PolicyId
        size     : Value → MemoryEstimate
        property : coin ∘ inject ≗ id
        coinIsMonoidMorphism : coin Is Value-Commutative-Monoid -CommutativeMonoid⟶ +-0-commutativeMonoid
        _≥ᵗ_ : Value → Value → Set

  field instance DecEq-Value : DecEq Value
\end{code}
