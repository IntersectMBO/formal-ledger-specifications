{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.MultiSig.Datum
open import Ledger.Conway.Specification.Test.Examples.MultiSig.Validator
open import Ledger.Conway.Specification.Test.Prelude MultiSigData
open import Ledger.Conway.Specification.Test.SymbolicData MultiSigData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure
open import Ledger.Conway.Specification.Test.AbstractImplementation SData SData valContext
open import Ledger.Conway.Specification.Test.Lib SData SData valContext
open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Transaction
open import Ledger.Core.Specification.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Conway.Specification.Utxo.Properties.Computational SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxow.Properties.Computational SVTransactionStructure SVAbstractFunctions
open import Data.List using (filter)

module Ledger.Conway.Specification.Test.Examples.MultiSig.Test.Trace where

open import Ledger.Conway.Specification.Test.Examples.MultiSig.OffChain.OffChain

impMultiSig : MultiSig
impMultiSig = record { signatories = 3 ∷ 2 ∷ 5 ∷ [] ; minNumSignatures = 2 }

multiSigScript : PlutusScript
multiSigScript = 777 , applyScriptWithContext (multiSigValidator impMultiSig)

initEnv : UTxOEnv
initEnv = createEnv 0

initTxOut : TxOut
initTxOut = inj₁ (record { net = 0 ;
                           pay = ScriptObj 777 ;
                           stake = just (ScriptObj 777) })
                           , 800000000000 , just (inj₂ (inj₁ (inj₁ Holding))) , nothing

script : TxIn × TxOut
script = (6 , 6) , initTxOut

initState : UTxO
initState = fromList' (script ∷ (createInitUtxoState 5 1000000000000))

initState' : UTxO
initState' = fromList' (createInitUtxoState 5 1000000000000)

-- Hack to have partial Transactions
data Tx' : Set where
    openContract : ℕ → ℕ → ℕ → ℕ → Tx'
    addSig       : ℕ → ℕ → Tx'
    pay          : ℕ → ℕ → Tx'
    propose      : ℕ → ℕ → ℕ → ℕ → ℕ → Tx'

makeTx : UTxOState → PlutusScript → Tx' → Maybe Tx
makeTx s script (openContract id w v tw) = just (openTx id w v tw script)
makeTx s script (addSig id w) = makeAddSigTx id s script w
makeTx s script (pay id w) = makePayTx id s script w
makeTx s script (propose id w v tw d) = makeProposeTx id s script w v tw d

evalTransanctions : UTxOEnv → ComputationResult String UTxOState → List Tx' → ComputationResult String UTxOState
evalTransanctions env s [] = s
evalTransanctions env state@(failure s) (x ∷ xs) = state
evalTransanctions env (success s) (tx' ∷ txs') =
  maybe
    (λ tx → evalTransanctions
              initEnv
              (UTXO-step initEnv s tx)
              txs')
    (failure "failed to generate tx")
    (makeTx s multiSigScript tx')

evalTransanctionsW : UTxOEnv → ComputationResult String UTxOState → List Tx' → ComputationResult String UTxOState
evalTransanctionsW env s [] = s
evalTransanctionsW env state@(failure s) (x ∷ xs) = state
evalTransanctionsW env (success s) (tx' ∷ txs') =
  maybe
    (λ tx → evalTransanctions
              initEnv
              (UTXO-stepW initEnv s tx)
              txs')
    (failure "failed to generate tx")
    (makeTx s multiSigScript tx')

-- Add Sig trace
addSigTrace : List Tx'
addSigTrace = openContract 6 5 800000000000 6
              ∷ propose 7 5 100000000000 2 4
              ∷ addSig 8 5
              ∷ addSig 9 2
              ∷ pay 10 2 
              ∷ []

failingTrace : List Tx'
failingTrace =
   openContract 6 2 800000000000 5
   ∷ propose 7 1 500000000000 5 13
   ∷ addSig 8 2
   ∷ addSig 9 3
   ∷ pay 10 4
   ∷ propose 11 2 300000000001 5 13
   ∷ []

utxowTrace : List Tx'
utxowTrace = openContract 6 5 800000000000 6
             ∷ propose 7 5 100000000000 2 3
             ∷ addSig 8 5
             ∷ addSig 9 2
             ∷ pay 10 5
             ∷ []
              
opaque
  unfolding collectP2ScriptsWithContext
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  t0 : ComputationResult String UTxOState
  t0 = evalTransanctions initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) addSigTrace

  _ : isSuccess t0 ≡ true
  _ = refl

  t1 : ComputationResult String UTxOState
  t1 = evalTransanctions initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) failingTrace

  _ : isSuccess t1 ≡ false
  _ = refl 

  t2 : ComputationResult String UTxOState
  t2 = evalTransanctionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) utxowTrace

  _ : isSuccess t2 ≡ true
  _ = refl
