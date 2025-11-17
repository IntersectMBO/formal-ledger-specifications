```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Abstract (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Dijkstra.Specification.Certs govStructure

record indexOf : Type where
  field
    indexOfDCert    : DCert → List DCert → Maybe Ix
    indexOfRewardAddress  : RewardAddress → Withdrawals → Maybe Ix
    indexOfTxIn     : TxIn → ℙ TxIn → Maybe Ix
    indexOfPolicyId : ScriptHash → ℙ ScriptHash → Maybe Ix
    indexOfVote     : GovVoter → List GovVoter → Maybe Ix
    indexOfProposal : GovProposal → List GovProposal → Maybe Ix
    indexOfGuard    : TxId × ScriptHash → ℙ (TxId × ScriptHash) → Maybe Ix

record AbstractFunctions : Type where
  field txScriptFee     : Prices → ExUnits → Fees
        serializedSize  : Value → MemoryEstimate
        indexOfImp      : indexOf
        runPLCScript    : CostModel → P2Script → ExUnits → List Data → Bool
        scriptSize      : Script → ℕ
```
