open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Examples where

scriptImp : ScriptImplementation ℕ ℕ
scriptImp = record { serialise = id ;
                     deserialise = λ x → just x ;
                     toData' = λ x → 9999999 }


open import ScriptVerification.LedgerImplementation ℕ ℕ scriptImp
open import ScriptVerification.Lib ℕ ℕ scriptImp

open Implementation

open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure

-- succeed if the datum is 1
succeedIf1' : Maybe ℕ → Maybe ℕ → Bool
succeedIf1' (just (suc zero)) _ = true
succeedIf1' _ _ = false

succeedIf1 : PlutusScript
succeedIf1 = 777 , applyScript succeedIf1'

--succeed if the redeemer is 1
succeedIf1Redeemer' : Maybe ℕ → Maybe ℕ → Bool
succeedIf1Redeemer' _ (just (suc zero)) = true
succeedIf1Redeemer' _ _ = false

succeedIf1Redeemer : PlutusScript
succeedIf1Redeemer = 888 , applyScript succeedIf1Redeemer'

{-
test : PlutusScript
test x y with deserialise x
... | just x₁ = succeedIf1' x₁ y
... | nothing = false
-}

initEnv : UTxOEnv
initEnv = createEnv 0

initState : UTxO
initState = fromList' (createInitUtxoState 5 10)

-- initTxOut for script with datum reference
initTxOut : TxOut
initTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 10 , just 99

-- initTxOut for script without datum reference
initTxOut' : TxOut
initTxOut' = inj₁ (record { net = tt ;
                           pay = inj₂ 888 ;
                           stake = inj₂ 888 })
                           , 10 , nothing

script : TxIn × TxOut
script = (6 , 6) , initTxOut

script' : TxIn × TxOut
script' = (6 , 6) , initTxOut'

initState' : UTxO
initState' = fromList' (script ∷ (createInitUtxoState 5 10))

initState'' : UTxO
initState'' = fromList' (script' ∷ (createInitUtxoState 5 10))

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
                                txdats = fromListᵐ ((99 , 1) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) , 5 , (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

getState' : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
getState' = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx' initState')

getScripts : _
getScripts = scriptsNeeded initState' (Tx.body exTx')

helpMe : Maybe (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel) → Bool
helpMe (just x) = true
helpMe nothing = false

example2 : Bool
example2 = evalScripts exTx' (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx' initState')

exampleDatum : List Datum
exampleDatum = getDatum exTx' initState' (Spend (6 , 6))

exTx'' : Tx
exTx'' = record { body = record
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
                                scripts = Ledger.Prelude.fromList ((inj₂ succeedIf1Redeemer) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , 6) , 1 , (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }


example3 : Bool
example3 = evalScripts exTx'' (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx'' initState'')

open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions

initUtxoState : UTxOState
initUtxoState = ⟦ initState'' , 0 , fromListᵐ [] , 0 ⟧ᵘ

testThis : ComputationResult String UTxOState
testThis = UTXO-step initEnv initUtxoState exTx''

isSuccess : ComputationResult String UTxOState → Bool
isSuccess (success x) = true
isSuccess (failure x) = false

exampleDatum' : List Datum
exampleDatum' = getDatum exTx'' initState'' (Spend (6 , 6))

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList

  _ : getState ≡ []
  _ = refl

  _ : example ≡ true
  _ = refl

  test2 : lookupScriptHash 777 exTx' ≡ just (inj₂ succeedIf1)
  test2 = refl

  _ : exampleDatum ≡ 1 ∷ []
  _ = refl

  -- _ : getState' ≡ []
  -- _ = {!refl!}
  --

  _ : exampleDatum' ≡ []
  _ = refl

  _ : example2 ≡ true
  _ = refl

  _ : example3 ≡ true
  _ = refl

exampleRunScript' : Bool
exampleRunScript' = ⟦ succeedIf1 ⟧, tt , ( 1000 , 1000 ) , (1 ∷ 0 ∷ [])


-- UTXO-step : UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState
