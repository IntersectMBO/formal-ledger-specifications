---
source_branch: master
source_path: src/Ledger/Core/Foreign/Crypto/Base.lagda.md
---
```agda
module Ledger.Core.Foreign.Crypto.Base where

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Specification.Crypto

open import Foreign.HaskellTypes.Deriving
open import Foreign.Convertible.Deriving
open import Tactic.Derive.Show

record HSVKey : Type where
  constructor MkHSVKey
  field hvkVKey       : ℕ
        hvkStoredHash : ℕ

unquoteDecl DecEq-HSVKey = derive-DecEq ((quote HSVKey , DecEq-HSVKey) ∷ [])

instance
  Hashable-HSVKey : Hashable HSVKey ℕ
  Hashable-HSVKey = λ where .hash → HSVKey.hvkStoredHash

  isHashableSet-HSVKey : isHashableSet HSVKey
  isHashableSet-HSVKey = mkIsHashableSet ℕ

  Hashable-ℕ : Hashable ℕ ℕ
  Hashable-ℕ = λ where .hash → id

  isHashableSet-ℕ : isHashableSet ℕ
  isHashableSet-ℕ = mkIsHashableSet ℕ

  HashableSet-ℕ : HashableSet
  HashableSet-ℕ = mkHashableSet ℕ

  HsTy-HSVKey = autoHsType HSVKey
  Conv-HSVKey = autoConvert HSVKey

unquoteDecl Show-HSVKey = derive-Show
  ((quote HSVKey , Show-HSVKey) ∷ [])
```

