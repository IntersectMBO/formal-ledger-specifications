{-# OPTIONS --safe --no-import-sorts #-}
open import Agda.Primitive renaming (Set to Type)

module Interface.HasFilter.Instance where

open import Data.List using (List) renaming (filter to filterˡ)
open import Relation.Unary using (Decidable)
open import Interface.HasFilter
private variable A B : Type

instance
  listFilter : HasFilter A (List A)
  listFilter = record { predCheck = Decidable; filter = filterˡ}
