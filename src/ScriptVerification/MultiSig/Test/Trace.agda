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


-- Compute the result of running the UTXO rules on the succeedTx transaction
succeedExample' : ComputationResult String UTxOState → ComputationResult String UTxOState
succeedExample' (success state) = maybe (λ tx → UTXO-step initEnv state tx)
                       (failure "unable to create transaction bla")
                       (makeProposeTx 7
                                      state
                                      multiSigScript
                                      5
                                      100000000000
                                      2
                                      3)
succeedExample' (failure x) = failure x

letsGo : ComputationResult String UTxOState → ComputationResult String UTxOState
letsGo (success x) = maybe (λ tx → UTXO-step initEnv x tx)
                           (failure "unable to create transaction")
                           (makePayTx 8 x multiSigScript 5)
letsGo (failure x) = failure x

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  t1 : ComputationResult String UTxOState
  t1 = UTXO-step initEnv ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ  openTx

  _ : isSuccess t1 ≡ true
  _ = refl

  t2 : ComputationResult String UTxOState
  t2 = succeedExample' t1

  _ : isSuccess t2 ≡ true
  _ = refl

  t3 : ComputationResult String UTxOState
  t3 = letsGo t2

  _ : isSuccess t3 ≡ true
  _ = refl

