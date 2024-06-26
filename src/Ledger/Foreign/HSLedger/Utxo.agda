module Ledger.Foreign.HSLedger.Utxo where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.Certs
open import Ledger.Foreign.HSLedger.PParams
open import Ledger.Foreign.HSLedger.Transaction

open import Ledger.Utxo it it
open import Ledger.Utxo.Properties it it
open import Ledger.Utxow.Properties it it

instance
  HsTy-UTxOEnv = autoHsType UTxOEnv
  Conv-UTxOEnv = autoConvert UTxOEnv

  HsTy-UTxOState = autoHsType' UTxOState (⟦_,_,_,_⟧ᵘ ↦ "MkUTxOState" ∷ [])
  Conv-UTxOState = autoConvert UTxOState

utxo-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxo-step = to (compute Computational-UTXO)

{-# COMPILE GHC utxo-step as utxoStep #-}

utxo-step' : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxo-step' = to (compute Computational-UTXO')

{-# COMPILE GHC utxo-step' as utxoStep' #-}

utxow-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}
