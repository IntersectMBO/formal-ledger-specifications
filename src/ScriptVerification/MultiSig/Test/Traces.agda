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
open import Ledger.Utxow.Properties SVTransactionStructure SVAbstractFunctions
open import Data.List using (filter)

module ScriptVerification.MultiSig.Test.Traces where

open import ScriptVerification.MultiSig.OffChain.OffChain

impMultiSig : MultiSig
impMultiSig = record { signatories = 3 ∷ 2 ∷ 5 ∷ [] ; minNumSignatures = 1 }

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
    openContract : ℕ → ℕ → Tx'
    addSig       : ℕ → Tx'
    pay          : ℕ → Tx'
    propose      : ℕ → ℕ → ℕ → ℕ → Tx'

makeTx : UTxOState → PlutusScript → Tx' → (id : ℕ) → Maybe Tx
makeTx s script (openContract w v) id = just (openTx id w v 999 script)
makeTx s script (addSig w) id = makeAddSigTx id s script w
makeTx s script (pay w) id = makePayTx id s script w
makeTx s script (propose w v tw d) id = makeProposeTx id s script w v tw d

evalTransanctions : UTxOEnv → ComputationResult String UTxOState → List Tx' → ℕ → ComputationResult String UTxOState
evalTransanctions env s [] id = s
evalTransanctions env state@(failure s) (x ∷ xs) id = state
evalTransanctions env (success s) (tx' ∷ txs') id =
  maybe
    (λ tx → evalTransanctions
              initEnv
              (UTXO-step initEnv s tx)
              txs'
              (suc id))
    (failure "failed to generate tx")
    (makeTx s multiSigScript tx' id)

evalTransanctionsW : UTxOEnv → ComputationResult String UTxOState → List Tx' → ℕ → ComputationResult String UTxOState
evalTransanctionsW env s [] id = s
evalTransanctionsW env state@(failure s) (x ∷ xs) id = state
evalTransanctionsW env (success s) (tx' ∷ txs') id =
  maybe
    (λ tx → evalTransanctions
              initEnv
              (UTXO-stepW initEnv s tx)
              txs'
              (suc id))
    (failure "failed to generate tx")
    (makeTx s multiSigScript tx' id)

validTrace : List Tx'
validTrace = openContract 5 8000000
              ∷ propose 5 1000000 2 10
              -- ∷ addSig 5
              ∷ addSig 2
              ∷ pay 5
              ∷ []

failingTrace : List Tx'
failingTrace =
   openContract 2 8000000
   ∷ propose 1 5000000 5 13
   ∷ addSig 2
   ∷ addSig 3
   ∷ pay 4
   ∷ propose 2 3000001 5 13
   ∷ []

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs
  unfolding getInputHashes

  evalValidTrace : ComputationResult String UTxOState
  evalValidTrace = evalTransanctionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) validTrace 6

  evalFailingTrace : ComputationResult String UTxOState
  evalFailingTrace = evalTransanctionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) failingTrace 6

  _ : isSuccess evalValidTrace ≡ true
  _ = refl

  _ : isSuccess evalFailingTrace ≡ false
  _ = refl
