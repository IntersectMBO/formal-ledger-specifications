{-# OPTIONS --safe #-}

open import Data.Unit.Polymorphic
open import Level

module Interface.MonadLog where

private
  variable
    e f : Level

record MonadLog (L : Set e) (M : Set f → Set f) : Set (e ⊔ suc f) where
  field
    log : L → M ⊤
