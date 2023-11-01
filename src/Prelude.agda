{-# OPTIONS --safe --without-K #-}

module Prelude where

open import Test.GetType

open import Level public
  hiding (lower)
  renaming (_⊔_ to _⊔ˡ_; suc to sucˡ; zero to zeroˡ)
open import Function public

open import Data.Bool public
  hiding (_≟_; _≤_; _≤?_; _<_; _<?_)
open import Data.Empty public
open import Data.List public
  hiding (align; alignWith; fromMaybe; map; zip; zipWith)
open import Data.List.Membership.Propositional public
  using () renaming (_∈_ to _∈ˡ_; _∉_ to _∉ˡ_)
open import Data.Maybe public
  hiding (_>>=_; align; alignWith; ap; fromMaybe; map; zip; zipWith)
open import Data.Unit public
  hiding (_≟_)
open import Data.Sum public
  hiding (assocʳ; assocˡ; map; map₁; map₂; reduce; swap)
open import Data.Product public
  hiding (assocʳ; assocˡ; map; map₁; map₂; map₂′; swap)
open import Data.Nat public
  hiding (_≟_; _≤_; _≤?_; _<_; _<?_; _≤ᵇ_; _≡ᵇ_)
  renaming (_+_ to _+ℕ_)
open import Data.Integer as ℤ public
  using (ℤ; _⊖_)
  renaming (_+_ to _+ℤ_)
open import Data.String public
  using (String; _<+>_)

open import Relation.Nullary public
open import Relation.Nullary.Negation public
open import Relation.Nullary.Decidable public
  using (Dec; yes; no; dec-yes; dec-no; ⌊_⌋; ¬?; toWitness; fromWitness)
open import Relation.Unary public
  using (Pred) renaming (Decidable to Decidable¹)
open import Relation.Binary public
  using () renaming (Decidable to Decidable²)
open import Relation.Binary.PropositionalEquality public
  hiding (preorder; isPreorder; setoid; [_]; module ≡-Reasoning)
