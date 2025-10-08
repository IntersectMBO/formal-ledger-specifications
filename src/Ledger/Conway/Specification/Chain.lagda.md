---
source_branch: master
source_path: src/Ledger/Conway/Specification/Chain.lagda.md
---

# Blockchain Layer {#sec:blockchain-layer}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.BlockBody txs abs public
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude; open Equivalence
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.RewardUpdate txs abs
open import Ledger.Conway.Specification.Utxo txs abs

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)
```
-->

## Definition of <span class="AgdaRecord">ChainState</span> {#sec:definition-of-chainstate}

```agda
record ChainState : Type where
  field
    newEpochState  : NewEpochState
```

<!--
```agda
instance
  HasNewEpochState-ChainState : HasNewEpochState ChainState
  HasNewEpochState-ChainState .NewEpochStateOf = ChainState.newEpochState

  HasLastEpoch-ChainState : HasLastEpoch ChainState
  HasLastEpoch-ChainState .LastEpochOf = LastEpochOf ∘ NewEpochStateOf

  HasEpochState-ChainState : HasEpochState ChainState
  HasEpochState-ChainState .EpochStateOf = EpochStateOf ∘ NewEpochStateOf

  HasEnactState-ChainState : HasEnactState ChainState
  HasEnactState-ChainState .EnactStateOf = EnactStateOf ∘ EpochStateOf

  HasLState-ChainState : HasLState ChainState
  HasLState-ChainState .LStateOf = LStateOf ∘ EpochStateOf

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .UTxOStateOf = UTxOStateOf ∘ LStateOf

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .CertStateOf = CertStateOf ∘ LStateOf

  HasDeposits-ChainState : HasDeposits ChainState
  HasDeposits-ChainState .DepositsOf = DepositsOf ∘ UTxOStateOf

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .PParamsOf = PParamsOf ∘ EnactStateOf

totalRefScriptsSize : LState → List Tx → ℕ
totalRefScriptsSize lst txs = sum $ map (refScriptsSize utxo) txs
  where open UTxOState (LState.utxoSt lst)

private variable
  ls' : LState
```
-->

## The <span class="AgdaDatatype">CHAIN</span> Transition System {#sec:the-chain-transition-system}

```agda
data _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type where

  CHAIN : ∀ {bcur'} {b : Block} {nes : NewEpochState} {cs : ChainState}
```

<!--
```agda
    → let open ChainState cs; open Block b; open BHeader bheader
          open BHBody bhbody; open NewEpochState nes
          open EpochState epochState; open EnactState es renaming (pparams to pp)
          open PParams ∣ pp ∣ using (maxRefScriptSizePerBlock) in
```
-->

```agda
    let  cs'  = record cs {  newEpochState
                             = record nes {  bcur = bcur';
                                             epochState
                                             = record epochState {ls = ls'} } }
    in
    ∙ totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock
    ∙ tt ⊢ newEpochState ⇀⦇ slot ,TICK⦈ nes
    ∙ (es , acnt) ⊢ (ls , bcur) ⇀⦇ b ,BBODY⦈ (ls' , bcur')
      ────────────────────────────────
      _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
```
