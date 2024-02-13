{-# OPTIONS --safe #-}

open import Agda.Primitive using () renaming (Set to Type)
open import Axiom.Set using (Theory)

module Interface.HasFilter  where

open Theory hiding (filter)

record HasFilter (C D : Type) : Type₁ where
  field
    predCheck : (C → Type) → Type
    filter : {P : C → Type} → predCheck P → D → D


open HasFilter ⦃ ... ⦄ public
