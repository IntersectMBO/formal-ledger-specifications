{-# OPTIONS --safe #-}

module Interface.HasAggregate.Instance where

open import Interface.HasAggregate
open import Data.Integer as ℤ using (ℤ)
open import Data.Nat     as ℕ using (ℕ)

instance
  addInt : HasAggregate ℤ
  addInt ._+_ = ℤ._+_

  addNat : HasAggregate ℕ
  addNat ._+_ = ℕ._+_
