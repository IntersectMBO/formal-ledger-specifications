{-# OPTIONS --safe #-}

module Ledger.Prelude where

open import Prelude public

open import Interface.ComputationalRelation public
open import Interface.DecEq public
open import Relation.Nullary public
open import Relation.Nullary.Negation
open import Relation.Unary using () renaming (Decidable to Dec₁) public

open import Axiom.Set
open import Axiom.Set.List as L renaming (List-Model to List-Model'; List-Modelᶠ to List-Model'ᶠ; List-Modelᵈ to List-Model'ᵈ)

abstract
  List-Model : Theory
  List-Model = List-Model'
  List-Modelᶠ : Theoryᶠ
  List-Modelᶠ = List-Model'ᶠ
  List-Modelᵈ : Theoryᵈ
  List-Modelᵈ = List-Model'ᵈ

open Theoryᵈ List-Modelᵈ renaming (Set to ℙ_; filter to filterˢ) public

abstract
  to-sp : {A : Set} {P : A → Set} → Dec₁ P → specProperty P
  to-sp = id

  finiteness : ∀ {A} (X : Theory.Set th A) → finite X
  finiteness = Theoryᶠ.finiteness List-Modelᶠ

  setToList : {A : Set} → ℙ A → List A
  setToList = id

  setFromList : {A : Set} → List A → ℙ A
  setFromList = id

open import Axiom.Set.Rel th renaming (Map to _↛_) public
open L.Decˡ hiding (_∈?_) public
open import Axiom.Set.Sum th public

module _ {A : Set} ⦃ _ : DecEq A ⦄ where
  open Restriction {A} ∈-sp public
  open Corestriction {A} ∈-sp public
  open Unionᵐ {A} ∈-sp public
  open Intersection {A} ∈-sp public

module _ {A B : Set} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where
  open Intersectionᵐ {A} {B} ∈-sp public

  open import Algebra using (CommutativeMonoid)

  module _ ⦃ M : CommutativeMonoid 0ℓ 0ℓ ⦄ where
    open IndexedSumUnionᵐ {A} {B} ∈-sp (_∈? _) public

module Properties where
  open import Axiom.Set.Properties th public
  module _ {A : Set} ⦃ _ : DecEq A ⦄ where
    open Intersectionᵖ {A} ∈-sp public

open Computational public
