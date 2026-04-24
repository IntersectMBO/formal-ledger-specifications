---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Script/Structure.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Dijkstra.Foreign.Script.Structure
  (externalFunctions : ExternalFunctions)
  where

open import Algebra.Construct.DirectProduct using (commutativeMonoid)
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-0-commutativeMonoid)
open import Foreign.HaskellTypes.Deriving
open import Foreign.Convertible.Deriving
open import Tactic.Derive.Show

open import Ledger.Prelude

open import Ledger.Core.Foreign.Crypto as Crypto
open import Ledger.Core.Foreign.Crypto
open import Ledger.Core.Foreign.Epoch
open import Ledger.Dijkstra.Foreign.Script.Base

instance
  _ = HSCryptoStructure externalFunctions
  _ = HSEpochStructure
  _ = HSGlobalConstants

open import Ledger.Dijkstra.Specification.Script.Base it it (GlobalConstants.Network it) it
open import Ledger.Dijkstra.Specification.Script.Native it it (GlobalConstants.Network it) it

record HSNativeScript : Type where
  field
    nativeScript : NativeScript
    nsScriptHash  : ℕ
    nsScriptSize  : ℕ

instance
  Hashable-HSNativeScript : Hashable HSNativeScript ℕ
  Hashable-HSNativeScript .hash = HSNativeScript.nsScriptHash

unquoteDecl DecEq-HSNativeScript = derive-DecEq ((quote HSNativeScript , DecEq-HSNativeScript) ∷ [])

HSP1ScriptStructure : P1ScriptStructure
HSP1ScriptStructure = record
  { P1Script = HSNativeScript
  ; validP1Script = λ x y z → EvalNativeScript x y z ∘ HSNativeScript.nativeScript }

record HSPlutusScript : Type where
  constructor MkHSPlutusScript
  field psScriptHash : ℕ
        psScriptSize : ℕ
        psScriptLanguage : HSLanguage

private
  fromPlutusLanguage : PlutusLanguage ↣ HSLanguage
  fromPlutusLanguage .Injection.to V1 = PV1
  fromPlutusLanguage .Injection.to V2 = PV2
  fromPlutusLanguage .Injection.to V3 = PV3
  fromPlutusLanguage .Injection.to V4 = PV4
  fromPlutusLanguage .Injection.cong = cong _
  fromPlutusLanguage .Injection.injective {V1} {y = V1} p = refl
  fromPlutusLanguage .Injection.injective {V2} {y = V2} p = refl
  fromPlutusLanguage .Injection.injective {V3} {y = V3} p = refl
  fromPlutusLanguage .Injection.injective {V4} {y = V4} p = refl

HSP2ScriptStructure : PlutusStructure
HSP2ScriptStructure = record {
    Dataʰ = HashableSet-ℕ
  ; CostModel = ⊤
  ; Prices = ⊤
  ; LangDepView = ⊤
  ; ExUnits = ℕ × ℕ
  ; Language = HSLanguage
  ; fromPlutusLanguage = fromPlutusLanguage 
  ; language = λ z → HSPlutusScript.psScriptLanguage z
  ; validPlutusScript = λ _ _ _ _ → extValidPlutusScript ≡ true
  ; PlutusScript = HSPlutusScript
  ; _≥ᵉ_ = _≡_
  }
  where
    open ExternalFunctions externalFunctions
    instance
      Hashable-HSPlutusScript : Hashable HSPlutusScript ℕ
      Hashable-HSPlutusScript .hash = HSPlutusScript.psScriptHash
      _ = Conversion.fromBundle (commutativeMonoid +-0-commutativeMonoid +-0-commutativeMonoid)
      _ = Show-×

HSScriptStructure : ScriptStructure
HSScriptStructure = record
  { p1s = HSP1ScriptStructure
  ; hashRespectsUnion = hashRespectsUnion
  ; ps = HSP2ScriptStructure
  }
  where
    hashRespectsUnion : ∀ {A B ℍ}
      → Hashable A ℍ → Hashable B ℍ
      → Hashable (A ⊎ B) ℍ
    hashRespectsUnion a _ .hash (inj₁ x) = hash ⦃ a ⦄ x
    hashRespectsUnion _ b .hash (inj₂ y) = hash ⦃ b ⦄ y
```
