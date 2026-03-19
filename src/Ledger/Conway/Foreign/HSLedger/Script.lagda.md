---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/Script.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.HSLedger.Script
  (externalFunctions : ExternalFunctions)
  where

open import Ledger.Conway.Foreign.HSLedger.Script.Base public
open import Ledger.Conway.Foreign.HSLedger.Script.Structure externalFunctions public
```
