{-# OPTIONS --safe #-}

--------------------------------------------------------------------------------
-- Ledger prelude
--
-- Re-exports modules relating to STS, set theory and other
-- miscellaneous things used to write the ledger rules. If something
-- is used in more than two Ledger.* modules, it should probably go
-- here.
--------------------------------------------------------------------------------

module Ledger.Prelude where

open import Prelude public

open import Ledger.Prelude.Base public

open import Interface.ComputationalRelation public
open import Interface.DecEq public
open import Ledger.Interface.HasCoin public
open import Interface.HasAdd public
open import Interface.HasAdd.Instance public
open import Relation.Nullary public
open import Relation.Unary using () renaming (Decidable to Dec₁) public
open Computational public

-- TODO: move this into Interface.DecEq
open import Data.Rational
import Data.Rational.Properties as ℚ
import Data.Bool.Properties as 𝔹

instance
  DecEq-Bool : DecEq Bool
  DecEq-Bool = record { _≟_ = 𝔹._≟_ }

  DecEq-ℚ : DecEq ℚ
  DecEq-ℚ = record { _≟_ = ℚ._≟_ }

--------------------------------------------------------------------------------
-- Set theory

open import Axiom.Set
open import Axiom.Set.List as L renaming (List-Model to List-Model'; List-Modelᶠ to List-Model'ᶠ; List-Modelᵈ to List-Model'ᵈ)

abstract
  List-Model : Theory {0ℓ}
  List-Model = List-Model'
  List-Modelᶠ : Theoryᶠ
  List-Modelᶠ = List-Model'ᶠ
  List-Modelᵈ : Theoryᵈ
  List-Modelᵈ = List-Model'ᵈ

open Theoryᵈ List-Modelᵈ renaming (Set to ℙ_; filter to filterˢ) public

abstract
  open import Axiom.Set.Properties th using (card-≡ᵉ)
  to-sp : {A : Set} {P : A → Set} → Dec₁ P → specProperty P
  to-sp = id

  finiteness : ∀ {A} (X : Theory.Set th A) → finite X
  finiteness = Theoryᶠ.finiteness List-Modelᶠ

  lengthˢ : ∀ {A} ⦃ _ : DecEq A ⦄ (X : Theory.Set th A) → ℕ
  lengthˢ = Theoryᶠ.lengthˢ List-Modelᶠ

  lengthˢ-≡ᵉ : ∀ {A} ⦃ _ : DecEq A ⦄ (X Y : Theory.Set th A) → X ≡ᵉ Y → lengthˢ X ≡ lengthˢ Y
  lengthˢ-≡ᵉ X Y X≡Y =
    card-≡ᵉ (X , Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ X)
            (Y , Theoryᶠ.DecEq⇒strongly-finite List-Modelᶠ Y) X≡Y

  lengthˢ-∅ : ∀ {A} ⦃ _ : DecEq A ⦄ → lengthˢ {A} ∅ ≡ 0
  lengthˢ-∅ = refl

  setToList : {A : Set} → ℙ A → List A
  setToList = id

  setFromList : {A : Set} → List A → ℙ A
  setFromList = id

  ≟-∅ : {A : Set} ⦃ _ : DecEq A ⦄ → {X : ℙ A} → Dec (X ≡ ∅)
  ≟-∅ = Decˡ.≟-∅

open import Axiom.Set.Rel th public
  hiding (_∣'_; _↾'_)

open import Axiom.Set.Map th public
  renaming (Map to _⇀_)

open import Axiom.Set.TotalMap th public
open import Axiom.Set.TotalMapOn th

open L.Decˡ public
  hiding (_∈?_; ≟-∅)

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

_ᶠᵐ : {A B : Set} → A ⇀ B → FinMap A B
(R , uniq) ᶠᵐ = (R , uniq , finiteness _)
