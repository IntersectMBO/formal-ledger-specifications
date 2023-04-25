{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)

module Axiom.Set where

open import Prelude hiding (filter)

import Function.Related.Propositional as R
open import Data.List.Ext.Properties
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.List.Relation.Unary.Unique.DecPropositional.Properties
open import Data.List.Relation.Unary.Unique.Propositional
open import Data.Maybe.Properties.Ext
open import Data.Product.Algebra using (×-comm)
open import Data.Product.Properties
open import Data.Product.Properties.Ext
open import Interface.DecEq
open import Relation.Binary using () renaming (Decidable to Dec₂)
open import Relation.Nullary
open import Relation.Nullary.Decidable using (⌊_⌋)
open import Relation.Unary using () renaming (Decidable to Dec₁)

private variable ℓ : Level
                 A B C : Type ℓ
                 P : A → Type
                 l : List A

_Preserves₁_⟶_ : {A : Type ℓ} → (A → B) → (A → Type) → (B → Type) → Type ℓ
f Preserves₁ P ⟶ Q = ∀ {a} → P a → Q (f a)

_Preserves₁₂_⟶_⟶_ : {A B : Type ℓ} → (A → B → C) → (A → Type ℓ) → (B → Type ℓ) → (C → Type ℓ) → Type ℓ
f Preserves₁₂ P ⟶ P' ⟶ Q = ∀ {a b} → P a → P' b → Q (f a b)

record SpecProperty {ℓ} : Type (sucˡ ℓ) where
  field specProperty : {A : Type ℓ} → (A → Type) → Type
        sp-∘ : specProperty P → (f : B → A) → specProperty (P ∘ f)
        sp-¬ : specProperty P → specProperty (¬_ ∘ P)

Dec-SpecProperty : SpecProperty
Dec-SpecProperty = record
  { specProperty = Dec₁
  ; sp-∘         = λ P? → P? ∘_
  ; sp-¬         = λ P? → ¬? ∘ P?
  }

record Theory {ℓ} : Type (sucˡ ℓ) where
  infix 4 _⊆_ _≡ᵉ_ _∈_ _∉_
  infixr 6 _∪_

  field Set : Type ℓ → Type ℓ
        _∈_ : A → Set A → Type
        sp  : SpecProperty
  open SpecProperty sp public

  _⊆_ : Set A → Set A → Type ℓ
  X ⊆ Y = ∀ {a} → a ∈ X → a ∈ Y

  -- we might want to either have all properties or decidable properties allowed for specification
  field specification : (X : Set A) → specProperty P → ∃[ Y ] ∀ {a} → (P a × a ∈ X) ⇔ a ∈ Y
        unions        : (X : Set (Set A)) → ∃[ Y ] ∀ {a} → (∃[ T ] (T ∈ X × a ∈ T)) ⇔ a ∈ Y
        replacement   : (f : A → B) → (X : Set A) → ∃[ Y ] ∀ {b} → (∃[ a ] b ≡ f a × a ∈ X) ⇔ b ∈ Y
        listing       : (l : List A) → ∃[ X ] ∀ {a} → a ∈ˡ l ⇔ a ∈ X -- equivalent to pairing + empty set
        -- power-set     : (X : Set A) → ∃[ Y ] ∀ {T} → T ⊆ X → T ∈ Y

  private variable X X' Y : Set A

  _≡ᵉ_ : Set A → Set A → Type ℓ
  X ≡ᵉ Y = X ⊆ Y × Y ⊆ X

  _≡ᵉ'_ : Set A → Set A → Type ℓ
  X ≡ᵉ' Y = ∀ a → a ∈ X ⇔ a ∈ Y

  _∉_ : A → Set A → Type
  _∉_ = ¬_ ∘₂ _∈_

  open Equivalence

  _Preservesˢ_ : (Set A → Set B) → (∀ {A} → Set A → Type) → Type ℓ
  f Preservesˢ P = f Preserves₁ P ⟶ P

  _Preservesˢ₂_ : (Set A → Set B → Set C) → (∀ {A : Type ℓ} → Set A → Type ℓ) → Type ℓ
  f Preservesˢ₂ P = f Preserves₁₂ P ⟶ P ⟶ P

  disjoint : Set A → Set A → Type ℓ
  disjoint X Y = ∀ {a} → a ∈ X → a ∈ Y → ⊥

  finite : Set A → Type ℓ
  finite X = ∃[ l ] ∀ {a} → a ∈ X ⇔ a ∈ˡ l

  weakly-finite : Set A → Type ℓ
  weakly-finite X = ∃[ l ] ∀ {a} → a ∈ X → a ∈ˡ l

  -- there exists a list without duplicates that has exactly the members of the set
  strongly-finite : Set A → Type ℓ
  strongly-finite X = ∃[ l ] Unique l × ∀ {a} → a ∈ X ⇔ a ∈ˡ l

  DecEq∧finite⇒strongly-finite : ⦃ _ : DecEq A ⦄ → (X : Set A) → finite X → strongly-finite X
  DecEq∧finite⇒strongly-finite ⦃ eq? ⦄ X (l , h) = let _≟_ = eq? ._≟_ in
    deduplicate _≟_ l , deduplicate-! _≟_ l , λ {a} →
      a ∈ X                  ∼⟨ h ⟩
      a ∈ˡ l                 ∼⟨ ∈-dedup ⟩
      a ∈ˡ deduplicate _≟_ l ∎
    where open R.EquationalReasoning

  card : Σ (Set A) strongly-finite → ℕ
  card (_ , l , _) = length l

  ⊆-weakly-finite : X ⊆ Y → weakly-finite Y → weakly-finite X
  ⊆-weakly-finite X⊆Y (l , hl) = l , hl ∘ X⊆Y

  isMaximal : Set A → Type ℓ
  isMaximal {A} X = {a : A} → a ∈ X

  maximal-⊆ : isMaximal Y → X ⊆ Y
  maximal-⊆ maxY _ = maxY

  maximal-unique : isMaximal X → isMaximal Y → X ≡ᵉ Y
  maximal-unique maxX maxY = maximal-⊆ maxY , maximal-⊆ maxX

  FinSet : Type ℓ → Type ℓ
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

  ∈-unions : {a : A} {U : Set (Set A)} → (∃[ T ] T ∈ U × a ∈ T) ⇔ a ∈ proj₁ (unions U)
  ∈-unions = proj₂ $ unions _

  ∅ : Set A
  ∅ = fromList []

  ∅-strongly-finite : strongly-finite {A} ∅
  ∅-strongly-finite = [] , [] , R.SK-sym ∈-fromList

  card-∅ : card (∅ {A} , ∅-strongly-finite) ≡ 0
  card-∅ = refl

  singleton : A → Set A
  singleton a = fromList [ a ]

  ❴_❵ = singleton

  ∈-singleton : {a b : A} → a ≡ b ⇔ a ∈ singleton b
  ∈-singleton {_} {a} {b} =
    a ≡ b           ∼⟨ mk⇔ (λ where refl → here refl) (λ where (here refl) → refl) ⟩
    a ∈ˡ [ b ]      ∼⟨ ∈-fromList ⟩
    a ∈ singleton b ∎
    where open R.EquationalReasoning

  partialToSet : (A → Maybe B) → A → Set B
  partialToSet f a = maybe (fromList ∘ [_]) ∅ (f a)

  ∈-partialToSet : ∀ {a : A} {b : B} {f} → f a ≡ just b ⇔ b ∈ partialToSet f a
  ∈-partialToSet {a = a} {b} {f} = mk⇔
    (λ h → subst (λ x → b ∈ maybe (fromList ∘ [_]) ∅ x) (sym h) (to ∈-singleton refl))
    (case f a return (λ y → b ∈ maybe (λ x → fromList [ x ]) ∅ y → y ≡ just b) of λ where
      (just x) → λ h → cong just (sym $ from ∈-singleton h)
      nothing  → λ h → case from ∈-fromList h of λ ())

  mapPartial : (A → Maybe B) → Set A → Set B
  mapPartial f X = proj₁ $ unions (map (partialToSet f) X)

  ∈-mapPartial : {y : B} {f : A → Maybe B} → (∃[ x ] x ∈ X × f x ≡ just y) ⇔ y ∈ mapPartial f X
  ∈-mapPartial {X = X} {y} {f} =
    (∃[ x ] x ∈ X × f x ≡ just y)
      ∼⟨ ∃-cong′ (R.K-refl ×-cong (∈-partialToSet {f = f})) ⟩
    (∃[ x ] x ∈ X × y ∈ partialToSet f x)
      ∼⟨ ∃-cong′ (λ {x} → ∃-≡ (λ T → x ∈ X × y ∈ T)) ⟩
    (∃[ x ] ∃[ T ] T ≡ partialToSet f x × x ∈ X × y ∈ T)
      ↔⟨ ∃∃↔∃∃ (λ x T → T ≡ partialToSet f x × x ∈ X × y ∈ T) ⟩
    (∃[ T ] ∃[ x ] T ≡ partialToSet f x × x ∈ X × y ∈ T)    ∼⟨ ∃-cong′ $ mk⇔
      (λ where (x , p₁ , p₂ , p₃) → ((x , p₁ , p₂) , p₃))
      (λ where ((x , p₁ , p₂) , p₃) → (x , p₁ , p₂ , p₃)) ⟩
    (∃[ T ] (∃[ x ] T ≡ partialToSet f x × x ∈ X) × y ∈ T)  ∼⟨ ∃-cong′ (∈-map ×-cong R.K-refl) ⟩
    (∃[ T ] T ∈ map (partialToSet f) X × y ∈ T)             ∼⟨ ∈-unions ⟩
    y ∈ mapPartial f X ∎
    where open R.EquationalReasoning

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

  spec-∈ : Type ℓ → Type ℓ
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

    disjoint' : Set A → Set A → Type ℓ
    disjoint' X Y = X ∩ Y ≡ᵉ ∅

  All : (A → Type) → Set A → Type ℓ
  All P X = ∀ {a} → a ∈ X → P a

  Any : (A → Type) → Set A → Type ℓ
  Any P X = ∃[ a ] a ∈ X × P a

-- finite set theories
record Theoryᶠ : Type₁ where
  field theory : Theory
  open Theory theory public

  field finiteness : (X : Set A) → finite X

  DecEq⇒strongly-finite : ⦃ DecEq A ⦄ → (X : Set A) → strongly-finite X
  DecEq⇒strongly-finite X = DecEq∧finite⇒strongly-finite X (finiteness X)

  lengthˢ : ⦃ DecEq A ⦄ → Set A → ℕ
  lengthˢ X = card (X , DecEq⇒strongly-finite X)

-- set theories with an infinite set (containing all natural numbers)
record Theoryⁱ : Type₁ where
  field theory : Theory
  open Theory theory public

  field infinity : ∃[ Y ] ((n : ℕ) → n ∈ Y)

-- theories with decidable properties
record Theoryᵈ : Type₁ where
  field th : Theory
  open Theory th public
  open Equivalence

  field ∈-sp : ⦃ DecEq A ⦄ → spec-∈ A
        _∈?_ : ⦃ DecEq A ⦄ → Dec₂ (_∈_ {A = A})
        all? : ⦃ DecEq A ⦄ → {P : A → Type} (P? : Dec₁ P) {X : Set A} → Dec (All P X)
        any? : ⦃ DecEq A ⦄ → {P : A → Type} (P? : Dec₁ P) (X : Set A) → Dec (Any P X)

  _∈ᵇ_ : ⦃ DecEq A ⦄ → A → Set A → Bool
  a ∈ᵇ X = ⌊ a ∈? X ⌋

  allᵇ : ⦃ DecEq A ⦄ → {P : A → Type} (P? : Dec₁ P) (X : Set A) → Bool
  allᵇ P? X = ⌊ all? P? {X} ⌋

  anyᵇ : ⦃ DecEq A ⦄ → {P : A → Type} (P? : Dec₁ P) (X : Set A) → Bool
  anyᵇ P? X = ⌊ any? P? X ⌋

  incl-set' : ⦃ DecEq A ⦄ → (X : Set A) → A → Maybe (∃[ a ] a ∈ X)
  incl-set' X x with x ∈? X
  ... | yes p = just (x , p)
  ... | no  p = nothing

  incl-set : ⦃ DecEq A ⦄ → (X : Set A) → Set (∃[ a ] a ∈ X)
  incl-set X = mapPartial (incl-set' X) X

  incl-set-proj₁⊆ : ⦃ _ : DecEq A ⦄ → {X : Set A} → map proj₁ (incl-set X) ⊆ X
  incl-set-proj₁⊆ x with from ∈-map x
  ... | (_ , pf) , refl , _ = pf

  incl-set-proj₁⊇ : ⦃ _ : DecEq A ⦄ → {X : Set A} → X ⊆ map proj₁ (incl-set X)
  incl-set-proj₁⊇ {X = X} {x} x∈X with x ∈? X | inspect (_∈? X) x
  ... | no ¬p | _  = contradiction x∈X ¬p
  ... | yes p | eq = to ∈-map ((x , p) , refl , to (∈-mapPartial {f = incl-set' X})
    (x , x∈X , helper (Reveal_·_is_.eq eq)))
    where
      helper : x ∈? X ≡ yes p → incl-set' X x ≡ just (x , p)
      helper h with x ∈? X | h
      ... | _ | refl = refl

  incl-set-proj₁ : ⦃ _ : DecEq A ⦄ → {X : Set A} → map proj₁ (incl-set X) ≡ᵉ X
  incl-set-proj₁ = incl-set-proj₁⊆ , incl-set-proj₁⊇
