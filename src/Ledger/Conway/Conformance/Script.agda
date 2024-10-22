
{-# OPTIONS --safe #-}

open import Algebra.Morphism
open import Data.List.Relation.Unary.All using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
open import Data.Nat.Properties using (+-0-commutativeMonoid; suc-injective)

open import Data.List.Relation.Unary.MOf

open import Tactic.Derive.DecEq
open import Tactic.Inline

open import Ledger.Prelude hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)
open import Ledger.Conway.Conformance.Crypto
open import Ledger.Conway.Conformance.Types.Epoch

module Ledger.Conway.Conformance.Script
  (crypto : _) (open Crypto crypto)
  (es     : _) (open EpochStructure es)
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
        toData : ∀ {A : Type} → A → Data

data Timelock : Type where
  RequireAllOf       : List Timelock      → Timelock
  RequireAnyOf       : List Timelock      → Timelock
  RequireMOf         : ℕ → List Timelock  → Timelock
  RequireSig         : KeyHash            → Timelock
  RequireTimeStart   : Slot               → Timelock
  RequireTimeExpire  : Slot               → Timelock

unquoteDecl DecEq-Timelock = derive-DecEq ((quote Timelock , DecEq-Timelock) ∷ [])

private variable
  s : Timelock
  ss ss' : List Timelock
  m : ℕ
  x : KeyHash
  a l r : Slot

open import Data.List.Relation.Binary.Sublist.Ext
open import Data.List.Relation.Binary.Sublist.Propositional as S
import Data.Maybe.Relation.Unary.Any as M

data

  evalTimelock (khs : ℙ KeyHash) (I : Maybe Slot × Maybe Slot) : Timelock → Type where
  evalAll  : All (evalTimelock khs I) ss
           → (evalTimelock khs I) (RequireAllOf ss)
  evalAny  : Any (evalTimelock khs I) ss
           → (evalTimelock khs I) (RequireAnyOf ss)
  evalMOf  : MOf m (evalTimelock khs I) ss
           → (evalTimelock khs I) (RequireMOf m ss)
  evalSig  : x ∈ khs
           → (evalTimelock khs I) (RequireSig x)
  evalTSt  : M.Any (a ≤_) (I .proj₁)
           → (evalTimelock khs I) (RequireTimeStart a)
  evalTEx  : M.Any (_≤ a) (I .proj₂)
           → (evalTimelock khs I) (RequireTimeExpire a)

instance
  Dec-evalTimelock : evalTimelock ⁇³
  Dec-evalTimelock {khs} {I} {tl} .dec = go? tl
    where mutual
      go = evalTimelock khs I

      -- ** inversion principles for `evalTimelock`
      evalAll˘ : ∀ {ss} → go (RequireAllOf ss) → All go ss
      evalAll˘ (evalAll p) = p

      evalAny˘ : ∀ {ss} → go (RequireAnyOf ss) → Any go ss
      evalAny˘ (evalAny p) = p

      evalTSt˘ : go (RequireTimeStart a) → M.Any (a ≤_) (I .proj₁)
      evalTSt˘ (evalTSt p) = p

      evalTEx˘ : go (RequireTimeExpire a) → M.Any (_≤ a) (I .proj₂)
      evalTEx˘ (evalTEx p) = p

      evalSig˘ : go (RequireSig x) → x ∈ khs
      evalSig˘ (evalSig p) = p

      evalMOf˘ : ∀ {m xs}
        → go (RequireMOf m xs)
        → MOf m go xs
      evalMOf˘ (evalMOf p) = p

      -- ** inlining recursive decision procedures to please the termination checker
      MOf-go? : ∀ m xs → Dec (MOf m go xs)
      unquoteDef MOf-go? = inline MOf-go? (quoteTerm (MOf? go?))

      all-go? : Decidable¹ (All go)
      unquoteDef all-go? = inline all-go? (quoteTerm (all? go?))

      any-go? : Decidable¹ (Any go)
      unquoteDef any-go? = inline any-go? (quoteTerm (any? go?))

      -- ** the actual decision procedure
      go? : Decidable¹ go
      go? = λ where
        (RequireAllOf ss)     → mapDec evalAll evalAll˘ (all-go? ss)
        (RequireAnyOf ss)     → mapDec evalAny evalAny˘ (any-go? ss)
        (RequireSig x)        → mapDec evalSig evalSig˘ dec
        (RequireTimeStart a)  → mapDec evalTSt evalTSt˘ dec
        (RequireTimeExpire a) → mapDec evalTEx evalTEx˘ dec
        (RequireMOf m xs)     → mapDec evalMOf evalMOf˘ (MOf-go? m xs)

record HashedTimelock : Type where
  field
    timelock : Timelock
    storedHash : ScriptHash

instance
  Hashable-HashedTimelock : Hashable HashedTimelock ScriptHash
  Hashable-HashedTimelock .hash = HashedTimelock.storedHash

unquoteDecl DecEq-HashedTimelock = derive-DecEq ((quote HashedTimelock , DecEq-HashedTimelock) ∷ [])

P1ScriptStructure-TL : P1ScriptStructure
P1ScriptStructure-TL = record
  { P1Script = HashedTimelock
  ; validP1Script = λ x y → evalTimelock x y ∘ HashedTimelock.timelock }

record ScriptStructure : Type₁ where
  p1s : P1ScriptStructure
  p1s = P1ScriptStructure-TL
  open P1ScriptStructure p1s public

  field hashRespectsUnion :
          {A B Hash : Type} → Hashable A Hash → Hashable B Hash → Hashable (A ⊎ B) Hash
        ⦃ Hash-Timelock ⦄ : Hashable P1Script ScriptHash

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

