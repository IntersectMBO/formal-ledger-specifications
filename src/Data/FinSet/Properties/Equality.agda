{-# OPTIONS --safe #-}

open import Interface.DecEq

module Data.FinSet.Properties.Equality {A : Set} ⦃ h : DecEq A ⦄ where

open import Data.List
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import Data.FinSet
open import FiniteSubset hiding (fromList)
open import Function
open import Function.Properties.Equivalence
open import Function.Related using (toRelated; fromRelated)
open import Relation.Nullary
open import Relation.Binary
open import Utilities.ListProperties hiding (_∈_)
open import Utilities.Logic
open import Function.Properties.Bijection using (⤖⇒⇔)

open import Data.FinSet.Properties.Membership

private variable
  s s' : FinSet A
  l l' : List A

noDupEls : NoDupInd (elements s)
noDupEls {fs-nojunk els {nd}} = NoDupInd-corr2 _ (∥-∥-prop3 _ nd)

≡ᵉ⇒⊆ : s ≡ᵉ s' → s ⊆ s'
≡ᵉ⇒⊆ s≡ᵉs' = Equivalence.to (s≡ᵉs' _)

⊆∧⊇⇒≡ᵉ : s ⊆ s' → s' ⊆ s → s ≡ᵉ s'
⊆∧⊇⇒≡ᵉ s⊆s' s'⊆s a = record { to = s⊆s' ; from = s'⊆s ; to-cong = λ { refl → refl } ; from-cong = λ { refl → refl } }

≡ᵉ-∈ : ∀ {x} → s ≡ᵉ s' → x ∈ s → x ∈ s'
≡ᵉ-∈ h = Equivalence.to (h _)

≡ᵉ-∅ : s ≡ᵉ ∅ → s ≡ ∅
≡ᵉ-∅ s@{fs-nojunk []} _ = refl
≡ᵉ-∅ s@{fs-nojunk (x ∷ _)} h = ⊥-elim (∈-∅ (≡ᵉ-∈ {s = s} {s' = ∅} {x = x} h (here refl)))

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

_≟ᵉ_ : Decidable (_≡ᵉ_ {A})
s ≟ᵉ s' with s ⊆? s' | s' ⊆? s
... | yes p | yes p' = yes (⊆∧⊇⇒≡ᵉ {s} {s'} p p')
... | yes p | no ¬p' = no λ h → ¬p' $ ≡ᵉ⇒⊆ {s'} {s} (IsEquivalence.sym ≡ᵉ-isEquivalence {s} {s'} h)
... | no ¬p | h'     = no λ h → ¬p $ ≡ᵉ⇒⊆ {s} {s'} h

≟-∅ : Dec (s ≡ ∅)
≟-∅ {s} with s ≟ᵉ ∅
... | yes p = yes (≡ᵉ-∅ {s = s} p)
... | no ¬p = no λ { refl → ¬p (λ _ → IsEquivalence.refl ⇔-isEquivalence) }

module _ {s s' : FinSet A} where

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
