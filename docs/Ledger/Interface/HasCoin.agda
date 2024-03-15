{-# OPTIONS --safe #-}

module Ledger.Interface.HasCoin where

open import Prelude
open import Ledger.Prelude.Base

record HasCoin {a} (A : Set a) : Set a where
  field getCoin : A → Coin

open HasCoin ⦃...⦄ public
