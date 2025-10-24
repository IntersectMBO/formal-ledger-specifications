{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.MultiSigV2.OffChain.Propose where

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


-- TODO: Add error handling
makeProposeTxOut : Label → (scriptIx : ℕ) → TxOut → (v tw d : ℕ) → List (ℕ × TxOut)
makeProposeTxOut Holding ix (fst , txValue , snd) v tw d = (ix , (fst , txValue , (just (inj₁ (inj₁ (inj₁ (Collecting v tw d []))))) , nothing)) ∷ []
makeProposeTxOut _ _ _ _ _ _ = []

makeProposeTx : (id : ℕ) → UTxOState → PlutusScript → (w v tw d : ℕ) → Maybe Tx
makeProposeTx id state script@(sh , _) w v tw d =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeTxOut wutxo ++ makeProposeTxOut label (proj₂ scIn) scOut v tw d )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; txVldt = just 0 , just 10
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Propose v 
                                                                          tw 
                                                                          d)) , 
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))
