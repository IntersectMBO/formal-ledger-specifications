module Ledger.Foreign.HSLedger.Ledger where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.PParams
open import Ledger.Foreign.HSLedger.Transaction
open import Ledger.Foreign.HSLedger.Cert
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Utxo
open import Ledger.Foreign.HSLedger.Gov
open import Ledger.Foreign.HSLedger.Certs

open import Ledger.Ledger it it
open import Ledger.Ledger.Properties it it

instance
  -- These are "duplicate" because of the duplicate STSs
  HsTy-GState = autoHsType' GState (⟦_,_⟧ᵛ ↦ "MkGState" ∷ [])
  Conv-GState = autoConvert GState

  HsTy-DState = autoHsType' DState (⟦_,_,_⟧ᵈ ↦ "MkDState" ∷ [])
  Conv-DState = autoConvert DState

  HsTy-CertState = autoHsType' CertState (⟦_,_,_⟧ᶜˢ ↦ "MkCertState" ∷ [])
  Conv-CertState = autoConvert CertState

  HsTy-LEnv = autoHsType' LEnv (⟦_,_,_,_,_⟧ˡᵉ ↦ "MkLEnv" ∷ [])
  Conv-LEnv = autoConvert LEnv

  HsTy-LState = autoHsType' LState (⟦_,_,_⟧ˡ ↦ "MkLState" ∷ [])
  Conv-LState = autoConvert LState

ledger-step : HsType (LEnv → LState → Tx → ComputationResult String LState)
ledger-step = to (compute Computational-LEDGER)

{-# COMPILE GHC ledger-step as ledgerStep #-}

ledgers-step : HsType (LEnv → LState → List Tx → ComputationResult String LState)
ledgers-step = to (compute Computational-LEDGERS)

{-# COMPILE GHC ledgers-step as ledgersStep #-}
