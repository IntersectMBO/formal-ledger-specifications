{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.Rel (th : Theory) where
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
open import Relation.Nullary.Negation using (¬?)
open import Relation.Unary using () renaming (Decidable to Dec₁)

open Equivalence

Rel : Type → Type → Type
Rel A B = Set (A × B)

private variable A A' B : Type
                 R R' : Rel A B
                 X Y : Set A

left-unique : Rel A B → Type
left-unique R = ∀ {a b b'} → (a , b) ∈ R → (a , b') ∈ R → b ≡ b'

⊆-left-unique : R ⊆ R' → left-unique R' → left-unique R
⊆-left-unique R⊆R' h = R⊆R' -⟨ h ⟩- R⊆R' -- on isn't dependent enough

relatedˡ : Rel A B → Set A
relatedˡ = map proj₁

Map : Type → Type → Type
Map A B = Σ (Rel A B) left-unique

private variable m m' : Map A B

∅ᵐ : Map A B
∅ᵐ = ∅ , λ h _ → ⊥-elim (∉-∅ h)

FinMap : Type → Type → Type
FinMap A B = Σ (Rel A B) (λ R → left-unique R × finite R)

toFinMap : (m : Map A B) → finite (proj₁ m) → FinMap A B
toFinMap (m , h) fin = m , h , fin

toMap : FinMap A B → Map A B
toMap (m , l , _) = m , l

fromListᵐ : ⦃ _ : DecEq A ⦄ → List (A × B) → Map A B
fromListᵐ l = fromList (deduplicate (λ x y → proj₁ x ≟ proj₁ y) l) , λ h h' →
  case AllPairs⇒≡∨R∨Rᵒᵖ (deduplicate-! (On.decSetoid (Prelude.decSetoid _≟_) proj₁) l) (from ∈-fromList h) (from ∈-fromList h') of λ
  { (inj₁ refl) → refl ; (inj₂ (inj₁ x)) → ⊥-elim (x refl) ; (inj₂ (inj₂ x)) → ⊥-elim (x refl)}
  where open import Data.List.Relation.Unary.Unique.DecSetoid.Properties
        open import Relation.Binary.Construct.On as On

dom : Map A B → Set A
dom m = map proj₁ (proj₁ m)

range : Map A B → Set B
range m = map proj₂ (proj₁ m)

module Intersectionᵐ (sp-∈ : spec-∈ (A × B)) where
  open Intersection sp-∈
  open Intersectionᵖ sp-∈

  _∩ᵐ_ : Map A B → Map A B → Map A B
  m ∩ᵐ m' = (proj₁ m ∩ proj₁ m' , ⊆-left-unique ∩-⊆ˡ (proj₂ m))

disjoint-dom⇒disjoint : disjoint (dom m) (dom m') → disjoint (proj₁ m) (proj₁ m')
disjoint-dom⇒disjoint disj h h' = disj (to ∈-map (-, refl , h)) (to ∈-map (-, refl , h'))

disjoint-sym : disjoint X Y → disjoint Y X
disjoint-sym disj = flip disj

disj-∪ : (m m' : Map A B) → disjoint (dom m) (dom m') → Map A B
disj-∪ m m' disj = proj₁ m ∪ proj₁ m' , λ h h' → case from ∈-∪ h , from ∈-∪ h' of λ where
  (inj₁ hm  , inj₁ h'm)  → proj₂ m hm h'm
  (inj₂ hm' , inj₁ h'm)  → ⊥-elim $ disj (to ∈-map (_ , refl , h'm)) (to ∈-map (_ , refl , hm'))
  (inj₁ hm  , inj₂ h'm') → ⊥-elim $ disj (to ∈-map (_ , refl , hm))  (to ∈-map (_ , refl , h'm'))
  (inj₂ hm' , inj₂ h'm') → proj₂ m' hm' h'm'

filterᵐ : {P : A × B → Type} → specProperty P → Map A B → Map A B
filterᵐ sp-P m = filter sp-P (proj₁ m) , ⊆-left-unique filter-⊆ (proj₂ m)

filterᵐ-finite : ∀ {P : A × B → Type}
               → (sp : specProperty P) → Dec₁ P → finite (proj₁ m) → finite (proj₁ $ filterᵐ sp m)
filterᵐ-finite = filter-finite

module Unionᵐ (sp-∈ : spec-∈ A) where

  _∪ᵐˡ_ : Map A B → Map A B → Map A B
  m ∪ᵐˡ m' = disj-∪ m (filterᵐ (sp-∘ (sp-¬ (sp-∈ {X = dom m})) proj₁) m') λ h h' →
    case from ∈-map h ,′ from ∈-map h' of λ where
      ((_ , refl , hx) , (_ , refl , hy)) → proj₁ (to ∈-filter hy) (to ∈-map (_ , refl , hx))

  disjoint-∪ᵐˡ-∪ : (H : disjoint (dom m) (dom m')) → proj₁ (m ∪ᵐˡ m') ≡ᵉ proj₁ (disj-∪ m m' H)
  disjoint-∪ᵐˡ-∪ disj = from ≡ᵉ⇔≡ᵉ' λ _ → mk⇔
    (to ∈-∪ ∘ Data.Sum.map₂ (proj₂ ∘ to ∈-filter) ∘ from ∈-∪)
    (to ∈-∪ ∘ Data.Sum.map₂ (from ∈-filter ∘ (λ h → (flip disj (to ∈-map (_ , refl , h))) , h)) ∘ from ∈-∪)

  disjoint-∪ᵐˡ-∪' : disjoint (dom m) (dom m') → proj₁ (m ∪ᵐˡ m') ≡ᵉ proj₁ m ∪ proj₁ m'
  disjoint-∪ᵐˡ-∪' {m = m} {m'} = disjoint-∪ᵐˡ-∪ {m = m} {m'}

_∣'_ : {P : A → Type} → Map A B → specProperty P → Map A B
m ∣' P? = filterᵐ (sp-∘ P? proj₁) m

_|^'_ : {P : B → Type} → Map A B → specProperty P → Map A B
m |^' P? = filterᵐ (sp-∘ P? proj₂) m

mapKeys : (f : A → A') → Injective _≡_ _≡_ f → Map A B → Map A' B
mapKeys f inj (R , uniq) = map (Data.Product.map₁ f) R , λ h h' → case from ∈-map h , from ∈-map h' of λ where
  (((_ , _) , refl , Ha) , ((_ , _) , eqb , Hb)) → uniq Ha $
    subst (_∈ R) (sym $ ×-≡,≡→≡ $ Data.Product.map₁ inj (×-≡,≡←≡ eqb)) Hb

module Restriction (sp-∈ : spec-∈ A) where

  _∣_ : Map A B → Set A → Map A B
  m ∣ X = m ∣' sp-∈ {X}

  _∣_ᶜ : Map A B → Set A → Map A B
  m ∣ X ᶜ = m ∣' sp-¬ (sp-∈ {X})

  _⟪$⟫_ : Map A B → Set A → Set B
  m ⟪$⟫ X = range (m ∣ X)

  res-dom : dom (m ∣ X) ⊆ X
  res-dom a∈dom with from ∈-map a∈dom
  ... | _ , refl , h = proj₁ $ to ∈-filter h

  res-domᵐ : dom (m ∣ X) ⊆ dom m
  res-domᵐ a∈dom with from ∈-map a∈dom
  ... | _ , refl , h = to ∈-map (-, refl , proj₂ (to ∈-filter h))

  cores-dom : ∀ {a} → a ∈ dom (m ∣ X ᶜ) → a ∉ X
  cores-dom a∈dom with from ∈-map a∈dom
  ... | _ , refl , h = proj₁ $ to ∈-filter h

  cores-domᵐ : dom (m ∣ X ᶜ) ⊆ dom m
  cores-domᵐ a∈dom with from ∈-map a∈dom
  ... | _ , refl , h = to ∈-map (-, refl , proj₂ (to ∈-filter h))

  res-⊆ : proj₁ (m ∣ X) ⊆ proj₁ m
  res-⊆ = proj₂ ∘ to ∈-filter

  ex-⊆ : proj₁ (m ∣ X ᶜ) ⊆ proj₁ m
  ex-⊆ = proj₂ ∘ to ∈-filter

  open import Relation.Nullary

  res-ex-∪ : Dec₁ (_∈ X) → proj₁ (m ∣ X) ∪ proj₁ (m ∣ X ᶜ) ≡ᵉ proj₁ m
  res-ex-∪ {m = m} ∈X? = ∪-⊆ (res-⊆ {m = m}) (ex-⊆ {m = m}) , λ {a} h → case ∈X? (proj₁ a) of λ where
    (yes p) → to ∈-∪ (inj₁ (from ∈-filter (p , h)))
    (no ¬p) → to ∈-∪ (inj₂ (from ∈-filter (¬p , h)))

  res-ex-disjoint : disjoint (dom (m ∣ X)) (dom (m ∣ X ᶜ))
  res-ex-disjoint {m = m} h h' = cores-dom {m = m} h' (res-dom {m = m} h)

module Corestriction (sp-∈ : spec-∈ B) where

  _|^_ : Map A B → Set B → Map A B
  m |^ X = m |^' sp-∈ {X}

  _∣^_ᶜ : Map A B → Set B → Map A B
  m ∣^ X ᶜ = m |^' sp-¬ (sp-∈ {X})
