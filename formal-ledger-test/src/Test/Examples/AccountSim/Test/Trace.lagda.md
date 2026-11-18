---
source_branch: master
source_path: src/Test/Examples/AccountSim/Test/Trace.lagda.md
---
```agda
{-# OPTIONS --safe #-}

module Test.Examples.AccountSim.Test.Trace where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Test.Examples.AccountSim.Datum
open import Test.Examples.AccountSim.OffChain.OffChain
open import Test.Examples.AccountSim.Validator
open import Test.Prelude AccountSimData
open import Test.SymbolicData AccountSimData
open import Test.LedgerImplementation SData SData
open import Test.AbstractImplementation valContext
open import Test.Lib valContext

open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxo.Properties.Computational SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxow.Properties.Computational SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation

multiSigScript : PlutusScript
multiSigScript = 777 , applyScriptWithContext (accSimValidator)

initEnv : UTxOEnv
initEnv = createEnv 0

initTxOut : TxOut
initTxOut = inj₁ (record { net = 0 ;
                           pay = ScriptObj 777 ;
                           stake = just (ScriptObj 777) })
                           , scriptValue , just (inj₂ (inj₁ (inj₁ (Always [])))) , nothing

script : TxIn × TxOut
script = (6 , 6) , initTxOut



initState' : UTxO
initState' = fromList' (createInitUtxoState 5 startValue)

data Tx' : Set where
    start      : ℕ → Value → Tx'
    openn      : ℕ → Tx'
    close      : ℕ → Tx'
    withdraw   : ℕ → Value → Tx'
    deposit    : ℕ → Value → Tx'
    transfer   : ℕ → ℕ → Value → Tx'
    stop       : ℕ → Tx'


makeTx : UTxOState → PlutusScript → Tx' → (id : ℕ) → Maybe Tx
makeTx s script (start w v) id = just (startTx id w 999 v script)
makeTx s script (openn w) id = makeOpenTx id s script w
makeTx s script (close w) id = makeCloseTx id s script w
makeTx s script (withdraw w v) id = makeWithdrawTx id s script w v
makeTx s script (deposit w v) id = makeDepositTx id s script w v
makeTx s script (transfer from to v) id = makeTransferTx id s script from to v
makeTx s script (stop w) id = makeStopTx id s script w


evalTransactions : UTxOEnv → ComputationResult String UTxOState → List Tx' → ℕ → ComputationResult String UTxOState
evalTransactions env s [] id = s
evalTransactions env state@(failure s) (x ∷ xs) id = state
evalTransactions env (success s) (tx' ∷ txs') id =
  maybe
    (λ tx → evalTransactions
              initEnv
              (UTXO-step initEnv s tx)
              txs'
              (suc id))
    (failure "failed to generate tx")
    (makeTx s multiSigScript tx' id)

evalTransactionsW : UTxOEnv → ComputationResult String UTxOState → List Tx' → ℕ → ComputationResult String UTxOState
evalTransactionsW env s [] id = s
evalTransactionsW env state@(failure s) (x ∷ xs) id = state
evalTransactionsW env (success s) (tx' ∷ txs') id =
  maybe
    (λ tx → evalTransactions
              initEnv
              (UTXO-step initEnv s tx)
              txs'
              (suc id))
    (failure "failed to generate tx")
    (makeTx s multiSigScript tx' id)

validTrace : List Tx'
validTrace = start 5 (adaValueOf 80000000)
              ∷ openn 1
              ∷ openn 2
              ∷ close 2
              ∷ deposit 1 (adaValueOf 2000000000)
              ∷ withdraw 1 (adaValueOf 1000000000)
              ∷ deposit 1 (adaValueOf 10000000)
              ∷ openn 3
              ∷ deposit 3 (adaValueOf 30000000)
              ∷ transfer 3 1 (adaValueOf 5000000)
              ∷ []


validTrace2 : List Tx'
validTrace2 = start 5 (adaValueOf 8000000000)
              ∷ openn 1
              ∷ openn 2
              ∷ close 2
              ∷ deposit 1 (adaValueOf 20000000000)
              ∷ withdraw 1 (adaValueOf 10000000000)
              ∷ deposit 1 (adaValueOf 10000000)
              ∷ deposit 1 (adaValueOf 10000000)
              ∷ openn 3
              ∷ deposit 3 (adaValueOf 30000000)
              ∷ transfer 1 3 (adaValueOf 5000000)
              ∷ []


validTrace3 : List Tx'
validTrace3 = start 5 (adaValueOf 8000000000)
              ∷ openn 2
              ∷ close 2
              ∷ stop 5
              ∷ []



failingTrace : List Tx'
failingTrace = start 5 (adaValueOf 8000000000)
              ∷ openn 1
              ∷ openn 2
              ∷ deposit 1 (adaValueOf 20000000)
              ∷ withdraw 2 (adaValueOf 10000000)
              ∷ []

opaque
  unfolding collectP2ScriptsWithContext
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  evalValidTrace : ComputationResult String UTxOState
  evalValidTrace = evalTransactions initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) validTrace 6
  
  evalValidTrace2 : ComputationResult String UTxOState
  evalValidTrace2 = evalTransactionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) validTrace2 6
  
  evalValidTrace3 : ComputationResult String UTxOState
  evalValidTrace3 = evalTransactionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) validTrace3 6

  evalFailingTrace : ComputationResult String UTxOState
  evalFailingTrace = evalTransactionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) failingTrace 6

  _ : isSuccess evalValidTrace ≡ true
  _ = refl 

  _ : isSuccess evalValidTrace2 ≡ true
  _ = refl
  
  _ : isSuccess evalValidTrace3 ≡ true
  _ = refl 

  _ : isSuccess evalFailingTrace ≡ false
  _ = refl
```
