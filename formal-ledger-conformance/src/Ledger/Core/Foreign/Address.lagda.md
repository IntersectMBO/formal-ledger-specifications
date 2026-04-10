---
source_branch: master
source_path: src/Ledger/Core/Foreign/Address.lagda.md
---
```agda
module Ledger.Core.Foreign.Address where

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes
open import Ledger.Core.Specification.Address ℕ ℕ ℕ ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄

open import Foreign.Convertible 
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes.Deriving
open import stdlib.Foreign.Haskell.Empty

instance
  HsTy-Credential = autoHsType Credential
  Conv-Credential = autoConvert Credential

  HsTy-BaseAddr = autoHsType BaseAddr ⊣ fieldPrefix "base"
  Conv-BaseAddr = autoConvert BaseAddr

  HsTy-BootstrapAddr = autoHsType BootstrapAddr ⊣ fieldPrefix "boot"
  Conv-BootstrapAddr = autoConvert BootstrapAddr

  HsTy-RewardAddress = autoHsType RewardAddress ⊣ fieldPrefix "rwd"
  Conv-RewardAddress = autoConvert RewardAddress

unquoteDecl = do
  hsTypeAlias Addr
```
