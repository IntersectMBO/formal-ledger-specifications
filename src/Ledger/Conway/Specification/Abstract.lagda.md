---
source_branch: master
source_path: src/Ledger/Conway/Specification/Abstract.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Abstract (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Conway.Specification.Certs govStructure

record indexOf : Type where
  field
    indexOfDCert    : DCert → List DCert → Maybe Ix
    indexOfRwdAddr  : RwdAddr → Withdrawals → Maybe Ix
    indexOfTxIn     : TxIn → ℙ TxIn → Maybe Ix
    indexOfPolicyId : ScriptHash → ℙ ScriptHash → Maybe Ix
    indexOfVote     : GovVoter → List GovVoter → Maybe Ix
    indexOfProposal : GovProposal → List GovProposal → Maybe Ix

record AbstractFunctions : Type where
  field txscriptfee  : Prices → ExUnits → Coin
        serSize      : Value → MemoryEstimate
        indexOfImp   : indexOf
        runPLCScript : CostModel → P2Script → ExUnits → List Data → Bool
        scriptSize   : Script → ℕ
```
