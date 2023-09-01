{-# OPTIONS --safe #-}

module Interface.HasRawPartialOrder.Instance where

open import Interface.HasRawPartialOrder
open import Data.Integer using (ℤ) renaming (_≤_ to _≤ℤ_)
open import Data.Nat using (ℕ) renaming (_≤_ to _≤ℕ_)
open import Ledger.TokenAlgebra

instance
  leqInt : HasRawPartialOrder ℤ
  leqInt = record { _≤_ = _≤ℤ_ }

  leqNat : HasRawPartialOrder ℕ
  leqNat = record { _≤_ = _≤ℕ_ }


module leqTokenAlgebra (PolicyId : Set)(ta : TokenAlgebra PolicyId)  where

  open TokenAlgebra ta

  instance
    leqTokenAlgebra : HasRawPartialOrder Value
    leqTokenAlgebra = record { _≤_ = _≤ᵗ_ }
