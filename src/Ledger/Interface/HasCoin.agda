{-# OPTIONS --safe #-}

module Ledger.Interface.HasCoin where

open import Prelude

private
  Coin = ℕ

record HasCoin {a} (A : Set a) : Set a where
  field getCoin : A → Coin

open HasCoin ⦃...⦄ public
