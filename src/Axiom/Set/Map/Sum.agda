{-# OPTIONS --safe --no-import-sorts #-}
open import Axiom.Set

module Axiom.Set.Map.Sum (thᶠ : Theoryᶠ) where

open import Prelude

open import Agda.Primitive renaming (Set to Type)
open import Algebra
open import Interface.DecEq

open Theoryᶠ thᶠ renaming (theory to th; map to mapˢ)

open import Axiom.Set.Rel th
open import Axiom.Set.Map th
open import Axiom.Set.Sum th

private variable A A' B : Type

module Sumᵐ (sp-∈ : spec-∈ A) ⦃ M : CommutativeMonoid 0ℓ 0ℓ ⦄ where
  open CommutativeMonoid M renaming (Carrier to V)
  open Restrictionᵐ sp-∈
  open Restriction sp-∈

  squashSum : ⦃ DecEq V ⦄ → Rel A V → Map A V
  squashSum r = mapValues (λ x → indexedSum id (x , finiteness x)) (squashToMap r)

module Pushforwardᵐ (sp-∈ : spec-∈ A) (sp-∈' : spec-∈ A') ⦃ M : CommutativeMonoid 0ℓ 0ℓ ⦄ where
  open CommutativeMonoid M renaming (Carrier to V)
  open Restriction sp-∈

  _⋆↓_ : ⦃ DecEq V ⦄ → Map A V → Map A A' → Map A' V
  (r , p) ⋆↓ (s , q) = squashSum $ concatMapˢ (λ where (a , b) → mapˢ (_, b) (s ⟪$⟫ ❴ a ❵)) r
    where open Sumᵐ sp-∈'
