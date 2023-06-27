{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive  using ( ) renaming ( Set to Type )
open import Axiom.Set       using ( Theory )

module Axiom.Set.TotalMapOn (th : Theory) where

open import Prelude hiding ( lookup )

open Theory th
open import Axiom.Set.Map th using ( left-unique ; Map ; mapWithKey-uniq)
open import Axiom.Set.Rel th

open import Interface.DecEq
open import Relation.Binary.PropositionalEquality using ( _≡_ ; cong ; module ≡-Reasoning )
open import Relation.Binary using () renaming (Decidable to Dec₂)
open import Relation.Nullary.Decidable using (Dec ; yes ; no)
open import Relation.Unary using () renaming (Decidable to Dec₁)

open Equivalence

private variable A B : Type

total-map : Rel A B → Type
total-map R = ∀ {a} → a ∈ map proj₁ R


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

  lookupCert : {a : A} (a∈X : a ∈ domain) → (a , lookup (a , a∈X)) ∈ rel
  lookupCert a∈X = proj₂ (to dom∈ (total a∈X))

  lookupLemma : {a : A} {a∈dom : a ∈ domain} {b : B} → (a , b) ∈ rel → lookup (a , a∈dom) ≡ b
  lookupLemma {a} {a∈dom} ab∈rel = sym (lun ab∈rel alu∈rel)
    where
    alu∈rel : (a , lookup (a , a∈dom)) ∈ rel
    alu∈rel = proj₂ (to dom∈ (total a∈dom))

  lookupLemma' : {aa : Σ A (_∈ domain)} {b : B} → (proj₁ aa , b) ∈ rel → lookup aa ≡ b
  lookupLemma' {aa} ab∈rel = sym (lun ab∈rel alu∈rel)
    where
    alu∈rel : (proj₁ aa , lookup aa) ∈ rel
    alu∈rel = proj₂ (to dom∈ (total (proj₂ aa)))


module Unionᵗᵐ  {B : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where

  updateFn : A × B → A → B → B
  updateFn (a , b) x y with (x ≟ a)
  ... | yes _ = b
  ... | no _ = y


  open TotalMapOn
  mapWithKeyTotalOn :  (X : Set A){B' : Type}{f : A → B → B'}{R : Rel A B}
    →                  R TotalOn X → (map (λ { (x , y) → x , f x y }) R) TotalOn X

  mapWithKeyTotalOn X {B'}{f}{R} tot {a} a∈X = Goal
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
  mapWithKeyOn {X} f tm .rel = map (λ { (x , y) → x , f x y}) (rel tm)
  mapWithKeyOn _ tm .lun = mapWithKey-uniq (lun tm)
  mapWithKeyOn {X} _ tm .total = mapWithKeyTotalOn X (total tm)

  updateOn : {X : Set A} → A → B → TotalMapOn X B → TotalMapOn X B
  updateOn a b t = mapWithKeyOn (updateFn (a , b)) t
