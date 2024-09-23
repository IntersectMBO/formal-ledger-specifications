open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.SucceedIfNumber where

scriptImp : ScriptImplementation ℕ ℕ
scriptImp = record { serialise = id ;
                     deserialise = λ x → just x ;
                     toData' = λ x → 9999999 }

open import ScriptVerification.LedgerImplementation ℕ ℕ scriptImp
open import ScriptVerification.Lib ℕ ℕ scriptImp
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxow.Properties SVTransactionStructure SVAbstractFunctions

-- succeed if the datum is 1
succeedIf1Datum' : Maybe ℕ → Maybe ℕ → Bool
succeedIf1Datum' (just (suc zero)) _ = true
succeedIf1Datum' _ _ = false

succeedIf1Datum : PlutusScript
succeedIf1Datum = 777 , applyScript succeedIf1Datum'

--succeed if the redeemer is 1
succeedIf1Redeemer' : Maybe ℕ → Maybe ℕ → Bool
succeedIf1Redeemer' _ (just (suc zero)) = true
succeedIf1Redeemer' _ _ = false

succeedIf1Redeemer : PlutusScript
succeedIf1Redeemer = 888 , applyScript succeedIf1Redeemer'

initEnv : UTxOEnv
initEnv = createEnv 0

-- initTxOut for script with datum reference
initTxOut : TxOut
initTxOut = inj₁ (record { net = tt ;
                           pay = ScriptObj 777 ;
                           stake = ScriptObj 777 })
                           , 10 , just (inj₂ 99) , nothing

-- initTxOut for script without datum reference
initTxOut' : TxOut
initTxOut' = inj₁ (record { net = tt ;
                           pay = ScriptObj 888 ;
                           stake = ScriptObj 888 })
                           , 10 , nothing , nothing

scriptDatum : TxIn × TxOut
scriptDatum = (6 , 6) , initTxOut

scriptRedeemer : TxIn × TxOut
scriptRedeemer = (6 , 6) , initTxOut'

initStateDatum : UTxO
initStateDatum = fromList' (scriptDatum ∷ (createInitUtxoState 5 1000000000000))

initStateRedeemer : UTxO
initStateRedeemer = fromList' (scriptRedeemer ∷ (createInitUtxoState 5 1000000000000))

succeedTx : Tx
succeedTx = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , initTxOut)
                                                ∷ (5
                                                  , ((inj₁ (record { net = tt ;
                                                                     pay = KeyHashObj 5 ;
                                                                     stake = KeyHashObj 5 }))
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
                         ; txNetworkId = just tt
                         ; curTreasury = nothing
                         ; txsize = 10
                         ; txid = 7
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ succeedIf1Datum) ∷ []) ;
                                txdats = fromListᵐ ((99 , 1) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) , 5 , (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

evalScriptDatum : Bool
evalScriptDatum = evalScripts succeedTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) succeedTx initStateDatum)

exampleDatum : List Datum
exampleDatum = getDatum succeedTx initStateDatum (Spend (6 , 6))

failTx : Tx
failTx = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ [])
                         ; refInputs = ∅
                         ; txouts = ∅
                         ; txfee = 10
                         ; mint = 0
                         ; txvldt = nothing , nothing
                         ; txcerts = []
                         ; txwdrls = ∅
                         ; txvote = []
                         ; txprop = []
                         ; txdonation = 0
                         ; txup = nothing
                         ; txADhash = nothing
                         ; txNetworkId = just tt
                         ; curTreasury = nothing
                         ; txsize = 10
                         ; txid = 7
                         ; collateral = ∅
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = ∅ ;
                                scripts = Ledger.Prelude.fromList ((inj₂ succeedIf1Redeemer) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , 6) , 1 , (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }


evalScriptRedeemer : Bool
evalScriptRedeemer = evalScripts failTx (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) failTx initStateRedeemer)

exampleDatum' : List Datum
exampleDatum' = getDatum failTx initStateRedeemer (Spend (6 , 6))

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  gotScript : lookupScriptHash 777 succeedTx initStateDatum ≡ just (inj₂ succeedIf1Datum)
  gotScript = refl

  _ : exampleDatum ≡ 1 ∷ []
  _ = refl

  _ : exampleDatum' ≡ []
  _ = refl

  _ : evalScriptDatum ≡ true
  _ = refl

  _ : evalScriptRedeemer ≡ true
  _ = refl

  -- Compute the result of running the UTXO rules on the succeedTx transaction
  succeedExample : ComputationResult String UTxOState
  succeedExample = UTXO-step initEnv ⟦ initStateDatum , 0 , ∅ , 0 ⟧ᵘ  succeedTx

  --  This is now false since `minUTxOValue` was replaced with `coinsPerUTxOByte` (= 4310 in `ScriptVerification.Lib`)
  _ : isSuccess succeedExample ≡ false
  _  = refl

  -- Compute the result of running the UTXO rules on the failTx transaction
  failExample : ComputationResult String UTxOState
  failExample = UTXO-step initEnv ⟦ initStateRedeemer , 0 , ∅ , 0 ⟧ᵘ  failTx

  _ : failExample ≡ failure "¬ feesOK pp tx utxo ≡ true"
  _ = refl

  -- Note that the UTXOS rule succeeds but the UTXO rule fails for failTx
  failExampleS : Bool
  failExampleS = case compute Computational-UTXOS initEnv ⟦ initStateRedeemer , 0 , ∅ , 0 ⟧ᵘ failTx of λ where
    (success x) → true
    (failure x) → false

  _ : failExampleS ≡ true
  _ = refl

  failExampleU : Bool
  failExampleU = case compute Computational-UTXO initEnv ⟦ initStateRedeemer , 0 , ∅ , 0 ⟧ᵘ failTx of λ where
    (success x) → true
    (failure x) → false

  _ : failExampleU ≡ false
  _ = refl
