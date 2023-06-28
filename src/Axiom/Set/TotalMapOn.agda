{-# OPTIONS --safe --no-import-sorts #-}

open import Axiom.Set using (Theory)

module Axiom.Set.TotalMapOn (th : Theory) where

open import Prelude hiding (lookup)

open import Agda.Primitive              using () renaming (Set to Type)
open import Axiom.Set.Map th            using (left-unique ; Map ; mapWithKey-uniq)
open import Axiom.Set.Rel th            using (Rel ; dom ; dom∈)
open import Axiom.Set.TotalMap th       using (module Unionᵗᵐ)
open import Interface.DecEq             using (DecEq ; _≟_)
open import Relation.Nullary.Decidable  using (Dec ; yes ; no)

open Theory th    using ( Set ; _⊆_ ; _∈_ ; map ; ∈-map′ )
open Equivalence  using (to)
open Unionᵗᵐ       using (updateFn)

private variable A B : Type

_TotalOn_ : Rel A B → Set A → Type
R TotalOn X = X ⊆ dom R


record TotalMapOn {A : Type}(X : Set A)(B : Type) : Type where
  field  rel     : Set (A × B)
         lun     : left-unique rel
         total   : rel TotalOn X

  domain : Set A
  domain = X

  MapReduct : Map A B
  MapReduct = rel , lun

  lookup : Σ A (_∈ domain) → B
  lookup (_ , a∈X) = proj₁ (to dom∈ (total a∈X))

  -- verify that lookup is what we expect
  lookupCert : {a : A} (a∈X : a ∈ domain) → (a , lookup (a , a∈X)) ∈ rel
  lookupCert a∈X = proj₂ (to dom∈ (total a∈X))

  -- a lemma that's useful for proving equalities involving lookup
  lookupLemma : {a : A} {a∈dom : a ∈ domain} {b : B} → (a , b) ∈ rel → lookup (a , a∈dom) ≡ b
  lookupLemma {a} {a∈dom} ab∈rel = sym (lun ab∈rel alu∈rel)
    where
    alu∈rel : (a , lookup (a , a∈dom)) ∈ rel
    alu∈rel = proj₂ (to dom∈ (total a∈dom))

  lookupLemma-Σ : {aa : Σ A (_∈ domain)} {b : B} → (proj₁ aa , b) ∈ rel → lookup aa ≡ b
  lookupLemma-Σ {aa} = lookupLemma {proj₁ aa}{proj₂ aa}


module Union-tm {B : Type} ⦃ _ : DecEq A ⦄ where

  open TotalMapOn

  mapWithKeyTotalOn :  {X : Set A}{B' : Type}{f : A → B → B'}{R : Rel A B}
    →                  R TotalOn X → (map (λ { (x , y) → x , f x y }) R) TotalOn X

  mapWithKeyTotalOn {B' = B'}{f}{R} tot {a} a∈X = Goal
    where
    R' : Rel A B'
    R' = map (λ { (x , y) → x , f x y }) R

    h : ∃[ b ] (a , b) ∈ R
    h = to dom∈ (tot a∈X)

    h' : ∃[ b ] (a , b) ∈ R'
    h' = (f a (proj₁ h)) , (∈-map′ (proj₂ h))

    Goal : a ∈ dom R'
    Goal = ∈-map′ (proj₂ h')

  mapWithKeyOn : {X : Set A}{B' : Type} → (A → B → B') → TotalMapOn X B → TotalMapOn X B'
  mapWithKeyOn f tm .rel    = map (λ { (x , y) → x , f x y}) (rel tm)
  mapWithKeyOn _ tm .lun    = mapWithKey-uniq (lun tm)
  mapWithKeyOn _ tm .total  = mapWithKeyTotalOn (total tm)

  update : {X : Set A} → A → B → TotalMapOn X B → TotalMapOn X B
  update a b t = mapWithKeyOn (updateFn (a , b)) t


