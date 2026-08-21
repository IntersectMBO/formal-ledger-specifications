---
source_branch: master
source_path: src/Ledger/Conway/Specification/Abstract.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Abstract (txs : TransactionStructure) where

open TransactionStructure txs
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Script.ScriptPurpose txs
```
-->

```agda
record indexOf : Type where
  field
    indexOfDCert          : DCert          → List DCert        → Maybe Ix
    indexOfRewardAddress  : RewardAddress  → Withdrawals       → Maybe Ix
    indexOfTxIn           : TxIn           → ℙ TxIn            → Maybe Ix
    indexOfPolicyId       : ScriptHash     → ℙ ScriptHash      → Maybe Ix
    indexOfVote           : GovVoter       → List GovVoter     → Maybe Ix
    indexOfProposal       : GovProposal    → List GovProposal  → Maybe Ix

record AbstractFunctions : Type₁ where
  field txscriptfee  : Prices → ExUnits → Coin
        serSize      : Value → MemoryEstimate
        indexOfImp   : indexOf
        runPLCScript : CostModel → P2Script → ExUnits → List Data → Bool
        scriptSize   : Script → ℕ
        valContext   : TxInfo → ScriptPurpose → Data
        getLanguageView : PParams → Language → LangDepView
        -- EB certificates (abstract for now); EB ids are KeyHashes (see BlockBody):
        --   the endorsement type carried by an EB certificate
        Endorsement : Type
        --   checks the endorsements vouching for the EB named by an id
        checkEndorsements : KeyHash → List Endorsement → Bool
        --   checks that an EB id corresponds to a block with the given body hash
        checkEBID         : KeyHash → KeyHash → Bool
        --   The EB announcement age escape no longer lives here. It used to be
        --   a chain-history oracle (`ebOverdue : Slot → Bool`, true iff no EB
        --   had been announced within the last `ageScape` slots), which needed
        --   unbounded lookback to decide and was measured in slots rather than
        --   in the resource it relieves. It is now the `rbsSinceCert` counter
        --   carried in SDPolicy (Tiers.lagda.md), compared against the
        --   `ebAgeEscape` protocol parameter: O(1) per block, and counted in
        --   Ranking Blocks.
```
