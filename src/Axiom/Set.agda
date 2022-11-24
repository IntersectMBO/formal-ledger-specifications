{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)
module Axiom.Set where

open import Prelude hiding (filter)

import Function.Related.Propositional as R
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.Product.Algebra using (×-comm)
open import Relation.Binary using () renaming (Decidable to Dec₂)
open import Relation.Nullary
open import Relation.Nullary.Decidable using (⌊_⌋)
open import Relation.Nullary.Negation
open import Relation.Unary using () renaming (Decidable to Dec₁)

private variable A B C : Type
                 P : A → Type
                 l : List A

_Preserves₁_⟶_ : (A → B) → (A → Type) → (B → Type) → Type
f Preserves₁ P ⟶ Q = ∀ {a} → P a → Q (f a)

_Preserves₁₂_⟶_⟶_ : (A → B → C) → (A → Type) → (B → Type) → (C → Type) → Type
f Preserves₁₂ P ⟶ P' ⟶ Q = ∀ {a b} → P a → P' b → Q (f a b)

record SpecProperty : Type₁ where
  field specProperty : (A → Type) → Type
        sp-∘ : specProperty P → (f : B → A) → specProperty (P ∘ f)
        sp-¬ : specProperty P → specProperty (¬_ ∘ P)

Dec-SpecProperty : SpecProperty
Dec-SpecProperty = record
  { specProperty = Dec₁
  ; sp-∘         = λ P? → P? ∘_
  ; sp-¬         = λ P? → ¬? ∘ P?
  }

record Theory : Type₁ where
  infix 4 _⊆_ _≡ᵉ_ _∈_ _∉_
  infixr 6 _∪_

  field Set : Type → Type
        _∈_ : A → Set A → Type
        sp  : SpecProperty
  open SpecProperty sp public

  _⊆_ : Set A → Set A → Type
  X ⊆ Y = ∀ {a} → a ∈ X → a ∈ Y

  -- we might want to either have all properties or decidable properties allowed for specification
  field specification : (X : Set A) → specProperty P → ∃[ Y ] ∀ {a} → (P a × a ∈ X) ⇔ a ∈ Y
        unions        : (X : Set (Set A)) → ∃[ Y ] ∀ {a} → (∃[ T ] (T ∈ X × a ∈ T)) ⇔ a ∈ Y
        replacement   : (f : A → B) → (X : Set A) → ∃[ Y ] ∀ {b} → (∃[ a ] b ≡ f a × a ∈ X) ⇔ b ∈ Y
        listing       : (l : List A) → ∃[ X ] ∀ {a} → a ∈ˡ l ⇔ a ∈ X -- equivalent to pairing + empty set
        -- power-set     : (X : Set A) → ∃[ Y ] ∀ {T} → T ⊆ X → T ∈ Y

  private variable X X' Y : Set A

  _≡ᵉ_ : Set A → Set A → Type
  X ≡ᵉ Y = X ⊆ Y × Y ⊆ X

  _≡ᵉ'_ : Set A → Set A → Type
  X ≡ᵉ' Y = ∀ a → a ∈ X ⇔ a ∈ Y

  _∉_ : A → Set A → Type
  _∉_ = ¬_ ∘₂ _∈_

  open Equivalence

  _Preservesˢ_ : (Set A → Set B) → (∀ {A} → Set A → Type) → Type
  f Preservesˢ P = f Preserves₁ P ⟶ P

  _Preservesˢ₂_ : (Set A → Set B → Set C) → (∀ {A : Type} → Set A → Type) → Type
  f Preservesˢ₂ P = f Preserves₁₂ P ⟶ P ⟶ P

  disjoint : Set A → Set A → Type
  disjoint X Y = ∀ {a} → a ∈ X → a ∈ Y → ⊥

  finite : Set A → Type
  finite X = ∃[ l ] ∀ {a} → a ∈ X ⇔ a ∈ˡ l

  weakly-finite : Set A → Type
  weakly-finite X = ∃[ l ] ∀ {a} → a ∈ X → a ∈ˡ l

  ⊆-weakly-finite : X ⊆ Y → weakly-finite Y → weakly-finite X
  ⊆-weakly-finite X⊆Y (l , hl) = l , hl ∘ X⊆Y

  isMaximal : Set A → Type
  isMaximal {A} X = {a : A} → a ∈ X

  maximal-⊆ : isMaximal Y → X ⊆ Y
  maximal-⊆ maxY _ = maxY

  maximal-unique : isMaximal X → isMaximal Y → X ≡ᵉ Y
  maximal-unique maxX maxY = maximal-⊆ maxY , maximal-⊆ maxX

  FinSet : Type → Type
  FinSet A = Σ (Set A) finite

  -- if you can construct a set that contains all elements satisfying
  -- P, you can construct a set containing exactly the elements satisfying P
  strictify : specProperty P → (∃[ Y ] ∀ {a} → P a → a ∈ Y) → ∃[ Y ] ∀ {a} → P a ⇔ a ∈ Y
  strictify sp p with specification (proj₁ p) sp
  ... | (Y , p') = Y , (mk⇔ (λ a∈l → to p' (a∈l , proj₂ p a∈l)) (proj₁ ∘ from p'))

  map : (A → B) → Set A → Set B
  map = proj₁ ∘₂ replacement

  ∈-map : ∀ {f : A → B} {b} → (∃[ a ] b ≡ f a × a ∈ X) ⇔ b ∈ map f X
  ∈-map = proj₂ $ replacement _ _

  -- don't know that there's a set containing all members of a type, which this is equivalent to
  -- _⁻¹_ : (A → B) → Set B → Set A
  -- f ⁻¹ X = {!!}

  filter : {P : A → Type} → specProperty P → Set A → Set A
  filter = proj₁ ∘₂ flip specification

  ∈-filter : ∀ {sp-P : specProperty P} {a} → (P a × a ∈ X) ⇔ a ∈ filter sp-P X
  ∈-filter = proj₂ $ specification _ _

  fromList : List A → Set A
  fromList = proj₁ ∘ listing

  ∈-fromList : ∀ {a} → a ∈ˡ l ⇔ a ∈ fromList l
  ∈-fromList = proj₂ $ listing _

  ∅ : Set A
  ∅ = fromList []

  partialToSet : (A → Maybe B) → A → Set B
  partialToSet f a = maybe (fromList ∘ [_]) ∅ (f a)

  mapPartial : (A → Maybe B) → Set A → Set B
  mapPartial f X = proj₁ $ unions (map (partialToSet f) X)

  binary-unions : ∃[ Y ] ∀ {a} → (a ∈ X ⊎ a ∈ X') ⇔ a ∈ Y
  binary-unions {X = X} {X'} with unions (fromList (X ∷ [ X' ]))
  ... | (Y , h) = Y , mk⇔ (λ where
    (inj₁ a∈X)  → to h (X  , to ∈-fromList (here refl)         , a∈X)
    (inj₂ a∈X') → to h (X' , to ∈-fromList (there (here refl)) , a∈X'))
    (λ a∈Y → case from h a∈Y of λ where (T , H , a∈T) → case from ∈-fromList H of λ where
      (here refl) → inj₁ a∈T
      (there (here refl)) → inj₂ a∈T)

  _∪_ : Set A → Set A → Set A
  X ∪ Y = proj₁ binary-unions

  ∈-∪ : ∀ {a} → (a ∈ X ⊎ a ∈ Y) ⇔ a ∈ X ∪ Y
  ∈-∪ = proj₂ binary-unions

  spec-∈ : Type → Type
  spec-∈ A = {X : Set A} → specProperty (_∈ X)

  -- membership needs to be a specProperty to have intersections
  module Intersection (sp-∈ : spec-∈ A) where

    infixr 7 _∩_
    _∩_ : Set A → Set A → Set A
    X ∩ Y = filter sp-∈ X

    ∈-∩ : ∀ {a} → (a ∈ X × a ∈ Y) ⇔ a ∈ X ∩ Y
    ∈-∩ {X} {Y} {a} = (a ∈ X × a ∈ Y) ↔⟨ ×-comm _ _ ⟩
                      (a ∈ Y × a ∈ X) ∼⟨ ∈-filter ⟩
                      a ∈ X ∩ Y       ∎
      where open R.EquationalReasoning

    disjoint' : Set A → Set A → Type
    disjoint' X Y = X ∩ Y ≡ᵉ ∅

  All : (A → Type) → Set A → Type
  All P X = ∀ {a} → a ∈ X → P a

  Any : (A → Type) → Set A → Type
  Any P X = ∃[ a ] a ∈ X × P a

-- finite set theories
record Theoryᶠ : Type₁ where
  field theory : Theory
  open Theory theory public

  field finiteness : (X : Set A) → finite X

-- set theories with an infinite set (containing all natural numbers)
record Theoryⁱ : Type₁ where
  field theory : Theory
  open Theory theory public

  field infinity : ∃[ Y ] ((n : ℕ) → n ∈ Y)

open import Interface.DecEq

-- theories with decidable properties
record Theoryᵈ : Type₁ where
  field th : Theory
  open Theory th public

  field ∈-sp : ⦃ DecEq A ⦄ → spec-∈ A
        _∈?_ : ⦃ DecEq A ⦄ → Dec₂ (_∈_ {A = A})
        all? : ⦃ DecEq A ⦄ → {P : A → Type} (P? : Dec₁ P) {X : Set A} → Dec (All P X)

  _∈ᵇ_ : ⦃ DecEq A ⦄ → A → Set A → Bool
  a ∈ᵇ X = ⌊ a ∈? X ⌋
