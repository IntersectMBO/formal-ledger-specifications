---
source_branch: master
source_path: src/Interface/TypeClasses/HasSubset.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

module Interface.TypeClasses.HasSubset where

open import Level using (Level; suc)
```
-->

```agda
record HasSubset {a} (A : Set a) : Set (suc a) where
  field _⊆_ : A → A → Set a
  infix 4 _⊆_
```

<!--
```agda
open HasSubset ⦃...⦄ public
```
-->
