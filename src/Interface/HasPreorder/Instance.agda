{-# OPTIONS --safe #-}

module Interface.HasPreorder.Instance where

open import Data.Nat                               using (ℕ) renaming (_≤_ to _≤ℕ_)
open import Data.Nat.Properties                    using ( ) renaming (≤-isPreorder to ≤ℕ-isPreorder)
open import Data.Integer                           using (ℤ) renaming (_≤_ to _≤ℤ_)
open import Data.Integer.Properties                using ( ) renaming (≤-isPreorder to ≤ℤ-isPreorder)
open import Relation.Binary.PropositionalEquality  using (_≡_)

open import Interface.HasPreorder

instance
  preoℕ : HasPreorder ℕ _≡_
  preoℕ = record { _≤_ = _≤ℕ_ ; isPreorder = ≤ℕ-isPreorder }

  preoℤ : HasPreorder ℤ _≡_
  preoℤ = record { _≤_ = _≤ℤ_ ; isPreorder = ≤ℤ-isPreorder }

-- open import Ledger.Epoch using (EpochStructure)

-- module epochPreorder (es : EpochStructure) where

--   open EpochStructure es

--   instance
--     preoSlot : HasPreorder Slot _≡_
--     preoSlot = record { _≤_ = _≤ˢ_ ; isPreorder = ≤ˢ-isPreorder }

--     preoEpoch : HasPreorder Epoch _≡_
--     preoEpoch = record { _≤_ = _≤ᵉ_ ; isPreorder = ≤ᵉ-isPreorder }
