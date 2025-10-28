---
source_branch: master
source_path: src/Interface/HasSubtract/Instances.lagda.md
---

```agda
{-# OPTIONS --safe #-}

module Interface.HasSubtract.Instances where

open import Interface.HasSubtract

open import Data.Integer as ℤ using (ℤ)
open import Data.Nat     as ℕ using (ℕ)

instance
  HasSubtract-ℕ : HasSubtract ℕ ℕ
  HasSubtract-ℕ ._-_ = ℕ._∸_

  HasSubtract-ℤ : HasSubtract ℤ ℤ
  HasSubtract-ℤ ._-_ = ℤ._-_

  HasSubtract-ℕ-ℤ : HasSubtract ℕ ℤ
  HasSubtract-ℕ-ℤ ._-_ = ℤ._⊖_
```
