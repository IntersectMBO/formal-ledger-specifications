<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Core.Specification.ProtocolVersion where
-->

open import Ledger.Prelude

private
  variable
    m n : ℕ
```

```agda
ProtVer : Type
ProtVer = ℕ × ℕ
```

<!--
```agda
instance
  Show-ProtVer : Show ProtVer
  Show-ProtVer = Show-×
```
-->

```agda
data pvCanFollow : ProtVer → ProtVer → Type where
  canFollowMajor : pvCanFollow (m , n) (m + 1 , 0)
  canFollowMinor : pvCanFollow (m , n) (m , n + 1)
```
