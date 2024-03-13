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

script : TxIn × TxOut
script = (6 , 6) , initTxOut

initState' : UTxO
initState' = fromList' (script ∷ (createInitUtxoState 5 10))

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

exTx' : Tx
exTx' = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ [])
                         ; txouts = ∅ -- fromListIx ((6 , initTxOut) ∷ [])
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
                         ; txid = 7
                         ; collateral = ∅
                         ; reqSigHash = ∅ -- maybe need this
                         ; scriptIntHash = nothing -- not sure
                         } ;
                wits = record { vkSigs = ∅ ;
                                scripts = Ledger.Prelude.fromList ((inj₂ succeedIf1) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , 6) , ("hello" , 5 , 5)) ∷ []) } ;
                isValid = false ;
                txAD = nothing }



getState' : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
getState' = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx' initState')

getScripts : _
getScripts = scriptsNeeded initState' (Tx.body exTx')

helpMe : Maybe (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel) → Bool
helpMe (just x) = true
helpMe nothing = false

example2 : Bool
example2 = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx' initState')

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList

  _ : getState ≡ []
  _ = refl

  _ : example ≡ true
  _ = refl

  test2 : lookupScriptHash succeedIf1 exTx' ≡ just (inj₂ succeedIf1)
  test2 = refl

  _ : example2 ≡ false
  _ = refl

{-
  _ : getState'' ≡ nothing
  _ = {!!}

  _ : getScripts ≡ ∅
  _ = {!refl!}

  _ : indexedRdmrs exTx' (Spend (6 , 6)) ≡ nothing
  _ = {!refl!}

  _ : getState' ≡ []
  _ = {!!}
-}
