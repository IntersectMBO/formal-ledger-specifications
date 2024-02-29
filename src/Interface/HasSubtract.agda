{-# OPTIONS --safe --cubical-compatible #-}
module Interface.HasSubtract where

record HasSubtract (A B : Set) : Set where
  infixl 6 _-_
  field _-_ : A → A → B

open HasSubtract ⦃ ... ⦄ public
