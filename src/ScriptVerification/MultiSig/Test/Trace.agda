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

letsGo' : ComputationResult String UTxOState → ComputationResult String UTxOState
letsGo' (success x) = maybe (λ tx → UTXO-step initEnv x tx)
                           (failure "unable to create transaction")
                           (makeAddSigTx 8 x multiSigScript 5)
letsGo' (failure x) = failure x

txe : ComputationResult String UTxOState → List Script
txe (success x) = maybe (λ tx →
  map proj₁ (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) tx (UTxOState.utxo x)))
                        []
                        (makeAddSigTx 8 x multiSigScript 5)
txe (failure x) = []

defaultTxBody : TxBody
defaultTxBody = record
                  { txins = ∅
                  ; refInputs = ∅
                  ; txouts =  ∅
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
                  ; txid = 0
                  ; collateral = ∅
                  ; reqSigHash = ∅
                  ; scriptIntHash = nothing
                  }

succeedTxOut : TxOut
succeedTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 800000000000 , just (inj₁ (inj₁ (inj₁ (Collecting 100000000000 2 3 [])))) , nothing


succeedTx : Tx
succeedTx = record { body = record defaultTxBody
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; txouts = fromListIx ((6 , succeedTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1000000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
                         ; txid = 7
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ (Propose 100000000000 -- amount
                                                                          2 -- wallet pkh
                                                                          3)) , -- End Slot
                                                      (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

















opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

 -- _ : isSuccess t3 ≡ true
 -- _ = refl

  t1 : ComputationResult String UTxOState
  t1 = UTXO-step initEnv ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ (openTx 6 5 800000000000 6 multiSigScript)

  _ : isSuccess t1 ≡ true
  _ = refl
  
  t2 : ComputationResult String UTxOState
  t2 = succeedExample' t1

  _ : isSuccess t2 ≡ true
  _ = ?






{-
  t1 : ComputationResult String UTxOState
  t1 = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧ᵘ (openTx 6 5 800000000000 6 multiSigScript)

  _ : isSuccess t1 ≡ true
  _ = refl

  t6 : ComputationResult String UTxOState
  t6 = succeedExample' (success (⟦ initState' , 0 , ∅ , 0 ⟧ᵘ))

  t2 : ComputationResult String UTxOState
  t2 = succeedExample' t1

  tr : List Script
  tr = txe t1

  _ : tr ≡ []
  _ = refl

  _ : isSuccess t2 ≡ true
  _ = {!!}

  t3 : ComputationResult String UTxOState
  t3 = letsGo t2

  _ : isSuccess t3 ≡ true
  _ = {!!}

  t3' : ComputationResult String UTxOState
  t3' = letsGo' t2

  _ : isSuccess t3' ≡ true
  _ = {!!} -- refl
  --
  tr' : ComputationResult String UTxOState
  tr' = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧ᵘ succeedTx

  _ : isSuccess tr' ≡ true
  _ = refl

  t3 : ComputationResult String UTxOState
  t3 = letsGo tr'



-}


{-
  collectPhaseTwoScriptInputs' : PParams → Tx → UTxO → (ScriptPurpose × ScriptHash)
    → Maybe (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs' pp tx utxo (sp , sh)
    with lookupScriptHash sh tx utxo
  ... | nothing = nothing
  ... | just s
    with isInj₂ s | indexedRdmrs tx sp
  ... | just p2s | just (rdmr , eu)
      = just (s ,
          ( (getDatum tx utxo sp ++ rdmr ∷ valContext (txInfo (language p2s) pp utxo tx) sp ∷ [])
          , eu
          , PParams.costmdls pp)
        )
  ... | x | y = nothing

  collectPhaseTwoScriptInputs : PParams → Tx → UTxO
    → List (Script × List Data × ExUnits × CostModel)
  collectPhaseTwoScriptInputs pp tx utxo
    = setToList
    $ mapPartial (collectPhaseTwoScriptInputs' pp tx utxo)
    $ scriptsNeeded utxo (tx .Tx.body)


-}
