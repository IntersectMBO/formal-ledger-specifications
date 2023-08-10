{-# OPTIONS --safe --without-K #-}

module Prelude where

open import Test.GetType

open import Level hiding (lower) renaming (_⊔_ to _⊔ˡ_; suc to sucˡ; zero to zeroˡ) public
open import Function public

open import Data.Bool hiding (_≟_; _≤_; _≤?_; _<_; _<?_) public
open import Data.Empty public
open import Data.List hiding (align; alignWith; fromMaybe; map; zip; zipWith) public
open import Data.Maybe hiding (_>>=_; align; alignWith; ap; fromMaybe; map; zip; zipWith) public
open import Data.Unit hiding (_≟_) public
open import Data.Sum hiding (assocʳ; assocˡ; map; map₁; map₂; reduce; swap) public
open import Data.Product hiding (assocʳ; assocˡ; map; map₁; map₂; swap) public
open import Data.Nat hiding (_≟_; _≤_; _≤?_; _<_; _<?_; _≤ᵇ_; _≡ᵇ_) renaming (_+_ to _+ℕ_) public
open import Data.Integer as ℤ using (ℤ; _⊖_) renaming (_+_ to _+ℤ_) public
open import Data.String using (String; _<+>_) public

open import Relation.Nullary.Negation public
open import Relation.Binary.PropositionalEquality hiding (preorder; setoid; [_]; module ≡-Reasoning) public
