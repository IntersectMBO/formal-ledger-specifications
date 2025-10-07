---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/PParams.lagda.md
---
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Crypto
  using (CryptoStructure)
open import Ledger.Dijkstra.Specification.Script
  using (ScriptStructure)
open import Ledger.Dijkstra.Specification.Epoch
  using (EpochStructure)

module Ledger.Dijkstra.Specification.PParams
  (crypto : CryptoStructure )
  (es     : EpochStructure)
  (ss     : ScriptStructure crypto es)
  where

open import Ledger.Conway.Specification.PParams crypto es ss public
```
