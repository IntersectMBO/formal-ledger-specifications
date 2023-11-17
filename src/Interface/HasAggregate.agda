{-# OPTIONS --safe --cubical-compatible #-}

module Interface.HasAggregate where

record HasAggregate (A : Set){B : Set} : Set where
  infixl 7 _+_
  field _+_ : A → B → A

open HasAggregate ⦃ ... ⦄ public
