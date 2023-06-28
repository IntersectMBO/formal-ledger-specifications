{-# OPTIONS --safe --no-import-sorts #-}

open import Axiom.Set using ( Theory )

module Axiom.Set.TotalMap (th : Theory) where

open import Prelude hiding (lookup)

open import Agda.Primitive              using () renaming (Set to Type)
open import Axiom.Set.Map th            using (left-unique; Map ; mapWithKey-uniq)
open import Axiom.Set.Rel th            using (Rel ; dom ; dom∈)
open import Interface.DecEq             using (DecEq ; _≟_)
open import Relation.Nullary.Decidable  using (yes ; no)

open Theory th    using (_∈_ ; map ; Set ; ∈-map ; ∈-map′)
open Equivalence  using (to ; from)

private variable A B : Type


-- defines a total map for a given set
total-map : Rel A B → Type
total-map R = ∀ {a} → a ∈ map proj₁ R


record TotalMap (A B : Type) : Type where
  field  rel : Set (A × B)
         lun : left-unique rel
         tot : ∀{a : A} → a ∈ dom rel


  MapReduct : Map A B
  MapReduct = rel , lun


  lookup : A → B
  lookup a = proj₁ ξ
    where
    ξ : ∃[ b ] (a , b) ∈ rel
    ξ = to dom∈ tot


  lookupCert : {a : A} → (a , lookup a) ∈ rel
  lookupCert = proj₂ (to dom∈ tot)


  lookupLemma : {a : A}{b : B} → (a , b) ∈ rel → lookup a ≡ b
  lookupLemma {a} ab∈rel = sym (lun ab∈rel alu∈rel)
    where
    alu∈rel : (a , lookup a) ∈ rel
    alu∈rel = proj₂ (to dom∈ tot)


module Unionᵗᵐ {B : Type} ⦃ _ : DecEq A ⦄ where

  -- updateFn:  Helper for defining update functions.
  --            Given (a , b) and x y, if x ≡ a return b, otherwise return y.
  updateFn : A × B → A → B → B
  updateFn (a , b) x y with (x ≟ a)
  ... | yes _ = b
  ... | no _ = y

  open TotalMap

  mapWithKeyTotal : ∀{B'}{f : A → B → B'}{R : Rel A B} → total-map R → total-map (map (λ { (x , y) → x , f x y }) R)
  mapWithKeyTotal {f = f}{R} tot {a} = ψ (ϕ tot)
    where
    ϕ : a ∈ dom R → Σ (Σ A (λ x₁ → B)) (λ a₁ → a ≡ proj₁ a₁ × a₁ ∈ R)
    ϕ = from ∈-map
    ψ : Σ (Σ A (λ _ → B)) (λ uv → a ≡ proj₁ uv × uv ∈ R) → a ∈ dom (map (λ {(x , y) → x , f x y}) R)
    ψ (_ , refl , aRb) = ∈-map′ (∈-map′ aRb)

  update : A → B → TotalMap A B → TotalMap A B
  update a b tm .rel = map (λ { (x , y) → x , updateFn (a , b) x y}) (rel tm)
  update _ _ tm .lun = mapWithKey-uniq (lun tm)
  update a b tm .tot {a'} = mapWithKeyTotal (tot tm)
