{-# OPTIONS --safe #-}

module Ledger.Prelude.Base where

open import Data.Nat using (ℕ)
open import Level

Coin = ℕ

1ℓ 2ℓ : Level
1ℓ = suc 0ℓ
2ℓ = suc 1ℓ
