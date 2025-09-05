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
open import ScriptVerification.MultiSig.OffChain.Lib

module ScriptVerification.MultiSig.OffChain.Open where

openTxOut : Value → PlutusScript → TxOut
openTxOut v script = inj₁ (record { net = tt ;
                           pay = inj₂ (proj₁ script) ;
                           stake = inj₂ (proj₁ script) })
                           , v
                           , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

-- txid, wallet, value at script, script index
openTx : (id w v tw : ℕ) → PlutusScript → Tx
openTx id w v tw script = record { body = record defaultTxBody
                         { txins = Ledger.Prelude.fromList ((w , w) ∷ [])
                         ; txouts = fromListIx ((tw , openTxOut v script)
                                               ∷ (w
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ w ;
                                                                    stake = inj₁ w }))
                                               -- , 10000000000 , nothing , nothing))
                                               , ((1000000000000 - 10000000000) - v) , nothing , nothing))
                                               ∷ [])
                         ; txid = id
                         ; collateral = Ledger.Prelude.fromList ((w , w) ∷ [])
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
                isValid = true ;
                txAD = nothing }
