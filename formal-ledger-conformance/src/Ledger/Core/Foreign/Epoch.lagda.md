---
source_branch: master
source_path: src/Ledger/Core/Foreign/Epoch.lagda.md
---
```agda
module Ledger.Core.Foreign.Epoch where

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Core.Specification.Epoch public

open import Data.Integer as ℤ
open import Data.Rational as ℚ

HSGlobalConstants : GlobalConstants
HSGlobalConstants = record {
  Network = ℕ
  ; SlotsPerEpochᶜ = 4320
  ; ActiveSlotCoeff = ℤ.1ℤ ℚ./ 20
  ; RandomnessStabilisationWindowᶜ = 10
  ; StabilityWindowᶜ = 10
  ; MaxLovelaceSupplyᶜ = 1
  ; Quorum = 1
  ; NetworkId = 0
  }

HSEpochStructure : EpochStructure
HSEpochStructure = ℕEpochStructure HSGlobalConstants

open EpochStructure HSEpochStructure

unquoteDecl =
  hsTypeAlias Epoch
```
