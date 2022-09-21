{-# OPTIONS --safe #-}

open import DecEq

module FinSet.Properties.Equality {A : Set} {{h : DecEq A}} where

open import Data.Product
open import Data.List
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import FinSet
open import FiniteSubset hiding (fromList)
open import Function
open import Function.Properties.Equivalence
open import Function.Related using (toRelated; fromRelated)
open import Relation.Nullary
open import Relation.Binary
open import Utilities.ListProperties hiding (_∈_)
open import Utilities.Logic
open import Data.Empty
open import Function.Properties.Bijection using (⤖⇒⇔)

open import FinSet.Properties.Membership

noDupEls : {s : FinSet A} → NoDupInd (elements s)
noDupEls {fs-nojunk els {nd}} = NoDupInd-corr2 _ (∥-∥-prop3 _ nd)

≡ˡ⇒≡' : ∀ {l l' : List A} → l ≡ l' → fromList l ≡ fromList l'
≡ˡ⇒≡' {l} {l'} refl = refl

-- elements-fromList : (l : List A) → elements (fromList l) ≡ l
-- elements-fromList [] = refl
-- elements-fromList (x ∷ l) = {!!}

-- elements-surjective : (l : List A) → Σ (FinSet A) (λ s → elements s ≡ l)
-- elements-surjective l = fromList l , {!!}

-- ≡ˡ⇒≡ : ∀ {s s' : FinSet A} → s ≡ s' → elements s ≡ elements s'
-- ≡ˡ⇒≡ {s} {s'} refl = refl

-- ≡⇒≡ˡ : ∀ {s s' : FinSet A} → elements s ≡ elements s' → s ≡ s'
-- ≡⇒≡ˡ {fs-nojunk els} {fs-nojunk els₁} refl rewrite elements-fromList els = {!refl!}

-- ≡ˡ⇔≡ : ∀ {s s' : FinSet A} → s ≡ s' ⇔ elements s ≡ elements s'
-- ≡ˡ⇔≡ {l} {l'} = record { f = ≡ˡ⇒≡ ; g = ≡⇒≡ˡ ; cong₁ = λ { refl → refl } ; cong₂ = λ { refl → refl } }

≡ᵉ⇒⊆ : {s s' : FinSet A} → s ≡ᵉ s' → s ⊆ s'
≡ᵉ⇒⊆ s≡ᵉs' {a} = Equivalence.to (s≡ᵉs' a)

⊆∧⊇⇒≡ᵉ : {s s' : FinSet A} → s ⊆ s' → s' ⊆ s → s ≡ᵉ s'
⊆∧⊇⇒≡ᵉ s⊆s' s'⊆s a = record { to = s⊆s' ; from = s'⊆s ; to-cong = λ { refl → refl } ; from-cong = λ { refl → refl } }

≡ˡ⇒≡ᵉ : ∀ {s s' : FinSet A} → (listOf s) ≡ˡ (listOf s') → s ≡ᵉ s'
≡ˡ⇒≡ᵉ h a = mk⇔ (λ x → mk∈ (≡ˡ-∈ h (∈⇒∈l x)))
                λ x → mk∈ (≡ˡ-∈' h (∈⇒∈l x))

≡ᵉ-∈ : ∀ {x} {s s' : FinSet A} → s ≡ᵉ s' → x ∈ s → x ∈ s'
≡ᵉ-∈ {x} h = Equivalence.to (h x)

≡ᵉ-∈' : ∀ {x} {s s' : FinSet A} → s ≡ᵉ s' → x ∈ s' → x ∈ s
≡ᵉ-∈' {x} h = Equivalence.from (h x)

≡ᵉ-∅ : {s : FinSet A} → s ≡ᵉ ∅ → s ≡ ∅
≡ᵉ-∅ s@{fs-nojunk []} _ = refl
≡ᵉ-∅ s@{fs-nojunk (x ∷ _)} h =  ⊥-elim (∈-∅ (≡ᵉ-∈ {x = x} {s = s} {s' = ∅} h (mk∈ (here refl))))

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

≟-∅ : ∀ {a} → Dec (a ≡ ∅)
≟-∅ {a} with a ≟ᵉ ∅
... | yes p = yes (≡ᵉ-∅ {s = a} p)
... | no ¬p = no λ { refl → ¬p (λ _ → IsEquivalence.refl ⇔-isEquivalence) }

module _ {s s' : FinSet A {{h}}} where

  ≡ᵉ⇒∼set : s ≡ᵉ s' → (listOf s) ∼[ set ] (listOf s')
  ≡ᵉ⇒∼set s≡ᵉs' {a}  = toRelated (mk⇔ (λ x → ∈⇒∈l (≡ᵉ-∈ s≡ᵉs' (mk∈ x)))
                                      λ x → ∈⇒∈l (≡ᵉ-∈'  s≡ᵉs' (mk∈ x)))

  ≡ᵉ⇒∼bag : s ≡ᵉ s' → (listOf s) ∼[ bag ] (listOf s')
  ≡ᵉ⇒∼bag h = unique∧set⇒bag (noDupEls {s}) (noDupEls {s'}) (≡ᵉ⇒∼set h)

  ∼bag⇒≡ᵉ' : (listOf s) ∼[ bag ] (listOf s') → (listOf s) ≡ˡ (listOf s')
  ∼bag⇒≡ᵉ' h a = ⤖⇒⇔ (fromRelated (h {a}))

  ∼bag⇒≡ᵉ : (listOf s) ∼[ bag ] (listOf s') → s ≡ᵉ s'
  ∼bag⇒≡ᵉ h a = ≡ˡ⇒≡ᵉ (∼bag⇒≡ᵉ' h) a

  ↭⇒≡ᵉ : (listOf s) ↭ (listOf s') → s ≡ᵉ s'
  ↭⇒≡ᵉ h = ∼bag⇒≡ᵉ (↭⇒∼bag h)

  ≡ᵉ⇒↭ : s ≡ᵉ s' → (listOf s) ↭ (listOf s')
  ≡ᵉ⇒↭ s≡ᵉs' = ∼bag⇒↭ (≡ᵉ⇒∼bag s≡ᵉs')
