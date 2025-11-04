---
source_branch: master
source_path: src/Ledger/Conway/Specification/Script.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch

module Ledger.Conway.Specification.Script
  (cs : _) (open CryptoStructure cs)
  (es : _) (open EpochStructure es)
  where

open import Ledger.Core.Specification.Script.Base cs es public
open import Ledger.Core.Specification.Script.Timelock cs es public
```
