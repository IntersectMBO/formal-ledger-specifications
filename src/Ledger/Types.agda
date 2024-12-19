{-# OPTIONS --safe #-}

module Ledger.Types where

open import Ledger.Prelude

record TypesStructure : Type₁ where
  field P1Script     : Type
        PlutusScript : Type

  Script = P1Script ⊎ PlutusScript
