{-# OPTIONS --safe #-}

module Interface.HasEmptySet where

record HasEmptySet (A : Set) : Set where
  field
    ∅ : A

open HasEmptySet ⦃...⦄ public
