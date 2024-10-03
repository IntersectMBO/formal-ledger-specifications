{-# OPTIONS --safe #-}

module Ledger.Conway.Conformance.Types.GovStructure where

open import Prelude using (Type)
open import Class.DecEq
open import Ledger.Conway.Conformance.Crypto
open import Ledger.Conway.Conformance.Script
open import Ledger.Conway.Conformance.Types.Epoch
import Ledger.Conway.Conformance.PParams

record GovStructure : Type₁ where
  field TxId DocHash : Type
        ⦃ DecEq-TxId ⦄ : DecEq TxId

  field crypto : _
  open Crypto crypto public

  field epochStructure : _
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure crypto epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.Conway.Conformance.PParams crypto epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  field globalConstants : _
  open GlobalConstants globalConstants public

  open import Ledger.Conway.Conformance.Address Network KeyHash ScriptHash public
