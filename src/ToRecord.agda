{-# OPTIONS --safe --cubical-compatible #-}
module ToRecord where

record ToRecord (X : Set) (R : Set) : Set where
  field 
    ⟦_⟧ : X → R
  infix 5 ⟦_⟧

open ToRecord ⦃...⦄ public

open import Data.Product.Nary.NonDependent using (uncurryₙ) public
