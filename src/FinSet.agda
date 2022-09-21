{-# OPTIONS --safe #-}

open import Relation.Binary hiding (_⇔_)
open import Relation.Binary.Lattice
open import Relation.Binary.PropositionalEquality
open import Relation.Nullary
open import Relation.Nullary.Product
open import Relation.Unary using (Pred)
open import Level

open import Data.Sum using (_⊎_)
open import Data.Product using (_×_; proj₁; _,_)
open import Data.List hiding (filter; sum; map)
import Data.List.Relation.Unary.All
open import Data.List.Instances
open import Data.Bool using (Bool; false)
open import Data.Maybe using (Maybe; just; nothing)
open import Relation.Nullary.Decidable hiding (map)
open import Data.Empty

open import Effect.Functor
open RawFunctor {{...}}

open import Algebra using (CommutativeMonoid)
open import Function

open import FiniteSubset hiding (_∪_; _∩_; fromList)
open import DecEq
open import Utilities.ListProperties hiding (head) renaming (_∈_ to _∈l_)

module FinSet where

FinSet : (A : Set) → {{h : DecEq A}} → Set
FinSet A = FiniteSubSet A _≟_ false

module _ {A : Set} {{h : DecEq A}} where

  elements : (a : FinSet A) → List A
  elements = listOf

  fromList : List A → FinSet A
  fromList l = FiniteSubset.fromList l false

  choose : FinSet A → Maybe A
  choose = head ∘ elements

  filter : {P : A → Set} → (∀ a → Dec (P a)) → FinSet A → FinSet A
  filter P? s = fromList (Data.List.filter P? $ elements s)

  All : ∀ {ℓ} → Pred A ℓ → FinSet A → Set ℓ
  All P s = Data.List.Relation.Unary.All.All P (elements s)

  all? : ∀ {ℓ} → {P : Pred A ℓ} → Relation.Unary.Decidable P → Relation.Unary.Decidable (All P)
  all? P? s = Data.List.Relation.Unary.All.all? P? (elements s)


  infix 5 _∈_
  data _∈_ (a : A) (s : FinSet A) : Set where
       mk∈ : a ∈l elements s → a ∈ s

  decHelp : (a : A) (s : FinSet A) → ¬ a ∈l (elements s) → ¬ a ∈ s
  decHelp a s x (mk∈ x₁) = ⊥-elim (x x₁)

  _∈?_ : Decidable _∈_
  a ∈? s@(fs-nojunk els) with Utilities.ListProperties.eq2in _≟_ a (elements s)
  ... | no ¬p = no (decHelp a s ¬p)
  ... | yes p = yes (mk∈ p)

  _∈ᵇ_ : A → FinSet A → Bool
  a ∈ᵇ s = ⌊ a ∈? s ⌋

  infix 4 _≡ᵉ_
  _≡ᵉ_ : FinSet A → FinSet A → Set
  s ≡ᵉ s' = ∀ a → a ∈ s ⇔ a ∈ s'

  --this probably shouldn't be in finset
  -----------------------------------------------------------------
  _≡ˡ_ : List A → List A → Set
  xs ≡ˡ ys = ∀ a → a ∈l xs ⇔ a ∈l ys

  ≡ˡ-∈ : ∀ {x} {xs ys : List A} → xs ≡ˡ ys → x ∈l xs → x ∈l ys
  ≡ˡ-∈ {x} h = Equivalence.to (h x)

  ≡ˡ-∈' : ∀ {x} {xs ys : List A} → xs ≡ˡ ys → x ∈l ys → x ∈l xs
  ≡ˡ-∈' {x} h = Equivalence.from (h x)

  ----------------------------------------------------------------

  _⊆_ : FinSet A → FinSet A → Set
  s ⊆ s' = ∀ {a} → a ∈ s → a ∈ s'

  subHelp : (a : A) (s s' : FinSet A) → (a ∈ s → a ∈ s') → a ∈l (elements s) → a ∈l (elements s')
  subHelp a s s' f h with f (mk∈ h)
  ... | mk∈ x = x

  _⊆?_ : Decidable _⊆_
  s ⊆? s' with Utilities.ListProperties.subset-dec _≟_ (elements s) (elements s')
  ... | no ¬p = no (λ x → ¬p (λ x₁ → subHelp _ _ _ x x₁))
  ... | yes p = yes λ { (mk∈ x) → mk∈ (p x)}

  _⊆ᵇ_ : FinSet A → FinSet A → Bool
  s ⊆ᵇ s' = ⌊ s ⊆? s' ⌋

  _∪_ : FinSet A → FinSet A → FinSet A
  s ∪ s' = s FiniteSubset.∪ s'

  _∩_ : FinSet A → FinSet A → FinSet A
  s ∩ s' = s FiniteSubset.∩ s'

  ∅ : FinSet A
  ∅ = fromList []

module _ {A : Set} {{h : DecEq A}} {B : Set} {{_ : DecEq B}} where

  map : (A → B) → FinSet A → FinSet B
  map f (fs-nojunk els) = fromList (Data.List.map f els)

module _ {A : Set} {{_ : DecEq A}} {p} {{M : CommutativeMonoid 0ℓ p}} where
  open CommutativeMonoid M
  
  indexedSumL : (A → Carrier) → List A → Carrier
  indexedSumL f l = foldr (λ x → f x ∙_) ε l

  indexedSum : (A → Carrier) → FinSet A → Carrier
  indexedSum f (fs-nojunk els) = foldr (λ x → f x ∙_) ε els

  syntax indexedSum (λ a → x) m = Σ[ a ← m ] x
