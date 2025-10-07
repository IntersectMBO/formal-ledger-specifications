---
source_branch: master
source_path: src/Ledger/Conway/Specification/Script/Timelock.lagda
---

# Timelock Scripts {#sec:timelock-scripts}

This section defines `Timelock`{.AgdaDatatype} scripts, which verify the presence of
keys and whether a transaction happens in a certain slot interval.  The scripts
are executed as part of the regular witnessing.

<!--
```agda
{-# OPTIONS --safe #-}

open import Algebra.Morphism
open import Data.List.Relation.Unary.All using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
open import Data.Nat.Properties using (+-0-commutativeMonoid; suc-injective)

open import stdlib.Data.List.Relation.Unary.MOf

open import Tactic.Derive.DecEq
open import Tactic.Inline

open import Ledger.Prelude hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)
open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch

module Ledger.Conway.Specification.Script.Timelock
  (cs : _) (open CryptoStructure cs)
  (es : _) (open EpochStructure es)
  where

open import Ledger.Prelude
  hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)

open import Data.List.Relation.Unary.All
  using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
  using (Any; any?)
open import stdlib.Data.List.Relation.Unary.MOf
```
-->

## The <span class="AgdaDatatype">Timelock</span> Type {#sec:the-timelock-type}

```agda
data Timelock : Type where
  RequireAllOf       : List Timelock      → Timelock
  RequireAnyOf       : List Timelock      → Timelock
  RequireMOf         : ℕ → List Timelock  → Timelock
  RequireSig         : KeyHash            → Timelock
  RequireTimeStart   : Slot               → Timelock
  RequireTimeExpire  : Slot               → Timelock
```

<!--
```agda
unquoteDecl DecEq-Timelock = derive-DecEq ((quote Timelock , DecEq-Timelock) ∷ [])

private variable
  s : Timelock
  ss ss' : List Timelock
  m : ℕ
  x : KeyHash
  a l r : Slot

open import Data.List.Relation.Binary.Sublist.Propositional as S
import Data.Maybe.Relation.Unary.Any as M
```
-->

## The <span class="AgdaDatatype">evalTimelock</span> Type {#sec:the-evaltimelock-type}

```agda
data evalTimelock (khs : ℙ KeyHash) (I : Maybe Slot × Maybe Slot) : Timelock → Type where
  evalAll : All (evalTimelock khs I) ss → (evalTimelock khs I) (RequireAllOf ss)
  evalAny : Any (evalTimelock khs I) ss → (evalTimelock khs I) (RequireAnyOf ss)
  evalMOf : MOf m (evalTimelock khs I) ss → (evalTimelock khs I) (RequireMOf m ss)
  evalSig : x ∈ khs → (evalTimelock khs I) (RequireSig x)
  evalTSt : M.Any (a ≤_) (I .proj₁) → (evalTimelock khs I) (RequireTimeStart a)
  evalTEx : M.Any (_≤ a) (I .proj₂) → (evalTimelock khs I) (RequireTimeExpire a)
```

<!--
```agda
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
```
-->
