{-# OPTIONS --safe #-}

module Interface.HasStrictTotalOrder.Instance where

open import Relation.Binary.PropositionalEquality using (_≡_)
open import Data.Nat                 using (ℕ) renaming (_<_ to _<ℕ_)
open import Data.Nat.Properties      using ( ) renaming (<-isStrictTotalOrder to <ℕ-isStrictTotalOrder)
open import Data.Integer             using (ℤ) renaming (_<_ to _<ℤ_)
open import Data.Integer.Properties  using ( ) renaming (<-isStrictTotalOrder to <ℤ-isStrictTotalOrder)

open import Interface.HasStrictTotalOrder

instance
  stoℕ : HasStrictTotalOrder ℕ _≡_
  stoℕ = record { _<_ = _<ℕ_ ; isStrictTotalOrder = <ℕ-isStrictTotalOrder }

  stoℤ : HasStrictTotalOrder ℤ _≡_
  stoℤ = record { _<_ = _<ℤ_ ; isStrictTotalOrder = <ℤ-isStrictTotalOrder }

open import Ledger.Epoch using (EpochStructure)

module epochSTO (es : EpochStructure) where

  open EpochStructure es

  instance
    spoSlot : HasStrictTotalOrder Slot _≡_
    spoSlot = record { _<_ = _<ˢ_ ; isStrictTotalOrder = Slot-STO }
