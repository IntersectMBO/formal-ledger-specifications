module Ledger.Conway.Conformance.Foreign.HSLedger.Utxo where

open import Ledger.Conway.Conformance.Foreign.HSLedger.Address
open import Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Conformance.Foreign.HSLedger.Certs
open import Ledger.Conway.Conformance.Foreign.HSLedger.PParams
open import Ledger.Conway.Conformance.Foreign.HSLedger.Transaction

open import Ledger.Conway.Conformance.Utxo it it
open import Ledger.Conway.Conformance.Utxo.Properties it it
open import Ledger.Conway.Conformance.Utxow.Properties it it

instance
  HsTy-UTxOEnv = autoHsType UTxOEnv ⊣ withConstructor "MkUTxOEnv"
                                    • fieldPrefix "ue"
  Conv-UTxOEnv = autoConvert UTxOEnv

  HsTy-UTxOState = autoHsType UTxOState ⊣ withConstructor "MkUTxOState"
  Conv-UTxOState = autoConvert UTxOState

unquoteDecl = do
  hsTypeAlias UTxO

utxo-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxo-step = to (compute Computational-UTXO)

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}
