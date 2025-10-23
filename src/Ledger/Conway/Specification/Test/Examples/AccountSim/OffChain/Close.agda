{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Close where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Ledger.Conway.Specification.Test.Examples.AccountSim.Datum
open import Ledger.Conway.Specification.Test.Examples.AccountSim.Validator
open import Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Lib
open import Ledger.Conway.Specification.Test.Prelude AccountSimData
open import Ledger.Conway.Specification.Test.SymbolicData AccountSimData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Test.AbstractImplementation valContext
open import Ledger.Conway.Specification.Test.Lib valContext

open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation


makeCloseTxOut : Label → (scriptIx w : ℕ) → TxOut → List (ℕ × TxOut)
makeCloseTxOut (Always l) ix w (fst , fst' , snd) =
  (ix , (fst , fst' ,  just (inj₁ (inj₁ (inj₁ (Always (delete' w l))))) , nothing)) ∷ []

makeCloseTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makeCloseTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeTxOut wutxo ++ makeCloseTxOut label (proj₂ scIn) w scOut )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w) ) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ;
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Close w)) ,
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

