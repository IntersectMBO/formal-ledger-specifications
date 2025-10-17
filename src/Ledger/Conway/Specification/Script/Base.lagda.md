---
source_branch: master
source_path: src/Ledger/Conway/Specification/Script/Base.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Algebra.Morphism
open import Data.List.Relation.Unary.All using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
open import Data.Nat.Properties using (+-0-commutativeMonoid; suc-injective)

open import stdlib.Data.List.Relation.Unary.MOf


open import Ledger.Prelude hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch

module Ledger.Conway.Specification.Script.Base
  (cs : _) (open CryptoStructure cs)
  (es : _) (open EpochStructure es)
  where

record P1ScriptStructure : Type₁ where
  field P1Script : Type
        validP1Script : ℙ KeyHash → Maybe Slot × Maybe Slot → P1Script → Type
        ⦃ Dec-validP1Script ⦄ : validP1Script ⁇³
        ⦃ Hashable-P1Script ⦄ : Hashable P1Script ScriptHash
        ⦃ DecEq-P1Script    ⦄ : DecEq P1Script

record PlutusStructure : Type₁ where
  field Dataʰ : HashableSet
        Language PlutusScript CostModel Prices LangDepView ExUnits : Type
        PlutusV1 PlutusV2 PlutusV3   : Language
        ⦃ ExUnit-CommutativeMonoid ⦄ : CommutativeMonoid 0ℓ 0ℓ ExUnits
        ⦃ Hashable-PlutusScript    ⦄ : Hashable PlutusScript ScriptHash
        ⦃ DecEq-Language           ⦄ : DecEq Language
        ⦃ DecEq-CostModel          ⦄ : DecEq CostModel
        ⦃ DecEq-LangDepView        ⦄ : DecEq LangDepView
        ⦃ Show-CostModel           ⦄ : Show CostModel

  field  _≥ᵉ_              : ExUnits → ExUnits → Type
         ⦃ DecEq-ExUnits ⦄ : DecEq ExUnits
         ⦃ DecEQ-Prices  ⦄ : DecEq Prices
         ⦃ Show-ExUnits  ⦄ : Show ExUnits
         ⦃ Show-Prices   ⦄ : Show Prices

  open HashableSet Dataʰ renaming (T to Data; THash to DataHash) public

  -- Type aliases for Data
  Datum    = Data
  Redeemer = Data

  field validPlutusScript : CostModel → List Data → ExUnits → PlutusScript → Type
        ⦃ Dec-validPlutusScript ⦄ : ∀ {x} → (validPlutusScript x ⁇³)
        language : PlutusScript → Language
       -- toData : ∀ {A : Type} → A → Data

record ScriptStructure : Type₁ where

  field p1s : P1ScriptStructure

  open P1ScriptStructure p1s public

  field hashRespectsUnion :
          {A B Hash : Type} → Hashable A Hash → Hashable B Hash → Hashable (A ⊎ B) Hash

  field ps : PlutusStructure
  open PlutusStructure ps public
    renaming ( PlutusScript       to P2Script
             ; validPlutusScript  to validP2Script
             )

  Script = P1Script ⊎ P2Script

  open import Data.Empty
  open import Agda.Builtin.Equality
  open import Relation.Binary.PropositionalEquality

  instance
    Hashable-Script : Hashable Script ScriptHash
    Hashable-Script = hashRespectsUnion Hashable-P1Script Hashable-PlutusScript

  isP1Script : Script → Type
  isP1Script = T ∘ is-just ∘ isInj₁

  isP1Script? : ∀ {s} → isP1Script s ⁇
  isP1Script? {inj₁ x} .dec = yes tt
  isP1Script? {inj₂ y} .dec = no λ ()

  isNativeScript : Script → Type
  isNativeScript = isP1Script

  toP1Script : Script → Maybe P1Script
  toP1Script = isInj₁

  isP2Script : Script → Type
  isP2Script = T ∘ is-just ∘ isInj₂

  isP2Script? : ∀ {s} → isP2Script s ⁇
  isP2Script? {inj₁ x} .dec = no λ ()
  isP2Script? {inj₂ y} .dec = yes tt

  toP2Script : Script → Maybe P2Script
  toP2Script = isInj₂
```
