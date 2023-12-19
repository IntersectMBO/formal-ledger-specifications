{-# OPTIONS --safe #-}

-- Properties of Subperms --
module Data.List.Ext.Subperm.Properties where

open import Prelude
open import Ledger.Prelude hiding (_∈_) renaming (_⊆_ to _⊆ˢ_)
open import Data.List.Relation.Binary.Sublist.Heterogeneous.Core using (Sublist)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.Any using (any?; here; there)
open import Axiom.Set.Properties using (⊆-Transitive)

open import Data.List.Ext.Subperm
open Sublist

module _ {A : Set} where

  open Equivalence
  ¬∈[] : {a : A} → a ∈ [] → ⊥
  ¬∈[] = λ ()

  ¬l⊆fromList[] : {l : List A} → fromList l ⊆ˢ fromList [] → l ≡ []
  ¬l⊆fromList[] {[]} x = refl
  ¬l⊆fromList[] {_ ∷ _} x = ⊥-elim $ ¬∈[] $ from ∈-fromList $ x (to ∈-fromList $ here refl)

  fromList→Subperm : ∀ {l L : List A} → fromList l ⊆ˢ fromList L → Subperm l L
  fromList→Subperm {_} {[]} x = subst (λ l → Subperm l []) (sym (¬l⊆fromList[] x)) []
  fromList→Subperm {[]} {_} _ = Subperm[]
  fromList→Subperm {x ∷ xs} {y ∷ ys} h =  (from ∈-fromList $ h (to ∈-fromList (here refl)))
                                          ∷ₚ (fromList→Subperm $ (⊆-Transitive th) γ h)
    where
    γ : fromList xs ⊆ˢ fromList (x ∷ xs)
    γ u = to ∈-fromList (there (from ∈-fromList u))

  sublists⊆subpermutations : {l x : List A} → Sublist _≡_ x l → Subperm x l
  sublists⊆subpermutations [] = []
  sublists⊆subpermutations {y ∷ _}{x} (y Sublist.∷ʳ x⊆l) = y ∷ₚʳ sublists⊆subpermutations x⊆l
  sublists⊆subpermutations (x ∷ x⊆l) = here x ∷ₚ (_ ∷ₚʳ sublists⊆subpermutations x⊆l)
