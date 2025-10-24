{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Start where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Ledger.Conway.Specification.Test.Examples.AccountSim.Datum
open import Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Lib
open import Ledger.Conway.Specification.Test.Examples.AccountSim.Validator
open import Ledger.Conway.Specification.Test.Prelude AccountSimData
open import Ledger.Conway.Specification.Test.SymbolicData AccountSimData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Test.Lib valContext

open TransactionStructure SVTransactionStructure
open Implementation

startTxOut : Value → PlutusScript → TxOut
startTxOut v script = inj₁ (record { net = 0 ;
                           pay = ScriptObj (proj₁ script) ;
                           stake = just (ScriptObj (proj₁ script)) })
                           , v
                           , just (inj₁ (inj₁ (inj₁ (Always [])))) , nothing

-- txid, wallet, value at script, script index
startTx : (id w tw : ℕ) → (v : Value) → PlutusScript → Tx
startTx id w tw v script = record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((w , w) ∷ [])
                         ; txOuts = fromListIx ((tw , startTxOut v script)
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
