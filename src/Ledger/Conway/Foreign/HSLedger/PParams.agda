module Ledger.Conway.Foreign.HSLedger.PParams where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes

instance
  HsTy-DrepThresholds = autoHsType DrepThresholds
    ⊣ withConstructor "MkDrepThresholds"
  Conv-DrepThresholds = autoConvert DrepThresholds

  HsTy-PoolThresholds = autoHsType PoolThresholds
    ⊣ withConstructor "MkPoolThresholds"
  Conv-PoolThresholds = autoConvert PoolThresholds

  HsTy-Acnt = autoHsType Acnt ⊣ withConstructor "MkAcnt"
  Conv-Acnt = autoConvert Acnt

  HsTy-PParams = autoHsType PParams ⊣ withConstructor "MkPParams"
                                    • fieldPrefix "pp"
  Conv-PParams = autoConvert PParams

  HsTy-PParamsUpdate = autoHsType PParamsUpdate.PParamsUpdate ⊣ withConstructor "MkPParamsUpdate"
                                                              • fieldPrefix "ppu"
  Conv-PParamsUpdate = autoConvert PParamsUpdate.PParamsUpdate
