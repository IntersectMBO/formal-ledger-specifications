{-# OPTIONS --safe #-}

module Test.Examples.MultiSigV2.OffChain.Cancel where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Test.Examples.MultiSigV2.Datum
open import Test.Examples.MultiSigV2.OffChain.Lib
open import Test.Examples.MultiSigV2.Validator
open import Test.Prelude MultiSigData
open import Test.SymbolicData MultiSigData
open import Test.LedgerImplementation SData SData
open import Test.AbstractImplementation valContext
open import Test.Lib valContext

open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation

makeCancelTxOut : Label → (scriptIx w : ℕ) → TxOut → List (ℕ × TxOut)
makeCancelTxOut Holding ix w txo = []
makeCancelTxOut (Collecting vl pkh d sigs) ix w (fst , fst₁ , snd) =
  (ix , (fst , fst₁ ,  just (inj₁ (inj₁ (inj₁ Holding))) , nothing)) ∷ []

makeCancelTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makeCancelTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeTxOut wutxo ++ makeCancelTxOut label (proj₂ scIn) w scOut )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ []) 
                         ; txVldt = just 0 , just 11
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ Cancel) , 
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

