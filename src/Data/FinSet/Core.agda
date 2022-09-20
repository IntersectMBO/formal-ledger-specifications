{-# OPTIONS --safe #-}

module Data.FinSet.Core where

open import Data.Bool hiding (_≟_)
open import Data.Empty
open import Data.List
open import Data.Product
open import FiniteSubset hiding (_∪_; _∩_)
open import Function hiding (_⇔_)
open import Interface.DecEq
open import Relation.Binary.PropositionalEquality
open import Relation.Nullary
open import Utilities.ListMonad hiding (return)
open import Utilities.ListProperties renaming (_∈_ to _∈l_)
open import Utilities.ListsAddition

private variable
  X Y : Set
  b1 b2 : Bool

set-monad-ht : {{_ : DecEq X}} {{_ : DecEq Y}}
 → (e : Y)(xs : FiniteSubSet X _≟_ b1)(f : X → FiniteSubSet Y _≟_ b2) → (x : X) (b : Bool)
 → x ∈l listOf xs → e ∈l listOf (f x) → e ∈l (listOf (bind xs f b))
set-monad-ht e xs f x false h h' =
  remDupSound (eq2in _≟_) e ((listOf xs) >>= (λ x → listOf (f x))) (list-monad-ht e (listOf xs) (listOf ∘ f) x h h')
set-monad-ht e xs f x true h h' = list-monad-ht e (listOf xs) (listOf ∘ f) x h h'

set-monad-th : {{_ : DecEq X}} {{_ : DecEq Y}}
 → (e : Y)(xs : FiniteSubSet X _≟_ b1)(f : X → FiniteSubSet Y _≟_ b2) (b : Bool)
 → e ∈l listOf (bind xs f b) → Σ[ x ∈ X ] x ∈l listOf xs × e ∈l listOf (f x)
set-monad-th e xs f false h =
  list-monad-th e (listOf xs) (listOf ∘ f) (remDupComplete (eq2in _≟_) e ((listOf xs) >>= (λ x → listOf (f x))) h)
set-monad-th e xs f true h = list-monad-th e (listOf xs) (listOf ∘ f) h

∈fromList→∈l : {{_ : DecEq X}} (x : X) (l : List X) (b : Bool) → x ∈l listOf {eq = _≟_} (fromList l b) → x ∈l l
∈fromList→∈l x l false h = remDupComplete (eq2in _≟_) x l h
∈fromList→∈l x l true h = h

∈l→∈fromList : {{_ : DecEq X}} (x : X) (l : List X) (b : Bool) → x ∈l l → x ∈l listOf {eq = _≟_} (fromList l b)
∈l→∈fromList x l false h = remDupSound (eq2in _≟_) x l h
∈l→∈fromList x l true h = h

remDup-NoDup : {l : List X} {{_ : DecEq X}} → NoDupInd l → remDup (eq2in _≟_) l ≡ l
remDup-NoDup [] = refl
remDup-NoDup {_} {x ∷ xs} (hx ∷ hs) with eq2in _≟_ x (remDup (eq2in _≟_) xs)
... | yes p = ⊥-elim $ All¬⇒¬Any hx (remDupComplete (eq2in _≟_) x xs p)
... | no _ rewrite remDup-NoDup hs = refl

remDup-NoDup' : {l : List X} {{_ : DecEq X}} → NoDup l → remDup (eq2in _≟_) l ≡ l
remDup-NoDup' h = remDup-NoDup (NoDupInd-corr2 _ h)
