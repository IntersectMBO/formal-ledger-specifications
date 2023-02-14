{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.Rel (th : Theory {lzero}) where
open Theory th
open import Axiom.Set.Factor th
open import Axiom.Set.Properties th

open import Prelude hiding (filter)

import Data.List
import Data.Product
import Data.Sum
open import Data.List.Ext.Properties
open import Data.Product.Properties
open import Interface.DecEq
open import Relation.Nullary.Decidable using (¬?)
open import Relation.Unary using () renaming (Decidable to Dec₁)
open import Relation.Nullary

open Equivalence

open import Tactic.AnyOf
open import Tactic.Defaults

-- Because of missing macro hygiene, we have to copy&paste this. https://github.com/agda/agda/issues/3819
private macro
  ∈⇒P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ [])
  P⇒∈ = anyOfⁿᵗ (quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])
  ∈⇔P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])

Rel : Type → Type → Type
Rel A B = Set (A × B)

private variable A A' B : Type
                 R R' : Rel A B
                 X : Set A

relatedˡ : Rel A B → Set A
relatedˡ = map proj₁

∅ʳ : Rel A B
∅ʳ = ∅

dom : Rel A B → Set A
dom = map proj₁

range : Rel A B → Set B
range = map proj₂

disjoint-dom⇒disjoint : disjoint (dom R) (dom R') → disjoint R R'
disjoint-dom⇒disjoint disj = ∈-map⁺'' -⟨ disj ⟩- ∈-map⁺''

_∣'_ : {P : A → Type} → Rel A B → specProperty P → Rel A B
m ∣' P? = filter (sp-∘ P? proj₁) m

_∣^'_ : {P : B → Type} → Rel A B → specProperty P → Rel A B
m ∣^' P? = filter (sp-∘ P? proj₂) m

mapˡ : (A → A') → Rel A B → Rel A' B
mapˡ f R = map (Data.Product.map₁ f) R

module Restriction (sp-∈ : spec-∈ A) where

  _∣_ : Rel A B → Set A → Rel A B
  m ∣ X = m ∣' sp-∈ {X}

  _∣_ᶜ : Rel A B → Set A → Rel A B
  m ∣ X ᶜ = m ∣' sp-¬ (sp-∈ {X})

  _⟪$⟫_ : Rel A B → Set A → Set B
  m ⟪$⟫ X = range (m ∣ X)

  res-dom : dom (R ∣ X) ⊆ X
  res-dom a∈dom with ∈⇔P a∈dom
  ... | _ , refl , h = proj₁ $ ∈⇔P h

  res-domᵐ : dom (R ∣ X) ⊆ dom R
  res-domᵐ a∈dom with ∈⇔P a∈dom
  ... | _ , refl , h = ∈-map⁺'' $ proj₂ (∈⇔P h)

  cores-dom : ∀ {a} → a ∈ dom (R ∣ X ᶜ) → a ∉ X
  cores-dom a∈dom with ∈⇔P a∈dom
  ... | _ , refl , h = proj₁ $ ∈⇔P h

  cores-domᵐ : dom (R ∣ X ᶜ) ⊆ dom R
  cores-domᵐ a∈dom with ∈⇔P a∈dom
  ... | _ , refl , h = ∈-map⁺'' (proj₂ (∈⇔P h))

  res-⊆ : (R ∣ X) ⊆ R
  res-⊆ = proj₂ ∘′ ∈⇔P

  ex-⊆ : (R ∣ X ᶜ) ⊆ R
  ex-⊆ = proj₂ ∘′ ∈⇔P

  res-ex-∪ : Dec₁ (_∈ X) → (R ∣ X) ∪ (R ∣ X ᶜ) ≡ᵉ R
  res-ex-∪ ∈X? = ∪-⊆ res-⊆ ex-⊆ , λ {a} h → case ∈X? (proj₁ a) of λ where
    (yes p) → ∈⇔P (inj₁ (∈⇔P (p , h)))
    (no ¬p) → ∈⇔P (inj₂ (∈⇔P (¬p , h)))

  res-ex-disjoint : disjoint (dom (R ∣ X)) (dom (R ∣ X ᶜ))
  res-ex-disjoint h h' = cores-dom h' (res-dom h)

module Corestriction (sp-∈ : spec-∈ B) where

  _∣^_ : Rel A B → Set B → Rel A B
  m ∣^ X = m ∣^' sp-∈ {X}

  _∣^_ᶜ : Rel A B → Set B → Rel A B
  m ∣^ X ᶜ = m ∣^' sp-¬ (sp-∈ {X})

  cores-⊆ : (R ∣^ X) ⊆ R
  cores-⊆ = proj₂ ∘′ ∈⇔P

  coex-⊆ : (R ∣^ X ᶜ) ⊆ R
  coex-⊆ = proj₂ ∘′ ∈⇔P
