{-# OPTIONS --safe #-}

open import DecEq

module FinSet.Properties {A : Set} {{h : DecEq A}} where

open import FinSet
open import Level
open import Data.List hiding (tabulate)
open import Data.List.Properties
open import Relation.Binary
open import Data.List.Relation.Binary.Permutation.Propositional
open import FiniteSubset using (listOf)
open import Relation.Binary.PropositionalEquality
open import Data.List.Relation.Unary.AllPairs.Properties
open import Data.List.Relation.Unary.All
open import Relation.Nullary
open import Data.Product

open import FinSet.Core
open import Utilities.Logic using (∥-∥-prop3)
open import Utilities.ListProperties renaming (_∈_ to _∈l_)

open import Algebra
open import Algebra.Properties.CommutativeSemigroup
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

open import FinSet.Properties.Equality public
open import FinSet.Properties.Membership public
open import FinSet.Properties.Algebra public

private
  variable
    a : A
    l : List A
    s s' : FinSet A {{h}}

listOf-NoDupInd : NoDupInd (listOf s)
listOf-NoDupInd {FiniteSubset.fs-nojunk els {nd}} = NoDupInd-corr2 _ (∥-∥-prop3 _ nd)

listOf-∪-++ : s ∩ s' ≡ᵉ ∅ → listOf (s ∪ s') ≡ listOf s ++ listOf s'
listOf-∪-++ {s} {s'} h =
  remDup-NoDup (++⁺ (listOf-NoDupInd {s = s}) (listOf-NoDupInd {s = s'}) (tabulate (λ x∈s → ¬Any⇒All¬ (listOf s') (helper x∈s))))
  where
    helper : ∀ {x} → x ∈l listOf s → ¬ x ∈l listOf s'
    helper {x} x∈s x∈s' = ∈-∅ {x = x} (≡ᵉ-∈ {s = s ∩ s'} {s' = ∅} h (∈×⇒∈∩ {s = s} {s' = s'} (x∈s , x∈s')))

module _ {q : Level} {{M : CommutativeMonoid 0ℓ q}} {f : A → CommutativeMonoid.Carrier M} where
  open CommutativeMonoid M
  open SetoidReasoning (CommutativeMonoid.setoid M)

  fold-cong↭ : {l l' : List A} → l ↭ l' → indexedSumL f l ≈ indexedSumL f l'
  fold-cong↭ refl = begin _ ∎
  fold-cong↭ (prep x h) = ∙-congˡ (fold-cong↭ h)
  fold-cong↭ (swap {xs} {ys} x y h) = begin
    f x ∙ (f y ∙ indexedSumL f xs) ≈⟨ x∙yz≈y∙xz commutativeSemigroup (f x) (f y) (indexedSumL f xs) ⟩
    f y ∙ (f x ∙ indexedSumL f xs) ≈⟨ ∙-congˡ (∙-congˡ (fold-cong↭ h)) ⟩
    f y ∙ (f x ∙ indexedSumL f ys) ∎
  fold-cong↭ (trans {l} {l''} {l'} h h₁) = begin
    indexedSumL f l   ≈⟨ fold-cong↭ h ⟩
    indexedSumL f l'' ≈⟨ fold-cong↭ h₁ ⟩
    indexedSumL f l'  ∎

  indexedSum-cong : s ≡ᵉ s' → indexedSum f s ≈ indexedSum f s'
  indexedSum-cong s@{FiniteSubset.fs-nojunk els} s'@{FiniteSubset.fs-nojunk els₁} h =
    fold-cong↭ {els} {els₁} (≡ᵉ⇒↭ {s = s} {s' = s'} h)

  private
    helper : ∀ m l → foldr (λ x → f x ∙_) m l ≈ indexedSumL f l ∙ m
    helper m [] = begin m ≈˘⟨ identityˡ m ⟩ ε ∙ m ∎
    helper m (x ∷ l) = begin
      f x ∙ foldr (λ y → f y ∙_) m l ≈⟨ ∙-congˡ (helper m l) ⟩
      f x ∙ (indexedSumL f l ∙ m)    ≈˘⟨ assoc _ _ _ ⟩
      f x ∙ indexedSumL f l ∙ m      ∎

  indexedSum-listOf : indexedSum f s ≡ indexedSumL f (listOf s)
  indexedSum-listOf {FiniteSubset.fs-nojunk els} = _≡_.refl

  indexedSumL-++ : {l l' : List A} → indexedSumL f (l ++ l') ≈ indexedSumL f l ∙ indexedSumL f l'
  indexedSumL-++ {l} {l'} = begin
    indexedSumL f (l ++ l')                   ≡⟨ foldr-++ (λ x → f x ∙_) ε l l' ⟩
    foldr (λ x → f x ∙_) (indexedSumL f l') l ≈⟨ helper (indexedSumL f l') l ⟩
    indexedSumL f l ∙ indexedSumL f l'        ∎

  indexedSum-∪ : s ∩ s' ≡ᵉ ∅ → indexedSum f (s ∪ s') ≈ indexedSum f s ∙ indexedSum f s'
  indexedSum-∪ {s} {s'} h = begin
    indexedSum f (s ∪ s')                                ≡⟨ indexedSum-listOf {s = s ∪ s'} ⟩
    indexedSumL f (listOf (s ∪ s'))                      ≡⟨ cong (indexedSumL f) (listOf-∪-++ {s = s} {s' = s'} h) ⟩
    indexedSumL f (listOf s ++ listOf s')                ≈⟨ indexedSumL-++ {l = listOf s} {l' = listOf s'} ⟩
    indexedSumL f (listOf s) ∙ indexedSumL f (listOf s') ≡˘⟨ cong₂ _∙_ (indexedSum-listOf {s = s}) (indexedSum-listOf {s = s'}) ⟩
    indexedSum f s ∙ indexedSum f s' ∎
  
