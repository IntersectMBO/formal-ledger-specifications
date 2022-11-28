\section{Token Algebra}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.TokenAlgebra where

open import Ledger.Prelude hiding (T)
open import Data.Integer
open import Algebra using (CommutativeMonoid)

record TokenAlgebra : Set₁ where
  field  PolicyId : Set
         Value : CommutativeMonoid 0ℓ 0ℓ

  Coin = ℕ
  MemoryEstimate = ℕ

  open CommutativeMonoid Value renaming (Carrier to ValueC; refl to reflValue) public

  field coin     : ValueC → Coin
  field inject   : Coin → ValueC
  field policies : ValueC → ℙ PolicyId
  field size     : ValueC → MemoryEstimate
  field property : coin ∘ inject ≗ id

  --field _≥ᵗ_ : ValueC → ValueC → Set

  field instance DecEq-ValueC : DecEq ValueC
\end{code}
