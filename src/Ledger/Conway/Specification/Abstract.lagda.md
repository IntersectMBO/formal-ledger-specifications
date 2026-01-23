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

ValidityInterval = Maybe Slot × Maybe Slot
```

In the Alonzo specification [VK21,](#alonzo-ledger-spec),
`transVITime`{.AgdaFunction} is implemented in terms of operations coming from
the plutus library. We defer bringing these operations to Agda until we actually
need them by defining `transVITime`{.AgdaFunction} as abstract.

```agda
record AbstractFunctions : Type₁ where
  field UTCTime      : Type
        POSIXTimeRange : Type
        EpochInfo    : Type
        SystemStart  : Type
        EI           : EpochInfo
        SysSt        : SystemStart
        txscriptfee  : Prices → ExUnits → Coin
        serSize      : Value → MemoryEstimate
        indexOfImp   : indexOf
        runPLCScript : CostModel → P2Script → ExUnits → List Data → Bool
        scriptSize   : Script → ℕ
        valContext   : TxInfo → ScriptPurpose → Data
        getLanguageView : PParams → Language → LangDepView
        epochInfoSlotToUTCTime : EpochInfo → SystemStart → Slot → Maybe UTCTime

        -- Translates a ValidityInterval, which is expressed in slots, to a
        -- POSIXTimeRange, expressed in terms of POSIXTime.
        transVITime : EpochInfo → SystemStart → ValidityInterval → POSIXTimeRange
```

## References {#references .unnumbered}

**\[VK21\]** <span id="alonzo-ledger-spec"
label="alonzo-ledger-spec"></span> Polina Vinogradova and Andre Knispel.
*A Formal Specification of the Cardano Ledger integrating Plutus Core*.
2021.
