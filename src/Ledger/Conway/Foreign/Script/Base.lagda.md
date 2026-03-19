---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Script/Base.lagda.md
---
```agda

module Ledger.Conway.Foreign.Script.Base
  where

open import Foreign.HaskellTypes.Deriving
open import Foreign.Convertible.Deriving
open import Tactic.Derive.Show

open import Ledger.Prelude

data HSLanguage : Type where
  PV1 PV2 PV3 : HSLanguage

instance
  HsType-HSLanguage = autoHsType HSLanguage
  Convert-HSLanguage = autoConvert HSLanguage

instance
  unquoteDecl DecEq-HSLanguage = derive-DecEq ((quote HSLanguage , DecEq-HSLanguage) ∷ [])
  unquoteDecl Show-HSLanguage = derive-Show ((quote HSLanguage , Show-HSLanguage) ∷ [])
```

