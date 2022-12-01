{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.Map (th : Theory {lzero}) where
open Theory th
open import Axiom.Set.Rel th hiding (_∣'_; _∣^'_)
open import Axiom.Set.Properties th

open import Prelude hiding (filter)

import Data.Product
import Data.Sum
open import Data.List.Ext.Properties
open import Data.Product.Properties
open import Interface.DecEq
open import Relation.Unary using () renaming (Decidable to Dec₁)

open Equivalence

open import Tactic.AnyOf
open import Tactic.Defaults

-- Because of missing macro hygiene, we have to copy&paste this. https://github.com/agda/agda/issues/3819
private macro
  ∈⇒P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ [])
  P⇒∈ = anyOfⁿᵗ (quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])
  ∈⇔P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])

private variable A A' B B' : Type
                 R R' : Rel A B
                 X Y : Set A

left-unique : Rel A B → Type
left-unique R = ∀ {a b b'} → (a , b) ∈ R → (a , b') ∈ R → b ≡ b'

record IsLeftUnique (R : Rel A B) : Type where
  field isLeftUnique : left-unique R

instance
  ∅-left-unique : IsLeftUnique {A = A} {B = B} ∅
  ∅-left-unique .IsLeftUnique.isLeftUnique h h' = ⊥-elim $ ∉-∅ h

⊆-left-unique : R ⊆ R' → left-unique R' → left-unique R
⊆-left-unique R⊆R' h = R⊆R' -⟨ h ⟩- R⊆R' -- on isn't dependent enough

Map : Type → Type → Type
Map A B = Σ (Rel A B) left-unique

private variable m m' : Map A B

_ˢ : Map A B → Rel A B
_ˢ = proj₁

_ᵐ : (R : Rel A B) → ⦃ IsLeftUnique R ⦄ → Map A B
_ᵐ R ⦃ record { isLeftUnique = h } ⦄ = R , h

⊆-map : (f : Rel A B → Rel A B) → (∀ {R} → f R ⊆ R) → Map A B → Map A B
⊆-map f H m = f (m ˢ) , ⊆-left-unique H (proj₂ m)

ˢ-left-unique : IsLeftUnique (m ˢ)
ˢ-left-unique {m = m} = record { isLeftUnique = proj₂ m }

instance
  _ = ˢ-left-unique

∅ᵐ : Map A B
∅ᵐ = _ᵐ ∅ ⦃ ∅-left-unique ⦄

fromListᵐ : ⦃ _ : DecEq A ⦄ → List (A × B) → Map A B
fromListᵐ l = fromList (deduplicate (λ x y → proj₁ x ≟ proj₁ y) l) ,
  ((λ { (inj₁ refl) → refl ; (inj₂ (inj₁ x)) → ⊥-elim (x refl) ; (inj₂ (inj₂ x)) → ⊥-elim (x refl) }) ∘₂
  (∈⇒P -⟨ AllPairs⇒≡∨R∨Rᵒᵖ (deduplicate-! (On.decSetoid (Prelude.decSetoid _≟_) proj₁) l) ⟩- ∈⇒P))
  where open import Data.List.Relation.Unary.Unique.DecSetoid.Properties
        open import Relation.Binary.Construct.On as On

FinMap : Type → Type → Type
FinMap A B = Σ (Rel A B) (λ R → left-unique R × finite R)

toFinMap : (m : Map A B) → finite (m ˢ) → FinMap A B
toFinMap (m , h) fin = m , h , fin

toMap : FinMap A B → Map A B
toMap (m , l , _) = m , l

module Intersectionᵐ (sp-∈ : spec-∈ (A × B)) where
  open Intersection sp-∈
  open Intersectionᵖ sp-∈

  _∩ᵐ_ : Map A B → Map A B → Map A B
  m ∩ᵐ m' = (m ˢ ∩ m' ˢ , ⊆-left-unique ∩-⊆ˡ (proj₂ m))

disj-∪ : (m m' : Map A B) → disjoint (dom (m ˢ)) (dom (m' ˢ)) → Map A B
disj-∪ m m' disj = m ˢ ∪ m' ˢ , λ h h' → case ∈⇔P h , ∈⇔P h' of λ where
  (inj₁ hm  , inj₁ h'm)  → proj₂ m hm h'm
  (inj₂ hm' , inj₁ h'm)  → ⊥-elim $ disj (∈-map⁺'' h'm) (∈-map⁺'' hm')
  (inj₁ hm  , inj₂ h'm') → ⊥-elim $ disj (∈-map⁺'' hm)  (∈-map⁺'' h'm')
  (inj₂ hm' , inj₂ h'm') → proj₂ m' hm' h'm'

filterᵐ : {P : A × B → Type} → specProperty P → Map A B → Map A B
filterᵐ sp-P m = filter sp-P (m ˢ) , ⊆-left-unique filter-⊆ (proj₂ m)

filterᵐ-finite : {P : A × B → Type} → (sp : specProperty P) → Dec₁ P → finite (m ˢ) → finite (filterᵐ sp m ˢ)
filterᵐ-finite = filter-finite

singletonᵐ : A → B → Map A B
singletonᵐ a b = (singleton (a , b) , (to ∈-singleton -⟨ (λ where refl refl → refl) ⟩- to ∈-singleton))

module Unionᵐ (sp-∈ : spec-∈ A) where

  _∪ᵐˡ'_ : Rel A B → Rel A B → Rel A B
  m ∪ᵐˡ' m' = m ∪ filter (sp-∘ (sp-¬ (sp-∈ {dom m})) proj₁) m'

  _∪ᵐˡ_ : Map A B → Map A B → Map A B
  m ∪ᵐˡ m' = disj-∪ m (filterᵐ (sp-∘ (sp-¬ sp-∈) proj₁) m')
      (∈⇔P -⟨ (λ where x (_ , refl , hy) → proj₁ (∈⇔P hy) (∈⇔P x)) ⟩- ∈⇔P)

  disjoint-∪ᵐˡ-∪ : (H : disjoint (dom R) (dom R')) → R ∪ᵐˡ' R' ≡ᵉ R ∪ R'
  disjoint-∪ᵐˡ-∪ disj = from ≡ᵉ⇔≡ᵉ' λ _ → mk⇔
    (∈-∪⁺ ∘′ Data.Sum.map₂ (proj₂ ∘′ ∈⇔P) ∘′ ∈⇔P)
    (∈⇔P ∘′ Data.Sum.map₂ (to ∈-filter ∘′ (λ h → (flip disj (∈-map⁺'' h)) , h)) ∘ ∈⇔P)

  insert : Map A B → A → B → Map A B
  insert m a b = singletonᵐ a b ∪ᵐˡ m

mapˡ-uniq : {f : A → A'} → Injective _≡_ _≡_ f → left-unique R → left-unique (mapˡ f R)
mapˡ-uniq inj uniq = λ h h' → case ∈⇔P h ,′ ∈⇔P h' of λ where
  ((_ , refl , Ha) , (_ , eqb , Hb)) → uniq Ha $ subst _ (sym $ ×-≡,≡→≡ $ Data.Product.map₁ inj (×-≡,≡←≡ eqb)) Hb

mapʳ-uniq : {f : B → B'} → left-unique R → left-unique (mapʳ f R)
mapʳ-uniq uniq = λ h h' → case ∈⇔P h ,′ ∈⇔P h' of λ where
  ((_ , refl , Ha) , (_ , refl , Hb)) → cong _ $ uniq Ha Hb

mapKeys : (f : A → A') → Injective _≡_ _≡_ f → Map A B → Map A' B
mapKeys f inj (R , uniq) = mapˡ f R , mapˡ-uniq inj uniq

mapValues : (B → B') → Map A B → Map A B'
mapValues f (R , uniq) = mapʳ f R , mapʳ-uniq uniq

_∣'_ : {P : A → Type} → Map A B → specProperty P → Map A B
m ∣' P? = filterᵐ (sp-∘ P? proj₁) m

_∣^'_ : {P : B → Type} → Map A B → specProperty P → Map A B
m ∣^' P? = filterᵐ (sp-∘ P? proj₂) m

module Restrictionᵐ (sp-∈ : spec-∈ A) where
  private module R = Restriction sp-∈
  open Unionᵐ sp-∈

  _∣_ : Map A B → Set A → Map A B
  m ∣ X = ⊆-map (R._∣ X) R.res-⊆ m

  _∣_ᶜ : Map A B → Set A → Map A B
  m ∣ X ᶜ = ⊆-map (R._∣ X ᶜ) R.ex-⊆ m

  -- map only value at a
  mapSingleValue : (B → B) → Map A B → A → Map A B
  mapSingleValue f m a = mapValues f (m ∣ singleton a) ∪ᵐˡ m

module Corestrictionᵐ (sp-∈ : spec-∈ B) where
  private module R = Corestriction sp-∈

  _∣^_ : Map A B → Set B → Map A B
  m ∣^ X = ⊆-map (R._∣^ X) R.cores-⊆ m

  _∣^_ᶜ : Map A B → Set B → Map A B
  m ∣^ X ᶜ = ⊆-map (R._∣^ X ᶜ) R.coex-⊆ m
