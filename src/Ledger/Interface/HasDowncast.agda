{-# OPTIONS --safe #-}

module Ledger.Interface.HasDowncast where
open import Prelude
open import Ledger.Prelude

record HasDowncast {a b} (A : Set a) (B : Set b) : Type (a ⊔ˡ b) where
  field ∣_∣ : A → B

open HasDowncast ⦃...⦄ public
