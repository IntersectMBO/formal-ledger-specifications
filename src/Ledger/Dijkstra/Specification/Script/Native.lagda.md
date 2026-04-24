---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Script/Native.lagda.md
---

# Native Scripts {#sec:native-scripts}

This section defines native scripts, which verify the presence of
verification keys, whether a transaction happens in a certain slot
interval, and the presence of guarding credentials.  Native scripts
are evaluated as part of the phase-1 validation. Native scripts
replace Timelock scripts from Conway era.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Prelude
  hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch

module Ledger.Dijkstra.Specification.Script.Native
  (cs : _) (open CryptoStructure cs)
  (es : _) (open EpochStructure es)
  (Network : Type)
  (DecEq-Network : DecEq Network)
  where

instance
  _ = DecEq-Network

open import Ledger.Core.Specification.Address Network KeyHash ScriptHash 

open import Data.List.Relation.Unary.All
  using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
  using (Any; any?)
open import stdlib.Data.List.Relation.Unary.MOf
open import Tactic.Derive.DecEq
import Data.Maybe.Relation.Unary.Any as M
```
-->

## The <span class="AgdaDatatype">NativeScript</span> Type {#sec:the-nativescript-type}

Native scripts are defined by the type `NativeScript`{.AgdaDatatype}.
`NativeScript`{.AgdaDatatype} introduce a new type of
script,`RequireGuard`, to require a transaction to include a guard.

```agda
data NativeScript : Type where
  RequireAllOf       : List NativeScript      → NativeScript
  RequireAnyOf       : List NativeScript      → NativeScript
  RequireMOf         : ℕ → List NativeScript  → NativeScript
  RequireSig         : KeyHash                → NativeScript
  RequireTimeStart   : Slot                   → NativeScript
  RequireTimeExpire  : Slot                   → NativeScript
  RequireGuard       : Credential             → NativeScript
```

<!--
```agda
unquoteDecl DecEq-NativeScript = derive-DecEq ((quote NativeScript , DecEq-NativeScript) ∷ [])

private variable
  s : NativeScript
  ss ss' : List NativeScript
  m : ℕ
  kh : KeyHash
  gc : Credential
  a l r : Slot
```
-->

## The <span class="AgdaDatatype">EvalNativeScript</span> Type {#sec:the-evalnative-type}

In contrast to Conway, evaluation of `Native`{.AgdaDatatype} scripts
takes as an additional argument a set of `Credential`. The evaluation
of a `Native`{.AgdaDatatype} checks that any required guard belongs to
the set of `Credential`.


```agda
data EvalNativeScript (khs : ℙ KeyHash) (gcs : ℙ Credential) (I : Maybe Slot × Maybe Slot) : NativeScript → Type where
  evalAll   : All (EvalNativeScript khs gcs I) ss → (EvalNativeScript khs gcs I) (RequireAllOf ss)
  evalAny   : Any (EvalNativeScript khs gcs I) ss → (EvalNativeScript khs gcs I) (RequireAnyOf ss)
  evalMOf   : MOf m (EvalNativeScript khs gcs I) ss → (EvalNativeScript khs gcs I) (RequireMOf m ss)
  evalSig   : kh ∈ khs → (EvalNativeScript khs gcs I) (RequireSig kh)
  evalTSt   : M.Any (a ≤_) (I .proj₁) → (EvalNativeScript khs gcs I) (RequireTimeStart a)
  evalTEx   : M.Any (_≤ a) (I .proj₂) → (EvalNativeScript khs gcs I) (RequireTimeExpire a)
  evalGuard : gc ∈ gcs → (EvalNativeScript khs gcs I) (RequireGuard gc)
```

<!--
```agda
instance
  Dec-EvalNativeScript : ∀ {khs} → EvalNativeScript khs ⁇³
  Dec-EvalNativeScript {khs} {gcs} {I} {tl} .dec = go? tl
    where mutual
      go = EvalNativeScript khs gcs I

      -- ** inversion principles for `EvalNativeScript`
      evalAll˘ : ∀ {ss} → go (RequireAllOf ss) → All go ss
      evalAll˘ (evalAll p) = p

      evalAny˘ : ∀ {ss} → go (RequireAnyOf ss) → Any go ss
      evalAny˘ (evalAny p) = p

      evalTSt˘ : go (RequireTimeStart a) → M.Any (a ≤_) (I .proj₁)
      evalTSt˘ (evalTSt p) = p

      evalTEx˘ : go (RequireTimeExpire a) → M.Any (_≤ a) (I .proj₂)
      evalTEx˘ (evalTEx p) = p

      evalSig˘ : go (RequireSig kh) → kh ∈ khs
      evalSig˘ (evalSig p) = p

      evalGuard˘ : go (RequireGuard gc) → gc ∈ gcs
      evalGuard˘ (evalGuard p) = p

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
        (RequireGuard gc)     → mapDec evalGuard evalGuard˘ dec
```
-->
