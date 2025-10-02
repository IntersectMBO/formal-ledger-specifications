module Test where

open import Agda.Builtin.Bool

record P (X Y : Set) : Set where
  constructor ⟦_,_⟧
  field
    l : X
    r : Y

p : P (P Bool Bool) Bool
p = ⟦(⟦ false , true ⟧) false ⟧
