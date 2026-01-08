{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

module L where
  open import Ledger.Conway.Specification.Ledger txs abs public
  open import Ledger.Conway.Specification.Certs govStructure public

module C where
  open import Ledger.Conway.Conformance.Ledger txs abs public

open import Ledger.Conway.Conformance.Equivalence.Certs txs abs


instance
  LStateToConf : L.Deposits × L.Deposits ⊢ L.LState ⭆ C.LState
  LStateToConf .convⁱ deposits ledgerSt =
    let open L.LState ledgerSt in
    ⟦ utxoSt , govSt , deposits ⊢conv certState ⟧

  LStateFromConf : C.LState ⭆ L.LState
  LStateFromConf .convⁱ _ ls =
    let open C.LState ls in
    ⟦ utxoSt , govSt , conv certState ⟧
