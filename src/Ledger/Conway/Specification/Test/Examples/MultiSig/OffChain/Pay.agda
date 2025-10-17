{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.MultiSig.Datum
open import Ledger.Conway.Specification.Test.Examples.MultiSig.Validator
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
open import Ledger.Conway.Specification.Test.Examples.MultiSig.OffChain.Lib

module Ledger.Conway.Specification.Test.Examples.MultiSig.OffChain.Pay where

payScriptTxOut : TxOut → (value : ℕ) → TxOut
payScriptTxOut (fst , txValue , snd) v = fst , txValue - v , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

-- TODO: Throw error here
-- -- (Ix × TxOut)
makePayTxOut : Label → (scriptIx : ℕ) → TxOut → List (ℕ × TxOut)
makePayTxOut Holding ix txo = []
makePayTxOut (Collecting vl pkh x₂ x₃) ix txo =
            (ix , payScriptTxOut txo vl)
            ∷
             (777 , ((inj₁ (record { net = 0 ; pay = KeyHashObj pkh ; stake = just (KeyHashObj pkh) })) ,
              (vl , nothing , nothing))) ∷ []

makePayTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makePayTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
    just (
            record { body = record defaultTxBody
                                  { txIns = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                                  ; txOuts = fromListIx (makeFeeTxOut wutxo  ++ makePayTxOut label (proj₂ scIn) scOut)
                                  ; txId = id
                                  ; collateralInputs = Ledger.Prelude.fromList (map proj₁ wutxo)
                                  } ;
                          wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                          -- signature now is first number + txId ≡ second number
                                          -- first number is needs to be the id for the script
                                          scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                          txdats = ∅ ; -- fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                          txrdmrs = fromListᵐ (((Spend , proj₂ scIn) ,
                                                                inj₁ (inj₂ Pay) ,
                                                                ((getTxId wutxo) , w)) ∷ []) } ;
                          txsize = 10 ;
                          isValid = true ;
                          txAD = nothing }
                          ))
            nothing
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))
