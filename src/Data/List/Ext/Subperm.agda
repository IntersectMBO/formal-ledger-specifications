{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm {a}{A : Set a} where

open import Data.List using (List; _∷_; [])
open import Data.List.Membership.Propositional using (_∈_)
open import Relation.Binary.Core using (Rel)
open import Relation.Unary using (Pred)
open import Function using (_⇔_; mk⇔; id)

data Subperm : Rel (List A) a where
  []    : Subperm [] []
  loose : ∀ {xs ys y} → Subperm xs ys → Subperm xs (y ∷ ys)
  tight : ∀ {x xs ys} → x ∈ ys → Subperm xs ys → Subperm (x ∷ xs) ys

Subperms : List A → Pred (List A) a
Subperms l = λ x → Subperm x l

-- x ∈ Subperms l iff Subperm x l
∈-Subperms : {l : List A}{xss : List (List A)}{x : List A} → Subperms l x ⇔ Subperm x l
∈-Subperms = mk⇔ id id
