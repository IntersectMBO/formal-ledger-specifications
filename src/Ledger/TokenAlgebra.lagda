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
         Value : CommutativeMonoid 0ℓ 0ℓ

  -- rename to Value-Commutative-Monoid

  Coin = ℕ
  MemoryEstimate = ℕ

  open CommutativeMonoid Value renaming (Carrier to ValueC; refl to reflValue; _∙_ to _+ᵛ_) public

  field coin     : ValueC → Coin
  field inject   : Coin → ValueC
  field policies : ValueC → ℙ PolicyId
  field size     : ValueC → MemoryEstimate
  field property : coin ∘ inject ≗ id


  field relImpliesCoinEquality : ∀{v1 v2} → v1 ≈ v2 → coin v1 ≡ coin v2
  field coin-monoid-morphism : coin Is Value -CommutativeMonoid⟶ +-0-commutativeMonoid
  field _≥ᵗ_ : ValueC → ValueC → Set


  field instance DecEq-ValueC : DecEq ValueC
\end{code}
