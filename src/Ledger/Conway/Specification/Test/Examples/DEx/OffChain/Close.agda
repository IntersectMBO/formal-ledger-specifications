{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.DEx.OffChain.Close where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

open import Ledger.Conway.Specification.Test.Examples.DEx.Datum
open import Ledger.Conway.Specification.Test.Examples.DEx.Validator
open import Ledger.Conway.Specification.Test.Examples.DEx.OffChain.Lib
open import Ledger.Conway.Specification.Test.Prelude DExData
open import Ledger.Conway.Specification.Test.SymbolicData DExData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Test.AbstractImplementation valContext
open import Ledger.Conway.Specification.Test.Lib valContext

open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions

open TransactionStructure SVTransactionStructure
open Implementation

makeCloseTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makeCloseTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , (fst , txValue , snd)) →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeUnPaymentTxOut wutxo txValue)
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ []) 
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w) ) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ Close) , 
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                )
            })
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

