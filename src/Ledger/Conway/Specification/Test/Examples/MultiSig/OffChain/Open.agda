{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.MultiSig.OffChain.Open where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Ledger.Conway.Specification.Test.Examples.MultiSig.Datum
open import Ledger.Conway.Specification.Test.Examples.MultiSig.Validator
open import Ledger.Conway.Specification.Test.Examples.MultiSig.OffChain.Lib
open import Ledger.Conway.Specification.Test.Prelude MultiSigData
open import Ledger.Conway.Specification.Test.SymbolicData MultiSigData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Test.Lib valContext

open TransactionStructure SVTransactionStructure
open Implementation

openTxOut : Value → PlutusScript → TxOut
openTxOut v script = inj₁ (record { net = 0 ;
                           pay = ScriptObj (proj₁ script) ;
                           stake = just (ScriptObj (proj₁ script)) })
                           , v
                           , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

-- txid, wallet, value at script, script index
openTx : (id w v tw : ℕ) → PlutusScript → Tx
openTx id w v tw script = record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((w , w) ∷ [])
                         ; txOuts = fromListIx ((tw , openTxOut v script)
                                               ∷ (w
                                                 , ((inj₁ (record { net = 0 ;
                                                                    pay = KeyHashObj w ;
                                                                    stake = just (KeyHashObj w) }))
                                               -- , 10000000000 , nothing , nothing))
                                               , ((1000000000000 - 10000000000) - v) , nothing , nothing))
                                               ∷ [])
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList ((w , w) ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} w id)) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = ∅ ; -- Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; -- fromListᵐ ((inj₁ (inj₁ Holding) , (inj₁ (inj₁ Holding))) ∷ []) ;
                                txrdmrs = ∅ } ;
                                {-
                                  ; --  fromListᵐ (((Propose , (proj₁ script)) ,
                                                 --                inj₁ (inj₂ Pay) ,
                                                    --            (5 , w)) ∷ []) } ; -}
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
