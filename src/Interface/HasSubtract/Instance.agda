{-# OPTIONS --safe #-}

module Interface.HasSubtract.Instance where

open import Interface.HasSubtract

open import Data.Integer as ℤ using (ℤ)
open import Data.Nat     as ℕ using (ℕ)

-- { needed for subtractSet
open import Prelude using (DecEq)
open import abstract-set-theory.FiniteSetTheory
-- }

private variable
  A : Set

instance
  subtractNat : HasSubtract ℕ ℕ
  subtractNat ._-_ = ℕ._∸_

  subtractInt : HasSubtract ℤ ℤ
  subtractInt ._-_ = ℤ._-_

  subtractNatInt : HasSubtract ℕ ℤ
  subtractNatInt ._-_ = ℤ._⊖_

  subtractSet : ∀ {A} → ⦃ DecEq A ⦄ → HasSubtract (ℙ A) (ℙ A)
  subtractSet {A} ._-_ = _＼_
