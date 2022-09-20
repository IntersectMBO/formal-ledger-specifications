{-# OPTIONS --safe #-}

module Data.FinMap where

import Relation.Nullary.Decidable
open import Algebra using (CommutativeMonoid)
open import Data.FinMap.Core
open import Data.FinSet hiding (∅; map; indexedSum; _∈_; All; all?)
open import Data.List using (List; []; head; map; foldr)
open import Data.Maybe hiding (map)
open import Data.Product using (_×_; _,_; proj₁; proj₂; curry; uncurry)
open import FiniteSubset
open import Function
open import Interface.DecEq
open import Level
open import Relation.Nullary
open import Relation.Nullary.Negation
open import Relation.Unary using (Pred)
open import Utilities.ListProperties using (_SubSetOf_)

open import Data.FinMap.Core using (listOfᵐ; _≡ᵐ_; _∪ᵐ_; _∩ᵐ_; _∩ᵖ_; _∈ᵐ_; filterᵐ) public

FinMap : (K V : Set) → {{DecEq K}} → {{DecEq V}} → Set
FinMap K V {{eq}} {{eq'}} = FiniteMap K V eq eq'

module _ {K V : Set} {{_ : DecEq K}} {{_ : DecEq V}} where

  ∅ : FinMap K V
  ∅ = fs-nojunk []

  _◃_ : FinSet K → FinMap K V → FinMap K V
  set ◃ map = filterᵐ (λ x → proj₁ x ∈? set) map

  chooseM : FinMap K V → Maybe (K × V)
  chooseM = head ∘ listOfᵐ

  lookupM : FinMap K V → K → Maybe V
  lookupM m k = Data.Maybe.map proj₂ $ chooseM $ return k ◃ m

  _⋪_ : FinSet K → FinMap K V → FinMap K V
  set ⋪ map = filterᵐ (λ x → ¬? (proj₁ x ∈? set)) map

  _|^_ : FinMap K V → FinSet V → FinMap K V
  map |^ set = filterᵐ (λ x → proj₂ x ∈? set) map

  _|^'_ : {P : V → Set} → FinMap K V → (∀ a → Dec (P a)) → FinMap K V
  map |^' set = filterᵐ (λ x → set (proj₂ x)) map

  values : FinMap K V → List V
  values m = map proj₂ $ listOfᵐ m

  values' : FinMap K V → FinSet V
  values' = Data.FinSet.fromList ∘ values

  insert : K → V → FinMap K V → FinMap K V
  insert k v m = m ∪ᵐ returnᵐ (k , v)

  dom : FinMap K V → FinSet K
  dom (fs-nojunk els {nd}) = fs-nojunk (map proj₁ els) {nd}

  _⟪$⟫_ : FinMap K V → FinSet K → FinSet V
  m ⟪$⟫ ks = values' (ks ◃ m)

  mapKeys : {K' : Set} → {{_ : DecEq K'}} → (K → K') → FinMap K V → FinMap K' V
  mapKeys f m = for x ∈ m , returnᵐ (Data.Product.map₁ f x)

  fromList' : List (K × V) → FinMap K V
  fromList' xs = fromListᵐ xs

  _⊆ᵐ_ : FinMap K V → FinMap K V → Set
  m ⊆ᵐ m' = (listOfᵐ m) SubSetOf (listOfᵐ m')

  record All {ℓ} (P : Pred (K × V) ℓ) (m : FinMap K V) : Set ℓ where
    field FMAll : Data.FinSet.All P (Data.FinSet.fromList $ listOfᵐ m)

  all? : ∀ {ℓ} → {P : Pred (K × V) ℓ} → Relation.Unary.Decidable P → (m : FinMap K V) → Dec (All P m)
  all? P? m = Relation.Nullary.Decidable.map (mk⇔ (λ x → record { FMAll = x }) (λ where record { FMAll = x } → x)) (Data.FinSet.all? P? (Data.FinSet.fromList $ listOfᵐ m))

module _ {K V : Set} {{_ : DecEq K}} {{_ : DecEq V}} {p} {{M : CommutativeMonoid 0ℓ p}} where
  open CommutativeMonoid M

  indexedSumLᵐ : ((K × V) → Carrier) → List (K × V) → Carrier
  indexedSumLᵐ f l = foldr (λ x → f x ∙_) ε l

  indexedSumᵐ : ((K × V) → Carrier) → FinMap K V → Carrier
  indexedSumᵐ f (fs-nojunk els) = foldr (λ x → f x ∙_) ε els

  indexedSumᵐ' : (V → Carrier) → FinMap K V → Carrier
  indexedSumᵐ' f (fs-nojunk els) = foldr (λ x → f (proj₂ x) ∙_) ε els

  syntax indexedSumᵐ  (λ a → x) m = Σᵐ[ a ← m ] x
  syntax indexedSumᵐ' (λ a → x) m = Σᵐ'[ a ← m ] x
