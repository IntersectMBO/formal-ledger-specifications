{-# OPTIONS --safe #-}

module Interface.HasPartialOrder.Instance where

open import Prelude                    using (_≡_)
open import Interface.HasPartialOrder  using (HasPartialOrder)
open import Data.Integer               using (ℤ) renaming (_≤_ to _≤ℤ_)
open import Data.Integer.Properties    using ( ) renaming (≤-isPartialOrder to ≤ℤ-isPartialOrder)
open import Data.Nat                   using (ℕ) renaming (_≤_ to _≤ℕ_)
open import Data.Nat.Properties        using ( ) renaming (≤-isPartialOrder to ≤ℕ-isPartialOrder)

instance
  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { _≤_ = _≤ℤ_ ; isPartialOrder = ≤ℤ-isPartialOrder }

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { _≤_ = _≤ℕ_ ; isPartialOrder = ≤ℕ-isPartialOrder }

open import Ledger.Epoch using (EpochStructure)

module epochPO (es : EpochStructure) where

  open EpochStructure es

  instance
    poSlot : HasPartialOrder Slot _≡_
    poSlot = record { _≤_ = _≤ˢ_ ; isPartialOrder = ≤ˢ-isPartialOrder }
