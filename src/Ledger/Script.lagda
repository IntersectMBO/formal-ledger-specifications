\section{Scripts}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude

open import Data.List.Relation.Unary.All
open import Data.List.Relation.Unary.Any
open import Data.List.Relation.Binary.Sublist.Propositional as S

module Ledger.Script (KeyHash ScriptHash Slot : Set) ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq Slot ⦄ (_≤_ : Slot → Slot → Set) (_≤ᵇ_ : Slot → Slot → Bool) where

open import Ledger.Crypto
open import Data.FinSet renaming (FinSet to ℙ_) hiding (All)

record P1ScriptStructure : Set₁ where
  field P1Script : Set
        validP1Script : ℙ KeyHash → Maybe Slot × Maybe Slot → P1Script → Set
        validP1Script? : ∀ khs I s → Dec (validP1Script khs I s)
        instance Hashable-P1Script : Hashable P1Script ScriptHash
                 DecEq-P1Script    : DecEq P1Script

record PlutusStructure : Set₁ where
  field Dataʰ : HashableSet
        PlutusScript ExUnits CostModel : Set
        instance Hashable-PlutusScript : Hashable PlutusScript ScriptHash
                 DecEq-PlutusScript    : DecEq PlutusScript

  open HashableSet Dataʰ renaming (T to Data; THash to DataHash) public

  field validPlutusScript : CostModel → List Data → ExUnits → PlutusScript → Set
        validPlutusScript? : ∀ cm ds eu s → Dec (validPlutusScript cm ds eu s)

record ScriptStructure : Set₁ where
  field p1s : P1ScriptStructure
        ps  : PlutusStructure

  open P1ScriptStructure p1s public
  open PlutusStructure ps public renaming
    (PlutusScript to P2Script; validPlutusScript to validP2Script; validPlutusScript? to validP2Script?)

  Script = P1Script ⊎ P2Script

  instance
    Hashable-Script : Hashable Script ScriptHash
    Hashable-Script .hash (inj₁ s) = hash s
    Hashable-Script .hash (inj₂ s) = hash s
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
private variable s : Timelock
                 ss ss' : List Timelock
                 k : ℕ
                 x : KeyHash
                 a l r : Slot
\end{code}
\begin{code}
data evalTimelock (khs : ℙ KeyHash) (I : Maybe Slot × Maybe Slot) : Timelock → Set where
  evalAll : All (evalTimelock khs I) ss → evalTimelock khs I (RequireAllOf ss)
  evalAny : Any (evalTimelock khs I) ss → evalTimelock khs I (RequireAnyOf ss)
  evalMOf : ss' S.⊆ ss → All (evalTimelock khs I) ss' → evalTimelock khs I (RequireMOf (length ss') ss)
  evalSig : x ∈ khs → evalTimelock khs I (RequireSig x)
  evalTSt : proj₁ I ≡ just l → a ≤ l → evalTimelock khs I (RequireTimeStart a)
  evalTEx : proj₂ I ≡ just r → r ≤ a → evalTimelock khs I (RequireTimeStart a)
\end{code}
\caption{Timelock scripts and their evaluation}
\label{fig:defs:timelock}
\end{figure*}

\begin{code}[hide]
evalTimelockᵇ : ℙ KeyHash → (Maybe Slot × Maybe Slot) → Timelock → Bool
evalTimelockᵇ khs I (RequireAllOf [])                   = true
evalTimelockᵇ khs I (RequireAllOf (x ∷ xs))             =
  evalTimelockᵇ khs I x ∧ evalTimelockᵇ khs I (RequireAllOf xs)
evalTimelockᵇ khs I (RequireAnyOf [])                   = false
evalTimelockᵇ khs I (RequireAnyOf (x ∷ xs))             =
  evalTimelockᵇ khs I x ∨ evalTimelockᵇ khs I (RequireAllOf xs)
evalTimelockᵇ khs I (RequireMOf zero _)                 = true
evalTimelockᵇ khs I (RequireMOf (suc _) [])             = false
evalTimelockᵇ khs I (RequireMOf (suc m) (x ∷ xs))       = if evalTimelockᵇ khs I x
  then  evalTimelockᵇ khs I (RequireMOf m xs)
  else  evalTimelockᵇ khs I (RequireMOf (suc m) xs)
evalTimelockᵇ khs I (RequireSig x)                      = x ∈ᵇ khs
evalTimelockᵇ khs (just l  , _)  (RequireTimeStart x)   = x ≤ᵇ l
evalTimelockᵇ khs (nothing , _)  (RequireTimeStart x)   = false
evalTimelockᵇ khs (_ , just r )  (RequireTimeExpire x)  = r ≤ᵇ x
evalTimelockᵇ khs (_ , nothing)  (RequireTimeExpire x)  = false

instance
  DecEq-Timelock : DecEq Timelock
  DecEq-Timelock ._≟_ (RequireAllOf []) (RequireAllOf []) = yes refl
  DecEq-Timelock ._≟_ (RequireAllOf []) (RequireAllOf (x ∷ x₁)) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAllOf (x ∷ x₁)) (RequireAllOf []) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAllOf (x ∷ x₁)) (RequireAllOf (x₂ ∷ x₃)) with x ≟ x₂ | RequireAllOf x₁ ≟ RequireAllOf x₃
  ... | no ¬p    | _        = no (λ where refl → ¬p refl)
  ... | yes refl | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl | yes refl = yes refl
  DecEq-Timelock ._≟_ (RequireAllOf x) (RequireAnyOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAllOf x) (RequireMOf x₁ x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAllOf x) (RequireSig x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAllOf x) (RequireTimeStart x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAllOf x) (RequireTimeExpire x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf x) (RequireAllOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf []) (RequireAnyOf []) = yes refl
  DecEq-Timelock ._≟_ (RequireAnyOf []) (RequireAnyOf (x ∷ x₁)) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf (x ∷ x₁)) (RequireAnyOf []) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf (x ∷ x₁)) (RequireAnyOf (x₂ ∷ x₃)) with x ≟ x₂ | RequireAnyOf x₁ ≟ RequireAnyOf x₃
  ... | no ¬p    | _        = no (λ where refl → ¬p refl)
  ... | yes refl | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl | yes refl = yes refl
  DecEq-Timelock ._≟_ (RequireAnyOf x) (RequireMOf x₁ x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf x) (RequireSig x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf x) (RequireTimeStart x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireAnyOf x) (RequireTimeExpire x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf x x₁) (RequireAllOf x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf x x₁) (RequireAnyOf x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf k []) (RequireMOf k₁ []) with k ≟ k₁
  ... | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl = yes refl
  DecEq-Timelock ._≟_ (RequireMOf k []) (RequireMOf k₁ (x ∷ x₁)) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf k (x ∷ x₁)) (RequireMOf k₁ []) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf k (x ∷ x₁)) (RequireMOf k₁ (x₂ ∷ x₃)) with k ≟ k₁ | x ≟ x₂ | RequireMOf k x₁ ≟ RequireMOf k₁ x₃
  ... | no ¬p    | _        | _        = no (λ where refl → ¬p refl)
  ... | yes refl | no ¬p    | _        = no (λ where refl → ¬p refl)
  ... | yes refl | yes refl | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl | yes refl | yes refl = yes refl
  DecEq-Timelock ._≟_ (RequireMOf x x₁) (RequireSig x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf x x₁) (RequireTimeStart x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireMOf x x₁) (RequireTimeExpire x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireSig x) (RequireAllOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireSig x) (RequireAnyOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireSig x) (RequireMOf x₁ x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireSig x) (RequireSig x₁) with x ≟ x₁
  ... | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl = yes refl
  DecEq-Timelock ._≟_ (RequireSig x) (RequireTimeStart x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireSig x) (RequireTimeExpire x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeStart x) (RequireAllOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeStart x) (RequireAnyOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeStart x) (RequireMOf x₁ x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeStart x) (RequireSig x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeStart x) (RequireTimeStart x₁) with x ≟ x₁
  ... | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl = yes refl
  DecEq-Timelock ._≟_ (RequireTimeStart x) (RequireTimeExpire x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeExpire x) (RequireAllOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeExpire x) (RequireAnyOf x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeExpire x) (RequireMOf x₁ x₂) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeExpire x) (RequireSig x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeExpire x) (RequireTimeStart x₁) = no (λ ())
  DecEq-Timelock ._≟_ (RequireTimeExpire x) (RequireTimeExpire x₁) with x ≟ x₁
  ... | no ¬p    = no (λ where refl → ¬p refl)
  ... | yes refl = yes refl

-- open P1ScriptStructure

-- P1ScriptStructure-TL : P1ScriptStructure
-- P1ScriptStructure-TL .P1Script = Timelock
-- P1ScriptStructure-TL .validP1Script = evalTimelock
-- P1ScriptStructure-TL .Dec-validP1Script = {!!}
-- P1ScriptStructure-TL .Hashable-P1Script = {!!}
-- P1ScriptStructure-TL .DecEq-P1Script = DecEq-Timelock
\end{code}
