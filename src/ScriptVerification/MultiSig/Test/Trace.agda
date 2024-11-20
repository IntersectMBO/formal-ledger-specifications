open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.MultiSig.Datum
open import ScriptVerification.MultiSig.Validator
open import ScriptVerification.Prelude MultiSigData
open import ScriptVerification.SymbolicData MultiSigData
open import ScriptVerification.LedgerImplementation SData SData
open import Ledger.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure
open import ScriptVerification.AbstractImplementation SData SData valContext
open import ScriptVerification.Lib SData SData valContext
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions
open import Data.List using (filter)

module ScriptVerification.MultiSig.Test.Trace where

open import ScriptVerification.MultiSig.OffChain.OffChain

impMultiSig : MultiSig
impMultiSig = record { signatories = 5 ∷ [] ; minNumSignatures = 1 }

multiSigScript : PlutusScript
multiSigScript = 777 , applyScriptWithContext (multiSigValidator impMultiSig)

initEnv : UTxOEnv
initEnv = createEnv 0

initTxOut : TxOut
initTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
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

-- Add Sig trace
addSigTrace : List Tx'
addSigTrace = openContract 6 5 800000000000 6
              ∷ propose 7 5 100000000000 2 3
              ∷ addSig 8 5
              ∷ pay 9 5
              ∷ []
              
opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  t0 : ComputationResult String UTxOState
  t0 = evalTransanctions initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) addSigTrace

  _ : isSuccess t0 ≡ true
  _ = refl
