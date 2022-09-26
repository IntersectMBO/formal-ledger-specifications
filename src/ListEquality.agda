{-# OPTIONS --safe #-}

open import Data.List
open import Utilities.ListProperties hiding (head)
open import Function

module ListEquality where

_≡ˡ_ : {A : Set} → List A → List A → Set
xs ≡ˡ ys = ∀ a → a ∈ xs ⇔ a ∈ ys

≡ˡ-∈ : ∀ {A : Set} {x} {xs ys : List A} → xs ≡ˡ ys → x ∈ xs → x ∈ ys
≡ˡ-∈ {A} {x} h = Equivalence.to (h x)

≡ˡ-∈' : ∀ {A : Set} {x} {xs ys : List A} → xs ≡ˡ ys → x ∈ ys → x ∈ xs
≡ˡ-∈' {A} {x} h = Equivalence.from (h x)
