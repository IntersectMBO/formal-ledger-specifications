{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract
open import Ledger.Types.GovStructure

module Ledger.Interface.HasDowncast.Instance
  (txs : _) (open TransactionStructure txs)
  (gs : _) (open GovStructure gs using (DocHash))
  where

open import Ledger.Interface.HasDowncast

open import Prelude
open import Ledger.Prelude

instance

  HasDowncast-HashProtected-PParams : HasDowncast (HashProtected PParams) PParams
  HasDowncast-HashProtected-PParams ._↓ = proj₁

  HasDowncast-HashProtected-MaybeScriptHash : HasDowncast (HashProtected (DocHash × Maybe ScriptHash)) (Maybe ScriptHash)
  HasDowncast-HashProtected-MaybeScriptHash ._↓ = proj₂ ∘ proj₁ 

