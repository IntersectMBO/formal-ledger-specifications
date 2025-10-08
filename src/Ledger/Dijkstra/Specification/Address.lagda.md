---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Address.lagda.md
---
```agda
{-# OPTIONS --safe #-}
open import Prelude using (Type; DecEq)
module Ledger.Dijkstra.Specification.Address
  (Network KeyHash ScriptHash : Type)
  ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where

open import Ledger.Core.Specification.Address Network KeyHash ScriptHash public
  renaming (RwdAddr to RewardAddress)
  hiding (Withdrawals)
```
