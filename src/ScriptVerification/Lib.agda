open import Ledger.Prelude hiding (fromList; ε; _/_); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Lib (A D : Type)
  (scriptImp : ScriptImplementation A D) (open ScriptImplementation scriptImp)
  where

open import ScriptVerification.LedgerImplementation A D scriptImp
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open import Data.Rational using (½; 1ℚ ; mkℚ+ ; _/_)
open import Data.Nat.Coprimality using (Coprime; gcd≡1⇒coprime)
open import Ledger.Set.Theory
open Implementation

createEnv : ℕ → UTxOEnv
createEnv s = record { slot = s ; treasury = 0 ;
                   pparams = record
                               { maxBlockSize = 90112
                               ; maxTxSize = 16384
                               ; maxHeaderSize = 1100
                               ; maxValSize = 5000
                               ; maxCollateralInputs = 3
                               ; pv = 8 , 0
                               ; maxTxExUnits = 10000000000 , 14000000
                               ; maxBlockExUnits = 40000000000 , 62000000
                               ; a = 44
                               ; b = 155381
                               ; minUTxOValue = 0
                               ; poolDeposit = 500000000 -- lovelace
                               ; keyDeposit = 500000000 -- lovelace
                               ; coinsPerUTxOByte = 4310 --lovelace
                               ; minFeeRefScriptCoinsPerByte = 1ℚ -- unknown for now
                               ; prices = tt -- fix this
                               ; maxRefScriptSizePerTx = 200 * 1024 -- 200KiB
                               ; maxRefScriptSizePerBlock = 1024 * 1024 -- 1MiB
                               ; refScriptCostStride  = 25
                               ; refScriptCostMultiplier = mkℚ+ 6 5 (gcd≡1⇒coprime refl) -- 1.2
                               ; a0 = 1ℚ -- don't know
                               ; Emax = 18
                               ; nopt = 0 -- don't know
                               ; collateralPercentage = 150
                               ; costmdls = tt -- fix this
                               ; drepThresholds = record -- unknown so setting all to 50%
                                                    { P1 = ½
                                                    ; P2a = ½
                                                    ; P2b = ½
                                                    ; P3 = ½
                                                    ; P4 = ½
                                                    ; P5a = ½
                                                    ; P5b = ½
                                                    ; P5c = ½
                                                    ; P5d = ½
                                                    ; P6 = ½
                                                    }
                               ; poolThresholds = record
                                                    { Q1 = ½
                                                    ; Q2a = ½
                                                    ; Q2b = ½
                                                    ; Q4 = ½
                                                    ; Q5e = ½
                                                    }
                               ; govActionLifetime = 10 -- unknown
                               ; govActionDeposit = 1000000 -- unknown (set to 1 ada)
                               ; drepDeposit = 1000000 -- unknown (set to 1 ada)
                               ; drepActivity = 13 -- unknown
                               ; ccMinSize = 10 -- unknown
                               ; ccMaxTermLength = 73 -- unknown set to 1 year (73 epochs)
                               } }

createUTxO : (index : ℕ)
           → (wallet : ℕ)
           → (value : Value)
           → Maybe (D ⊎ DataHash)
           → TxIn × TxOut
createUTxO index wallet value d = (index , index)
                                , (inj₁ (record { net = tt ; pay = KeyHashObj wallet ; stake = KeyHashObj wallet })
                                  , value , d , nothing)

createInitUtxoState : (wallets : ℕ)
                    → (value : Value)
                    → List (TxIn × TxOut)
createInitUtxoState zero value = []
createInitUtxoState (suc wallet) value = createUTxO (suc wallet) (suc wallet) value nothing
                                         ∷ createInitUtxoState wallet value

fromList' : List (TxIn × TxOut) → UTxO
fromList' = fromListᵐ

fromListIx : List (Implementation.Ix × TxOut) → Implementation.Ix ⇀ TxOut
fromListIx = fromListᵐ

applyScript : (Maybe D → Maybe D → Bool) → List D → Bool
applyScript f [] = f nothing nothing
applyScript f (_ ∷ []) = f nothing nothing
applyScript f (redeemer ∷ valcontext ∷ []) = f nothing (just redeemer)
applyScript f (datum ∷ redeemer ∷ valcontext ∷ _) = f (just datum) (just redeemer)

notEmpty : ∀ {A : Type} → List A → Type
notEmpty [] = ⊥
notEmpty (x ∷ xs) = ⊤

isSuccess : ComputationResult String UTxOState → Bool
isSuccess (success x) = true
isSuccess (failure x) = false
