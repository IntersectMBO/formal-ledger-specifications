{-# OPTIONS --safe #-}

open import Ledger.Prelude.Crypto
open import Ledger.Prelude.Epoch

module Ledger.Conway.Script
  (cs : _) (open CryptoStructure cs)
  (es : _) (open EpochStructure es)
  where

open import Ledger.Conway.Script.Base cs es public
open import Ledger.Conway.Script.Timelock cs es public
