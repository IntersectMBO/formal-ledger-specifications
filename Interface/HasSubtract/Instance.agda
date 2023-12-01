{-# OPTIONS --safe #-}

module Interface.HasSubtract.Instance where

open import Interface.HasSubtract

open import Data.Integer as ℤ using (ℤ)
open import Data.Nat     as ℕ using (ℕ)

instance
  subtractInt : HasSubtract ℤ
  subtractInt ._-_ = ℤ._-_

  subtractNat : HasSubtract ℕ
  subtractNat ._-_ = ℕ._∸_
