\section{Scripts}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism
open import Data.List.Relation.Unary.All
open import Data.List.Relation.Unary.Any
open import Data.List.Relation.Binary.Sublist.Propositional as S
open import Data.Nat.Properties using (+-0-commutativeMonoid)

open import Tactic.Derive.DecEq

open import Ledger.Prelude hiding (All; Any)
open import Ledger.Epoch
open import Ledger.Crypto

module Ledger.Script
  (crypto : _) (open Crypto crypto)
  (es     : _) (open EpochStructure es)
  where

record P1ScriptStructure : Set₁ where
  field P1Script : Set
        validP1Script : ℙ KeyHash → Maybe Slot × Maybe Slot → P1Script → Set
        validP1Script? : ∀ khs I s → Dec (validP1Script khs I s)
        ⦃ Hashable-P1Script ⦄ : Hashable P1Script ScriptHash
        ⦃ DecEq-P1Script    ⦄ : DecEq P1Script
  instance
    Dec-ValidP1Script : ∀ {khs I s} → Dec (validP1Script khs I s)
    Dec-ValidP1Script = validP1Script? _ _ _

record PlutusStructure : Set₁ where
  field Dataʰ : HashableSet
        Language PlutusScript CostModel Prices LangDepView : Set
        ExUnit-CommutativeMonoid  : CommutativeMonoid 0ℓ 0ℓ
        ⦃ Hashable-PlutusScript ⦄ : Hashable PlutusScript ScriptHash
        ⦃ DecEq-PlutusScript    ⦄ : DecEq PlutusScript
        ⦃ DecEq-CostModel       ⦄ : DecEq CostModel
        ⦃ DecEq-LangDepView     ⦄ : DecEq LangDepView

  open CommutativeMonoid ExUnit-CommutativeMonoid public
    using ()
    renaming (_≈_ to _≈ᵉ_; ε to εᵉ; Carrier to ExUnits; refl to reflᵉ; _∙_ to _+ᵉˣ_)


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
        validPlutusScript? : ∀ cm ds eu s → Dec (validPlutusScript cm ds eu s)
        language : PlutusScript → Language
        toData : ∀ {A : Set} → A → Data

record ScriptStructure : Set₁ where
  field p1s : P1ScriptStructure
        ps  : PlutusStructure

  -- it is not possible to define this function
  field hashRespectsUnion : {A B Hash : Set} → Hashable A Hash → Hashable B Hash → Hashable (A ⊎ B) Hash

  open P1ScriptStructure p1s public
  open PlutusStructure ps public
    renaming ( PlutusScript       to P2Script
             ; validPlutusScript  to validP2Script
             ; validPlutusScript? to validP2Script?
             )

  Script = P1Script ⊎ P2Script

  open import Data.Empty
  open import Agda.Builtin.Equality
  open import Relation.Binary.PropositionalEquality

  instance
    Hashable-Script : Hashable Script ScriptHash
    Hashable-Script = hashRespectsUnion Hashable-P1Script Hashable-PlutusScript
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
module _ (_≤_ : Slot → Slot → Set) (_≤ᵇ_ : Slot → Slot → Bool) where
  private variable
    s : Timelock
    ss ss' : List Timelock
    k : ℕ
    x : KeyHash
    a l r : Slot
\end{code}
\begin{code}
  module _ (khs : ℙ KeyHash) (I : Maybe Slot × Maybe Slot) where
    data evalTimelock : Timelock → Set where
      evalAll  : All evalTimelock ss
               → evalTimelock (RequireAllOf ss)
      evalAny  : Any evalTimelock ss
               → evalTimelock (RequireAnyOf ss)
      evalMOf  : ss' S.⊆ ss → All evalTimelock ss'
               → evalTimelock (RequireMOf (length ss') ss)
      evalSig  : x ∈ khs
               → evalTimelock (RequireSig x)
      evalTSt  : I .proj₁ ≡ just l → a ≤ l
               → evalTimelock (RequireTimeStart a)
      evalTEx  : I .proj₂ ≡ just r → r ≤ a
               → evalTimelock (RequireTimeStart a)
\end{code}
\caption{Timelock scripts and their evaluation}
\label{fig:defs:timelock}
\end{figure*}

\begin{code}[hide]
  module _ (khs : ℙ KeyHash) where
    evalTimelockᵇ : (Maybe Slot × Maybe Slot) → Timelock → Bool
    evalTimelockᵇ I (RequireAllOf [])                   = true
    evalTimelockᵇ I (RequireAllOf (x ∷ xs))             =
      evalTimelockᵇ I x ∧ evalTimelockᵇ I (RequireAllOf xs)
    evalTimelockᵇ I (RequireAnyOf [])                   = false
    evalTimelockᵇ I (RequireAnyOf (x ∷ xs))             =
      evalTimelockᵇ I x ∨ evalTimelockᵇ I (RequireAllOf xs)
    evalTimelockᵇ I (RequireMOf zero _)                 = true
    evalTimelockᵇ I (RequireMOf (suc _) [])             = false
    evalTimelockᵇ I (RequireMOf (suc m) (x ∷ xs))       = if evalTimelockᵇ I x
      then  evalTimelockᵇ I (RequireMOf m xs)
      else  evalTimelockᵇ I (RequireMOf (suc m) xs)
    evalTimelockᵇ I (RequireSig x)                      = x ∈ᵇ khs
    evalTimelockᵇ (just l  , _)  (RequireTimeStart x)   = x ≤ᵇ l
    evalTimelockᵇ (nothing , _)  (RequireTimeStart x)   = false
    evalTimelockᵇ (_ , just r )  (RequireTimeExpire x)  = r ≤ᵇ x
    evalTimelockᵇ (_ , nothing)  (RequireTimeExpire x)  = false

  unquoteDecl DecEq-Timelock = derive-DecEq ((quote Timelock , DecEq-Timelock) ∷ [])

  open P1ScriptStructure

  -- P1ScriptStructure-TL : Hashable Timelock ScriptHash → P1ScriptStructure
  -- P1ScriptStructure-TL h .P1Script = Timelock
  -- P1ScriptStructure-TL h .validP1Script = evalTimelock
  -- P1ScriptStructure-TL h .validP1Script? = {!!}
  -- P1ScriptStructure-TL h .Hashable-P1Script = h
  -- P1ScriptStructure-TL h .DecEq-P1Script = DecEq-Timelock
\end{code}
