---
source_branch: master
source_path: src/Ledger/Prelude/Numeric.lagda.md
---

```agda
{-# OPTIONS --safe #-}

-- Subsets of number types useful for the ledger specification.
module Ledger.Prelude.Numeric where

open import Ledger.Prelude.Numeric.PositiveNat public
  renaming (PosNat to ℕ⁺; fromPosNat to fromℕ⁺; mkPosNat to mkℕ⁺
           ; PosNat-Is>0 to ℕ⁺->0)
open import Ledger.Prelude.Numeric.UnitInterval public
```
