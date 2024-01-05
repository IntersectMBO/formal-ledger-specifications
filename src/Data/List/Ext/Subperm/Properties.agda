{-# OPTIONS --safe #-}

-- Properties of Subperms --
module Data.List.Ext.Subperm.Properties where

open import Ledger.Prelude hiding (_∷ʳ_) renaming (_∈_ to _∈ˢ_)
open import Data.List.Relation.Binary.Sublist.Heterogeneous.Core using (Sublist; _∷ʳ_)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.Any using (any?; here; there)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Axiom.Set.Properties using (⊆-Transitive)
open import Function.Bundles using (Equivalence)
open import Data.List.Ext.Subperm
open Sublist

module _ {A : Set} where

  open Subperm {A = A}

  open Equivalence
  l⊆[] : {l : List A} → fromList l ⊆ fromList [] → l ≡ []
  l⊆[] {[]} _ = refl
  l⊆[] {_ ∷ _} x = ⊥-elim $ (λ ()) $ from ∈-fromList $ x (to ∈-fromList $ here refl)

  SetIncl→Subperm : ∀ {l L : List A} → fromList l ⊆ fromList L → Subperm l L
  SetIncl→Subperm {[]} {_} _ = Subperm[]
  SetIncl→Subperm {_} {[]} x = subst (λ l → Subperm l []) (sym (l⊆[] x)) []
  SetIncl→Subperm {_ ∷ _} {_ ∷ _} h =
    tight (from ∈-fromList $ h (to ∈-fromList $ here refl))
          (SetIncl→Subperm $ (⊆-Transitive th) (λ u → to ∈-fromList $ there (from ∈-fromList u)) h)

  Subperm→SetIncl : ∀ {l L : List A} → Subperm l L → fromList l ⊆ fromList L
  Subperm→SetIncl [] {a} a∈l = ⊥-elim $ ¬Any[] (from ∈-fromList a∈l)

  Subperm→SetIncl (loose Sp) a∈l = to ∈-fromList $ there (from ∈-fromList $ Subperm→SetIncl Sp a∈l)
  Subperm→SetIncl {_ ∷ _} {L} (tight x∈L Sp) a∈l with from ∈-fromList a∈l
  ...| here p = to ∈-fromList $ subst (_∈ L) (sym p) x∈L
  ...| there ps = to ∈-fromList (from ∈-fromList $ Subperm→SetIncl Sp (to ∈-fromList ps))

  sublists⊆subpermutations : {l x : List A} → Sublist _≡_ x l → Subperm x l
  sublists⊆subpermutations [] = []
  sublists⊆subpermutations (_ ∷ʳ x⊆l) = loose (sublists⊆subpermutations x⊆l)
  sublists⊆subpermutations (x ∷ x⊆l) = tight (here x) (loose $ sublists⊆subpermutations x⊆l)
