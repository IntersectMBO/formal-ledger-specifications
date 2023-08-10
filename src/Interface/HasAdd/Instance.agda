{-# OPTIONS --safe #-}
module Interface.HasAdd.Instance where

open import Interface.HasAdd
open import Data.Integer using (ℤ) renaming (_+_ to _+ℤ_)
open import Data.Nat using (ℕ) renaming (_+_ to _+ℕ_)

instance
  addInt : HasAdd ℤ
  addInt = record { _+_ = _+ℤ_ }

  addNat : HasAdd ℕ
  addNat = record { _+_ = _+ℕ_ }
