{-# OPTIONS --safe #-}

module Ledger.Conway.Governance.Base where

open import Prelude using (Type)
open import Class.DecEq
open import Ledger.Conway.Crypto
open import Ledger.Conway.Script.Base
open import Ledger.Conway.Types.Epoch
import Ledger.Conway.PParams

record GovStructure : Type₁ where
  field TxId DocHash : Type
        ⦃ DecEq-TxId ⦄ : DecEq TxId

  field crypto : _
  open Crypto crypto public

  field epochStructure : _
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure crypto epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.Conway.PParams crypto epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  field globalConstants : _
  open GlobalConstants globalConstants public

  open import Ledger.Conway.Address Network KeyHash ScriptHash public
