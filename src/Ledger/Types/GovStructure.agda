{-# OPTIONS --safe #-}

module Ledger.Types.GovStructure where

open import Class.DecEq
open import Ledger.Crypto
open import Ledger.Script
open import Ledger.Types.Epoch
import Ledger.PParams

record GovStructure : Set₁ where
  field TxId DocHash : Set
        ⦃ DecEq-TxId ⦄ : DecEq TxId

  field crypto : _
  open Crypto crypto public

  field epochStructure : _
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure crypto epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.PParams crypto epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  field globalConstants : _
  open GlobalConstants globalConstants public

  open import Ledger.Address Network KeyHash ScriptHash public
