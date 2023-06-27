{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive using () renaming (Set to Type)
open import Axiom.Set using ( Theory )

module Axiom.Set.TotalMap (th : Theory) where

open import Prelude hiding (lookup)

open Theory th
open import Axiom.Set.Map th
open import Axiom.Set.Properties th
open import Axiom.Set.Rel th
open import Tactic.AnyOf
open import Tactic.Defaults

open import Interface.DecEq
open import Relation.Binary.PropositionalEquality using ( _≡_ ; cong ; module ≡-Reasoning )
open import Relation.Binary using () renaming (Decidable to Dec₂)
open import Relation.Nullary.Decidable using (Dec ; yes ; no)
open import Relation.Unary using () renaming (Decidable to Dec₁)


open Equivalence

private variable A B : Type

-- Because of missing macro hygiene, we have to copy&paste this. https://github.com/agda/agda/issues/3819
private macro
  ∈⇒P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ [])
  P⇒∈ = anyOfⁿᵗ (quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])
  ∈⇔P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])

-- defines a total map for a given set
total-map : Rel A B → Type
total-map R = ∀ {a} → a ∈ map proj₁ R

-- TotalMap : Type → Type → Type
-- TotalMap A B = Σ (Rel A B) (λ R → left-unique R × total-map R)

-- lookupMapᵗ : TotalMap A B → A → B
-- lookupMapᵗ (_ , _ , tot) a = proj₂ (proj₁ (∈⇔P (tot {a})))

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

module Unionᵗᵐ {B : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where

  updateFn : A × B → A → B → B
  updateFn (a , b) x y with (x ≟ a)
  ... | yes _ = b
  ... | no _ = y

  updateMap : (A → B → B) → A × B → A → B → B
  updateMap f (a , b) x y with (x ≟ a)
  ... | yes _ = b
  ... | no _ = f x y

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
