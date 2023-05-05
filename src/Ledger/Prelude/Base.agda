{-# OPTIONS --safe #-}

module Ledger.Prelude.Base where

open import Data.Integer public
  using (ℤ ; _⊖_ ; 0ℤ)

open import Data.Nat public
  using (ℕ ; _≤?_; _≤_ ; _<_)

open import Data.Nat.Properties public
  using (+-0-monoid ; +-0-commutativeMonoid; +-assoc; +-comm; +-*-semiring; <-isStrictTotalOrder)

open import Level

Coin = ℕ

1ℓ 2ℓ : Level
1ℓ = suc 0ℓ
2ℓ = suc 1ℓ
