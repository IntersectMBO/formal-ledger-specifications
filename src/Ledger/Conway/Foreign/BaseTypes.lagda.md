---
source_branch: master
source_path: src/Ledger/Conway/Foreign/BaseTypes.lagda.md
---
```agda
module Ledger.Conway.Foreign.BaseTypes where

open import Ledger.Core.Foreign.ExternalFunctions
open import Ledger.Conway.Foreign.ExternalStructures dummyExternalFunctions
  renaming (HSTransactionStructure to DummyTransactionStructure; HSAbstractFunctions to DummyAbstractFunctions)
  public
