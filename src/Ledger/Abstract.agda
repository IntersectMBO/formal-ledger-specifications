{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Abstract (txs : TransactionStructure) where

open TransactionStructure txs

record indexOf : Set where
  field
    indexOfDCert    : DCert → List DCert → Maybe Ix
    indexOfRwdAddr  : RwdAddr → Wdrl → Maybe Ix
    indexOfTxIn     : TxIn → ℙ TxIn → Maybe Ix
    indexOfPolicyId : ScriptHash → ℙ ScriptHash → Maybe Ix
    indexOfVote     : GovVote → List GovVote → Maybe Ix
    indexOfProposal : GovProposal → List GovProposal → Maybe Ix

record AbstractFunctions : Set where
  field txscriptfee : Prices → ExUnits → Coin
        serSize     : Value → MemoryEstimate
        indexOfImp  : indexOf
