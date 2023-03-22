{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
import Function.Related.Propositional as R

module Axiom.Set.Rel (th : Theory {lzero}) where
open Theory th
open import Axiom.Set.Properties th

open import Prelude hiding (filter)

import Data.Product
import Data.Sum
open import Data.These hiding (map)
open import Data.List.Ext.Properties
open import Data.Product.Properties
open import Interface.DecEq
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

private variable A A' B B' C : Type
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

impl⇒res⊆ : ∀ {X : Rel A B} {P P'} → (sp-P : specProperty P) → (sp-P' : specProperty P')
            → (∀ {a} → P a → P' a) → X ∣' sp-P ⊆ X ∣' sp-P'
impl⇒res⊆ sp-P sp-P' P⇒P' a∈X∣'P = ∈⇔P (Data.Product.map₁ P⇒P' (∈⇔P a∈X∣'P))

impl⇒cores⊆ : ∀ {X : Rel A B} {P P'} → (sp-P : specProperty P) → (sp-P' : specProperty P')
            → (∀ {b} → P b → P' b) → X ∣^' sp-P ⊆ X ∣^' sp-P'
impl⇒cores⊆ sp-P sp-P' P⇒P' a∈X∣^'P = ∈⇔P (Data.Product.map₁ P⇒P' (∈⇔P a∈X∣^'P))

mapˡ : (A → A') → Rel A B → Rel A' B
mapˡ f R = map (Data.Product.map₁ f) R

mapʳ : (B → B') → Rel A B → Rel A B'
mapʳ f R = map (Data.Product.map₂ f) R

dom∈ : ∀ {a} → a ∈ dom R ⇔ (∃[ b ] (a , b) ∈ R)
dom∈ {R = R} {a} =
  a ∈ dom R                       ∼⟨ R.SK-sym ∈-map ⟩
  (∃[ a₁ ] a ≡ proj₁ a₁ × a₁ ∈ R) ∼⟨ mk⇔ (λ { ((_ , y) , refl , ay∈R) → y , ay∈R })
                                          (λ { (x , ax∈R) → (a , x) , refl , ax∈R }) ⟩
  (∃[ b ] (a , b) ∈ R)            ∎
  where open R.EquationalReasoning

dom-⊆mapʳ : {f : B → B'} → dom R ⊆ dom (mapʳ f R)
dom-⊆mapʳ {f = f} {a} a∈domR with to dom∈ a∈domR
... | b , ab∈R = from dom∈ (f b , to ∈-map ((a , b) , refl , ab∈R))

dom-mapʳ⊆ : {f : B → B'} → dom (mapʳ f R) ⊆ dom R
dom-mapʳ⊆ a∈dmR with to dom∈ a∈dmR
... | _ , p∈map with from ∈-map p∈map
... | (_ , b) , refl , ab∈R = from dom∈ (b , ab∈R)

mapʳ-dom : {f : B → B'} → dom R ≡ᵉ dom (mapʳ f R)
mapʳ-dom = dom-⊆mapʳ , dom-mapʳ⊆

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

  res-ex-disj-∪ : Dec₁ (_∈ X) → R ≡ (R ∣ X) ⨿ (R ∣ X ᶜ)
  res-ex-disj-∪ ∈X? =
    IsEquivalence.sym ≡ᵉ-isEquivalence (res-ex-∪ ∈X?) , disjoint-dom⇒disjoint res-ex-disjoint
    where open import Relation.Binary using (IsEquivalence)

  curryʳ : Rel (A × B) C → A → Rel B C
  curryʳ R a = mapˡ proj₂ (R ∣' (sp-∘ (sp-∈ {X = ❴ a ❵}) proj₁))

  ∈-curryʳ : ∀ {a} {b : B} {c : C} → (b , c) ∈ curryʳ R a → ((a , b) , c) ∈ R
  ∈-curryʳ h = case ∈⇔P h of λ where
    (((a , b) , c) , refl , h'') → case ∈⇔P h'' of λ where
      (p , p') → case from ∈-singleton p of λ where refl → p'

  open Intersection sp-∈
  open Intersectionᵖ sp-∈

  res-dom-comm⊆∩ : {m : Rel A B} {m' : Rel A C} → dom (m ∣ dom m') ⊆ dom m ∩ dom m'
  res-dom-comm⊆∩ x = to ∈-∩ (res-domᵐ x , res-dom x)

  res-dom-comm∩⊆ : {m : Rel A B} {m' : Rel A C} → dom m ∩ dom m' ⊆ dom (m ∣ dom m')
  res-dom-comm∩⊆ {m = m} {m' = m'} x with from ∈-∩ x
  ... | a∈dm , a∈dm' with to dom∈ a∈dm | to dom∈ a∈dm'
  ... | b , ab∈m | c , ac∈m = from dom∈ (b , to ∈-filter (a∈dm' , ab∈m))

  res-dom-comm' : {m : Rel A B} {m' : Rel A C} → dom (m ∣ dom m') ≡ᵉ dom m ∩ dom m'
  res-dom-comm' = res-dom-comm⊆∩ , res-dom-comm∩⊆

  res-dom-comm : {m : Rel A B} {m' : Rel A C} → dom (m ∣ dom m') ≡ᵉ dom (m' ∣ dom m)
  res-dom-comm {m = m} {m'} = begin
    dom (m ∣ dom m') ≈⟨ res-dom-comm' ⟩
    dom m ∩ dom m'   ≈˘⟨ ∩-sym ⟩
    dom m' ∩ dom m   ≈˘⟨ res-dom-comm' ⟩
    dom (m' ∣ dom m) ∎ 
    where open SetoidReasoning ≡ᵉ-Setoid

module Corestriction (sp-∈ : spec-∈ B) where

  _∣^_ : Rel A B → Set B → Rel A B
  m ∣^ X = m ∣^' sp-∈ {X}

  _∣^_ᶜ : Rel A B → Set B → Rel A B
  m ∣^ X ᶜ = m ∣^' sp-¬ (sp-∈ {X})

  cores-⊆ : (R ∣^ X) ⊆ R
  cores-⊆ = proj₂ ∘′ ∈⇔P

  coex-⊆ : (R ∣^ X ᶜ) ⊆ R
  coex-⊆ = proj₂ ∘′ ∈⇔P
