{-# OPTIONS --safe --no-import-sorts #-}

open import Axiom.Set using ( Theory )

module Axiom.Set.TotalMap (th : Theory) where

open import Prelude hiding (lookup)

open import Agda.Primitive              using () renaming (Set to Type)
open import Relation.Nullary.Decidable  using (yes ; no)

open import Axiom.Set.Map th            using (left-unique; Map ; mapWithKey-uniq)
open import Axiom.Set.Rel th            using (Rel ; dom ; dom∈)
open import Interface.DecEq             using (DecEq ; _≟_)

open Theory th    using (_∈_ ; map ; Set ; ∈-map ; ∈-map′)
open Equivalence  using (to ; from)

private variable A B : Type


-- defines a total map for a given set
total : Rel A B → Type
total R = ∀ {a} → a ∈ dom R


record TotalMap (A B : Type) : Type where
  field  rel              : Set (A × B)
         left-unique-rel  : left-unique rel
         total-rel        : total rel

  toMap : Map A B
  toMap = rel , left-unique-rel

  lookup : A → B
  lookup _ = proj₁ (to dom∈ total-rel)

  -- verify that lookup is what we expect
  lookup∈rel : {a : A} → (a , lookup a) ∈ rel
  lookup∈rel = proj₂ (to dom∈ total-rel)

  -- this is useful for proving equalities involving lookup
  rel⇒lookup : {a : A}{b : B} → (a , b) ∈ rel → lookup a ≡ b
  rel⇒lookup ab∈rel = sym (left-unique-rel ab∈rel (proj₂ (to dom∈ total-rel)))


module Update {B : Type} ⦃ _ : DecEq A ⦄ where

  private
    updateFn : A × B → A → B → B
    updateFn (a , b) x y with (x ≟ a)
    ... | yes  _ = b
    ... | no   _ = y

  open TotalMap

  mapWithKey : {B' : Type} → (A → B → B') → TotalMap A B → TotalMap A B'
  mapWithKey f tm .rel              = map (λ{(x , y) → x , f x y}) (rel tm)
  mapWithKey _ tm .left-unique-rel  = mapWithKey-uniq (left-unique-rel tm)
  mapWithKey _ tm .total-rel        = ∈-map′ (∈-map′ (proj₂ (to dom∈ (total-rel tm))))

  update : A → B → TotalMap A B → TotalMap A B
  update a b = mapWithKey (updateFn (a , b))
