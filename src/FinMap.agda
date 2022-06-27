{-# OPTIONS --safe #-}

open import Data.List using (List)
open import Data.Maybe
open import Data.Product using (_×_; _,_; proj₁; proj₂; curry; uncurry)
open import Data.Product.Function.NonDependent.Propositional
open import Data.Bool using (false; not)
open import Level
open import Algebra
open import Function hiding (Inverse)
open import Function.Equivalence as Eq using (_⇔_; ⇔-setoid; equivalence)
open import Data.Sum using (_⊎_; fromDec; toDec)
open import Data.Sum.Algebra using (⊎-comm)
open import Data.Sum.Function.Propositional
open import Relation.Nullary
open import Relation.Nullary.Negation
open import Data.Product.Algebra
import Function.Inverse as Inv
open import FinSet.Properties
open import Data.Empty.Polymorphic
import Function.Related.Propositional as P
open import Function.Related using (fromRelated; toRelated)
import Relation.Binary.Reasoning.Preorder as P-Reasoning

open import FinSet hiding (∅; map; indexedSum)
open import DecEq

open import FiniteSubset hiding (_∪_; _∩_)

open import Relation.Binary using (IsEquivalence)
open import Relation.Binary.PropositionalEquality
open import Function.Properties.Inverse

open CommutativeMonoid {{...}}

module FinMap where

FinMap : (K V : Set) → {{DecEq K}} → {{DecEq V}} → Set
FinMap K V = FinSet (K × V)

module _ {K V : Set} {{_ : DecEq K}} {{_ : DecEq V}} where

  ∅ : FinMap K V
  ∅ = fs-nojunk Data.List.[]

  _◃_ : FinSet K → FinMap K V → FinMap K V
  set ◃ map = filter (λ x → proj₁ x ∈? set) map

  lookup : FinMap K V → K → Maybe V
  lookup m k = map proj₂ $ choose $ return k ◃ m
  
  _⋪_ : FinSet K → FinMap K V → FinMap K V
  set ⋪ map = filter (λ x → ¬? (proj₁ x ∈? set)) map

  values : FinMap K V → List V
  values m = Data.List.map proj₂ $ elements m

  values' : FinMap K V → FinSet V
  values' = FinSet.fromList ∘ values

  insert : K → V → FinMap K V → FinMap K V
  insert k v m = m ∪ return {b = false} (k , v)

  dom : FinMap K V → FinSet K
  dom m = for x ∈ m as false , (return {b = false} $ proj₁ x)

  _⟪$⟫_ : FinMap K V → FinSet K → FinSet V
  m ⟪$⟫ ks = values' (ks ◃ m)

  mapKeys : {K' : Set} → {{_ : DecEq K'}} → (K → K') → FinMap K V → FinMap K' V
  mapKeys f m = for x ∈ m as false , return {b = false} (Data.Product.map₁ f x)
 
  dom-res-ex-∪ : ∀ s m → (s ⋪ m) ∪ (s ◃ m) ≡ᵉ m
  dom-res-ex-∪ s m = ∈-⊎↔∪≡ {s = s ⋪ m} {s' = s ◃ m} {s'' = m} λ a →
    (a ∈ s ⋪ m ⊎ a ∈ s ◃ m)
      ∼⟨ P.SK-sym (fromRelated ((toRelated (∈filter {s = m} (λ x → ¬? (proj₁ x ∈? s)) a)) ⊎-cong (toRelated (∈filter {s = m} (λ x → proj₁ x ∈? s) a)))) ⟩
    (a ∈ m × ¬ proj₁ a ∈ s ⊎ a ∈ m × proj₁ a ∈ s)
      ⤖⟨ P.SK-sym (↔⇒⤖ (×-distribˡ-⊎ 0ℓ (a ∈ m) (¬ proj₁ a ∈ s) (proj₁ a ∈ s))) ⟩
    (a ∈ m × (¬ proj₁ a ∈ s ⊎ proj₁ a ∈ s))
      ⤖⟨ fromRelated (_×-cong_ Inv.id (toRelated (↔⇒⤖ (⊎-comm (¬ proj₁ a ∈ s) (proj₁ a ∈ s))))) ⟩
    (a ∈ m × (proj₁ a ∈ s ⊎ ¬ proj₁ a ∈ s))
      ∼⟨ fromRelated (_×-cong_ Eq.id (Eq.equivalence toDec fromDec)) ⟩
    (a ∈ m × Dec (proj₁ a ∈ s))
     ∼⟨ mk⇔ proj₁ (λ h → (h , proj₁ a ∈? s)) ⟩
    (a ∈ m) ∎
    where open P.EquationalReasoning

  dom-res-ex-∩ : ∀ s m → (s ⋪ m) ∩ (s ◃ m) ≡ᵉ ∅
  dom-res-ex-∩ s m = ∈-×↔∩≡ {s = s ⋪ m} {s' = s ◃ m} {s'' = ∅} λ a →
    (a ∈ s ⋪ m × a ∈ s ◃ m)
      ∼⟨ P.SK-sym (fromRelated (_×-cong_ (toRelated $ ∈filter {s = m} (λ x → ¬? (proj₁ x ∈? s)) a) (toRelated $ ∈filter {s = m} (λ x → proj₁ x ∈? s) a))) ⟩
    ((a ∈ m × (¬ proj₁ a ∈ s)) × (a ∈ m × proj₁ a ∈ s))
      ∼⟨ mk⇔ (λ { ((a₁ , a₂) , (a₃ , a₄)) → (a₁ , a₂ , a₄)}) (λ { (a₁ , a₂ , a₃) → ((a₁ , a₂) , a₁ , a₃)}) ⟩
    (a ∈ m × ¬ proj₁ a ∈ s × proj₁ a ∈ s)
      ∼⟨ fromRelated (_×-cong_ Eq.id (Eq.equivalence (uncurry (λ x y → case x y of λ ())) ⊥-elim)) ⟩
    (a ∈ m × ⊥)
      ↔⟨ ×-zeroʳ 0ℓ (a ∈ m) ⟩
    ⊥
      ∼⟨ mk⇔ ⊥-elim (λ ()) ⟩
    (a ∈ ∅) ∎
    where open P.EquationalReasoning

  ⋪⇒⊆ : ∀ s m → (s ⋪ m) ⊆ m
  ⋪⇒⊆ s m a∈s⋪m = proj₁ $ filter→∈ {s = m} (λ x → ¬? (proj₁ x ∈? s)) _ a∈s⋪m

  dom-res-∩-empty : ∀ s m → (m' : FinMap K V) → m ∩ m' ≡ᵉ ∅ → (s ⋪ m) ∩ m' ≡ᵉ ∅
  dom-res-∩-empty s m m' h with ∩-OrderHomomorphismˡ {K × V} {s = m'}
  ... | record { mono = mono } = ∅-least {s = (s ⋪ m) ∩ m'} (begin
    ((s ⋪ m) ∩ m') ∼⟨ mono {s ⋪ m} {m} (⋪⇒⊆ s m) ⟩
    (m ∩ m') ≈⟨ h ⟩
    FinSet.∅ ∎)
    where open P-Reasoning (⊆-Preorder' {K × V})
