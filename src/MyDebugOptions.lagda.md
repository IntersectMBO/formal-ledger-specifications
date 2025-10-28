---
source_branch: master
source_path: src/MyDebugOptions.lagda.md
---

```agda
{-# OPTIONS --safe --without-K #-}
module MyDebugOptions where

open import Meta.Init

instance
  defaultDebugOptionsI : DebugOptions
  defaultDebugOptionsI = record defaultDebugOptions
    { selection = All
    ; filter = Filter.⊥ }
```
