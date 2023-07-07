{-# OPTIONS --safe --no-import-sorts #-}

open import Axiom.Set using (Theory)

module Axiom.Set.TotalMapOn (th : Theory) where

open import Prelude hiding (lookup)

open import Agda.Primitive                     using () renaming (Set to Type)
open import Function.Related.TypeIsomorphisms  using (Σ-≡,≡→≡)
open import Relation.Nullary.Decidable         using (Dec ; yes ; no)

open import Axiom.Set.Map th                   using (left-unique ; Map ; mapWithKey-uniq ; left-unique-mapˢ)
open import Axiom.Set.Rel th                   using (Rel ; dom ; dom∈)
open import Interface.DecEq                    using (DecEq ; _≟_)

open Theory th
open Equivalence using (to)

private variable A B : Type

_TotalOn_ : Rel A B → Set A → Type
R TotalOn X = X ⊆ dom R


record TotalMapOn (X : Set A)(B : Type) : Type where
  field  rel              : Set (A × B)
         left-unique-rel  : left-unique rel
         total-rel        : rel TotalOn X

  toMap : Map A B
  toMap = rel , left-unique-rel

  lookup : Σ A (_∈ X) → B
  lookup (_ , a∈X) = proj₁ (to dom∈ (total-rel a∈X))

  lookup' : (a : A) → (a ∈ X) → B
  lookup' _ a∈X = proj₁ (to dom∈ (total-rel a∈X))

  -- verify that lookup is what we expect
  lookup∈rel : {a : A} (a∈X : a ∈ X) → (a , lookup (a , a∈X)) ∈ rel
  lookup∈rel a∈X = proj₂ (to dom∈ (total-rel a∈X))

  -- this is useful for proving equalities involving lookup
  ∈-rel→lookup-≡ : {a : A} {a∈dom : a ∈ X} {b : B} → (a , b) ∈ rel → lookup (a , a∈dom) ≡ b
  ∈-rel→lookup-≡ {a} {a∈dom} ab∈rel = sym (left-unique-rel ab∈rel (proj₂ (to dom∈ (total-rel a∈dom))))


module UpdateOn ⦃ _ : DecEq A ⦄ where

  updateFn : A × B → A → B → B
  updateFn (a , b) x y with (x ≟ a)
  ... | yes  _ = b
  ... | no   _ = y

  updateFn-id : {a : A}{b b' : B} → b ≡ updateFn (a , b) a b'
  updateFn-id {a = a} with (a ≟ a)
  ... | yes _ = refl
  ... | no ¬p = ⊥-elim (¬p refl)

  open TotalMapOn

  mapWithKeyOn : {X : Set A}{B' : Type} → (A → B → B') → TotalMapOn X B → TotalMapOn X B'
  mapWithKeyOn f tm .rel              = map (λ{(x , y) → x , f x y}) (rel tm)
  mapWithKeyOn _ tm .left-unique-rel  = mapWithKey-uniq (left-unique-rel tm)
  mapWithKeyOn _ tm .total-rel a∈X    = ∈-map′ (∈-map′ (proj₂ (to dom∈ ((total-rel tm) a∈X))))

  -- Return a new total map which is the same as the given total map except at a.
  update : {X : Set A} → A → B → TotalMapOn X B → TotalMapOn X B
  update a b = mapWithKeyOn (updateFn (a , b))


module LookupUpdateOn
  {X : Set A}
  {a : A} {a∈X : a ∈ X}
  {b : B}
  ⦃ decEqA : DecEq A ⦄ where

  open TotalMapOn
  open UpdateOn

  ∈-rel-update  : (tm : TotalMapOn X B) → (a , b) ∈ rel (update a b tm)
  ∈-rel-update tm = to ∈-map  ( (a , lookup tm (a , a∈X))
                              , (Σ-≡,≡→≡ (refl , updateFn-id {A}))
                              , lookup∈rel tm a∈X )

  lookup-update-id  : (tm : TotalMapOn X B) → (lookup (update a b tm)) (a , a∈X) ≡ b
  lookup-update-id tm = ∈-rel→lookup-≡ (update _ _ tm) (∈-rel-update tm)


------------------------------------------------------
-- Correspondences between total maps and functions --

module _ {X : Set A} where
  open TotalMapOn

  Fun⇒TotalMapOn : (f : A → B) → TotalMapOn X B
  Fun⇒TotalMapOn f .rel              = map (λ x → (x , f x)) X
  Fun⇒TotalMapOn _ .left-unique-rel  = left-unique-mapˢ X
  Fun⇒TotalMapOn _ .total-rel a∈X    = ∈-map′ (∈-map′ a∈X)

  Fun∈TotalMapOn  : {f : A → B}{a : A}
                  → a ∈ X → (a , f a) ∈ rel (Fun⇒TotalMapOn f)
  Fun∈TotalMapOn a∈X = ∈-map′ a∈X

  lookup∘Fun⇒TotalMapOn-id  : {f : A → B}{a : A}
                            → (a∈X : a ∈ X) → lookup (Fun⇒TotalMapOn f) (a , a∈X) ≡ f a
  lookup∘Fun⇒TotalMapOn-id {f = f} a∈X = ∈-rel→lookup-≡ ((Fun⇒TotalMapOn f)) (Fun∈TotalMapOn a∈X)


  -- Set⇒DSet : Set(Σ A (_∈ X))
  -- Set⇒DSet = proj₁ (dreplacement X id)

  -- ∈-DSet : {aa : Σ A (_∈ X)} → aa ∈ Set⇒DSet
  -- ∈-DSet{aa = aa} = to (proj₂ (dreplacement X id)) (aa , (refl , proj₂ aa))

  -- FunOn⇒TotalMapOn : (∈-uip : ∈-irrelevant X)(f : Σ A (_∈ X) → B) → TotalMapOn X B
  -- FunOn⇒TotalMapOn _      f  .rel                = map (λ x → proj₁ x , f x) Set⇒DSet
  -- FunOn⇒TotalMapOn ∈-uip  _  .left-unique-rel    = left-unique-mapOn X ∈-uip
  -- FunOn⇒TotalMapOn _      f  .total-rel {a} a∈X  = to ∈-map ((a , f (a , a∈X)) , refl , (∈-map′ ∈-DSet))

  -- FunOn∈TotalMapOn  : (∈-uip : ∈-irrelevant X){f : Σ A (_∈ X) → B}{aa : Σ A (_∈ X)}
  --                   → (proj₁ aa , f aa) ∈ rel (FunOn⇒TotalMapOn ∈-uip f)
  -- FunOn∈TotalMapOn _ = ∈-map′ ∈-DSet

  -- lookup∘FunOn⇒TotalMapOn-id  : (∈-uip : ∈-irrelevant X){f : Σ A (_∈ X) → B}{aa : Σ A (_∈ X)}
  --                             → lookup (FunOn⇒TotalMapOn ∈-uip f) aa ≡ f aa
  -- lookup∘FunOn⇒TotalMapOn-id ∈-uip {f} = ∈-rel→lookup-≡ ((FunOn⇒TotalMapOn ∈-uip f)) (FunOn∈TotalMapOn ∈-uip)
