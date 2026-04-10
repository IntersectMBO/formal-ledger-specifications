---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Ledger.lagda.md
---
```agda
module Ledger.Conway.Foreign.Ledger where

open import Foreign.Convertible 
open import Foreign.Convertible.Deriving
open import Foreign.Haskell
open import Foreign.Haskell.Coerce
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.ExternalFunctions
open import Ledger.Conway.Foreign.HSStructures
open import Ledger.Conway.Foreign.Enact
open import Ledger.Conway.Foreign.Gov
open import Ledger.Conway.Foreign.PParams
open import Ledger.Conway.Foreign.Transaction
open import Ledger.Conway.Foreign.Utxo
open import Ledger.Conway.Foreign.Cert
open import Ledger.Conway.Conformance.Ledger it it

open Computational

instance
  HsTy-LEnv = autoHsType LEnv ⊣ withConstructor "MkLEnv"
                              • fieldPrefix "le"
  Conv-LEnv = autoConvert LEnv

  HsTy-LState = autoHsType LState ⊣ withConstructor "MkLState"
  Conv-LState = autoConvert LState

module _ (ext : ExternalFunctions) where
  open import Ledger.Conway.Foreign.ExternalStructures ext hiding (Tx; TxBody; inject)
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
