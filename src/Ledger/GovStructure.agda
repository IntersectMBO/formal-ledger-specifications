{-# OPTIONS --safe #-}

module Ledger.GovStructure where

open import Interface.DecEq
open import Ledger.Epoch
open import Ledger.Crypto
open import Ledger.Script
import Ledger.PParams

record GovStructure : Set₁ where
  field TxId Network DocHash : Set
        ⦃ DecEq-TxId ⦄ : DecEq TxId
        ⦃ DecEq-Netw ⦄ : DecEq Network

  field crypto : _
  open Crypto crypto public

  field epochStructure : _
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure crypto epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.PParams crypto epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  open import Ledger.Address Network KeyHash ScriptHash public
