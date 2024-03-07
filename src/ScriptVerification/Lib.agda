open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Lib (D : Set)
  (scriptImp : ScriptImplementation D) (open ScriptImplementation scriptImp)
  where

open import ScriptVerification.LedgerImplementation D scriptImp

open Implementation

open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure

open import Data.Rational

createEnv : ℕ → UTxOEnv
createEnv s = record { slot = s ;
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
                               ; coinsPerUTxOWord = 4310 --lovelace (coinsPetUTxoByte)
                               ; minFeeRefScriptCoinsPerByte = 1ℚ -- unknown for now
                               ; prices = tt -- need to fix this
                               ; Emax = 18
                               ; collateralPercentage = 150
                               ; costmdls = tt -- need to add this
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
                               ; minimumAVS = 0 --unknown set
                               } }

createUTxO : (index : ℕ)
           → (wallet : ℕ)
           → (value : Value)
           → (Maybe D)
           → TxIn × TxOut
createUTxO index wallet value d = (index , index)
                                , (inj₁ (record { net = tt ; pay = inj₁ wallet ; stake = inj₁ wallet })
                                  , value , d)

createInitUtxoState : (wallets : ℕ)
                    → (value : Value)
                    → List (TxIn × TxOut)
createInitUtxoState zero value = []
createInitUtxoState (suc wallet) value = createUTxO (suc wallet) (suc wallet) value nothing
                                         ∷ createInitUtxoState wallet value

fromList : List (TxIn × TxOut) → UTxO
fromList xs = fromListᵐ xs

helpMe : UTxOState
helpMe = {!!}

createTx : Tx
createTx = record { body = record
                             { txins = {!!}
                             ; txouts = {!!}
                             ; txfee = {!!}
                             ; mint = {!!}
                             ; txvldt = {!!}
                             ; txcerts = {!!}
                             ; txwdrls = {!!}
                             ; txvote = {!!}
                             ; txprop = {!!}
                             ; txdonation = {!!}
                             ; txup = {!!}
                             ; txADhash = {!!}
                             ; netwrk = {!!}
                             ; txsize = {!!}
                             ; txid = {!!}
                             ; collateral = {!!}
                             ; reqSigHash = {!!}
                             ; scriptIntHash = {!!}
                             }
                  ; wits = record { vkSigs = {!!}
                                  ; scripts = {!!}
                                  ; txdats = {!!}
                                  ; txrdmrs = {!!} }
                  ; isValid = {!!}
                  ; txAD = {!!} }

-- exTx : Tx
-- exTx = {!!}

-- example : Bool
-- example = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initUTxO)
