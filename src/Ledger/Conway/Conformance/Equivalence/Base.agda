
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Equivalence.Base
  (txs : TransactionStructure)
  (abs : AbstractFunctions txs)
  where

open TransactionStructure txs

module L where
  open import Ledger.Ledger txs abs public
  open import Ledger.Utxo txs abs public
  open import Ledger.Utxow txs abs public
  open import Ledger.Certs govStructure public

module C where
  open import Ledger.Conway.Conformance.Ledger txs abs public
  open import Ledger.Conway.Conformance.Utxo txs abs public hiding (module L)
  open import Ledger.Conway.Conformance.Utxow txs abs public
  open import Ledger.Conway.Conformance.Certs govStructure public

open Tx public
