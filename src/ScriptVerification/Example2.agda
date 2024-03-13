open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Example2 where

open import ScriptVerification.LedgerImplementation2
open import ScriptVerification.Lib2

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
succeedIf1 = "hello world"

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

getState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
getState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)

example : Bool
example = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList

  _ : getState ≡ []
  _ = refl

  _ : example ≡ true
  _ = refl


-- getState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
-- getState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)


getState' : Maybe (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
getState' = collectPhaseTwoScriptInputs' (UTxOEnv.pparams initEnv) exTx initState ((Mint succeedIf1) , succeedIf1)

example'' : Bool
example'' with Ledger.Prelude._≟_
               (evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState))
               true
... | no ¬a = {!!}
... | yes a = {!!}

example2 : Bool
example2 with Ledger.Prelude._≟_
              (not true)
              true
... | no ¬a = {!!}


{-
initState : UTxOState
initState = ?

transaction : Tx
transaction = ?
-}
-- _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set
