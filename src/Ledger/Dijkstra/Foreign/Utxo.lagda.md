---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Utxo.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Utxo where

open import Data.Integer using (ℤ)

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
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Foreign.Rewards
open import Ledger.Dijkstra.Foreign.Transaction
open import Ledger.Dijkstra.Specification.Utxo it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Utxow.Properties.Computational it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Utxo.Properties.Computational it DummyAbstractFunctions

open Computational

private
  toHsConstr : String → String
  toHsConstr c = if c ≟ "utxo₀" then "utxo0" else c

instance
  HsTy-DepositsChange = autoHsType DepositsChange ⊣ withConstructor "MkDepositsChange"
                                                    • fieldPrefix "dc"
  Conv-DepositsChange = autoConvert DepositsChange

  HsTy-UTxOEnv = autoHsType UTxOEnv ⊣ withConstructor "MkUTxOEnv"
                                      • fieldPrefix "ue"
                                      • onConstructors toHsConstr
  Conv-UTxOEnv = autoConvert UTxOEnv

  HsTy-SubUTxOEnv = autoHsType SubUTxOEnv ⊣ withConstructor "MkSubUTxOEnv"
                                            • fieldPrefix "sue"
  Conv-SubUTxOEnv = autoConvert SubUTxOEnv

  HsTy-UTxOState = autoHsType UTxOState ⊣ withConstructor "MkUTxOState"
                                          • fieldPrefix "us"
  Conv-UTxOState = autoConvert UTxOState

unquoteDecl = do
  hsTypeAlias UTxO
  
utxo-step : HsType (UTxOEnv × Bool → UTxOState → Tx TxLevelTop → ComputationResult String UTxOState)
utxo-step = to (compute Computational-UTXO)

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : HsType (UTxOEnv → UTxOState → Tx TxLevelTop → ComputationResult String UTxOState)
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}
```
