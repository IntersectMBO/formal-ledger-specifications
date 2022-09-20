{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.Properties (th : Theory) where

open import Prelude hiding (isEquivalence; trans; filter)
open Theory th

import Data.List
import Data.Sum
open import Data.Product using (map₂)
open import Relation.Binary
open import Relation.Binary.Lattice
open import Relation.Binary.Morphism
import Function.Related.Propositional as R
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Membership.Propositional.Properties hiding (finite)
open import Interface.DecEq
open import Function.Related using (toRelated; fromRelated)
open import Relation.Unary using () renaming (Decidable to Dec₁)

private variable A B C D : Type
                 X X' Y Y' Z : Set A

-- TODO: move somewhere sensible
_×-cong_ : ∀ {A B C D : Type} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A × C) R.∼[ k ] (B × D)
h ×-cong h' = fromRelated (toRelated h M.×-cong toRelated h')
  where open import Data.Product.Function.NonDependent.Propositional as M

_⊎-cong_ : ∀ {A B C D : Type} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A ⊎ C) R.∼[ k ] (B ⊎ D)
h ⊎-cong h' = fromRelated (toRelated h M.⊎-cong toRelated h')
  where open import Data.Sum.Function.Propositional as M

open Equivalence

All : (A → Type) → Set A → Type
All P X = ∀ {a} → a ∈ X → P a

Any : (A → Type) → Set A → Type
Any P X = ∃[ a ] a ∈ X × P a

-- FIXME: proving this has some weird issues when making a implicit in
-- in the definiton of _≡ᵉ'_
≡ᵉ⇔≡ᵉ' : X ≡ᵉ Y ⇔ X ≡ᵉ' Y
≡ᵉ⇔≡ᵉ' = mk⇔
  (λ where (X⊆Y , Y⊆X) _ → mk⇔ X⊆Y Y⊆X)
  (λ a∈X⇔a∈Y → (λ {_} → to (a∈X⇔a∈Y _)) , λ {_} → from (a∈X⇔a∈Y _))

cong-⊆⇒cong : {f : Set A → Set B} → f Preserves _⊆_ ⟶ _⊆_ → f Preserves _≡ᵉ_ ⟶ _≡ᵉ_
cong-⊆⇒cong {f} h X≡ᵉX' = h (proj₁ X≡ᵉX') , h (proj₂ X≡ᵉX')

cong-⊆⇒cong₂ : {f : Set A → Set B → Set C}
             → f Preserves₂ _⊆_ ⟶ _⊆_ ⟶ _⊆_ → f Preserves₂ _≡ᵉ_ ⟶ _≡ᵉ_ ⟶ _≡ᵉ_
cong-⊆⇒cong₂ {f} h X≡ᵉX' Y≡ᵉY' = h (proj₁ X≡ᵉX') (proj₁ Y≡ᵉY') , h (proj₂ X≡ᵉX') (proj₂ Y≡ᵉY')

⊆-Transitive : Transitive (_⊆_ {A})
⊆-Transitive X⊆Y Y⊆Z = Y⊆Z ∘ X⊆Y

≡ᵉ-isEquivalence : IsEquivalence (_≡ᵉ_ {A})
≡ᵉ-isEquivalence = record
  { refl = id , id
  ; sym = λ where (h , h') → (h' , h)
  ; trans = λ eq₁ eq₂ → ⊆-Transitive (proj₁ eq₁) (proj₁ eq₂) , ⊆-Transitive (proj₂ eq₂) (proj₂ eq₁) }

⊆-isPreorder : IsPreorder (_≡ᵉ_ {A}) _⊆_
⊆-isPreorder = λ where
  .isEquivalence → ≡ᵉ-isEquivalence
  .reflexive     → proj₁
  .trans         → ⊆-Transitive
    where open IsPreorder

⊆-Preorder : {A} → Preorder _ _ _
⊆-Preorder {A} = record { Carrier = Set A ; _≈_ = _≡ᵉ_ ; _∼_ = _⊆_ ; isPreorder = ⊆-isPreorder }

⊆-PartialOrder : IsPartialOrder (_≡ᵉ_ {A}) _⊆_
⊆-PartialOrder = record
  { isPreorder = ⊆-isPreorder
  ; antisym    = _,_ }

∉-∅ : ∀ {a : A} → a ∉ ∅
∉-∅ h = case from ∈-fromList h of λ ()

∅-minimum : Minimum (_⊆_ {A}) ∅
∅-minimum = λ _ → ⊥-elim ∘ ∉-∅

∅-least : X ⊆ ∅ → X ≡ᵉ ∅
∅-least X⊆∅ = (X⊆∅ , ∅-minimum _)

filter-⊆ : ∀ {P} {sp-P : specProperty P} → filter sp-P X ⊆ X
filter-⊆ = proj₂ ∘ to ∈-filter

filter-finite : ∀ {P : A → Type}
               → (sp : specProperty P) → Dec₁ P → finite X → finite (filter sp X)
filter-finite {X = X} {P} sp P? (l , hl) = Data.List.filter P? l , λ {a} →
  a ∈ filter sp X            ∼⟨ ∈-filter ⟩
  (P a × a ∈ X)              ∼⟨ R.K-refl ×-cong hl ⟩
  (P a × a ∈ˡ l)             ∼⟨ mk⇔ (uncurry $ flip $ ∈-filter⁺ P?) (Data.Product.swap ∘ ∈-filter⁻ P?) ⟩
  a ∈ˡ Data.List.filter P? l ∎
  where open R.EquationalReasoning

∪-⊆ˡ : X ⊆ X ∪ Y
∪-⊆ˡ = to ∈-∪ ∘ inj₁

∪-⊆ʳ : Y ⊆ X ∪ Y
∪-⊆ʳ = to ∈-∪ ∘ inj₂

∪-⊆ : X ⊆ Z → Y ⊆ Z → X ∪ Y ⊆ Z
∪-⊆ X⊆Z Y⊆Z = λ a∈X∪Y → [ X⊆Z , Y⊆Z ]′ (from ∈-∪ a∈X∪Y)

∪-Supremum : Supremum (_⊆_ {A}) _∪_
∪-Supremum _ _ = ∪-⊆ˡ , ∪-⊆ʳ , λ _ → ∪-⊆

∪-cong-⊆ : (_∪_ {A}) Preserves₂ _⊆_ ⟶ _⊆_ ⟶ _⊆_
∪-cong-⊆ X⊆X' Y⊆Y' a∈X∪Y = to ∈-∪ (Data.Sum.map X⊆X' Y⊆Y' (from ∈-∪ a∈X∪Y))

∪-cong : (_∪_ {A}) Preserves₂ _≡ᵉ_ ⟶ _≡ᵉ_ ⟶ _≡ᵉ_
∪-cong = cong-⊆⇒cong₂ ∪-cong-⊆

∪-preserves-finite : _∪_ {A} Preservesˢ₂ finite
∪-preserves-finite {a = X} {Y} (l , hX) (l' , hY) = (l ++ l') , λ {a} →
  a ∈ X ∪ Y ∼⟨ R.SK-sym ∈-∪ ⟩
  (a ∈ X ⊎ a ∈ Y) ∼⟨ hX ⊎-cong hY ⟩
  (a ∈ˡ l ⊎ a ∈ˡ l') ∼⟨ mk⇔ Data.Sum.[ ∈-++⁺ˡ , ∈-++⁺ʳ _ ] (∈-++⁻ _) ⟩
  a ∈ˡ l ++ l' ∎
  where open R.EquationalReasoning

Set-JoinSemilattice : IsJoinSemilattice (_≡ᵉ_ {A}) _⊆_ _∪_
Set-JoinSemilattice = record { isPartialOrder = ⊆-PartialOrder ; supremum = ∪-Supremum }

Set-BoundedJoinSemilattice : IsBoundedJoinSemilattice (_≡ᵉ_ {A}) _⊆_ _∪_ ∅
Set-BoundedJoinSemilattice = record { isJoinSemilattice = Set-JoinSemilattice ; minimum = ∅-minimum }

module Intersectionᵖ (sp-∈ : spec-∈ A) where
  open Intersection sp-∈

  ∩-⊆ˡ : X ∩ Y ⊆ X
  ∩-⊆ˡ = proj₁ ∘ from ∈-∩

  ∩-⊆ʳ : X ∩ Y ⊆ Y
  ∩-⊆ʳ = proj₂ ∘ from ∈-∩

  ∩-⊆ : Z ⊆ X → Z ⊆ Y → Z ⊆ X ∩ Y
  ∩-⊆ Z⊆X Z⊆Y = λ x∈Z → to ∈-∩ (< Z⊆X , Z⊆Y > x∈Z)

  ∩-Infimum : Infimum _⊆_ _∩_
  ∩-Infimum X Y = ∩-⊆ˡ , ∩-⊆ʳ , λ _ → ∩-⊆

  ∩-preserves-finite : _∩_ Preservesˢ₂ weakly-finite
  ∩-preserves-finite _ = ⊆-weakly-finite ∩-⊆ʳ

  ∩-cong-⊆ : _∩_ Preserves₂ _⊆_ ⟶ _⊆_ ⟶ _⊆_
  ∩-cong-⊆ X⊆X' Y⊆Y' a∈X∩Y = to ∈-∩ (Data.Product.map X⊆X' Y⊆Y' (from ∈-∩ a∈X∩Y))

  ∩-cong : _∩_ Preserves₂ _≡ᵉ_ ⟶ _≡ᵉ_ ⟶ _≡ᵉ_
  ∩-cong = cong-⊆⇒cong₂ ∩-cong-⊆

  ∩-OrderHomomorphismʳ : ∀ {X} → IsOrderHomomorphism _≡ᵉ_ _≡ᵉ_ _⊆_ _⊆_ (X ∩_)
  ∩-OrderHomomorphismʳ = record { cong = ∩-cong (id , id) ; mono = ∩-cong-⊆ id }

  ∩-OrderHomomorphismˡ : ∀ {X} → IsOrderHomomorphism _≡ᵉ_ _≡ᵉ_ _⊆_ _⊆_ (_∩ X)
  ∩-OrderHomomorphismˡ = record { cong = flip ∩-cong (id , id) ; mono = flip ∩-cong-⊆ id }

  Set-Lattice : IsLattice _≡ᵉ_ _⊆_ _∪_ _∩_
  Set-Lattice =
    record { isPartialOrder = ⊆-PartialOrder ; supremum = ∪-Supremum ; infimum = ∩-Infimum }

open import Data.List.Relation.Binary.BagAndSetEquality

module Factor (_≈_ : B → B → Type) (f : List A → B) (f-cong : ∀ {l l'} → l ∼[ set ] l' → f l ≈ f l') where

  factor : FinSet A → B
  factor (_ , l , _) = f l

  factor-cong : factor Preserves (_≡ᵉ_ on proj₁) ⟶ _≈_
  factor-cong {X , Xˡ , hX} {Y , Yˡ , hY} (X⊆Y , Y⊆X) = f-cong λ {a} → toRelated $
    a ∈ˡ Xˡ ∼⟨ R.SK-sym hX ⟩ a ∈  X  ∼⟨ mk⇔ X⊆Y Y⊆X ⟩
    a ∈  Y  ∼⟨ hY ⟩          a ∈ˡ Yˡ ∎
    where open R.EquationalReasoning

  factor-∪ : ∀ {R : B → B → B → Type} {X Y : FinSet A}
           → (∀ {l l'} → R (f l) (f l') (f (l ++ l')))
           → R (factor X) (factor Y) (factor (proj₁ X ∪ proj₁ Y , ∪-preserves-finite (proj₂ X) (proj₂ Y)))
  factor-∪ hR = hR

open import Data.List.Relation.Unary.Unique.Propositional
open import Data.List.Relation.Binary.Permutation.Propositional
import Data.List.Relation.Unary.Unique.Propositional.Properties as Unique
open import Data.List.Relation.Binary.Disjoint.Propositional
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import Data.List.Relation.Unary.Unique.DecPropositional.Properties

-- This might be a candidate for the stdlib
dedup-++-↭ : ⦃ _ : DecEq A ⦄ {l l' : List A}
           → Disjoint l l' → deduplicate _≟_ (l ++ l') ↭ deduplicate _≟_ l ++ deduplicate _≟_ l'
dedup-++-↭ {l = l} {l'} disj =
  ∼bag⇒↭ $ unique∧set⇒bag (deduplicate-! _≟_ _)
    (Unique.++⁺ (deduplicate-! _≟_ l) (deduplicate-! _≟_ l') λ where (a∈l , a∈l') → disj (∈-deduplicate⁻ _≟_ _ a∈l , ∈-deduplicate⁻ _≟_ _ a∈l'))
    λ {a} → toRelated $
      a ∈ˡ deduplicate _≟_ (l ++ l')                     ∼⟨ R.SK-sym helper₁ ⟩
      a ∈ˡ l ++ l'                                       ∼⟨ helper₂ ⟩
      (a ∈ˡ l ⊎ a ∈ˡ l')                                 ∼⟨ helper₁ ⊎-cong helper₁ ⟩
      (a ∈ˡ deduplicate _≟_ l ⊎ a ∈ˡ deduplicate _≟_ l') ∼⟨ R.SK-sym helper₂ ⟩
      a ∈ˡ deduplicate _≟_ l ++ deduplicate _≟_ l'       ∎
  where open R.EquationalReasoning
        helper₁ : ∀ ⦃ _ : DecEq A ⦄ {l : List A} {a} → a ∈ˡ l ⇔ a ∈ˡ deduplicate _≟_ l
        helper₁ = mk⇔ (∈-deduplicate⁺ _≟_) (∈-deduplicate⁻ _≟_ _)

        helper₂ : ∀ {l l' : List A} {a} → a ∈ˡ l ++ l' ⇔ (a ∈ˡ l ⊎ a ∈ˡ l')
        helper₂ = mk⇔ (∈-++⁻ _) Data.Sum.[ ∈-++⁺ˡ , ∈-++⁺ʳ _ ]

module FactorUnique ⦃ _ : DecEq A ⦄ (_≈_ : B → B → Type) (f : (Σ (List A) Unique) → B)
                    (f-cong : ∀ {l l'} → proj₁ l ↭ proj₁ l' → f l ≈ f l') where

  f-cong' : ∀ {l l'} → (∀ {a} → a ∈ˡ proj₁ l ⇔ a ∈ˡ proj₁ l') → f l ≈ f l'
  f-cong' {l} {l'} h = f-cong (∼bag⇒↭ (unique∧set⇒bag (proj₂ l) (proj₂ l') (toRelated h)))

  deduplicate-Σ : List A → Σ (List A) Unique
  deduplicate-Σ l = (deduplicate _≟_ l , deduplicate-! _≟_ _)

  ext : List A → B
  ext = f ∘ deduplicate-Σ

  ext-cong : ∀ {l l'} → l ∼[ set ] l' → ext l ≈ ext l'
  ext-cong {l} {l'} h = f-cong' λ {a} →
    a ∈ˡ deduplicate _≟_ l  ∼⟨ R.SK-sym helper ⟩
    a ∈ˡ l                  ∼⟨ fromRelated h ⟩
    a ∈ˡ l'                 ∼⟨ helper ⟩
    a ∈ˡ deduplicate _≟_ l' ∎
    where open R.EquationalReasoning
          helper : ∀ {a l} → a ∈ˡ l ⇔ a ∈ˡ deduplicate _≟_ l
          helper = mk⇔ (∈-deduplicate⁺ _≟_) (∈-deduplicate⁻ _≟_ _)

  open Factor _≈_ ext ext-cong public

  module _ (sp-∈ : spec-∈ A) where
    open Intersection sp-∈

    factor-∪' : ∀ {R : B → B → B → Type} {X Y : FinSet A}
              → proj₁ X ∩ proj₁ Y ≡ᵉ ∅
              → (∀ {l l'} → Disjoint l l' → R (ext l) (ext l') (ext (l ++ l')))
              → R (factor X) (factor Y) (factor (proj₁ X ∪ proj₁ Y , ∪-preserves-finite (proj₂ X) (proj₂ Y)))
    factor-∪' {X = _ , _ , Xᶠ} {_ , _ , Yᶠ} disj hR =
      hR λ where (a∈X , a∈Y) → ∉-∅ (to (to ≡ᵉ⇔≡ᵉ' disj _) (to ∈-∩ (from Xᶠ a∈X , from Yᶠ a∈Y)))
