{-# OPTIONS --safe --without-K #-}

open import Level

module Interface.Default where

record Default {a : Level} (A : Set a) : Set a where
  field
    default : A
