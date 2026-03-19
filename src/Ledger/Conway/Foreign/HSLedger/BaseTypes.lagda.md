---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/BaseTypes.lagda.md
---
```agda
module Ledger.Conway.Foreign.HSLedger.BaseTypes where

open import Ledger.Core.Foreign.ExternalFunctions
open import Ledger.Conway.Foreign.HSLedger.ExternalStructures dummyExternalFunctions
  renaming (HSTransactionStructure to DummyTransactionStructure; HSAbstractFunctions to DummyAbstractFunctions)
  public
