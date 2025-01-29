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

test : PParamsUpdate
test = record 
  { maxBlockSize = nothing 
  ; maxTxSize = nothing 
  ; maxHeaderSize = nothing 
  ; maxValSize = nothing 
  ; maxCollateralInputs = nothing 
  ; maxTxExUnits = nothing 
  ; maxBlockExUnits = nothing 
  ; pv = nothing 
  ; a = just 100 
  ; b = nothing 
  ; keyDeposit = nothing 
  ; poolDeposit = nothing 
  ; coinsPerUTxOByte = nothing 
  ; prices = nothing 
  ; minFeeRefScriptCoinsPerByte = nothing 
  ; maxRefScriptSizePerTx = nothing 
  ; maxRefScriptSizePerBlock = nothing 
  ; refScriptCostStride = nothing 
  ; refScriptCostMultiplier = nothing 
  ; minUTxOValue = nothing 
  ; a0 = nothing 
  ; Emax = nothing 
  ; nopt = nothing 
  ; collateralPercentage = nothing 
  ; costmdls = nothing 
  ; drepThresholds = nothing 
  ; poolThresholds = nothing 
  ; govActionLifetime = nothing 
  ; govActionDeposit = nothing 
  ; drepDeposit = nothing 
  ; drepActivity = nothing 
  ; ccMinSize = nothing 
  ; ccMaxTermLength = nothing 
  }

open import Data.Rational using (½; 1ℚ ; mkℚ+ ; _/_)
open import Data.Nat.Coprimality using (Coprime; gcd≡1⇒coprime)
open import Ledger.Ratify
open import Ledger.Conway.Foreign.ExternalFunctions
open import Ledger.Conway.Foreign.HSLedger.ExternalStructures dummyExternalFunctions using (HSTransactionStructure)

pparams : PParams
pparams = record
           { maxBlockSize = 90112
           ; maxTxSize = 16384
           ; maxHeaderSize = 1100
           ; maxValSize = 5000
           ; maxCollateralInputs = 3
           ; pv = 8 , 0
           ; maxTxExUnits = 10000000000 , 14000000
           ; maxBlockExUnits = 40000000000 , 62000000
           ; a = 44
           ; b = 155381
           ; minUTxOValue = 0
           ; poolDeposit = 500000000 -- lovelace
           ; keyDeposit = 500000000 -- lovelace
           ; coinsPerUTxOByte = 0  --lovelace
           -- ^^^ was 4310, but that value resulted in failed tests once
           -- we replaced `minUTxOValue` with `coinsPerUTxOByte`; see `HelloWorld.agda`
           -- line 153: `isSuccess succeedExample ≡ true`
           ; minFeeRefScriptCoinsPerByte = mkℚ+ 15 1 (gcd≡1⇒coprime refl) -- see [1]
           ; prices = tt -- fix this
           ; maxRefScriptSizePerTx = 200 * 1024 -- 200KiB
           ; maxRefScriptSizePerBlock = 1024 * 1024 -- 1MiB
           ; refScriptCostStride  = 25
           ; refScriptCostMultiplier = mkℚ+ 6 5 (gcd≡1⇒coprime refl) -- see [1]
           ; a0 = 1ℚ -- don't know
           ; Emax = 18
           ; nopt = 0 -- don't know
           ; collateralPercentage = 150
           ; costmdls = tt -- fix this
           ; drepThresholds = record -- unknown so setting all to 50%
                                { P1 = ½
                                ; P2a = ½
                                ; P2b = ½
                                ; P3 = ½
                                ; P4 = ½
                                ; P5a = ½
                                ; P5b = ½
                                ; P5c = ½
                                ; P5d = ½
                                ; P6 = ½
                                }
           ; poolThresholds = record
                                { Q1 = ½
                                ; Q2a = ½
                                ; Q2b = ½
                                ; Q4 = ½
                                ; Q5e = ½
                                }
           ; govActionLifetime = 10 -- unknown
           ; govActionDeposit = 1000000 -- unknown (set to 1 ada)
           ; drepDeposit = 1000000 -- unknown (set to 1 ada)
           ; drepActivity = 13 -- unknown
           ; ccMinSize = 10 -- unknown
           ; ccMaxTermLength = 73 -- unknown set to 1 year (73 epochs)
           }

govAction = ChangePParams test

test1 = {!threshold HSTransactionStructure pparams nothing govAction SPO!}
