---
source_branch: master
source_path: src/Ledger/Core/Specification/ProtocolVersion.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Core.Specification.ProtocolVersion where

open import Ledger.Prelude

private
  variable
    m n : ℕ
```
-->

# Protocol Version {#sec:protocol-version}

```agda
ProtVer : Type
ProtVer = ℕ × ℕ

pvMajor : ProtVer → ℕ
pvMajor = proj₁

pvMinor : ProtVer → ℕ
pvMinor = proj₂
```

```agda
data pvCanFollowMajor : ProtVer → ProtVer → Type where
  canFollowMajor : pvCanFollowMajor (m + 1 , 0) (m , n)

data pvCanFollowMinor : ProtVer → ProtVer → Type where
  canFollowMinor : pvCanFollowMinor (m , n + 1) (m , n)

pvCanFollow : ProtVer → ProtVer → Type
pvCanFollow v₁ v₂ = pvCanFollowMajor v₁ v₂ ⊎ pvCanFollowMinor v₁ v₂
```

<!--
```agda
instance
  Show-ProtVer : Show ProtVer
  Show-ProtVer = Show-×

  Dec-pvCanFollowMajor : ∀ {pv} {pv'} → Dec (pvCanFollowMajor pv pv')
  Dec-pvCanFollowMajor {pv} {m , n} with pv ≟ (m + 1 , 0)
  ... | yes refl = yes canFollowMajor
  ... | no ¬p = no (λ { canFollowMajor → ¬p refl })

  Dec-pvCanFollowMinor : ∀ {pv} {pv'} → Dec (pvCanFollowMinor pv pv')
  Dec-pvCanFollowMinor {pv} {m , n} with pv ≟ (m , n + 1)
  ... | yes refl = yes canFollowMinor
  ... | no ¬p = no (λ { canFollowMinor → ¬p refl })

  pvCanFollowMajor? : pvCanFollowMajor ⁇²
  pvCanFollowMajor? = ⁇ Dec-pvCanFollowMajor

  pvCanFollowMinor? : pvCanFollowMinor ⁇²
  pvCanFollowMinor? = ⁇ Dec-pvCanFollowMinor

pvCanFollow? : ∀ {pv} {pv'} → Dec (pvCanFollow pv pv')
pvCanFollow? = Dec-pvCanFollowMajor ⊎-dec Dec-pvCanFollowMinor
```
-->
