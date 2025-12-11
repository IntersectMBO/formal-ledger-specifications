{-# OPTIONS --safe #-}

module Test.Examples.MultiSig.OffChain.AddSig where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Test.Examples.MultiSig.Datum
open import Test.Examples.MultiSig.Validator
open import Test.Examples.MultiSig.OffChain.Lib
open import Test.Prelude MultiSigData
open import Test.SymbolicData MultiSigData
open import Test.LedgerImplementation SData SData
open import Test.AbstractImplementation valContext
open import Test.Lib valContext

open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Transaction

open TransactionStructure SVTransactionStructure
open Implementation

-- TODO: Invesitgate what is going on with vkSigs vs reqSigHash in terms of
-- transaction not failing vkSigs
-- txinfo only gets reqSigHash

makeAddSigTxOut : Label → (scriptIx w : ℕ) → TxOut → List (ℕ × TxOut)
makeAddSigTxOut Holding ix w txo = []
makeAddSigTxOut (Collecting vl pkh d sigs) ix w (fst , fst₁ , snd) =
  (ix , (fst , fst₁ ,  just (inj₁ (inj₁ (inj₁ (Collecting vl pkh d (w ∷ sigs))))) , nothing)) ∷ []

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
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; -- fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
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

