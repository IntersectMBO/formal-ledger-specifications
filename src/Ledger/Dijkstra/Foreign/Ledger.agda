module Ledger.Dijkstra.Foreign.Ledger where

open import Class.Convertible
open import Class.Convertible.Foreign
open import Tactic.Derive.Convertible
open import Foreign.Haskell
open import Foreign.Haskell.Coerce
open import Class.HasHsType
open import Class.HasHsType.Foreign
open import Tactic.Derive.HsType

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Core.Foreign.ExternalFunctions
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Enact
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Foreign.Utxo
open import Ledger.Dijkstra.Foreign.Transaction
open import Ledger.Dijkstra.Specification.Ledger it DummyAbstractFunctions

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

module _ (ext : ExternalFunctions) where

  open import Ledger.Dijkstra.Foreign.ExternalStructures ext hiding (TopLevelTx)
  open import Ledger.Dijkstra.Specification.Ledger.Properties.Computational HSTransactionStructure HSAbstractFunctions

  ledger-step : HsType (LedgerEnv → LedgerState → TopLevelTx → ComputationResult String LedgerState)
  ledger-step = λ lenv lst tx → to (coerce ⦃ TrustMe ⦄ $ compute Computational-LEDGER
    (coerce ⦃ TrustMe ⦄ (from ⦃ Conv-LedgerEnv ⦄ lenv))
    (coerce ⦃ TrustMe ⦄ (from ⦃ Conv-LedgerState ⦄ lst))
    (coerce ⦃ TrustMe ⦄ (from ⦃ Conv-Tx-TxLevelTop ⦄ tx)))

  {-# COMPILE GHC ledger-step as ledgerStep #-}

  ledgers-step : HsType (LedgerEnv → LedgerState → List TopLevelTx → ComputationResult String LedgerState)
  ledgers-step = λ lenv lst txs → to (coerce ⦃ TrustMe ⦄ $ compute Computational-LEDGERS
    (coerce ⦃ TrustMe ⦄ (from ⦃ Conv-LedgerEnv ⦄ lenv))
    (coerce ⦃ TrustMe ⦄ (from ⦃ Conv-LedgerState ⦄ lst))
    (coerce ⦃ TrustMe ⦄ (map (from ⦃ Conv-Tx-TxLevelTop ⦄) txs)))

  {-# COMPILE GHC ledgers-step as ledgersStep #-}
