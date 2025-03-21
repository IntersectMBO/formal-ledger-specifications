{-# OPTIONS --safe #-}

-- Extra instances for decidable equality.
module Class.DecEq.Instances.Extra where

open import Data.Refinement
  using (Refinement; value; _,_)
open import Function
  using (_∘_)
open import Relation.Binary.PropositionalEquality
  using (cong; refl)
open import Relation.Nullary.Decidable
  using (no; yes)

open import Class.DecEq
  using (DecEq; _≟_)

-- Equality for a Refinement type is decide if the equality
-- for the type to be refined is decidable.
DeqEq-Refinement
    : ∀ {a p} (A : Set a) (P : A → Set p)
    → ⦃ DecEq A ⦄ → DecEq (Refinement A P)
DeqEq-Refinement A P ._≟_ (x , px) (y , py)
  with x ≟ y
... | no neq = no (neq ∘ cong value)
... | yes refl = yes refl
