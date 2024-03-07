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

initEnv : UTxOEnv
initEnv = createEnv 0



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
