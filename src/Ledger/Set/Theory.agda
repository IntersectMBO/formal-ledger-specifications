{-# OPTIONS --safe #-}

module Ledger.Set.Theory where

open import Prelude

open import Axiom.Set
import Axiom.Set.List as L
open import Relation.Binary using (_Preserves_⟶_)
open import Data.List.Ext.Properties using (dedup-++-↭)


opaque
  List-Model : Theory {0ℓ}
  List-Model = L.List-Model
  List-Modelᶠ : Theoryᶠ
  List-Modelᶠ = L.List-Modelᶠ
  List-Modelᵈ : Theoryᵈ
  List-Modelᵈ = L.List-Modelᵈ

private variable
  A A' B C : Set

open Theoryᵈ List-Modelᵈ public
  renaming (Set to ℙ_; filter to filterˢ?; map to mapˢ)
  hiding (_∈_; _∉_)

open import Interface.IsSet th public

opaque
  unfolding List-Model
  open import Axiom.Set.Properties th using (card-≡ᵉ)

  to-sp : {A : Type} (P : A → Type) → ⦃ P ⁇¹ ⦄ → specProperty P
  to-sp _ = dec¹

  finiteness : ∀ (X : Theory.Set th A) → finite X
  finiteness = Theoryᶠ.finiteness List-Modelᶠ

  lengthˢ : ∀ {𝕊} ⦃ _ : DecEq A ⦄ ⦃ _ : IsSet 𝕊 A ⦄ → 𝕊 → ℕ
  lengthˢ X = Theoryᶠ.lengthˢ List-Modelᶠ (toSet X)

  lengthˢ-≡ᵉ :  ∀ {𝕊} ⦃ _ : DecEq A ⦄ ⦃ _ : IsSet 𝕊 A ⦄ → (X Y : 𝕊)
    → toSet X ≡ᵉ toSet Y
    → lengthˢ X ≡ lengthˢ Y
  lengthˢ-≡ᵉ X Y X≡Y =
    card-≡ᵉ (-, Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ (toSet X))
            (-, Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ (toSet Y)) X≡Y

  lengthˢ-∅ : ∀ ⦃ _ : DecEq A ⦄ → lengthˢ {A} ∅ ≡ 0
  lengthˢ-∅ = refl

  setToList : ℙ A → List A
  setToList = id

  instance
    DecEq-ℙ : ⦃ _ : DecEq A ⦄ → DecEq (ℙ A)
    DecEq-ℙ = L.Decˡ.DecEq-Set

    Show-ℙ : ⦃ _ : Show A ⦄ → Show (ℙ A)
    Show-ℙ .show = λ x → Show-finite .show (x , (finiteness x))

import Axiom.Set.Rel
module Rel = Axiom.Set.Rel th

open Rel public hiding (_∣'_; _∣^'_; dom; range)

open import Axiom.Set.Map th public
  renaming ( Map to infixr 1 _⇀_
           ; filterᵐ to filterᵐ?; filterKeys to filterKeys?; _∣^'_ to _∣^'?_ )

open import Axiom.Set.TotalMap th public
open import Axiom.Set.TotalMapOn th

open L.Decˡ public
  hiding (_∈?_; DecEq-Set)

open import Axiom.Set.Sum th public
open import Axiom.Set.Map.Dec List-Modelᵈ public
open import Axiom.Set.Factor List-Model public

module _ ⦃ _ : DecEq A ⦄ where
  open Restriction {A} ∈-sp public
    renaming (_∣_ to _∣ʳ_; _∣_ᶜ to _∣ʳ_ᶜ)

  open Corestriction {A} ∈-sp public
    renaming (_∣^_ to _∣^ʳ_; _∣^_ᶜ to _∣^ʳ_ᶜ) public

  open Restrictionᵐ {A} ∈-sp public
  open Corestrictionᵐ {A} ∈-sp public
  open Unionᵐ {A} ∈-sp public
  open Intersection {A} ∈-sp public
  open Lookupᵐ {A} ∈-sp public
  open Lookupᵐᵈ {A} ∈-sp public

open import Class.CommutativeMonoid

module _ ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where
  open Intersectionᵐ {A} {B} ∈-sp public
  open IndexedSumUnionᵐ {A} {B} ∈-sp (_∈? _) public

module Properties where
  open import Axiom.Set.Properties th public
  module _ ⦃ _ : DecEq A ⦄ where
    open Intersectionᵖ {A} ∈-sp public

_ᶠᵐ : A ⇀ B → FinMap A B
(R , uniq) ᶠᵐ = (R , uniq , finiteness _)

_ᶠˢ : ℙ A → FinSet A
X ᶠˢ = X , finiteness _

filterˢ : (P : A → Type) ⦃ _ : P ⁇¹ ⦄ → ℙ A → ℙ A
filterˢ P = filterˢ? (to-sp P)

filterᵐ : (P : A × B → Type) ⦃ _ : P ⁇¹ ⦄ → (A ⇀ B) → (A ⇀ B)
filterᵐ P = filterᵐ? (to-sp P)

filterKeys : (P : A → Type) ⦃ _ : P ⁇¹ ⦄ → (A ⇀ B) → (A ⇀ B)
filterKeys P = filterKeys? (to-sp P)

_∣^'_ : A ⇀ B → (P : B → Type) ⦃ _ : P ⁇¹ ⦄ → A ⇀ B
s ∣^' P = s ∣^'? to-sp P

indexedSumᵛ' : ⦃ DecEq A ⦄ → ⦃ DecEq B ⦄ → ⦃ CommutativeMonoid 0ℓ 0ℓ C ⦄ → (B → C) → A ⇀ B → C
indexedSumᵛ' f m = indexedSumᵛ f (m ᶠᵐ)

indexedSum' : ⦃ DecEq A ⦄ → ⦃ CommutativeMonoid 0ℓ 0ℓ B ⦄ → (A → B) → ℙ A → B
indexedSum' f s = indexedSum f (s ᶠˢ)

syntax indexedSumᵛ' (λ a → x) m = ∑[ a ← m ] x
syntax indexedSum'  (λ a → x) m = ∑ˢ[ a ← m ] x

opaque
  unfolding List-Model

  singleton-≢-∅ : ∀ {a} {x : a} → ⦃ DecEq a ⦄ → singleton x ≢ ∅
  singleton-≢-∅ {x = x} ()

aggregateBy : ⦃ DecEq A ⦄ → ⦃ DecEq B ⦄ → ⦃ DecEq C ⦄ → ⦃ CommutativeMonoid 0ℓ 0ℓ C ⦄
            → Rel A B → A ⇀ C → B ⇀ C
aggregateBy R m = mapFromFun (λ b → ∑[ x ← m ∣ Rel.dom (R ∣^ʳ ❴ b ❵) ] x) (Rel.range R)

import Algebra

module _ ⦃ decA : DecEq A ⦄ ⦃ decB : DecEq B ⦄ {f : B → C}
         ⦃ cm : CommutativeMonoid 0ℓ 0ℓ C ⦄
         where
  open Algebra.CommutativeMonoid (Conversion.toBundle cm) renaming (trans to ≈-trans) hiding (refl)
  import Relation.Binary.Reasoning.Setoid as SetoidReasoning
  open SetoidReasoning (Algebra.CommutativeMonoid.setoid (Conversion.toBundle cm))

  indexedSumᵛ'-cong : indexedSumᵛ' f Preserves (_≡ᵉ_ on proj₁) ⟶ _≈_
  indexedSumᵛ'-cong {x} {y} x≡y =
    indexedSum-cong {A = A × B} {λ (a , b) → f b} {(x ˢ) ᶠˢ} {(y ˢ) ᶠˢ} x≡y
