---
source_branch: master
source_path: src/Interface/HasSubtract.lagda.md
---

```agda
{-# OPTIONS --safe --cubical-compatible #-}
module Interface.HasSubtract where

open import Agda.Primitive using () renaming (Set to Type)

record HasSubtract (A B : Type) : Type where
  infixl 6 _-_
  field _-_ : A → A → B

open HasSubtract ⦃ ... ⦄ public
```
