{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Transfer where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Ledger.Conway.Specification.Test.Examples.AccountSim.Datum
open import Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Lib
open import Ledger.Conway.Specification.Test.Examples.AccountSim.Validator
open import Ledger.Conway.Specification.Test.Prelude AccountSimData
open import Ledger.Conway.Specification.Test.SymbolicData AccountSimData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Test.AbstractImplementation valContext
open import Ledger.Conway.Specification.Test.Lib valContext

open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation


makeTransferTxOut : Label → (scriptIx from to : ℕ) → (v : Value) → TxOut → List (ℕ × TxOut)
makeTransferTxOut (Always l) ix from to v (fst , fst' , snd) =
  (ix , (fst , fst' ,  just (inj₁ (inj₁ (inj₁ (Always (insert' from (vF - v) (insert' to (_+_ {{addValue}} vT v) l)))))) , nothing)) ∷ []
  where
    vF = getVal (Always l) from
    vT = getVal (Always l) to

makeTransferTx : (id : ℕ) → UTxOState → PlutusScript → (from to : ℕ) → (v : Value) → Maybe Tx
makeTransferTx id state script@(sh , _) from to v =
  let
    wutxo = getWalletUTxO from (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeTxOut wutxo ++ makeTransferTxOut label (proj₂ scIn) from to v scOut )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (from ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((from , (_+_ {{addNat}} (getTxId wutxo) from)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Transfer from to v)) , --(Add w) 
                                                      ((getTxId wutxo) , from)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

