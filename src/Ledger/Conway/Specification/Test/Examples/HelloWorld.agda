{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.HelloWorld where

open import Ledger.Prelude hiding (fromList; ε); open Computational

open import Ledger.Conway.Specification.Test.LedgerImplementation String String
open import Ledger.Conway.Specification.Script.ScriptPurpose SVTransactionStructure

open import Ledger.Conway.Specification.Transaction
open TransactionStructure SVTransactionStructure using (Data)

valContext : TxInfo → ScriptPurpose → Data
valContext x x₁ = ""

open import Ledger.Conway.Specification.Test.AbstractImplementation valContext
open import Ledger.Conway.Specification.Test.Lib valContext
open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions

open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxo.Properties.Computational SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation

-- true if redeemer is "Hello World"
helloWorld' : Maybe String → Maybe String → Bool
helloWorld' _ (just s) = ⌊ (s ≟ "Hello World") ⌋
helloWorld' _ _ = false

helloWorld : PlutusScript
helloWorld = 777 , applyScript helloWorld'

initEnv : UTxOEnv
initEnv = createEnv 0

initTxOut : TxOut
initTxOut = inj₁ (record { net = 0 ;
                           pay = ScriptObj 777 ;
                           stake = just (ScriptObj 777) })
                           , 10 , nothing , nothing

script : TxIn × TxOut
script = (6 , 6) , initTxOut

initState : UTxO
initState = fromList' (script ∷ (createInitUtxoState 5 1000000000000))

succeedTx : Tx
succeedTx = record { body = record
                         { txIns = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txOuts = fromListIx ((6 , initTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = 0 ;
                                                                    pay = KeyHashObj 5 ;
                                                                    stake = just (KeyHashObj 5) }))
                                                 , (1000000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txFee = 10000000000
                         ; mint = 0
                         ; txVldt = nothing , nothing
                         ; txCerts = []
                         ; txWithdrawals = ∅
                         ; txGovVotes = []
                         ; txGovProposals = []
                         ; txDonation = 0
                         ; txADhash = nothing
                         ; txNetworkId = just 0
                         ; currentTreasury = nothing
                         ; txId = 7
                         ; collateralInputs = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; reqSignerHashes = ∅
                         ; scriptIntegrityHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ helloWorld) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , 6) , "Hello World" , (5 , 5)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }

failTx : Tx
failTx = record { body = record
                         { txIns = Ledger.Prelude.fromList ((6 , 6) ∷ [])
                         ; refInputs = ∅
                         ; txOuts = ∅
                         ; txFee = 10
                         ; mint = 0
                         ; txVldt = nothing , nothing
                         ; txCerts = []
                         ; txWithdrawals = ∅
                         ; txGovVotes = []
                         ; txGovProposals = []
                         ; txDonation = 0
                         ; txADhash = nothing
                         ; txNetworkId = just 0
                         ; currentTreasury = nothing
                         ; txId = 7
                         ; collateralInputs = ∅
                         ; reqSignerHashes = ∅
                         ; scriptIntegrityHash = nothing
                         } ;
                wits = record { vkSigs = ∅ ;
                                scripts = Ledger.Prelude.fromList ((inj₂ helloWorld) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , 6) , "Hello World!" , (5 , 5)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }

succeedState : List (P2Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
succeedState = (collectP2ScriptsWithContext (UTxOEnv.pparams initEnv) succeedTx initState)

evalSucceedScript : Bool
evalSucceedScript = evalP2Scripts succeedState

failState : List (P2Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
failState = (collectP2ScriptsWithContext (UTxOEnv.pparams initEnv) failTx initState)

evalFailScript : Bool
evalFailScript = evalP2Scripts failState

opaque
  unfolding Computational-UTXO
  unfolding collectP2ScriptsWithContext
  unfolding setToList
  unfolding outs

  _ : notEmpty succeedState ≡ ⊤
  _ = refl

  -- need to check that the state is non-empty otherwise evalP2Scripts will always return true
  _ : notEmpty succeedState ≡ ⊤
  _ = refl

  _ : evalSucceedScript ≡ true
  _ = refl

  _ : notEmpty failState ≡ ⊤
  _ = refl

  _ : evalFailScript ≡ false
  _ = refl

  -- Compute the result of running the UTXO rules on the succeedTx transaction
  succeedExample : ComputationResult String UTxOState
  succeedExample = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧  succeedTx

  _ : isSuccess succeedExample ≡ true
  _  = refl

  -- Compute the result of running the UTXO rules on the failTx transaction
  failExample : ComputationResult String UTxOState
  failExample = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧  failTx

  _ : isFailure failExample
  _ = _ , refl
