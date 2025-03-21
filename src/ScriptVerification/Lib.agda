open import Ledger.Prelude hiding (fromList; ε; _/_); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Lib (A D : Type)
  (scriptImp : ScriptImplementation A D) (open ScriptImplementation scriptImp)
  where

open import ScriptVerification.LedgerImplementation A D scriptImp
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Conway.Conformance.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open import Ledger.Types.Numeric using (mkUnitInterval)
open EpochStructure SVEpochStructure
open import Data.Integer using (ℤ; +_)
open import Data.Rational using (½; 1ℚ ; mkℚ+ ; _/_)
open import Data.Nat.Coprimality using (Coprime; gcd≡1⇒coprime)
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
                               ; tau = mkUnitInterval (+ 2 / 10) refl
                               ; rho = mkUnitInterval (+ 3 / 1000) refl
                               ; coinsPerUTxOByte = 0  --lovelace
                               -- ^^^ was 4310, but that value resulted in failed tests once
                               -- we replaced `minUTxOValue` with `coinsPerUTxOByte`; see `HelloWorld.agda`
                               -- line 153: `isSuccess succeedExample ≡ true`
                               ; minFeeRefScriptCoinsPerByte = mkℚ+ 15 1 (gcd≡1⇒coprime refl) -- see [1]
                               ; prices = tt -- fix this
                               ; maxRefScriptSizePerTx = 200 * 1024 -- 200KiB
                               ; maxRefScriptSizePerBlock = 1024 * 1024 -- 1MiB
                               ; refScriptCostStride  = 25
                               ; refScriptCostMultiplier = mkℚ+ 6 5 (gcd≡1⇒coprime refl) -- see [1]
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
                                                    ; Q5 = ½
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
                                , (inj₁ (record { net = 0 ; pay = KeyHashObj wallet ; stake = just (KeyHashObj wallet) })
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

-- [1] https://github.com/IntersectMBO/cardano-ledger/blob/master/docs/adr/2024-08-14_009-refscripts-fee-change.md
