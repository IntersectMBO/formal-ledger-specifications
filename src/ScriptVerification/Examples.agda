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


example : Bool
example = evalScripts exTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)

getData : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel) → List Implementation.Data
getData [] = []
getData ((fst , fst₁ , snd) ∷ x₁) = fst₁ ++ getData x₁

exampleRunScript : Bool
exampleRunScript = ⟦ succeedIf1 ⟧, tt , ( 1000 , 1000 ) , getData h
  where h = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)

exampleRunScript' : Bool
exampleRunScript' = ⟦ succeedIf1 ⟧, tt , ( 1000 , 1000 ) , (1 ∷ 0 ∷ [])

getState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
getState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx initState)

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
                         ; txid = 6
                         ; collateral = ∅
                         ; reqSigHash = ∅ -- maybe need this
                         ; scriptIntHash = nothing -- not sure
                         } ;
                wits = record { vkSigs = ∅ ;
                                scripts = Ledger.Prelude.fromList ((inj₂ succeedIf1) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = ∅ } ;
                isValid = false ;
                txAD = nothing }



getState' : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
getState' = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) exTx' initState')

getScripts : _
getScripts = scriptsNeeded initState' (Tx.body exTx')

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList

  _ : getState ≡ []
  _ = refl

  _ : example ≡ true
  _ = refl

  _ : getScripts ≡ ∅
  _ = {!refl!}

  _ : getState' ≡ []
  _ = {!!}


exampleRunScript'' : Bool
exampleRunScript'' with getState
... | [] = false
... | x ∷ [] = false
... | x ∷ x₁ ∷ ans = ⟦ succeedIf1 ⟧, tt , ( 1000 , 1000 ) , (1 ∷ 0 ∷ [])

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
