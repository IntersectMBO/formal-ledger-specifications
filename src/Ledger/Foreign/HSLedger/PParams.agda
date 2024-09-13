module Ledger.Foreign.HSLedger.PParams where

open import Ledger.Foreign.HSLedger.BaseTypes

instance
  HsTy-DrepThresholds = autoHsType DrepThresholds
  Conv-DrepThresholds = autoConvert DrepThresholds

  HsTy-PoolThresholds = autoHsType PoolThresholds
  Conv-PoolThresholds = autoConvert PoolThresholds

  HsTy-Acnt = autoHsType Acnt ⊣ withConstructor "MkAcnt"
  Conv-Acnt = autoConvert Acnt

  HsTy-PParams = autoHsType PParams ⊣ withConstructor "MkPParams"
                                    • fieldPrefix "pp"
  Conv-PParams = autoConvert PParams

  HsTy-PParamsUpdate = autoHsType PParamsUpdate.PParamsUpdate ⊣ withConstructor "MkPParamsUpdate"
                                                              • fieldPrefix "ppu"
  Conv-PParamsUpdate = autoConvert PParamsUpdate.PParamsUpdate
