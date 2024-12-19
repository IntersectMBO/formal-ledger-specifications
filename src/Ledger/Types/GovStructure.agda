{-# OPTIONS --safe #-}

module Ledger.Types.GovStructure where

open import Prelude using (Type)
open import Class.DecEq
open import Ledger.Crypto
open import Ledger.Script
open import Ledger.Types.Epoch
open import Ledger.Types
import Ledger.PParams

record GovStructure : Type₁ where
  field TxId DocHash : Type
        ⦃ DecEq-TxId ⦄ : DecEq TxId

  field types : _
  open TypesStructure types public

  field crypto : _
  open Crypto crypto public

  field epochStructure : _
  open EpochStructure epochStructure public

  field scriptStructure : ScriptStructure types crypto epochStructure
  open ScriptStructure scriptStructure public

  open Ledger.PParams types crypto epochStructure scriptStructure public

  field govParams : GovParams
  open GovParams govParams public

  field globalConstants : _
  open GlobalConstants globalConstants public

  open import Ledger.Address Network KeyHash ScriptHash public
