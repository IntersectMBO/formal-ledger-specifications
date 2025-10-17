---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs.lagda.md
---
```agda
{-# OPTIONS --safe #-}
open import Ledger.Conway.Specification.Gov.Base
  using (GovStructure)

module Ledger.Dijkstra.Specification.Certs
  (gs : GovStructure) where

open import Ledger.Conway.Specification.Certs gs public
```
