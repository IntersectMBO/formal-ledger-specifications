{-# OPTIONS --safe #-}

module Interface.HasSubtract.Instance where

open import Interface.HasSubtract

open import Data.Integer as ℤ using (ℤ)
open import Data.Nat     as ℕ using (ℕ)

open import Prelude using (DecEq)
open import abstract-set-theory.FiniteSetTheory

instance
  HasSubtract-ℕ : HasSubtract ℕ ℕ
  HasSubtract-ℕ ._-_ = ℕ._∸_

  HasSubtract-ℤ : HasSubtract ℤ ℤ
  HasSubtract-ℤ ._-_ = ℤ._-_

  HasSubtract-ℕ-ℤ : HasSubtract ℕ ℤ
  HasSubtract-ℕ-ℤ ._-_ = ℤ._⊖_
