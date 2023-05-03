{-# OPTIONS --safe #-}

module Ledger.Prelude.Base where

open import Data.Nat using (ℕ ; _≤?_; _≤_) public
open import Data.Nat.Properties using (+-0-monoid ; +-0-commutativeMonoid) public
open import Data.Integer using (ℤ ; _⊖_) public

Coin = ℕ

open import Level renaming (suc to lsuc)

1ℓ : Level
1ℓ = lsuc 0ℓ

2ℓ : Level
2ℓ = lsuc 1ℓ
