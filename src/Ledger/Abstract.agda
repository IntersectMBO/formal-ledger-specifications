{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}

open import Ledger.Transaction

module Ledger.Abstract (txs : TransactionStructure) where

open import Ledger.Prelude hiding (Dec₁)
open TransactionStructure txs

record indexOf : Set where
  field
    indexOfDCert    : DCert → List DCert → Maybe Ix
    indexOfRwdAddr  : RwdAddr → Wdrl → Maybe Ix
    indexOfTxIn     : TxIn → ℙ TxIn → Maybe Ix
    indexOfPolicyId : PolicyId → ℙ PolicyId → Maybe Ix

record AbstractFunctions : Set where
  field txscriptfee : Prices → ExUnits → Coin
        serSize     : Value → MemoryEstimate
        indexOfImp  : indexOf
