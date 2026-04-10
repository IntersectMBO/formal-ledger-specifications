---
source_branch: master
source_path: src/Interface/TypeClasses/HasSubtract/Instances.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

module Interface.TypeClasses.HasSubtract.Instances where

open import Interface.TypeClasses.HasSubtract

open import Data.Integer as ℤ using (ℤ)
open import Data.Nat     as ℕ using (ℕ)
```
-->

```agda
instance
  HasSubtract-ℕ : HasSubtract ℕ ℕ
  HasSubtract-ℕ ._-_ = ℕ._∸_

  HasSubtract-ℤ : HasSubtract ℤ ℤ
  HasSubtract-ℤ ._-_ = ℤ._-_

  HasSubtract-ℕ-ℤ : HasSubtract ℕ ℤ
  HasSubtract-ℕ-ℤ ._-_ = ℤ._⊖_
```
