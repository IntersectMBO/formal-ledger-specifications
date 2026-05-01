---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Script.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Dijkstra.Foreign.Script
  (externalFunctions : ExternalFunctions)
  where

open import Ledger.Dijkstra.Foreign.Script.Base public
open import Ledger.Dijkstra.Foreign.Script.Structure externalFunctions public
```
