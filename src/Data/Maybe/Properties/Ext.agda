{-# OPTIONS --safe #-}

module Data.Maybe.Properties.Ext where

open import Data.Maybe
open import Function
open import Relation.Binary.PropositionalEquality

maybe-∘ : ∀ {a} {A B C : Set a} {f : B → C} {g : A → B} {c x} → f (maybe g c x) ≡ maybe (f ∘ g) (f c) x
maybe-∘ {x = just _}  = refl
maybe-∘ {x = nothing} = refl
