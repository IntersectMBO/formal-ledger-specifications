{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.DEx.OffChain.Exchange where

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

scriptETxOut : Label → TxOut → (w : ℕ) → (v : Value) → TxOut
scriptETxOut (Always q o) (fst , txValue , snd) w v = (fst , (txValue - v) , (just (inj₁ (inj₁ (inj₁ (Always q o))))) , nothing)


makeExchangeTxOut : Label → (scriptIx : ℕ) → TxOut → (w : ℕ) → (v : Value) → List (ℕ × TxOut)
makeExchangeTxOut (Always r o) ix txo w v =
            (ix , scriptETxOut (Always r o) txo w v) ∷
            (2 , ((inj₁ (record { net = 0 ; pay = KeyHashObj o ; stake = just (KeyHashObj o) })) ,
              (ratioValue v r , nothing , nothing)))∷ []



makeExchangeTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → (v : Value) → Maybe Tx
makeExchangeTx id state script@(sh , _) w v = 
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ {(Always r o) →
    just (
          record { body = record defaultTxBody
                         { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txOuts = fromListIx (makeFeeSwapTxOut wutxo v (ratioValue v r) ++ makeExchangeTxOut (Always r o) (proj₂ scIn) scOut w v )
                         ; txId = id
                         ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                         ; reqSignerHashes = Ledger.Prelude.fromList (w ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addNat}} (getTxId wutxo) w)) ∷ []) ;
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats = ∅ ; 
                                txrdmrs = fromListᵐ (((Spend , (proj₂ scIn)) ,
                                                      inj₁ (inj₂ (Exchange w v)) , 
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                txsize = 10 ;
                isValid = true ;
                txAD = nothing }
                )}) 
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))
