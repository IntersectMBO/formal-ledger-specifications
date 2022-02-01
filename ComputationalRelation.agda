module ComputationalRelation {C S Sig : Set} (P : C → S → Sig → S → Set) where

open import Data.Maybe
open import Relation.Binary.PropositionalEquality
open import Function

record Computational : Set where
  field
    compute : C → S → Sig → Maybe S
    pf : ∀ {c s sig s'} → (compute c s sig ≡ just s') ⇔ P c s sig s'

