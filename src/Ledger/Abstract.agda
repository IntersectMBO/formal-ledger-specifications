{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}

open import Ledger.Transaction

module Ledger.Abstract (txs : TransactionStructure) where

open import Ledger.Prelude hiding (Dec₁)
open TransactionStructure txs

record AbstractFunctions : Set where
  field txscriptfee : Prices → ExUnits → Coin
        serSize : Value → MemoryEstimate
