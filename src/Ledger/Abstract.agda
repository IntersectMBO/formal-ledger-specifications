{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Types

module Ledger.Abstract 
  (types : _) (open TypesStructure types)
  (txs : TransactionStructure) 
  where

open TransactionStructure txs
open import Ledger.Certs govStructure

record indexOf : Type where
  field
    indexOfDCert    : DCert → List DCert → Maybe Ix
    indexOfRwdAddr  : RwdAddr → Wdrl → Maybe Ix
    indexOfTxIn     : TxIn → ℙ TxIn → Maybe Ix
    indexOfPolicyId : ScriptHash → ℙ ScriptHash → Maybe Ix
    indexOfVote     : Voter → List Voter → Maybe Ix
    indexOfProposal : GovProposal → List GovProposal → Maybe Ix

record AbstractFunctions : Type where
  field txscriptfee  : Prices → ExUnits → Coin
        serSize      : Value → MemoryEstimate
        indexOfImp   : indexOf
        runPLCScript : CostModel → PlutusScript → ExUnits → List Data → Bool
        scriptSize   : Script → ℕ
