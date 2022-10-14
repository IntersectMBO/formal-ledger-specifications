{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.Factor (th : Theory) where

open import Prelude

open Theory th
open import Axiom.Set.Properties th

import Function.Related.Propositional as R
open import Data.List.Ext.Properties
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Disjoint.Propositional
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.Unique.DecPropositional.Properties
open import Data.List.Relation.Unary.Unique.Propositional
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import Function.Related using (toRelated; fromRelated)
open import Interface.DecEq
open import Relation.Binary

open Equivalence

private variable A B : Type

module Factor (_≈_ : B → B → Type) (f : List A → B) (f-cong : ∀ {l l'} → l ∼[ set ] l' → f l ≈ f l') where

  factor : FinSet A → B
  factor (_ , l , _) = f l

  factor-cong : factor Preserves (_≡ᵉ_ on proj₁) ⟶ _≈_
  factor-cong {X , Xˡ , hX} {Y , Yˡ , hY} X≡ᵉY = f-cong λ {a} → toRelated $
    a ∈ˡ Xˡ ∼⟨ R.SK-sym hX ⟩ a ∈  X  ∼⟨ to ≡ᵉ⇔≡ᵉ' X≡ᵉY _ ⟩
    a ∈  Y  ∼⟨ hY ⟩          a ∈ˡ Yˡ ∎
    where open R.EquationalReasoning

  factor-∪ : ∀ {R : B → B → B → Type} {X Y : FinSet A}
           → (∀ {l l'} → R (f l) (f l') (f (l ++ l')))
           → R (factor X) (factor Y) (factor (proj₁ X ∪ proj₁ Y , ∪-preserves-finite (proj₂ X) (proj₂ Y)))
  factor-∪ hR = hR

module FactorUnique ⦃ _ : DecEq A ⦄ (_≈_ : B → B → Type) (f : (Σ (List A) Unique) → B)
                    (f-cong : ∀ {l l'} → proj₁ l ↭ proj₁ l' → f l ≈ f l') where

  f-cong' : ∀ {l l'} → (∀ {a} → a ∈ˡ proj₁ l ⇔ a ∈ˡ proj₁ l') → f l ≈ f l'
  f-cong' {l} {l'} h = f-cong (∼bag⇒↭ (unique∧set⇒bag (proj₂ l) (proj₂ l') (toRelated h)))

  deduplicate-Σ : List A → Σ (List A) Unique
  deduplicate-Σ l = (deduplicate _≟_ l , deduplicate-! _≟_ _)

  ext : List A → B
  ext = f ∘ deduplicate-Σ

  ext-cong : ∀ {l l'} → l ∼[ set ] l' → ext l ≈ ext l'
  ext-cong {l} {l'} h = f-cong' λ {a} →
    a ∈ˡ deduplicate _≟_ l  ∼⟨ R.SK-sym ∈-dedup ⟩ a ∈ˡ l                  ∼⟨ fromRelated h ⟩
    a ∈ˡ l'                 ∼⟨ ∈-dedup ⟩          a ∈ˡ deduplicate _≟_ l' ∎
    where open R.EquationalReasoning

  open Factor _≈_ ext ext-cong public

  factor-∪' : ∀ {R : B → B → B → Type} {X Y : FinSet A}
            → disjoint (proj₁ X) (proj₁ Y)
            → (∀ {l l'} → Disjoint l l' → R (ext l) (ext l') (ext (l ++ l')))
            → R (factor X) (factor Y) (factor (proj₁ X ∪ proj₁ Y , ∪-preserves-finite (proj₂ X) (proj₂ Y)))
  factor-∪' {X = _ , _ , Xᶠ} {_ , _ , Yᶠ} disj hR = hR λ where (a∈X , a∈Y) → ⊥-elim $ disj (from Xᶠ a∈X) (from Yᶠ a∈Y)
