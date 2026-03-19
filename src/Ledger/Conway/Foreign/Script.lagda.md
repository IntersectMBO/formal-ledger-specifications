---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Script.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.Script
  (externalFunctions : ExternalFunctions)
  where

open import Ledger.Conway.Foreign.Script.Base public
open import Ledger.Conway.Foreign.Script.Structure externalFunctions public
```
