{-# OPTIONS --safe #-}

open import DecEq

module FinSet.Properties.Equality {A : Set} {{h : DecEq A}} where

open import Data.List
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import FinSet
open import FiniteSubset
open import Function
open import Function.Properties.Equivalence
open import Function.Related using (toRelated; fromRelated)
open import Relation.Binary
open import Utilities.ListProperties hiding (_∈_)
open import Utilities.Logic
open import Data.Empty
open import Function.Properties.Bijection

open import FinSet.Properties.Membership

noDupEls : {s : FinSet A} → NoDupInd (elements s)
noDupEls {fs-nojunk els {nd}} = NoDupInd-corr2 _ (∥-∥-prop3 _ nd)

≡ᵉ-∈ : ∀ {x} {s s' : FinSet A} → s ≡ᵉ s' → x ∈ s → x ∈ s'
≡ᵉ-∈ {x} h = Equivalence.f (h x)

≡ᵉ-∅ : {s : FinSet A} → s ≡ᵉ ∅ → s ≡ ∅
≡ᵉ-∅ s@{fs-nojunk []} _ = refl
≡ᵉ-∅ s@{fs-nojunk (x ∷ _)} h = ⊥-elim (∈-∅ (≡ᵉ-∈ {x = x} {s = s} {s' = ∅} h (here refl)))

≡ᵉ-isEquivalence : IsEquivalence (_≡ᵉ_ {A})
≡ᵉ-isEquivalence with ⇔-isEquivalence
... | record { refl = refl' ; sym = sym' ; trans = trans' } = record
    { refl = λ a → refl'
    ; sym = λ x a → sym' (x a)
    ; trans = λ h h' a → trans' (h a) (h' a) }

≡ᵉ-setoid : Setoid _ _
≡ᵉ-setoid = record
  { Carrier = FinSet A
  ; _≈_ = _≡ᵉ_
  ; isEquivalence = ≡ᵉ-isEquivalence }

module _ {s s' : FinSet A {{h}}} where

  ≡ᵉ⇒∼set : s ≡ᵉ s' → (listOf s) ∼[ set ] (listOf s')
  ≡ᵉ⇒∼set s≡ᵉs' {a} = toRelated (s≡ᵉs' a)

  ≡ᵉ⇒∼bag : s ≡ᵉ s' → (listOf s) ∼[ bag ] (listOf s')
  ≡ᵉ⇒∼bag h = unique∧set⇒bag (noDupEls {s}) (noDupEls {s'}) (≡ᵉ⇒∼set h)

  ∼bag⇒≡ᵉ : (listOf s) ∼[ bag ] (listOf s') → s ≡ᵉ s'
  ∼bag⇒≡ᵉ h a = ⤖⇒⇔ (fromRelated (h {a}))

  ↭⇒≡ᵉ : (listOf s) ↭ (listOf s') → s ≡ᵉ s'
  ↭⇒≡ᵉ h = ∼bag⇒≡ᵉ (↭⇒∼bag h)

  ≡ᵉ⇒↭ : s ≡ᵉ s' → (listOf s) ↭ (listOf s')
  ≡ᵉ⇒↭ s≡ᵉs' = ∼bag⇒↭ (≡ᵉ⇒∼bag s≡ᵉs')
