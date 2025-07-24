{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch

module Ledger.Conway.Specification.Script
  (cs : _) (open CryptoStructure cs)
  (es : _) (open EpochStructure es)
  where

open import Ledger.Conway.Specification.Script.Base cs es public
open import Ledger.Conway.Specification.Script.Timelock cs es public
