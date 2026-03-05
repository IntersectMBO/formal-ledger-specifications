---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/Ledger.lagda.md
---
```agda
module Ledger.Conway.Foreign.HSLedger.Ledger where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Certs
open import Ledger.Conway.Foreign.HSLedger.Enact
open import Ledger.Conway.Foreign.HSLedger.Gov
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Transaction
open import Ledger.Conway.Foreign.HSLedger.Utxo
open import Ledger.Conway.Foreign.HSLedger.Cert

open import Ledger.Conway.Conformance.Ledger it it

open import Ledger.Conway.Foreign.ExternalFunctions
open import Foreign.Haskell.Coerce

instance
  HsTy-LEnv = autoHsType LEnv ⊣ withConstructor "MkLEnv"
                              • fieldPrefix "le"
  Conv-LEnv = autoConvert LEnv

  HsTy-LState = autoHsType LState ⊣ withConstructor "MkLState"
  Conv-LState = autoConvert LState

module _ (ext : ExternalFunctions) where
  open import Ledger.Conway.Foreign.HSLedger.ExternalStructures ext hiding (Tx; TxBody; inject)
  open import Ledger.Conway.Conformance.Ledger.Properties HSTransactionStructure HSAbstractFunctions

  ledger-step : HsType (LEnv → LState → Tx → ComputationResult String LState)
  ledger-step = to (coerce ⦃ TrustMe ⦄ $ compute Computational-LEDGER)

  {-# COMPILE GHC ledger-step as ledgerStep #-}

  ledgers-step : HsType (LEnv → LState → List Tx → ComputationResult String LState)
  ledgers-step = λ lenv lst txs →
    to (coerce ⦃ TrustMe ⦄ $ compute Computational-LEDGERS
                                     (coerce ⦃ TrustMe ⦄ lenv)
                                     (coerce ⦃ TrustMe ⦄ lst)
                                     (coerce ⦃ TrustMe ⦄ txs))

  {-# COMPILE GHC ledgers-step as ledgersStep #-}
```
