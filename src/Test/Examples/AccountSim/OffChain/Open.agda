{-# OPTIONS --safe #-}

module Test.Examples.AccountSim.OffChain.Open where

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

makeOpenTxOut : Label → (scriptIx w : ℕ) → TxOut → List (ℕ × TxOut)
makeOpenTxOut (Always l) ix w (fst , fst' , snd) =
  (ix , (fst , fst' ,  just (inj₁ (inj₁ (inj₁ (Always (insert' w emptyValue l))))) , nothing)) ∷ []

makeOpenTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makeOpenTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeTxOut wutxo ++ makeOpenTxOut label (proj₂ scIn) w scOut )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Open w)) , --(Add w)
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

