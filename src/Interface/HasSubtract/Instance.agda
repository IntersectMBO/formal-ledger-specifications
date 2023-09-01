{-# OPTIONS --safe #-}

module Interface.HasSubtract.Instance where

open import Interface.HasSubtract

open import Data.Integer  using (ℤ) renaming (_-_ to _-ℤ_)
open import Data.Nat      using (ℕ) renaming (_∸_ to _-ℕ_)

instance
  subtractInt : HasSubtract ℤ
  subtractInt = record { _-_ = _-ℤ_ }

  subtractNat : HasSubtract ℕ
  subtractNat = record { _-_ = _-ℕ_ }
