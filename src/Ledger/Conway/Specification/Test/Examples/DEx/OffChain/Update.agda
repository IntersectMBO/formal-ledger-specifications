{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.DEx.OffChain.Update where

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

import Data.Rational.Base as Q



makeUpdateTxOut : Label → (scriptIx w : ℕ) → Value → Q.ℚ → TxOut → List (ℕ × TxOut)
makeUpdateTxOut (Always q o) ix w v r (fst , txValue , snd) =
  (ix , (fst , v ,  just (inj₁ (inj₁ (inj₁ (Always r o)))) , nothing)) ∷ [] 

makeUpdateTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Value → Q.ℚ → Maybe Tx
makeUpdateTx id state script@(sh , _) w v r =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , (fst , txValue , snd)) → maybe (λ label →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeSwapTxOut wutxo txValue v ++ makeUpdateTxOut label (proj₂ scIn) w v r (fst , txValue , snd) )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ []) 
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Input.Update v r)) , 
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                ))
            nothing
            (getLabel (fst , txValue , snd))})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))

