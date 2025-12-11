---
source_branch: master
source_path: src/Ledger/Core/Specification/Abstract.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction

module Ledger.Core.Specification.Abstract (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Script.ScriptPurpose txs

record indexOf : Type where
  field
    indexOfDCert          : DCert          → List DCert        → Maybe Ix
    indexOfRewardAddress  : RewardAddress  → Withdrawals       → Maybe Ix
    indexOfTxIn           : TxIn           → ℙ TxIn            → Maybe Ix
    indexOfPolicyId       : ScriptHash     → ℙ ScriptHash      → Maybe Ix
    indexOfVote           : GovVoter       → List GovVoter     → Maybe Ix
    indexOfProposal       : GovProposal    → List GovProposal  → Maybe Ix

record AbstractFunctions : Type where
  field txscriptfee  : Prices → ExUnits → Coin
        serSize      : Value → MemoryEstimate
        indexOfImp   : indexOf
        runPLCScript : CostModel → P2Script → ExUnits → List Data → Bool
        scriptSize   : Script → ℕ
        valContext   : TxInfo → ScriptPurpose → Data
