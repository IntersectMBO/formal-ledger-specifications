{-# OPTIONS --safe #-}

open import Axiom.Set using (Theory)

module Interface.HasEmptyMap (th : Theory) where

open import Axiom.Set.Map th using (Map)

record HasEmptyMap (A B : Set) : Set where
  field
    ∅ : Map A B

