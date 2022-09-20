{-# OPTIONS --safe #-}

open import Interface.DecEq
open import Data.Product
open import Data.Product.Function.NonDependent.Propositional using (_×-cong_)
open import Function
open import Data.Sum
open import Level
open import Data.List using (List; _∷_; length; _─_; lookup)
open import Relation.Binary hiding (_⇔_)
open import Function.Properties.Equivalence as Eq
open import Relation.Binary.Lattice
open import Function.Related
open import Data.List.Relation.Binary.Permutation.Propositional
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Relation.Binary.Morphism
open import Function.Related

module Data.FinMap.Properties.Algebra {K : Set}{V : Set}{{eq : DecEq K}}{{eq' : DecEq V}} where

open import Data.FinMap
open import Data.FinMap.Core
open import Data.FinMap.Properties.Equality
open import Data.FinMap.Properties.Membership

private
  variable
    a b : K × V
    l : List (K × V)
    m m' m''  : FinMap K V {{eq}} {{eq'}}


≡ᵐ⇒⊆ : m ≡ᵐ m' → m ⊆ᵐ m'
≡ᵐ⇒⊆ m≡ᵐm' {a} = Equivalence.to (m≡ᵐm' a)

⊆ᵐ-Transitive : Transitive (_⊆ᵐ_ {K} {V})
⊆ᵐ-Transitive i⊆j j⊆k = j⊆k ∘ i⊆j

⊆ᵐ-Preorder : IsPreorder _≡ᵐ_ _⊆ᵐ_
⊆ᵐ-Preorder = record
  { isEquivalence = ≡ᵐ-isEquivalence
  ; reflexive = (λ {x y} → ≡ᵐ⇒⊆ {x} {y})
  ; trans = λ {x y z} → ⊆ᵐ-Transitive {x} {y} {z} }

⊆ᵐ-Preorder' : Preorder _ _ _
⊆ᵐ-Preorder' = record
  { Carrier = FinMap K V ; _≈_ = _≡ᵐ_ ; _∼_ = _⊆ᵐ_ ; isPreorder = ⊆ᵐ-Preorder }

⊆-antisym : Antisymmetric (_≡ᵐ_ {K} {V}) _⊆ᵐ_
⊆-antisym i⊆j j⊆i a = mk⇔ (i⊆j {a}) (j⊆i {a})

∅-minimum : Minimum (_⊆ᵐ_ {K} {V}) ∅
∅-minimum _ ()

∅-least : m ⊆ᵐ ∅ → m ≡ᵐ ∅
∅-least {m} m⊆∅ = ⊆-antisym {i = m} {j = ∅} m⊆∅ (∅-minimum m)

∩ᵐ-cong : (_∩ᵐ_ {K} {V}) Preserves₂ _≡ᵐ_ ⟶ _≡ᵐ_ ⟶ _≡ᵐ_
∩ᵐ-cong {x} {y} {u} {v} x≡ᵐy u≡ᵐv a = begin
  (a ∈ᵐ (x ∩ᵐ u))      ≈˘⟨ ∈×⇔∈∩ {m = x} {m' = u} ⟩
  (a ∈ᵐ x × a ∈ᵐ u)    ≈⟨ fromRelated $ (_×-cong_ (toRelated (x≡ᵐy a)) (toRelated (u≡ᵐv a))) ⟩
  (a ∈ᵐ y × a ∈ᵐ v)    ≈⟨ ∈×⇔∈∩ {m = y} {m' = v} ⟩
  (a ∈ᵐ (y ∩ᵐ v))      ∎
  where open SetoidReasoning (⇔-setoid 0ℓ)

∩ᵐ-cong-⊆ : (_∩ᵐ_ {K} {V}) Preserves₂ _⊆ᵐ_ ⟶ _⊆ᵐ_ ⟶ _⊆ᵐ_
∩ᵐ-cong-⊆ {x} {y} {u} {v} x⊆y u⊆v a∈x∩u with ∈∩⇒∈× {m = x} {m' = u} a∈x∩u
... | a∈x , a∈u = ∈×⇒∈∩ {m = y} {m' = v} (x⊆y a∈x , u⊆v a∈u)

∩ᵐ-OrderHomomorphismˡ : IsOrderHomomorphism (_≡ᵐ_ {K} {V}) (_≡ᵐ_ {K} {V}) _⊆ᵐ_ _⊆ᵐ_ (_∩ᵐ m)
∩ᵐ-OrderHomomorphismˡ {m} = record
  { cong = λ {a b} x → ∩ᵐ-cong {a} {b} {m} {m} x ≡ᵉ-refl
  ; mono = λ {a b} x → ∩ᵐ-cong-⊆ {a} {b} {m} {m} x (≡ᵐ⇒⊆ {m = m} {m' = m} ≡ᵉ-refl) }
  where
    ≡ᵉ-refl = IsEquivalence.refl ≡ᵐ-isEquivalence {m}

open import Data.FinSet

eqHelp : m ≡ᵐ m' → FinMap=>Keys m ≡ᵉ FinMap=>Keys m'
eqHelp m@{fs-nojunk els} m'@{fs-nojunk els₁} x a = mk⇔ (λ x₁ → ≡ᵖᵐ-∈ {K} {V} {m} {m'} {a , getValue a _ x₁} x x₁)
                                                          λ x₁ → ≡ᵖᵐ-∈ {K} {V} {m'} {m} {a , (getValue a _ x₁)} (≡ᵐ-sym x) x₁
  where ≡ᵐ-sym = IsEquivalence.sym ≡ᵐ-isEquivalence {m} {m'}

∩ᵖᵏ-cong : (_∩ᵖᵏ_ {K} {V}) Preserves₂ _≡ᵐ_ ⟶ _≡ᵐ_ ⟶ _≡ᵉ_
∩ᵖᵏ-cong {x} {y} {u} {v} x≡ᵐy u≡ᵐv k = begin
  k ∈ (x ∩ᵖᵏ u)      ≈˘⟨ ∈×⇔∈∩ᵏ {m = x} {m' = u} ⟩
  ((k ∈ FinMap=>Keys x) × k ∈ FinMap=>Keys u)    ≈⟨ (fromRelated $ (_×-cong_ (toRelated (eqHelp {x} {y} x≡ᵐy k)) (toRelated (eqHelp {u} {v} u≡ᵐv k)))) ⟩
  (k ∈ FinMap=>Keys y × k ∈ FinMap=>Keys v)    ≈⟨ ∈×⇔∈∩ᵏ {m = y} {m' = v} ⟩
  k ∈ (y ∩ᵖᵏ v)     ∎
  where open SetoidReasoning (⇔-setoid 0ℓ)

open import Utilities.ListProperties

subHelp' : m ⊆ᵐ m' → a ∈ᵐ m → a ∈ᵐ m'
subHelp' {fs-nojunk els} {fs-nojunk els₁} h a = h a

subHelp : m ⊆ᵐ m' → FinMap=>Keys m ⊆ FinMap=>Keys m'
subHelp m@{fs-nojunk els} m'@{fs-nojunk els₁} x x₁ = ∃-after-map _ _ proj₁ (subHelp' {m} {m'} x (getPair _ _ x₁))

∩ᵖᵏ-cong-⊆ : (_∩ᵖᵏ_ {K} {V}) Preserves₂ _⊆ᵐ_ ⟶ _⊆ᵐ_ ⟶ _⊆_
∩ᵖᵏ-cong-⊆ {x} {y} {u} {v} x⊆y u⊆v a∈x∩u with ∈∩⇒∈×ᵏ {m = x} {m' = u} a∈x∩u
... | a∈x , a∈u = ∈×⇒∈∩ᵏ {m = y} {m' = v} (subHelp {x} {y} x⊆y a∈x , subHelp {u} {v} u⊆v a∈u)

∩ᵖᵏ-OrderHomomorphismˡ : IsOrderHomomorphism _≡ᵐ_ _≡ᵉ_ _⊆ᵐ_ _⊆_ (_∩ᵖᵏ m)
∩ᵖᵏ-OrderHomomorphismˡ {m} = record
                          { cong =  λ {a b} x → ∩ᵖᵏ-cong {a} {b} {m} {m} x ≡ᵉ-refl ;
                            mono = λ {a b} x x₁ → ∩ᵖᵏ-cong-⊆ {a} {b} {m} {m} x (≡ᵐ⇒⊆ {m = m} {m' = m} ≡ᵉ-refl) x₁ }
                          where
                              ≡ᵉ-refl = IsEquivalence.refl ≡ᵐ-isEquivalence {m}
