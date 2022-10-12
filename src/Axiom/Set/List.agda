{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)

module Axiom.Set.List where

open import Prelude

open import Axiom.Set

import Data.List
import Function.Inverse as I
import Function.Properties.Inverse as I
import Function.Related.Propositional as R
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Membership.Propositional.Properties
open import Data.Product using (map₂)
open import Data.Product.Algebra using (×-comm)
open import Data.Product.Function.Dependent.Propositional using () renaming (cong to ∃-cong)
open import Function.Equality using (_⟶_; _⟨$⟩_)
open import Function.Related hiding (⌊_⌋)
open import Relation.Binary using () renaming (Decidable to Dec₂)
open import Relation.Unary using () renaming (Decidable to Dec₁)

-- _×-cong'_ : ∀ {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A × C) R.∼[ k ] (B × D)
-- h ×-cong' h' = fromRelated (toRelated h ×-cong toRelated h')

∃-cong' : ∀ {k a₁ a₂ b₁ b₂}
           {A₁ : Type a₁} {A₂ : Type a₂}
           {B₁ : A₁ → Type b₁} {B₂ : A₂ → Type b₂}
         (A₁↔A₂ : I._↔_ A₁ A₂) →
         (∀ {x} → B₁ x R.∼[ k ] B₂ (I.Inverse.to A₁↔A₂ ⟨$⟩ x)) →
         Σ A₁ B₁ R.∼[ k ] Σ A₂ B₂
∃-cong' A₁↔A₂ h = fromRelated (∃-cong A₁↔A₂ (toRelated h))

List-Model : Theory
List-Model = λ where
  .Set           → List
  ._∈_           → _∈ˡ_
  .sp            → Dec-SpecProperty
  .specification → λ X P? → Prelude.filter P? X , mk⇔
    (λ a∈f → Data.Product.swap (∈-filter⁻ P? a∈f))
    (λ where (Pa , a∈X) → ∈-filter⁺ P? a∈X Pa)
  .unions        → λ X → concat X , mk⇔
    (λ where (T , T∈X , a∈T) → ∈-concat⁺′ a∈T T∈X)
    (λ a∈cX → case ∈-concat⁻′ _ a∈cX of λ where (T , a∈T , T∈X) → (T , T∈X , a∈T))
  .replacement   → λ f X → Data.List.map f X , λ {b} →
    (∃[ a ] b ≡ f a × a ∈ˡ X) ∼⟨ ∃-cong' I.id (R.⤖⇒ (I.↔⇒⤖ (×-comm _ _))) ⟩
    (∃[ a ] a ∈ˡ X × b ≡ f a) ⤖⟨ fromRelated (map-∈↔ f) ⟩
    b ∈ˡ Data.List.map f X    ∎
  .listing → λ l → l , mk⇔ id id
    where open Theory
          open R.EquationalReasoning

List-Modelᶠ : Theoryᶠ
List-Modelᶠ = λ where
  .theory     → List-Model
  .finiteness → λ X → X , mk⇔ id id
    where open Theoryᶠ

open import Interface.DecEq
open import Relation.Nullary.Decidable
import Data.List.Relation.Unary.Any as Any
open import Relation.Nullary
import Axiom.Set.Properties

private variable A : Type

record Theoryᵈ : Type₁ where
  field th : Theory
  open Theory th public

  open Axiom.Set.Properties th

  field ∈-sp : ⦃ DecEq A ⦄ → spec-∈ A
        _∈?_ : ⦃ DecEq A ⦄ → Dec₂ (_∈_ {A = A})
        all? : {P : A → Type} (P? : Dec₁ P) ⦃ _ : DecEq A ⦄ {X : Set A} → Dec (All P X)

  _∈ᵇ_ : ⦃ DecEq A ⦄ → A → Set A → Bool
  a ∈ᵇ X = ⌊ a ∈? X ⌋

module Decˡ {A : Type} ⦃ _ : DecEq A ⦄ where
  open Theory List-Model

  _∈?_ : Dec₂ (_∈ˡ_ {A = A})
  _∈?_ a = Any.any? (a ≟_)

  _∈ᵇ_ : A → List A → Bool
  a ∈ᵇ l = ⌊ a ∈? l ⌋

  ≟-∅ : {X : Set A} → Dec (X ≡ ∅)
  ≟-∅ {[]}    = yes refl
  ≟-∅ {x ∷ X} = no (λ ())

import Data.List.Relation.Unary.All as All
import Relation.Nullary.Decidable as Dec

List-Modelᵈ : Theoryᵈ
List-Modelᵈ = record
  { th = List-Model
  ; ∈-sp = Decˡ._∈? _
  ; _∈?_ = Decˡ._∈?_
  ; all? = λ P? {X} → Dec.map (mk⇔ All.lookup All.tabulate) (All.all? P? X) }
