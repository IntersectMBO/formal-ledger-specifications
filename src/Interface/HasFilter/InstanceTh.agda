{-# OPTIONS --safe --no-import-sorts #-}
open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set using (Theory)

module Interface.HasFilter.InstanceTh {th : Theory} where

open import Data.Product using (_×_; _,_)
open import Data.List using (List) renaming (filter to filterˡ)
open import Relation.Unary using (Decidable)
open import Axiom.Set.Map th
open import Interface.HasFilter
open Theory th renaming (filter to filterˢ)
private variable A B : Type

instance
  mapFilter : HasFilter (A × B) (Map A B)
  mapFilter = record { predCheck = specProperty; filter = filterᵐ}

  setFilter : HasFilter A (Set A)
  setFilter = record { predCheck = specProperty; filter = filterˢ}
