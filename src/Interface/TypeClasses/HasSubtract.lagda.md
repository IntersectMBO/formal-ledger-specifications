---
source_branch: master
source_path: src/Interface/TypeClasses/HasSubtract.lagda.md
---

<!--
```agda
{-# OPTIONS --safe --cubical-compatible #-}
module Interface.TypeClasses.HasSubtract where

open import Agda.Primitive using () renaming (Set to Type)
```
-->

```agda
record HasSubtract (A B : Type) : Type where
  infixl 6 _-_
  field _-_ : A → A → B
```

<!--
```agda
open HasSubtract ⦃ ... ⦄ public
```
