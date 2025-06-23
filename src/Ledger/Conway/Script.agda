{-# OPTIONS --safe #-}

open import Ledger.Conway.Crypto
open import Ledger.Conway.Types.Epoch

module Ledger.Conway.Script
  (crypto : _) (open Crypto crypto)
  (es     : _) (open EpochStructure es)
  where

open import Ledger.Conway.Script.Base crypto es public
open import Ledger.Conway.Script.Timelock crypto es public
