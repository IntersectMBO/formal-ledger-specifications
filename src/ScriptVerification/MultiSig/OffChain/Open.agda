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

-- TODO: Parameterise this code

openTxOut : TxOut
openTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 800000000000
                           , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

openTx : Tx
openTx = record { body = record defaultTxBody
                         { txins = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; txouts = fromListIx ((6 , openTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1000000000000 - 810000000000) , nothing , nothing))
                                               ∷ [])
                         ; txid = 5
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 10) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  ∅ ;
                                txrdmrs = ∅ } ;
                isValid = true ;
                txAD = nothing }
