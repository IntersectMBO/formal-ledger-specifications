{-# OPTIONS --safe #-}

module Ledger.GovStructure where

open import Interface.DecEq
open import Ledger.Epoch
open import Ledger.Crypto
import Ledger.PParams

record GovStructure : Set₁ where
  field TxId Network DocHash : Set
        ⦃ DecEq-TxId ⦄ : DecEq TxId
        ⦃ DecEq-Netw ⦄ : DecEq Network

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.PParams epochStructure public

  field govParams : _
  open GovParams govParams public

  field crypto : _
  open Crypto crypto public
  open import Ledger.Address Network KeyHash ScriptHash public
