{-# OPTIONS --safe #-}

module Ledger.Prelude.Base where

open import Data.Nat

Coin = ℕ

open import Level renaming (suc to lsuc)

1ℓ : Level
1ℓ = lsuc 0ℓ

2ℓ : Level
2ℓ = lsuc 1ℓ
