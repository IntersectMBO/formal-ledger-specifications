{-# OPTIONS --safe #-}

module Test.Examples.MultiSig.OffChain.Propose where

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
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; -- fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Propose v -- amount
                                                                          tw -- wallet pkh
                                                                          d)) , -- End Slot
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))
