{-# OPTIONS --safe #-}

open import Interface.DecEq
open import Data.List
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Permutation.Propositional hiding (refl)
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import FiniteSubset
open import Function
open import Function.Properties.Equivalence
open import Function.Related using (toRelated; fromRelated)
open import Relation.Binary
open import Utilities.ListProperties hiding (_∈_)
open import Utilities.Logic hiding (DecEq)
open import Data.Empty
open import Function.Properties.Bijection hiding (refl)
open import Data.Product hiding (map)
open import Relation.Nullary

module Data.FinMap.Properties.Equality {K : Set}{V : Set}{{eq : DecEq K}}{{eq' : DecEq V}} where

open import Data.FinMap
open import Data.FinMap.Core

private
  variable
    a b : K × V
    l : List (K × V)
    m m' m''  : FinMap K V {{eq}} {{eq'}}

noDupEls : NoDupInd (listOfᵐ m)
noDupEls {fs-nojunk els {nd}} = NoDupInd-corr2 _ (NoDupProj=>NoDup (eq2inᵖ eq eq') _ (∥-∥-prop3 _ nd))

≡ᵐ-∈ : m ≡ᵐ m' → a ∈ᵐ m → a ∈ᵐ m'
≡ᵐ-∈ {m} {m'} {a} h = Equivalence.to (h a)

∈-∅ : ∀ {x} → ¬ x ∈ᵐ (∅ {K} {V})
∈-∅ ()

≡ᵐ-∅ : m ≡ᵐ ∅ → m ≡ ∅
≡ᵐ-∅ m@{fs-nojunk []} _ = refl
≡ᵐ-∅ m@{fs-nojunk (x ∷ _)} h = ⊥-elim (∈-∅ (≡ᵐ-∈ {m} {∅} {x} h (here refl)))

≡ᵖᵐ-∈ : m ≡ᵐ m' → a ∈ᵖᵐ m → a ∈ᵖᵐ m'
≡ᵖᵐ-∈ {m} {m'} {a} h x with getPair _ _ x
... | ans with ≡ᵐ-∈ {m} {m'} h ans
... | an = ∃-after-map _ _ proj₁ an

≡ᵐ-isEquivalence : IsEquivalence (_≡ᵐ_ {K} {V} {eq} {eq'})
≡ᵐ-isEquivalence with ⇔-isEquivalence
... | record { refl = refl' ; sym = sym' ; trans = trans' } = record
    { refl = λ a → refl'
    ; sym = λ x a → sym' (x a)
    ; trans = λ h h' a → trans' (h a) (h' a) }

≡ᵐ-setoid : Setoid _ _
≡ᵐ-setoid = record
  { Carrier = FinMap K V
  ; _≈_ = _≡ᵐ_
  ; isEquivalence = ≡ᵐ-isEquivalence }

≡ᵐ⇒∼set : m ≡ᵐ m' → (listOfᵐ m) ∼[ set ] (listOfᵐ m')
≡ᵐ⇒∼set m≡ᵐm' {a} = toRelated (m≡ᵐm' a)

≡ᵐ⇒∼bag : m ≡ᵐ m' → (listOfᵐ m) ∼[ bag ] (listOfᵐ m')
≡ᵐ⇒∼bag {m} {m'} h = unique∧set⇒bag (noDupEls {m}) (noDupEls {m'}) (≡ᵐ⇒∼set {m} {m'} h)

∼bag⇒≡ᵐ : (listOfᵐ m) ∼[ bag ] (listOfᵐ m') → m ≡ᵐ m'
∼bag⇒≡ᵐ h a = ⤖⇒⇔ (fromRelated (h {a}))

↭⇒≡ᵐ : (listOfᵐ m) ↭ (listOfᵐ m') → m ≡ᵐ m'
↭⇒≡ᵐ {m} {m'} h = ∼bag⇒≡ᵐ {m} {m'} (↭⇒∼bag h)

≡ᵐ⇒↭ : m ≡ᵐ m' → (listOfᵐ m) ↭ (listOfᵐ m')
≡ᵐ⇒↭ {m} {m'} m≡ᵐm' = ∼bag⇒↭ (≡ᵐ⇒∼bag {m} {m'} m≡ᵐm')
