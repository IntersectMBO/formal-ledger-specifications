{-# OPTIONS --safe #-}

module Test.Examples.DEx.OffChain.Start where

open import Ledger.Prelude
open import Ledger.Core.Specification.Transaction using (TransactionStructure)

open import Test.Examples.DEx.Datum
open import Test.Examples.DEx.OffChain.Lib
open import Test.Examples.DEx.Validator
open import Test.Prelude DExData
open import Test.SymbolicData DExData
open import Test.LedgerImplementation SData SData
open import Test.Lib valContext

open TransactionStructure SVTransactionStructure
open Implementation

open import Test.AbstractImplementation valContext

open import Ledger.Conway.Specification.Transaction SVTransactionStructure SVAbstractFunctions

import Data.Rational.Base as Q

startTxOut : Value → Q.ℚ → ℕ → PlutusScript → TxOut
startTxOut v r o script = inj₁ (record { net = 0 ;
                           pay = ScriptObj (proj₁ script) ;
                           stake = just (ScriptObj (proj₁ script)) })
                           , v
                           , just (inj₁ (inj₁ (inj₁ (Always r o)))) , nothing


startTx : (id w tw : ℕ) → (v : Value) → Q.ℚ → PlutusScript → Tx
startTx id w tw v r script = record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((w , w) ∷ [])
                         ; txOuts = fromListIx ((tw , startTxOut v r w script)
                                               ∷ (w
                                                 , ((inj₁ (record { net = 0 ;
                                                                    pay = KeyHashObj w ;
                                                                    stake = just (KeyHashObj w) }))
                                               , ((startValue - feeValue) - v) , nothing , nothing))
                                               ∷ [])
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList ((w , w) ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} w id)) ∷ []) ;
                                scripts = ∅ ; 
                                txdats = ∅ ; 
                                txrdmrs = ∅ } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
