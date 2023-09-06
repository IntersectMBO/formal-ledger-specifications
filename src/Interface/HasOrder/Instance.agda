{-# OPTIONS --safe #-}

module Interface.HasOrder.Instance where

open import Prelude                  using (_≡_)
open import Interface.HasOrder       using (HasPartialOrder)
open import Data.Integer             using (ℤ) renaming (_≤_ to _≤ℤ_)
open import Data.Integer.Properties  using ( ) renaming (≤-isPartialOrder to ≤ℤ-isPartialOrder)
open import Data.Nat                 using (ℕ) renaming (_≤_ to _≤ℕ_)
open import Data.Nat.Properties      using ( ) renaming (≤-isPartialOrder to ≤ℕ-isPartialOrder)

instance
  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { _≤_ = _≤ℤ_ ; isPartialOrder = ≤ℤ-isPartialOrder }

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { _≤_ = _≤ℕ_ ; isPartialOrder = ≤ℕ-isPartialOrder }


-- (The following no longer works since we've switched the type class from "raw"
-- partial orders to partial orders with properties.)
--
-- open import Prelude                  using (refl)
-- open import Ledger.Prelude           using (isEquivalence)
-- open import Ledger.TokenAlgebra
-- open import Relation.Binary.Structures using (IsPartialOrder)

-- module leqTokenAlgebra (PolicyId : Set)(ta : TokenAlgebra PolicyId)  where
--   open TokenAlgebra ta
--   instance
--     leqTokenAlgebra : HasPartialOrder Value _≡_
--     leqTokenAlgebra = record { _≤_ = _≤ᵗ_ ; isPartialOrder = poTA }
--       where
--       poTA : IsPartialOrder _≡_ _≤ᵗ_
--       Relation.Binary.Structures.IsPreorder.isEquivalence (IsPartialOrder.isPreorder poTA) = isEquivalence
--       Relation.Binary.Structures.IsPreorder.reflexive (IsPartialOrder.isPreorder poTA) refl = {!!}
--       Relation.Binary.Structures.IsPreorder.trans (IsPartialOrder.isPreorder poTA) = {!!}
--       IsPartialOrder.antisym poTA = {!!}
