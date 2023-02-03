\section{Token Algebra}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.TokenAlgebra where

open import Ledger.Prelude hiding (T)
open import Data.Integer
open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism
open import Data.Nat.Properties using (+-0-commutativeMonoid)


--record TokenAlgebra (size : ℕ) : Set₁ where
record TokenAlgebra : Set₁ where
  field  PolicyId : Set
         Value-Commutative-Monoid : CommutativeMonoid 0ℓ 0ℓ

  Coin = ℕ
  MemoryEstimate = ℕ

  open CommutativeMonoid Value-Commutative-Monoid renaming (Carrier to Value; refl to reflValue; _∙_ to _+ᵛ_) public

  field coin     : Value → Coin
  field inject   : Coin → Value
  field policies : Value → ℙ PolicyId
  field size     : Value → MemoryEstimate
  field property : coin ∘ inject ≗ id


  field relImpliesCoinEquality : ∀{v1 v2} → v1 ≈ v2 → coin v1 ≡ coin v2
  field coin-monoid-morphism : coin Is Value-Commutative-Monoid -CommutativeMonoid⟶ +-0-commutativeMonoid
  field _≥ᵗ_ : Value → Value → Set


  field instance DecEq-Value : DecEq Value
\end{code}
