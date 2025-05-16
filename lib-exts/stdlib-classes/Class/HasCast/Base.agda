{-# OPTIONS --safe --cubical-compatible #-}
module stdlib-classes.Class.HasCast.Base where

open import Level using (_⊔_)

record HasCast {a b} (A : Set a) (B : Set b) : Set (a ⊔ b) where
  field
    cast : A → B

open HasCast ⦃...⦄ public
