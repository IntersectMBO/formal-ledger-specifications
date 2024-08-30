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

module ScriptVerification.MultiSig.Transactions where

impMultiSig : MultiSig
impMultiSig = record { signatories = [] ; minNumSignatures = 0 }

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

succeedTxOut : TxOut
succeedTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 800000000000 , just (inj₁ (inj₁ (inj₁ (Collecting 100000000000 2 3 [])))) , nothing


failTxOut : TxOut
failTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 10 , just (inj₁ (inj₁ (inj₁ (Collecting 1 2 3
                                                                     (5 ∷ []))))) -- failing because signed by wallet 5
                                                                     , nothing


succeedTx : Tx
succeedTx = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , succeedTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1000000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
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
                         ; txid = 7
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ (Propose 100000000000 2 3)) ,
                                                      (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

failTx : Tx
failTx = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , failTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                                 , (1000000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
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
                         ; txid = 7
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats = fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ (Propose 1 2 3)) ,
                                                      (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

succeedTxOut' : TxOut
succeedTxOut' = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 700000000000 , just (inj₁ (inj₁ (inj₁ (Collecting 1 2 3 [])))) , nothing


-- need to update the transaction id
succeedTx' : Tx
succeedTx' = record { body = record
                         { txins = Ledger.Prelude.fromList ((7 , 6) ∷ (7 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , succeedTxOut')
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1090000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
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
                         ; txid = 8
                         ; collateral = Ledger.Prelude.fromList ((7 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ Pay) ,
                                                      (7 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }


-- (Collecting v pkh slot sigs) Pay ctx
-- multiSigValidator' param Holding (Propose v pkh slot) ctx =


succeedState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
succeedState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) succeedTx initState)

evalSucceedTx : Bool
evalSucceedTx = evalScripts succeedTx succeedState

failState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
failState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) failTx initState)

evalFailTx : Bool
evalFailTx = evalScripts failTx failState

⟦_⟧2,_,_,_ : P2Script → ⊤ → ℕ × ℕ → List SData → Maybe ℕ × Maybe ℕ -- (List STxOut)
⟦ s ⟧2, cm , eu , [] = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ []) = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ x₁ ∷ []) = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ x₁ ∷ inj₁ x₂ ∷ d) = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ x₁ ∷ inj₂ y ∷ d) = (oldValue y) , (newValue y)

evalScripts' : Tx → List (Script × List SData × (ℕ × ℕ) × ⊤) → Maybe ℕ × Maybe ℕ -- ℕ × ℕ
evalScripts' tx [] = nothing , nothing -- 0 , 0
evalScripts' tx ((inj₁ tl , d , eu , cm) ∷ Γ) = nothing , nothing -- 0 , 0
evalScripts' tx ((inj₂ ps , d , eu , cm) ∷ Γ) = ⟦ ps ⟧2, cm , eu , d -- Evalscripts' tx Γ

-- test = evalScripts' succeedTx succeedState
letsGo : ComputationResult String UTxOState → ComputationResult String UTxOState
letsGo (success x) = UTXO-step initEnv x succeedTx'
letsGo (failure x) = failure x

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  _ : notEmpty succeedState ≡ ⊤
  _ = refl

  -- need to check that the state is non-empty otherwise evalScripts will always return true
  _ : notEmpty succeedState ≡ ⊤
  _ = refl

  -- new value , old value
 -- _ : test ≡ (1790000000000 , 1800000000000)
 -- _ = refl

  -- Compute the result of running the UTXO rules on the succeedTx transaction
  succeedExample : ComputationResult String UTxOState
  succeedExample = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧ᵘ  succeedTx

  _ : isSuccess succeedExample ≡ true
  _  = refl

  se : ComputationResult String UTxOState
  se = letsGo succeedExample

  _ : isSuccess se ≡ true
  _ = refl

  -- Compute the result of running the UTXO rules on the succeedTx transaction
  failExample : ComputationResult String UTxOState
  failExample = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧ᵘ  failTx

  _ : isSuccess failExample ≡ false
  _  = refl

-- TxOuts
-- just
{-

((inj₁ (record { net = tt ; pay = inj₂ 777 ; stake = inj₂ 777 }) ,
  200000000000 , just (inj₁ (inj₁ (Collecting 1 2 3 []))))
 ∷
 (inj₁ (record { net = tt ; pay = inj₁ 5 ; stake = inj₁ 5 }) ,
  1590000000000 , nothing)
 ∷ [])

success
⟦
((4 , 4) ,
 inj₁ (record { net = tt ; pay = inj₁ 4 ; stake = inj₁ 4 }) ,
 1000000000000 , nothing , nothing)
∷
((3 , 3) ,
 inj₁ (record { net = tt ; pay = inj₁ 3 ; stake = inj₁ 3 }) ,
 1000000000000 , nothing , nothing)
∷
((2 , 2) ,
 inj₁ (record { net = tt ; pay = inj₁ 2 ; stake = inj₁ 2 }) ,
 1000000000000 , nothing , nothing)
∷
((1 , 1) ,
 inj₁ (record { net = tt ; pay = inj₁ 1 ; stake = inj₁ 1 }) ,
 1000000000000 , nothing , nothing)
∷
((7 , 6) ,
 inj₁ (record { net = tt ; pay = inj₂ 777 ; stake = inj₂ 777 }) ,
 800000000000 ,
 just (inj₁ (inj₁ (inj₁ (Collecting 1 2 3 [])))) , nothing)
∷
((7 , 5) ,
 inj₁ (record { net = tt ; pay = inj₁ 5 ; stake = inj₁ 5 }) ,
 990000000000 , nothing , nothing)
∷ []
-}
