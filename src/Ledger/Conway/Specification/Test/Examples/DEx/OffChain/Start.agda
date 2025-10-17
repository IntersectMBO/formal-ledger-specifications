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
open import Data.List using (filter)
open import Ledger.Conway.Specification.Test.Examples.DEx.OffChain.Lib

import Data.Rational.Base as Q

module Ledger.Conway.Specification.Test.Examples.DEx.OffChain.Start where

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
