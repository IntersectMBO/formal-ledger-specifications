{-# OPTIONS --safe #-}

open import Relation.Binary hiding (_⇔_)
open import Relation.Binary.Lattice
open import Relation.Binary.PropositionalEquality
open import Relation.Nullary
open import Relation.Nullary.Product
open import Level

open import Data.Sum using (_⊎_)
open import Data.Product using (_×_; proj₁; _,_)
open import Data.List hiding (filter; sum; map)
open import Data.List.Instances
open import Data.Bool using (Bool; false)
open import Data.Maybe using (Maybe; just; nothing)
open import Relation.Nullary.Decidable hiding (map)
open import Data.Empty

open import Category.Functor
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

  infix 5 _∈_
  _∈_ : A → FinSet A → Set
  a ∈ s = a ∈l elements s

  _∈?_ : Decidable _∈_
  a ∈? s = Utilities.ListProperties.eq2in _≟_ a (elements s) 

  _∈ᵇ_ : A → FinSet A → Bool
  a ∈ᵇ s = ⌊ a ∈? s ⌋

  infix 4 _≡ᵉ_
  _≡ᵉ_ : FinSet A → FinSet A → Set
  s ≡ᵉ s' = ∀ a → a ∈ s ⇔ a ∈ s'

  _⊆_ : FinSet A → FinSet A → Set
  s ⊆ s' = (elements s) Utilities.ListProperties.SubSetOf (elements s')

  _⊆?_ : Decidable _⊆_
  s ⊆? s' = Utilities.ListProperties.subset-dec _≟_ (elements s) (elements s')

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
