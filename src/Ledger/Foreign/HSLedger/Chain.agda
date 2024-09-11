module Ledger.Foreign.HSLedger.Chain where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.NewEpoch
open import Ledger.Foreign.HSLedger.Transaction

open import Ledger.Chain it it
open import Ledger.Chain.Properties it it

instance
  HsTy-ChainState = autoHsType ChainState
  Conv-ChainState = autoConvert ChainState

  HsTy-Block = autoHsType Block
  Conv-Block = autoConvert Block

chain-step : HsType (⊤ → ChainState → Block → ComputationResult String ChainState)
chain-step = to (compute Computational-CHAIN)

{-# COMPILE GHC chain-step as chainStep #-}
