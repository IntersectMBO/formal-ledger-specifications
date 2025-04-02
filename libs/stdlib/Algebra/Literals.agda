{-# OPTIONS --without-K --safe #-}

module Algebra.Literals where

open import Algebra

open import Agda.Builtin.FromNat
open import Agda.Builtin.FromNeg
open import Level

variable a b : Level

module Semiring-Lit (R : Semiring a b) where
  open Semiring R

  open import Data.Unit.Polymorphic
  open import Data.Nat using (ℕ; zero; suc)

  private
    ℕ→R : ℕ → Carrier
    ℕ→R zero    = 0#
    ℕ→R (suc n) = 1# + ℕ→R n

  instance
    number : Number Carrier
    number .Number.Constraint = λ _ → ⊤
    number .fromNat           = λ n → ℕ→R n
