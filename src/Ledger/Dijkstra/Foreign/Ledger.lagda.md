---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Ledger.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Ledger where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Enact
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Foreign.Utxo
open import Ledger.Dijkstra.Foreign.Transaction
open import Ledger.Dijkstra.Specification.Ledger it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Ledger.Properties.Computational it DummyAbstractFunctions

open Computational

instance
  HsTy-SubLedgerEnv = autoHsType SubLedgerEnv ⊣ withConstructor "MkSubLedgerEnv"
                                                • fieldPrefix "sle"
  Conv-SubLedgerEnv = autoConvert SubLedgerEnv

  HsTy-LedgerEnv = autoHsType LedgerEnv ⊣ withConstructor "MkLedgerEnv"
                                          • fieldPrefix "le"
  Conv-LedgerEnv = autoConvert LedgerEnv

  HsTy-LedgerState = autoHsType LedgerState ⊣ withConstructor "MkLedgerState"
                                              • fieldPrefix "ls"
  Conv-LedgerState = autoConvert LedgerState

ledger-step : HsType (LedgerEnv → LedgerState → Tx TxLevelTop → ComputationResult String LedgerState)
ledger-step = to (compute Computational-LEDGER)

{-# COMPILE GHC ledger-step as ledgerStep #-}

ledgers-step : HsType (LedgerEnv → LedgerState → List (Tx TxLevelTop) → ComputationResult String LedgerState)
ledgers-step = to (compute Computational-LEDGERS)

{-# COMPILE GHC ledgers-step as ledgersStep #-}
```
