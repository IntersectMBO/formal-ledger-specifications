{-# OPTIONS --safe #-}

module Test.Examples.AccountSim.OffChain.Deposit where

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

scriptDTxOut : Label → TxOut → (w : ℕ) → (v : Value) → TxOut
scriptDTxOut (Always l) (fst , txValue , snd) w v = (fst , (_+_ {{addValue}} txValue v) , (just (inj₁ (inj₁ (inj₁ (Always (insert' w (_+_ {{addValue}} val v) l)))))) , nothing)
  where
    val = getVal (Always l) w



makeDepositTxOut : Label → (scriptIx : ℕ) → TxOut → (w : ℕ) → (v : Value) → List (ℕ × TxOut)
makeDepositTxOut (Always l) ix txo w v =
            (ix , scriptDTxOut (Always l) txo w v)
            ∷ []



makeDepositTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → (v : Value) → Maybe Tx
makeDepositTx id state script@(sh , _) w v =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeePaymentTxOut wutxo v ++ makeDepositTxOut label (proj₂ scIn) scOut w v )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Deposit w v)) ,
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))
