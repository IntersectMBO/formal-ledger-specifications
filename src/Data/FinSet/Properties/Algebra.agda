{-# OPTIONS --safe #-}

import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Data.FinSet
open import Data.FinSet.Properties.Equality
open import Data.FinSet.Properties.Membership
open import Data.Product
open import Data.Product.Function.NonDependent.Propositional using (_×-cong_)
open import Data.Sum
open import Function
open import Function.Properties.Equivalence as Eq
open import Function.Related
open import Interface.DecEq
open import Relation.Binary
open import Relation.Binary.Lattice
open import Relation.Binary.Morphism

module Data.FinSet.Properties.Algebra {A : Set} ⦃ h : DecEq A ⦄ where

private variable
  a : A
  s s' : FinSet A ⦃ h ⦄

⊆-Transitive : Transitive (_⊆_ {A})
⊆-Transitive i⊆j j⊆k = j⊆k ∘ i⊆j

⊆-Preorder : IsPreorder _≡ᵉ_ _⊆_
⊆-Preorder = record
  { isEquivalence = ≡ᵉ-isEquivalence
  ; reflexive = (λ {x y} → ≡ᵉ⇒⊆ {_} {x} {y})
  ; trans = λ {x y z} → ⊆-Transitive {x} {y} {z} }

⊆-Preorder' : Preorder _ _ _
⊆-Preorder' = record
  { Carrier = FinSet A ; _≈_ = _≡ᵉ_ ; _∼_ = _⊆_ ; isPreorder = ⊆-Preorder }

⊆-antisym : Antisymmetric (_≡ᵉ_ {A}) _⊆_
⊆-antisym i⊆j j⊆i a = mk⇔ (i⊆j {a}) (j⊆i {a})

⊆-PartialOrder : IsPartialOrder (_≡ᵉ_ {A}) _⊆_
⊆-PartialOrder = record { isPreorder = ⊆-Preorder ; antisym = λ {x y} → ⊆-antisym {x} {y} }

∪-supremum : Supremum (_⊆_ {A}) _∪_
∪-supremum s s' = (λ a∈s → ∈⊎⇒∈∪ {s = s} {s' = s'} (inj₁ a∈s)) , (λ a∈s' → ∈⊎⇒∈∪ {s = s} {s' = s'} (inj₂ a∈s')) ,
  λ z s⊆z s'⊆z a∈s∪s' → case (∈∪⇒∈⊎ {s = s} {s' = s'} a∈s∪s') of λ { (inj₁ x) → s⊆z x ; (inj₂ y) → s'⊆z y }

∩-infimum : Infimum (_⊆_ {A}) _∩_
∩-infimum s s' = (λ a∈s∩s' → proj₁ $ ∈∩⇒∈× {s = s} {s' = s'} a∈s∩s') , (λ a∈s∩s' → proj₂ $ ∈∩⇒∈× {s = s} {s' = s'} a∈s∩s') ,
  λ z z⊆s z⊆s' a∈z → ∈×⇒∈∩ {s = s} {s' = s'} (z⊆s a∈z , z⊆s' a∈z)

FinSet-Lattice : IsLattice (_≡ᵉ_ {A}) _⊆_ _∪_ _∩_
FinSet-Lattice = record { isPartialOrder = ⊆-PartialOrder ; supremum = ∪-supremum ; infimum = ∩-infimum }

-- FinSet-DistributiveLattice : IsDistributiveLattice (_≡ᵉ_ {A}) _⊆_ _∪_ _∩_
-- FinSet-DistributiveLattice = {!!}

∅-minimum : Minimum (_⊆_ {A}) ∅
∅-minimum _ ()

∅-least : s ⊆ ∅ → s ≡ᵉ ∅
∅-least {s} s⊆∅ = ⊆-antisym {i = s} {j = ∅} s⊆∅ (∅-minimum s)

FinSet-BoundedJoinSemilattice : IsBoundedJoinSemilattice (_≡ᵉ_ {A}) _⊆_ _∪_ ∅
FinSet-BoundedJoinSemilattice = record { isJoinSemilattice = IsLattice.isJoinSemilattice FinSet-Lattice ; minimum = ∅-minimum }

∩-cong : (_∩_ {A}) Preserves₂ _≡ᵉ_ ⟶ _≡ᵉ_ ⟶ _≡ᵉ_
∩-cong {x} {y} {u} {v} x≡ᵉy u≡ᵉv a = begin
  (a ∈ (x ∩ u))      ≈˘⟨ ∈×⇔∈∩ {s = x} {s' = u} ⟩
  (a ∈ x × a ∈ u)    ≈⟨ fromRelated $ _×-cong_ (toRelated (x≡ᵉy a)) (toRelated (u≡ᵉv a)) ⟩
  (a ∈ y × a ∈ v)    ≈⟨ ∈×⇔∈∩ {s = y} {s' = v} ⟩
  (a ∈ (y ∩ v))      ∎
  where open SetoidReasoning (⇔-setoid _)

∩-cong-⊆ : (_∩_ {A}) Preserves₂ _⊆_ ⟶ _⊆_ ⟶ _⊆_
∩-cong-⊆ {x} {y} {u} {v} x⊆y u⊆v a∈x∩u with ∈∩⇒∈× {s = x} {s' = u} a∈x∩u
... | a∈x , a∈u = ∈×⇒∈∩ {s = y} {s' = v} (x⊆y a∈x , u⊆v a∈u)

∩-OrderHomomorphismˡ : IsOrderHomomorphism (_≡ᵉ_ {A}) (_≡ᵉ_ {A}) _⊆_ _⊆_ (_∩ s)
∩-OrderHomomorphismˡ {s} = record
  { cong = λ {a b} x → ∩-cong {a} {b} {s} {s} x ≡ᵉ-refl
  ; mono = λ {a b} x → ∩-cong-⊆ {a} {b} {s} {s} x (≡ᵉ⇒⊆ {s = s} {s' = s} ≡ᵉ-refl) }
  where
    ≡ᵉ-refl = IsEquivalence.refl ≡ᵉ-isEquivalence {s}
