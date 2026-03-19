---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/Script/Structure.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.HSLedger.Script.Structure
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
open import Ledger.Conway.Foreign.HSLedger.Script.Base

instance
  _ = HSCryptoStructure externalFunctions
  _ = HSEpochStructure
  _ = HSGlobalConstants

open import Ledger.Conway.Specification.Script.Base it it
open import Ledger.Conway.Specification.Script.Timelock it it public

record HSTimelock : Type where
  field
    timelock     : Timelock
    tlScriptHash : ℕ
    tlScriptSize : ℕ

instance
  Hashable-HSTimelock : Hashable HSTimelock ℕ
  Hashable-HSTimelock .hash = HSTimelock.tlScriptHash

unquoteDecl DecEq-HSTimelock = derive-DecEq ((quote HSTimelock , DecEq-HSTimelock) ∷ [])

HSP1ScriptStructure : P1ScriptStructure
HSP1ScriptStructure = record
  { P1Script = HSTimelock
  ; validP1Script = λ x y → evalTimelock x y ∘ HSTimelock.timelock }

record HSPlutusScript : Type where
  constructor MkHSPlutusScript
  field psScriptHash : ℕ
        psScriptSize : ℕ
        psScriptLanguage : HSLanguage

HSP2ScriptStructure : PlutusStructure
HSP2ScriptStructure = record {
    Dataʰ = HashableSet-ℕ
  ; CostModel = ⊤
  ; Prices = ⊤
  ; LangDepView = ⊤
  ; ExUnits = ℕ × ℕ 
  ; Language = HSLanguage
  ; PlutusV1 = PV1
  ; PlutusV2 = PV2
  ; PlutusV3 = PV3
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
