
module Ledger.Foreign.HSLedger.PParams where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes

instance

  HsTy-DrepThresholds = autoHsType DrepThresholds
  Conv-DrepThresholds = autoConvert DrepThresholds

  HsTy-PoolThresholds = autoHsType PoolThresholds
  Conv-PoolThresholds = autoConvert PoolThresholds

  HsTy-Acnt = autoHsType Acnt
  Conv-Acnt = autoConvert Acnt

  HsTy-PParams = autoHsType PParams
  Conv-PParams = autoConvert PParams

  HsTy-PParamsUpdate = autoHsType PParamsUpdate.PParamsUpdate
  Conv-PParamsUpdate = autoConvert PParamsUpdate.PParamsUpdate
