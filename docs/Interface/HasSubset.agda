{-# OPTIONS --safe #-}

module Interface.HasSubset where

open import Level using (Level; suc)

record HasSubset {a} (A : Set a) : Set (suc a) where
  field _⊆_ : A → A → Set a
  infix 4 _⊆_



open HasSubset ⦃...⦄ public
