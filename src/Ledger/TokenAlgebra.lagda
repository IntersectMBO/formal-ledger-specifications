\section{Cryptographic primitives}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.TokenAlgebra where

open import Ledger.Prelude hiding (T)
open import Data.Integer
open import Algebra

record TokenAlgebra : Set₁ where
  field  PolicyId : Set
         Value : CommutativeMonoid 0ℓ 0ℓ

  Coin = ℕ
  MemoryEstimate = ℕ

  open CommutativeMonoid Value renaming (Carrier to ValueC) public

  field coin     : ValueC → Coin
  field inject   : Coin → ValueC
  field policies : ValueC → ℙ PolicyId
  field size     : ValueC → MemoryEstimate
  field property : coin ∘ inject ≗ id

\end{code}
