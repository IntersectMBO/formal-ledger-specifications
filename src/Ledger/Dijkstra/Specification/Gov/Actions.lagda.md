---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov/Actions.lagda.md
---
```agda
{-# OPTIONS --safe #-}
open import Ledger.Conway.Specification.Gov.Base
  using (GovStructure)
module Ledger.Dijkstra.Specification.Gov.Actions
  (gs : GovStructure) where

open import Ledger.Conway.Specification.Gov.Actions gs public
```
