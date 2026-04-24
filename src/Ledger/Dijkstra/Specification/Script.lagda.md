---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Script.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto using (CryptoStructure)
open import Ledger.Core.Specification.Epoch using (EpochStructure)

module Ledger.Dijkstra.Specification.Script
  (cs : CryptoStructure) (open CryptoStructure cs)
  (es : EpochStructure) (open EpochStructure es)
  (Network : Type) (DecEq-Network : DecEq Network)
  where

open import Ledger.Dijkstra.Specification.Script.Base cs es Network DecEq-Network public
open import Ledger.Dijkstra.Specification.Script.Native cs es Network DecEq-Network public
```
