---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/Chain.lagda.md
---
```agda
module Ledger.Conway.Foreign.HSLedger.Chain where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.NewEpoch
open import Ledger.Conway.Foreign.HSLedger.Transaction

open import Ledger.Conway.Conformance.Chain it it
open import Ledger.Conway.Conformance.Chain.Properties it it

instance
  HsTy-ChainState = autoHsType ChainState
  Conv-ChainState = autoConvert ChainState

  HsTy-Block = autoHsType Block
  Conv-Block = autoConvert Block

chain-step : HsType (⊤ → ChainState → Block → ComputationResult String ChainState)
chain-step = to (compute Computational-CHAIN)

{-# COMPILE GHC chain-step as chainStep #-}
```
