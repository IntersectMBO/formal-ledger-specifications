open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Examples
  (scriptImp : ScriptImplementation ℕ) (open ScriptImplementation scriptImp)
  where

open import ScriptVerification.LedgerImplementation ℕ scriptImp
open import ScriptVerification.Lib ℕ scriptImp

open Implementation

open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
-- open import Ledger.UTxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure

open import Data.Rational

succeedIf1 : PlutusScript
succeedIf1 zero _ = false
succeedIf1 (suc zero) _ = true
succeedIf1 (suc (suc x)) _ = false

succeedIf1' : ℕ → ℕ → Bool
succeedIf1' zero _ = false
succeedIf1' (suc zero) _ = true
succeedIf1' (suc (suc x)) _ = false

test : PlutusScript
test x y with deserialise x
... | just x₁ = succeedIf1' x₁ y
... | nothing = false

initEnv : UTxOEnv
initEnv = createEnv 0

initState : UTxO
initState = fromList' (createInitUtxoState 5 10)

initTxOut : TxOut
initTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ succeedIf1 ;
                           stake = inj₂ succeedIf1 })
                           , 10 , nothing

exTx : Tx
exTx = record { body = record
                         { txins = ∅
                         ; txouts = fromListIx ((6 , initTxOut) ∷ [])
                         ; txfee = 10
                         ; mint = 0
                         ; txvldt = nothing , nothing
                         ; txcerts = []
                         ; txwdrls = ∅
                         ; txvote = []
                         ; txprop = []
                         ; txdonation = 0
                         ; txup = nothing
                         ; txADhash = nothing
                         ; netwrk = just tt
                         ; txsize = 10
                         ; txid = 6
                         ; collateral = ∅
                         ; reqSigHash = ∅ -- maybe need this
                         ; scriptIntHash = nothing -- not sure
                         } ;
                wits = record { vkSigs = ∅ ;
                                scripts = ∅ ;
                                txdats = ∅ ;
                                txrdmrs = ∅ } ;
                isValid = false ;
                txAD = nothing }


example : Bool
example = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)

example2 : Bool
example2 = not true


-- scriptsNoTest : {!!}
-- scriptsNoTest = Scripts-No {!!}


{-
initList : List (TxIn × TxOut)
initList = ((1 , 1) , inj₂ (record { net = tt ; pay = inj₁ 1 ; attrsSize = 1 }) , (1 , nothing)) ∷ []

initUTxO : UTxO
initUTxO = fromListᵐ initList

exTx : Tx
exTx = {!!}

example : Bool
example = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initUTxO)
-}


{-
initState : UTxOState
initState = ?

transaction : Tx
transaction = ?
-}
-- _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set
