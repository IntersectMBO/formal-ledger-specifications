---
source_branch: master
source_path: src/Ledger/Core/Foreign/Crypto/Structure.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Core.Foreign.Crypto
  (externalFunctions : ExternalFunctions) where

open import Ledger.Core.Specification.Crypto public
open import Ledger.Core.Foreign.Crypto.Base public
open import Ledger.Core.Foreign.Crypto.Structure externalFunctions public
```
