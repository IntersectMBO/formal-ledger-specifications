{-# OPTIONS --safe #-}

module Ledger.Prelude where

open import Prelude public

open import Interface.ComputationalRelation public
open import Interface.DecEq public
open import Relation.Nullary public
open import Relation.Nullary.Negation

open import Axiom.Set
open import Axiom.Set.List as L
open import Axiom.Set.Rel List-Model renaming (Map to _↛_) public
open L.Dec public

module _ {A : Set} ⦃ _ : DecEq A ⦄ where
  open Restriction {A} (_∈? _) public
  open Corestriction {A} (_∈? _) public
  open Unionᵐ {A} (_∈? _) public

module _ {A B : Set} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where
  open Intersectionᵐ {A} {B} (_∈? _) public

open Theoryᶠ List-Modelᶠ renaming (Set to ℙ_; filter to filterˢ) public

module Properties where
  open import Axiom.Set.Properties List-Model public

open Computational public
