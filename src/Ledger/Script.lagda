\section{Scripts}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism
open import Data.List.Relation.Unary.All using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
open import Data.Nat.Properties using (+-0-commutativeMonoid; suc-injective)

open import Data.List.Relation.Unary.MOf

open import Tactic.Derive.DecEq
open import Tactic.Inline

open import Ledger.Prelude hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)
open import Ledger.Crypto
open import Ledger.Types.Epoch

module Ledger.Script
  (crypto : _) (open Crypto crypto)
  (es     : _) (open EpochStructure es)
  where

record P1ScriptStructure : Set₁ where
  field P1Script : Set
        validP1Script : ℙ KeyHash → Maybe Slot × Maybe Slot → P1Script → Set
        ⦃ Dec-validP1Script ⦄ : validP1Script ⁇³
        ⦃ Hashable-P1Script ⦄ : Hashable P1Script ScriptHash
        ⦃ DecEq-P1Script    ⦄ : DecEq P1Script

record PlutusStructure : Set₁ where
  field Dataʰ : HashableSet
        Language PlutusScript CostModel Prices LangDepView ExUnits : Set
        ⦃ ExUnit-CommutativeMonoid ⦄ : IsCommutativeMonoid' 0ℓ 0ℓ ExUnits
        ⦃ Hashable-PlutusScript    ⦄ : Hashable PlutusScript ScriptHash
        ⦃ DecEq-PlutusScript       ⦄ : DecEq PlutusScript
        ⦃ DecEq-CostModel          ⦄ : DecEq CostModel
        ⦃ DecEq-LangDepView        ⦄ : DecEq LangDepView

  field  _≥ᵉ_              : ExUnits → ExUnits → Set
         ⦃ DecEq-ExUnits ⦄ : DecEq ExUnits
         ⦃ DecEQ-Prices  ⦄ : DecEq Prices
         -- GetPair              : ExUnits → Set × Set
         -- coinIsMonoidMorphism : GetPair Is ExUnit-CommutativeMonoid
         --                          -CommutativeMonoid⟶ +-0-commutativeMonoid

  open HashableSet Dataʰ renaming (T to Data; THash to DataHash) public

  -- Type aliases for Data
  Datum    = Data
  Redeemer = Data

  field validPlutusScript : CostModel → List Data → ExUnits → PlutusScript → Set
        ⦃ Dec-validPlutusScript ⦄ : ∀ {x} → (validPlutusScript x ⁇³)
        language : PlutusScript → Language
        toData : ∀ {A : Set} → A → Data
\end{code}
We define Timelock scripts here. They can verify the presence of keys and whether a transaction happens in a certain slot interval. These scripts are executed as part of the regular witnessing.
\begin{figure*}[h]
\begin{code}
data Timelock : Set where
  RequireAllOf       : List Timelock      → Timelock
  RequireAnyOf       : List Timelock      → Timelock
  RequireMOf         : ℕ → List Timelock  → Timelock
  RequireSig         : KeyHash            → Timelock
  RequireTimeStart   : Slot               → Timelock
  RequireTimeExpire  : Slot               → Timelock
\end{code}
\begin{code}[hide]
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
\end{code}
\begin{code}
module _ (khs : ℙ KeyHash) (I : Maybe Slot × Maybe Slot) where
  data evalTimelock : Timelock → Set where
    evalAll  : All evalTimelock ss
             → evalTimelock (RequireAllOf ss)
    evalAny  : Any evalTimelock ss
             → evalTimelock (RequireAnyOf ss)
    evalMOf  : MOf m evalTimelock ss
             → evalTimelock (RequireMOf m ss)
    evalSig  : x ∈ khs
             → evalTimelock (RequireSig x)
    evalTSt  : M.Any (a ≤_) (I .proj₁)
             → evalTimelock (RequireTimeStart a)
    evalTEx  : M.Any (_≤ a) (I .proj₂)
             → evalTimelock (RequireTimeExpire a)
\end{code}
\caption{Timelock scripts and their evaluation}
\label{fig:defs:timelock}
\end{figure*}

\begin{code}[hide]
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

P1ScriptStructure-TL : ⦃ Hashable Timelock ScriptHash ⦄ → P1ScriptStructure
P1ScriptStructure-TL = record
  { P1Script = Timelock
  ; validP1Script = evalTimelock }

record ScriptStructure : Set₁ where
  field hashRespectsUnion :
          {A B Hash : Set} → Hashable A Hash → Hashable B Hash → Hashable (A ⊎ B) Hash
        ⦃ Hash-Timelock ⦄ : Hashable Timelock ScriptHash

  p1s : P1ScriptStructure
  p1s = P1ScriptStructure-TL
  open P1ScriptStructure p1s public

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

open P1ScriptStructure

import Data.List.Relation.Binary.Sublist.Heterogeneous as Heterogeneous
import Data.List.Relation.Binary.Sublist.Heterogeneous.Core
  as HeterogeneousCore
import Data.List.Relation.Binary.Sublist.Heterogeneous.Properties
  as HeterogeneousProperties

[]⊆xs : {A : Set} → (xs : List A) → [] S.⊆ xs
[]⊆xs [] = HeterogeneousCore.[]
[]⊆xs (x ∷ xs) = x HeterogeneousCore.∷ʳ []⊆xs xs

subLemma' : (ss xs : List Timelock) → (x : Timelock) → ss S.⊆ (x ∷ xs) → ¬ (x ∈ˡ ss) → (ss S.⊆ xs)
subLemma' ss xs x (.x HeterogeneousCore.∷ʳ p) ¬p1 = p
subLemma' .(x ∷ _) xs x (refl HeterogeneousCore.∷ p) ¬p1 = ⊥-elim (¬p1 (here refl))

subLemma : {ss xs : List Timelock}{x : Timelock} → ss S.⊆ (x ∷ xs) → (x ∈ˡ ss) ⊎ (ss S.⊆ xs)
subLemma {ss} {xs} {x} x₁ with Data.List.Relation.Unary.Any.any? (x ≟_) ss
... | yes p = inj₁ p
... | no ¬p = inj₂ (subLemma' ss xs x x₁ ¬p)
\end{code}
