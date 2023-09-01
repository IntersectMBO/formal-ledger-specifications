{-# OPTIONS --safe #-}

module Interface.HasRawPartialOrder where

open import Level                       using (_⊔_ ; suc)
open import Relation.Binary             using (Rel)

-- A "raw" partial order is just a relation that we expect to play the role of
-- a partial order, but does not come with a proof that the relation satisfies
-- any of the three properties required to be a partial order.
record HasRawPartialOrder {a ℓ} (A : Set a) : Set (a ⊔ suc ℓ) where
  infix 4 _≤_
  field _≤_ : Rel A ℓ

open HasRawPartialOrder ⦃ ... ⦄ public
