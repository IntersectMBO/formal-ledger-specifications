{-# OPTIONS --safe #-}

module Test.Examples.AccountSim.OffChain.Cleanup where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Test.Examples.AccountSim.Datum
open import Test.Examples.AccountSim.OffChain.Lib
open import Test.Examples.AccountSim.Validator
open import Test.Prelude AccountSimData
open import Test.SymbolicData AccountSimData
open import Test.LedgerImplementation SData SData
open import Test.AbstractImplementation valContext
open import Test.Lib valContext

open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation

makeCleanupTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makeCleanupTx id state script@(sh , _) w = 
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , (fst , txValue , snd)) →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeUnPaymentTxOut wutxo txValue)
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w) ) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ Cleanup) ,
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                )
            })
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

