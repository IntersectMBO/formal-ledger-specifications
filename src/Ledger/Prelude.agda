{-# OPTIONS --safe #-}

module Ledger.Prelude where

open import Prelude public

open import Interface.ComputationalRelation public
open import Interface.DecEq public
open import Data.FinMap renaming (FinMap to _↛_; All to ∀ᵐ; all? to allᵐ?; ∅ to ∅ᵐ) public
open import Data.FinSet renaming (FinSet to ℙ_; All to ∀ˢ; all? to allˢ?; filter to filterˢ; map to mapˢ) public
open import Relation.Nullary public

open Computational public
