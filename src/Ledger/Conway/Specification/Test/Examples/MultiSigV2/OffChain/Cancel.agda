{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.Datum
open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.Validator
open import Ledger.Conway.Specification.Test.Prelude MultiSigData
open import Ledger.Conway.Specification.Test.SymbolicData MultiSigData
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
open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.OffChain.Lib

module Ledger.Conway.Specification.Test.Examples.MultiSigV2.OffChain.Cancel where


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

