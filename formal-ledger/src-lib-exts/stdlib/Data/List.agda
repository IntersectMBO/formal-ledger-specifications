{-# OPTIONS --safe --without-K #-}
module stdlib.Data.List where

open import Data.List
open import Data.List.Relation.Unary.All
open import Data.Empty

Is-[] : ∀ {A : Set} → List A → Set
Is-[] = All (λ _ → ⊥)
