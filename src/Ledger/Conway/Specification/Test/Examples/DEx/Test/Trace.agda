{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.DEx.Datum
open import Ledger.Conway.Specification.Test.Examples.DEx.Validator
open import Ledger.Conway.Specification.Test.Prelude DExData
open import Ledger.Conway.Specification.Test.SymbolicData DExData
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
import Data.Rational.Base as Q
open import Data.Nat.Divisibility.Core
open import Data.Nat.Properties

module Ledger.Conway.Specification.Test.Examples.DEx.Test.Trace where

open import Ledger.Conway.Specification.Test.Examples.DEx.OffChain.OffChain

par : Params
par = record { sellC = 0 ; buyC = 0 }

multiSigScript : PlutusScript
multiSigScript = 777 , applyScriptWithContext (dexValidator par)

initEnv : UTxOEnv
initEnv = createEnv 0


initState' : UTxO
initState' = fromList' (createInitUtxoState 5 startValue)


data Tx' : Set where   
    start      : ℕ → Value → Q.ℚ → Tx'
    close      : ℕ → Tx'
    updatetx   : ℕ → Value → Q.ℚ → Tx'
    exchange   : ℕ → Value → Tx'
    

makeTx : UTxOState → PlutusScript → Tx' → (id : ℕ) → Maybe Tx
makeTx s script (start w v r) id = just (startTx id w 999 v r script)
makeTx s script (close w) id = makeCloseTx id s script w
makeTx s script (updatetx w v r) id = makeUpdateTx id s script w v r 
makeTx s script (exchange w v) id = makeExchangeTx id s script w v

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

pf : ∀ {d} -> (d Data.Nat.Divisibility.Core.∣ 1) -> d ≡ 1
pf {zero} (divides quotient equality) rewrite *-comm quotient zero = sym equality
pf {suc d} (divides (suc zero) eq) rewrite +-comm d 0 = sym eq
pf {suc zero} (divides (2+ q) ())
pf {2+ d} (divides (2+ q) ())

rate : Q.ℚ
rate = (Q.mkℚ (ℤ.pos (suc zero)) zero (λ { (fst , snd) → pf fst }) )

rate2 : Q.ℚ
rate2 = (Q.mkℚ (ℤ.pos (suc zero)) (suc zero) (λ { (fst , snd) → pf fst }) )

rate3 : Q.ℚ
rate3 = (Q.mkℚ (ℤ.pos (suc (suc (suc zero)))) (zero) (λ { (fst , snd) → pf snd }) )

validTrace : List Tx'
validTrace = start 5 (adaValueOf 80000000) rate
             ∷ updatetx 5 (adaValueOf 70000000) rate
             ∷ close 5
             ∷ []


validTrace2 : List Tx'
validTrace2 = start 5 (adaValueOf 8000000000) rate
              ∷ exchange 1 (adaValueOf 70000000) --FIX
              ∷ []



failingTrace : List Tx'
failingTrace = start 5 (adaValueOf 8000000000) rate
               ∷ updatetx 1 (adaValueOf 40000000) rate3
              ∷ []

opaque
  unfolding collectP2ScriptsWithContext
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  evalValidTrace : ComputationResult String UTxOState
  evalValidTrace = evalTransanctionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) validTrace 6
  
  evalValidTrace2 : ComputationResult String UTxOState
  evalValidTrace2 = evalTransanctionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) validTrace2 6

  evalFailingTrace : ComputationResult String UTxOState
  evalFailingTrace = evalTransanctionsW initEnv (success ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ) failingTrace 6

  _ : isSuccess evalValidTrace ≡ true
  _ = refl

  _ : isSuccess evalValidTrace2 ≡ true
  _ = refl

  _ : isSuccess evalFailingTrace ≡ false
  _ = refl 
