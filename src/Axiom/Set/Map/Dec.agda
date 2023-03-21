{-# OPTIONS --safe --no-import-sorts #-}
open import Axiom.Set

module Axiom.Set.Map.Dec (thᵈ : Theoryᵈ) where

open import Agda.Primitive renaming (Set to Type)
open import Data.These
open import Interface.DecEq
open import Data.Product
open import Data.Sum as Sum
open import Relation.Nullary.Decidable using (yes; no)
open import Prelude hiding (filter)
open Equivalence

open Theoryᵈ thᵈ using (_∈?_; th; incl-set'; incl-set; incl-set-proj₁)
open Theory th renaming (map to mapˢ)
open import Axiom.Set.Rel th hiding (_∣'_; _∣^'_)
open import Axiom.Set.Map th
open import Data.List.Relation.Unary.Any
open import Relation.Binary.PropositionalEquality

private variable A A' B B' C D : Type
                 R R' : Rel A B
                 X Y : Set A

module Lookupᵐᵈ (sp-∈ : spec-∈ A) where
  open Lookupᵐ sp-∈

  unionThese : ⦃ DecEq A ⦄ → (m : Map A B) → (m' : Map A C) → (x : A) → x ∈ dom (m ˢ) ∪ dom (m' ˢ) → These B C
  unionThese m m' x dp with x ∈? dom (m ˢ) | x ∈? dom (m' ˢ)
  ... | yes mr | yes mr' = these (lookupᵐ m x) (lookupᵐ m' x)
  ... | yes mr | no  mr' = this  (lookupᵐ m x)
  ... | no  mr | yes mr' = that  (lookupᵐ m' x)
  ... | no  mr | no  mr' = Sum.[ flip contradiction mr , flip contradiction mr' ] (from ∈-∪ dp)

  unionWith : ⦃ DecEq A ⦄ → (These B C → D) → Map A B → Map A C → Map A D
  unionWith f m@(r , p) m'@(r' , p') = m'' , helper
     where
       d = dom r ∪ dom r'
       m'' = mapˢ (λ (x , p) → x , f (unionThese m m' x p)) (incl-set d)

       helper : left-unique m''
       helper q q' with from ∈-map q | from ∈-map q'
       ... | _ , refl , t | _ , refl , t' with to (∈-mapPartial {f = incl-set' _}) t
                                             | to (∈-mapPartial {f = incl-set' _}) t'
       ... | z , _ | z' , _ with z ∈? d | inspect (_∈? d) z | z' ∈? d | inspect (_∈? d) z'
       helper _ _ | _ | _ | _ , _ , refl | _ , _ , refl
           | yes _ | [ eq ] | yes _ | [ eq' ] with trans (sym eq) eq'
       ... | refl = refl

