---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Script.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Crypto using (CryptoStructure)
open import Ledger.Core.Specification.Epoch using (EpochStructure)

module Ledger.Dijkstra.Specification.Script
  (cs : CryptoStructure)
  (es : EpochStructure)
  where

open import Ledger.Dijkstra.Specification.Script.Base cs es public
open import Ledger.Conway.Specification.Script.Timelock cs es public
```
