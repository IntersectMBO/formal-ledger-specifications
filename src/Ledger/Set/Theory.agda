{-# OPTIONS --safe #-}

module Ledger.Set.Theory where

open import Prelude

open import Axiom.Set
import Axiom.Set.List as L

abstract
  List-Model : Theory {0ℓ}
  List-Model = L.List-Model
  List-Modelᶠ : Theoryᶠ
  List-Modelᶠ = L.List-Modelᶠ
  List-Modelᵈ : Theoryᵈ
  List-Modelᵈ = L.List-Modelᵈ

open Theoryᵈ List-Modelᵈ public
  renaming (Set to ℙ_; filter to filterˢ?; map to mapˢ)
  hiding (_∈_; _∉_)

open import Interface.IsSet th public

abstract
  open import Axiom.Set.Properties th using (card-≡ᵉ)

  to-sp : {A : Set} (P : A → Set) → ⦃ P ⁇¹ ⦄ → specProperty P
  to-sp _ = dec¹

  finiteness : ∀ {A} (X : Theory.Set th A) → finite X
  finiteness = Theoryᶠ.finiteness List-Modelᶠ

  lengthˢ : ∀ {A 𝕊} ⦃ _ : DecEq A ⦄ ⦃ _ : IsSet 𝕊 A ⦄ → 𝕊 → ℕ
  lengthˢ X = Theoryᶠ.lengthˢ List-Modelᶠ (toSet X)

  lengthˢ-≡ᵉ :  ∀ {A 𝕊} ⦃ _ : DecEq A ⦄ ⦃ _ : IsSet 𝕊 A ⦄ → (X Y : 𝕊)
    → toSet X ≡ᵉ toSet Y
    → lengthˢ X ≡ lengthˢ Y
  lengthˢ-≡ᵉ X Y X≡Y =
    card-≡ᵉ (-, Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ (toSet X))
            (-, Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ (toSet Y)) X≡Y

  lengthˢ-∅ : ∀ {A} ⦃ _ : DecEq A ⦄ → lengthˢ {A} ∅ ≡ 0
  lengthˢ-∅ = refl

  setToList : {A : Set} → ℙ A → List A
  setToList = id

  instance
    DecEq-ℙ : {A : Set} ⦃ _ : DecEq A ⦄ → DecEq (ℙ A)
    DecEq-ℙ = L.Decˡ.DecEq-Set

open import Axiom.Set.Rel th public
  hiding (_∣'_; _↾'_; dom; range)

open import Axiom.Set.Map th public
  renaming ( Map to infixr 1 _⇀_
           ; filterᵐ to filterᵐ?; filterKeys to filterKeys?; _↾'_ to _↾'?_ )

open import Axiom.Set.TotalMap th public
open import Axiom.Set.TotalMapOn th

open L.Decˡ public
  hiding (_∈?_; DecEq-Set)

open import Axiom.Set.Sum th public
open import Axiom.Set.Map.Dec List-Modelᵈ public
open import Axiom.Set.Factor List-Model public

module _ {A : Set} ⦃ _ : DecEq A ⦄ where
  open Restriction {A} ∈-sp public
    renaming (_∣_ to _∣ʳ_; _∣_ᶜ to _∣ʳ_ᶜ)

  open Corestriction {A} ∈-sp public
    hiding (_↾_; _↾_ᶜ) public

  open Restrictionᵐ {A} ∈-sp public
  open Corestrictionᵐ {A} ∈-sp public
  open Unionᵐ {A} ∈-sp public
  open Intersection {A} ∈-sp public
  open Lookupᵐ {A} ∈-sp public
  open Lookupᵐᵈ {A} ∈-sp public

module _ {A B : Set} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where
  open Intersectionᵐ {A} {B} ∈-sp public

  open import Algebra using (CommutativeMonoid)

  module _ ⦃ M : CommutativeMonoid 0ℓ 0ℓ ⦄ where
    open IndexedSumUnionᵐ {A} {B} ∈-sp (_∈? _) public

module Properties where
  open import Axiom.Set.Properties th public
  module _ {A : Set} ⦃ _ : DecEq A ⦄ where
    open Intersectionᵖ {A} ∈-sp public

private variable A B : Set

_ᶠᵐ : A ⇀ B → FinMap A B
(R , uniq) ᶠᵐ = (R , uniq , finiteness _)

_ᶠˢ : ℙ A → FinSet A
X ᶠˢ = X , finiteness _

filterˢ : (P : A → Set) ⦃ _ : P ⁇¹ ⦄ → ℙ A → ℙ A
filterˢ P = filterˢ? (to-sp P)

filterᵐ : (P : A × B → Set) ⦃ _ : P ⁇¹ ⦄ → (A ⇀ B) → (A ⇀ B)
filterᵐ P = filterᵐ? (to-sp P)

filterKeys : (P : A → Set) ⦃ _ : P ⁇¹ ⦄ → (A ⇀ B) → (A ⇀ B)
filterKeys P = filterKeys? (to-sp P)

_↾'_ : A ⇀ B → (P : B → Set) ⦃ _ : P ⁇¹ ⦄ → A ⇀ B
s ↾' P = s ↾'? to-sp P
