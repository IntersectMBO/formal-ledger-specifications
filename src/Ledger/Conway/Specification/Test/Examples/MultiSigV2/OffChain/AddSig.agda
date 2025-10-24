{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.MultiSigV2.OffChain.AddSig where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.Datum
open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.OffChain.Lib
open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.Validator
open import Ledger.Conway.Specification.Test.Prelude MultiSigData
open import Ledger.Conway.Specification.Test.SymbolicData MultiSigData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Test.AbstractImplementation valContext
open import Ledger.Conway.Specification.Test.Lib valContext

open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation


makeAddSigTxOut : Label → (scriptIx w : ℕ) → TxOut → List (ℕ × TxOut)
makeAddSigTxOut Holding ix w txo = []
makeAddSigTxOut (Collecting vl pkh d sigs) ix w (fst , fst₁ , snd) =
  (ix , (fst , fst₁ ,  just (inj₁ (inj₁ (inj₁ (Collecting vl pkh d (insert' w sigs))))) , nothing)) ∷ []

makeAddSigTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makeAddSigTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeTxOut wutxo ++ makeAddSigTxOut label (proj₂ scIn) w scOut )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ []) 
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Add w)) , 
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

