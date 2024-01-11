{-# OPTIONS --safe --cubical-compatible #-}
module Interface.HasSubtract where

record HasSubtract (A : Set) : Set where
  infixl 6 _-_
  field _-_ : A → A → A

open HasSubtract ⦃ ... ⦄ public
