{-# OPTIONS --safe --no-import-sorts #-}
open import Axiom.Set

module Axiom.Set.Map.Dec (thᵈ : Theoryᵈ) where

open import Prelude

open import Agda.Primitive renaming (Set to Type)
open import Algebra
open import Data.Sum as Sum
open import Data.These
open import Interface.DecEq
open import Relation.Binary.PropositionalEquality
open import Relation.Nullary.Decidable

open Theoryᵈ thᵈ using (_∈?_; th; incl-set'; incl-set; incl-set-proj₁)
open Theory th renaming (map to mapˢ)
open import Axiom.Set.Rel th hiding (_∣'_; _↾'_)
open import Axiom.Set.Map th

open Equivalence

private variable A B C D : Type

module Lookupᵐᵈ (sp-∈ : spec-∈ A) where
  open Lookupᵐ sp-∈

  unionThese : ⦃ DecEq A ⦄ → (m : Map A B) (m' : Map A C) (x : A) →
    x ∈ dom (m ˢ) ∪ dom (m' ˢ) → These B C
  unionThese m m' x dp with x ∈? dom (m ˢ) | x ∈? dom (m' ˢ)
  ... | yes mr | yes mr' = these (lookupᵐ m x) (lookupᵐ m' x)
  ... | yes mr | no  mr' = this  (lookupᵐ m x)
  ... | no  mr | yes mr' = that  (lookupᵐ m' x)
  ... | no  mr | no  mr' = Sum.[ flip contradiction mr , flip contradiction mr' ]
                               (from ∈-∪ dp)

  unionWith : ⦃ DecEq A ⦄ → (These B C → D) → Map A B → Map A C → Map A D
  unionWith f m@(r , p) m'@(r' , p') = m'' , helper
     where
       d = dom r ∪ dom r'
       m'' = mapˢ (λ (x , p) → x , f (unionThese m m' x p)) (incl-set d)

       helper : left-unique m''
       helper q q'
         with _ , refl , t  ← from ∈-map q
         with _ , refl , t' ← from ∈-map q'
         with from (∈-mapPartial {f = incl-set' _}) t
            | from (∈-mapPartial {f = incl-set' _}) t'
       ... | z , _ | z' , _
         with z ∈? d in eq | z' ∈? d in eq'
       helper _ _ | _ , _ , refl | _ , _ , refl | yes _ | yes _
         with refl ← trans (sym eq) eq' = refl

  module _ ⦃ M : Monoid 0ℓ 0ℓ ⦄ ⦃ _ : DecEq A ⦄ where
    infixr 6 _∪⁺_
    open Monoid M renaming (Carrier to V)

    _∪⁺_ : Map A V → Map A V → Map A V
    _∪⁺_ = unionWith (fold id id _∙_)

    aggregate₊ : FinSet (A × V) → Map A V
    aggregate₊ (_ , l , _) = foldl (λ m x → m ∪⁺ ❴ x ❵ᵐ) ∅ᵐ l
