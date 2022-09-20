{-# OPTIONS --safe --no-import-sorts #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.Rel (th : Theory) where
open Theory th

open import Prelude hiding (filter)

open import Axiom.Set.Properties th
import Data.Product
open import Data.Product.Properties
open import Interface.DecEq
open import Relation.Unary using () renaming (Decidable to Dec₁)
open import Relation.Nullary.Negation using (¬?)
import Data.List

open Equivalence

Rel : Type → Type → Type
Rel A B = Set (A × B)

private variable A A' B : Type
                 R R' : Rel A B

left-unique : Rel A B → Type
left-unique R = ∀ {a b b'} → (a , b) ∈ R → (a , b') ∈ R → b ≡ b'

⊆-left-unique : R ⊆ R' → left-unique R' → left-unique R
⊆-left-unique R⊆R' h = R⊆R' -⟨ h ⟩- R⊆R' -- on isn't dependent enough

relatedˡ : Rel A B → Set A
relatedˡ = map proj₁

Map : Type → Type → Type
Map A B = Σ (Rel A B) left-unique

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
        open import Data.List.Relation.Unary.AllPairs
        open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
        open import Data.List.Relation.Unary.Any
        import Data.List.Relation.Unary.All as All

        -- TODO: move to stdlib
        AllPairs⇒≡∨R∨Rᵒᵖ : ∀ {A : Type} {R : A → A → Type} {a b} {l : List A} → AllPairs R l → a ∈ˡ l → b ∈ˡ l → a ≡ b ⊎ R a b ⊎ R b a
        AllPairs⇒≡∨R∨Rᵒᵖ [] = λ ()
        AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (here refl) = inj₁ refl
        AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (there b∈l) = inj₂ (inj₁ (All.lookup x b∈l))
        AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (here refl) = inj₂ (inj₂ (All.lookup x a∈l))
        AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (there b∈l) = AllPairs⇒≡∨R∨Rᵒᵖ h a∈l b∈l

dom : Map A B → Set A
dom m = map proj₁ (proj₁ m)

range : Map A B → Set B
range m = map proj₂ (proj₁ m)

module Intersectionᵐ (sp-∈ : spec-∈ (A × B)) where
  open Intersection sp-∈
  open Intersectionᵖ sp-∈

  _∩ᵐ_ : Map A B → Map A B → Map A B
  m ∩ᵐ m' = (proj₁ m ∩ proj₁ m' , ⊆-left-unique ∩-⊆ˡ (proj₂ m))

Disjoint : Set A → Set A → Type
Disjoint X Y = ∀ {a} → a ∈ X → a ∈ Y → ⊥

disj-∪ : (m m' : Map A B) → Disjoint (dom m) (dom m') → Map A B
disj-∪ m m' disj = proj₁ m ∪ proj₁ m' , λ h h' → case from ∈-∪ h , from ∈-∪ h' of λ where
  (inj₁ hm  , inj₁ h'm)  → proj₂ m hm h'm
  (inj₂ hm' , inj₁ h'm)  → ⊥-elim $ disj (to ∈-map (_ , refl , h'm)) (to ∈-map (_ , refl , hm'))
  (inj₁ hm  , inj₂ h'm') → ⊥-elim $ disj (to ∈-map (_ , refl , hm))  (to ∈-map (_ , refl , h'm'))
  (inj₂ hm' , inj₂ h'm') → proj₂ m' hm' h'm'

filterᵐ : {P : A × B → Type} → specProperty P → Map A B → Map A B
filterᵐ sp-P m = filter sp-P (proj₁ m) , ⊆-left-unique filter-⊆ (proj₂ m)

filterᵐ-finite : ∀ {m} {P : A × B → Type}
               → (sp : specProperty P) → Dec₁ P → finite (proj₁ m) → finite (proj₁ $ filterᵐ sp m)
filterᵐ-finite = filter-finite

module Unionᵐ (sp-∈ : spec-∈ A) where

  _∪ᵐˡ_ : Map A B → Map A B → Map A B
  m ∪ᵐˡ m' = disj-∪ m (filterᵐ (sp-∘ (sp-¬ (sp-∈ {X = dom m})) proj₁) m') λ h h' →
    case from ∈-map h ,′ from ∈-map h' of λ where
      ((_ , refl , hx) , (_ , refl , hy)) → proj₁ (to ∈-filter hy) (to ∈-map (_ , refl , hx))

_∣'_ : {P : A → Type} → Map A B → specProperty P → Map A B
m ∣' P? = filterᵐ (sp-∘ P? proj₁) m

_|^'_ : {P : B → Type} → Map A B → specProperty P → Map A B
m |^' P? = filterᵐ (sp-∘ P? proj₂) m

mapKeys : (f : A → A') → Injective _≡_ _≡_ f → Map A B → Map A' B
mapKeys f inj (R , uniq) = map (Data.Product.map₁ f) R , λ h h' → case from ∈-map h , from ∈-map h' of λ where
  (((_ , _) , refl , Ha) , ((_ , _) , eqb , Hb)) → uniq Ha $
    subst (_∈ R) (sym $ ×-≡,≡→≡ $ Data.Product.map₁ inj (×-≡,≡←≡ eqb)) Hb

open import Algebra using (CommutativeMonoid)
open import Data.List.Relation.Unary.Unique.Propositional
open import Interface.DecEq
open import Relation.Binary
open import Data.List.Relation.Binary.Permutation.Propositional
open import Algebra.Properties.CommutativeSemigroup

module _ ⦃ M : CommutativeMonoid 0ℓ 0ℓ ⦄ where
  open CommutativeMonoid M renaming (trans to ≈-trans)
  import Relation.Binary.Reasoning.Setoid as SetoidReasoning
  open SetoidReasoning (CommutativeMonoid.setoid M)
  open import Data.List.Properties using (foldr-++)

  indexedSumL : (A → Carrier) → List A → Carrier
  indexedSumL f = foldr (λ x → f x ∙_) ε

  syntax indexedSumL  (λ a → x) m = Σˡ[ a ← m ] x

  indexedSumL' : (A → Carrier) → Σ (List A) Unique → Carrier
  indexedSumL' f = indexedSumL f ∘ proj₁

  module _ {f : A → Carrier} where
    fold-cong↭ : ∀ {l l' : List A} → l ↭ l' → indexedSumL f l ≈ indexedSumL f l'
    fold-cong↭ refl = begin _ ∎
    fold-cong↭ (prep x h) = ∙-congˡ (fold-cong↭ h)
    fold-cong↭ (swap {xs} {ys} x y h) = begin
      f x ∙ (f y ∙ indexedSumL f xs) ≈⟨ x∙yz≈y∙xz commutativeSemigroup (f x) (f y) (indexedSumL f xs) ⟩
      f y ∙ (f x ∙ indexedSumL f xs) ≈⟨ ∙-congˡ (∙-congˡ (fold-cong↭ h)) ⟩
      f y ∙ (f x ∙ indexedSumL f ys) ∎
    fold-cong↭ (trans {l} {l''} {l'} h h₁) = begin
      indexedSumL f l   ≈⟨ fold-cong↭ h ⟩
      indexedSumL f l'' ≈⟨ fold-cong↭ h₁ ⟩
      indexedSumL f l'  ∎

  indexedSum : ⦃ _ : DecEq A ⦄ → (A → Carrier) → FinSet A → Carrier
  indexedSum f = FactorUnique.factor _≈_ (indexedSumL' f) fold-cong↭

  private
    helper : ∀ m (l : List A) f → foldr (λ x → f x ∙_) m l ≈ indexedSumL f l ∙ m
    helper m [] f = begin m ≈˘⟨ identityˡ m ⟩ ε ∙ m ∎
    helper m (x ∷ l) f = begin
      f x ∙ foldr (λ y → f y ∙_) m l ≈⟨ ∙-congˡ (helper m l f) ⟩
      f x ∙ (indexedSumL f l ∙ m)    ≈˘⟨ assoc _ _ _ ⟩
      f x ∙ indexedSumL f l ∙ m      ∎

  indexedSumL-++ : {l l' : List A} {f : A → Carrier} → indexedSumL f (l ++ l') ≈ indexedSumL f l ∙ indexedSumL f l'
  indexedSumL-++ {l = l} {l'} {f} = begin
    indexedSumL f (l ++ l')                   ≡⟨ foldr-++ (λ x → f x ∙_) ε l l' ⟩
    foldr (λ x → f x ∙_) (indexedSumL f l') l ≈⟨ helper (indexedSumL f l') l f ⟩
    indexedSumL f l ∙ indexedSumL f l'        ∎

  module IndexedSumUnion (sp-∈ : spec-∈ A) ⦃ _ : DecEq A ⦄ where
    open Intersection sp-∈
    open import Data.List.Relation.Unary.Unique.Propositional.Properties

    indexedSum-∪ : ∀ {X Y : Set A} {Xᶠ : finite X} {Yᶠ : finite Y} {f}
      → X ∩ Y ≡ᵉ ∅
      → indexedSum f (X ∪ Y , ∪-preserves-finite Xᶠ Yᶠ) ≈ indexedSum f (X , Xᶠ) ∙ indexedSum f (Y , Yᶠ)
    indexedSum-∪ {X = X} {Y} {Xᶠ} {Yᶠ} {f} disj =
      FactorUnique.factor-∪' _≈_ (indexedSumL' f) fold-cong↭ sp-∈ {λ x y z → z ≈ x ∙ y} {X , Xᶠ} {Y , Yᶠ} disj
        λ {l} {l'} disj' → ≈-trans (fold-cong↭ (dedup-++-↭ disj')) (indexedSumL-++ {l = deduplicate _≟_ l})

  indexedSum-cong : ⦃ _ : DecEq A ⦄ {f : A → Carrier} → indexedSum f Preserves (_≡ᵉ_ on proj₁) ⟶ _≈_
  indexedSum-cong {f = f} {x} {y} = FactorUnique.factor-cong _≈_ (indexedSumL' f) fold-cong↭ {x = x} {y}

  module _ ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ where

    indexedSumᵐ : (A × B → Carrier) → FinMap A B → Carrier
    indexedSumᵐ f (m , _ , h) = indexedSum f (m , h)

    indexedSumᵐ-cong : {f : A × B → Carrier} → indexedSumᵐ f Preserves (_≡ᵉ_ on proj₁) ⟶ _≈_
    indexedSumᵐ-cong {x = x , _ , h} {y , _ , h'} = indexedSum-cong {x = x , h} {y , h'}

    module IndexedSumUnionᵐ (sp-∈ : spec-∈ A) (∈-A-dec : {X : Set A} → Dec₁ (_∈ X)) (sp-∈' : spec-∈ (A × B)) where
      open IndexedSumUnion sp-∈'
      open Intersectionᵐ sp-∈'
      open Unionᵐ sp-∈

      -- TODO
      -- indexedSumᵐ-∪ : ∀ {X Y : Map A B} {Xᶠ : finite (proj₁ X)} {Yᶠ : finite (proj₁ Y)} {f} → proj₁ (X ∩ᵐ Y) ≡ᵉ ∅
      --   → indexedSumᵐ f (toFinMap (X ∪ᵐˡ Y) (∪-preserves-finite Xᶠ (filterᵐ-finite {m = Y} (sp-∘ (sp-¬ sp-∈) proj₁) (¬? ∘ ∈-A-dec ∘ proj₁) Yᶠ))) ≈ indexedSumᵐ f (toFinMap X Xᶠ) ∙ indexedSumᵐ f (toFinMap Y Yᶠ)
      -- indexedSumᵐ-∪ {X = X , hX} {Y = Y , hY} {Xᶠ} {Yᶠ} {f = f} disj = ≈-trans
      --   (indexedSum-cong {A × B} {f} {x = proj₁ ((X , hX) ∪ᵐˡ (Y , hY)) , proj₁ Xᶠ ++ proj₁ (filterᵐ-finite (sp-∘ (sp-¬ sp-∈) proj₁) (¬? ∘ ∈-A-dec ∘ proj₁) Yᶠ) , {!!}} {X ∪ Y , proj₁ Xᶠ ++ proj₁ Yᶠ , {!!}} {!!})
      --   (indexedSum-∪ {X = X} {Y} {Xᶠ} {Yᶠ} disj)

    indexedSumᵐ' : (B → Carrier) → FinMap A B → Carrier
    indexedSumᵐ' f m = indexedSumᵐ (f ∘ proj₂) m

    syntax indexedSumᵐ  (λ a → x) m = Σᵐ[ a ← m ] x
    syntax indexedSumᵐ' (λ a → x) m = Σᵐ'[ a ← m ] x


module Restriction (sp-∈ : spec-∈ A) where

  _∣_ : Map A B → Set A → Map A B
  m ∣ X = m ∣' sp-∈ {X}

  _∣_ᶜ : Map A B → Set A → Map A B
  m ∣ X ᶜ = m ∣' sp-¬ (sp-∈ {X})

  _⟪$⟫_ : Map A B → Set A → Set B
  m ⟪$⟫ X = range (m ∣ X)

module Corestriction (sp-∈ : spec-∈ B) where

  _|^_ : Map A B → Set B → Map A B
  m |^ X = m |^' sp-∈ {X}

  _∣^_ᶜ : Map A B → Set B → Map A B
  m ∣^ X ᶜ = m |^' sp-¬ (sp-∈ {X})
