{-# OPTIONS --safe #-}

module Ledger.Prelude.HasCoin where

open import Prelude
open import Ledger.Prelude.Base

record HasCoin {a} (A : Type a) : Type a where
  field getCoin : A → Coin

open HasCoin ⦃...⦄ public
