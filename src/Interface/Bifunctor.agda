{-# OPTIONS --without-K #-}

module Interface.Bifunctor where

open import Agda.Primitive
  renaming (Set to Type; Setω to Typeω)
open import Function
open import Data.Product as ×
  hiding (map₁; map₂; map₂′)
open import Data.Sum as ⊎
  hiding (map₁; map₂)
open import Relation.Binary.PropositionalEquality

open import Interface.Functor using (Type↑)

private variable
  a a′ a″ b c : Level
  A  : Type a
  A′ : Type a′
  A″ : Type a″
  B  : A  → Type b
  B′ : A → Type b
  C  : A′ → Type c

-- ** indexed/dependent version
record BifunctorI (F : (A : Type a) → (B : A → Type b) → Type (a ⊔ b)) : Type (lsuc a ⊔ lsuc b) where
  field
    bimap′ : (f : A → A′) → (∀ {x} → B x → C (f x)) → F A B → F A′ C

  map₁′ : (A → A′) → F A (const A″) → F A′ (const A″)
  map₁′ f = bimap′ f id
  _<$>₁′_ = map₁′

  map₂′ : (∀ {x} → B x → B′ x) → F A B → F A B′
  map₂′ g = bimap′ id g
  _<$>₂′_ = map₂′

  infixl 4 _<$>₁′_ _<$>₂′_

open BifunctorI ⦃...⦄ public

instance
  Bifunctor-Σ : BifunctorI {a}{b} Σ
  Bifunctor-Σ .bimap′ = ×.map

-- ** non-dependent version
record Bifunctor (F : Type a → Type b → Type (a ⊔ b)) : Type (lsuc a ⊔ lsuc b) where
  field
    bimap : ∀ {A A′ : Type a} {B B′ : Type b} → (A → A′) → (B → B′) → F A B → F A′ B′

  map₁ : ∀ {A A′ : Type a} {B : Type b} → (A → A′) → F A B → F A′ B
  map₁ f = bimap f id
  _<$>₁_ = map₁

  map₂ : ∀ {A : Type a} {B B′ : Type b} → (B → B′) → F A B → F A B′
  map₂ g = bimap id g
  _<$>₂_ = map₂

  infixl 4 _<$>₁_ _<$>₂_

open Bifunctor ⦃...⦄ public

map₁₂ : ∀ {F : Type a → Type a → Type a} {A B : Type a}
  → ⦃ Bifunctor F ⦄
  → (A → B) → F A A → F B B
map₁₂ f = bimap f f
_<$>₁₂_ = map₁₂
infixl 4 _<$>₁₂_

instance
  Bifunctor-× : Bifunctor {a}{b} _×_
  Bifunctor-× .bimap f g = ×.map f g

  Bifunctor-⊎ : Bifunctor {a}{b} _⊎_
  Bifunctor-⊎ .bimap = ⊎.map
