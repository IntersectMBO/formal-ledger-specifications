open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Examples
  (scriptImp : ScriptImplementation ℕ) (open ScriptImplementation scriptImp)
  where

open import ScriptVerification.LedgerImplementation ℕ scriptImp

open Implementation

open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
-- open import Ledger.UTxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure

succeedIf1 : PlutusScript
succeedIf1 zero = false
succeedIf1 (suc zero) = true
succeedIf1 (suc (suc x)) = false

succeedIf1' : ℕ → Bool
succeedIf1' zero = false
succeedIf1' (suc zero) = true
succeedIf1' (suc (suc x)) = false

test : PlutusScript
test x with deserialise x
... | just x₁ = succeedIf1' x₁
... | nothing = false

-- https://github.com/input-output-hk/cardano-node-emulator/blob/main/cardano-node-emulator/src/Cardano/Node/Emulator/Internal/Node/Params.hs
-- https://github.com/cardano-foundation/CIPs/blob/master/CIP-0009/README.md#non-updatable-parameters
initEnv : UTxOEnv
initEnv = record { slot = 0 ;
                   pparams = record
                               { maxBlockSize = 90112
                               ; maxTxSize = 16384
                               ; maxHeaderSize = 1100
                               ; maxValSize = 5000
                               ; maxCollateralInputs = 3
                               ; pv = 8 , 0
                               ; maxTxExUnits = 10000000000 , 14000000
                               ; maxBlockExUnits = 40000000000 , 62000000
                               ; a = 44 -- is this minFeeA?
                               ; b = 155381 -- is this minFeeB?
                               ; minUTxOValue = 2000000 -- min set at 2 ada (Nothing in cardano node emulator)
                               ; poolDeposit = 500000000 -- lovelace
                               ; coinsPerUTxOWord = {!!} --lovelace
                               ; minFeeRefScriptCoinsPerByte = {!!} -- don't know
                               ; prices = tt -- need to fix this
                               ; Emax = 18
                               ; collateralPercentage = {!!}
                               ; costmdls = {!!}
                               ; drepThresholds = {!!}
                               ; poolThresholds = {!!}
                               ; govActionLifetime = {!!}
                               ; govActionDeposit = {!!}
                               ; drepDeposit = {!!}
                               ; drepActivity = {!!}
                               ; ccMinSize = {!!}
                               ; ccMaxTermLength = {!!}
                               ; minimumAVS = {!!}
                               } }

initUTxO : UTxO
initUTxO = {!!}

exTx : Tx
exTx = {!!}

example : Bool
example = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initUTxO)


{-
initState : UTxOState
initState = ?

transaction : Tx
transaction = ?
-}
-- _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set









{-
example : Bool
example = evalScripts (record { body = record
                                         { txins = {!!}
                                         ; txouts = {!!}
                                         ; txfee = 10
                                         ; mint = zero
                                         ; txvldt = nothing , nothing
                                         ; txcerts = {!!}
                                         ; txwdrls = {!!} , {!!}
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
                                         } ; wits = record
                                                    { vkSigs = {!!} ;
                                                      scripts = {!!} ;
                                                      txdats = {!!} ;
                                                      txrdmrs = {!!} }
                                                        ; isValid = true ;
                                                        txAD = nothing }) (((inj₂ succeedIf1) , {!!} , ((10 , 10) , tt)) ∷ {!!})
-}
