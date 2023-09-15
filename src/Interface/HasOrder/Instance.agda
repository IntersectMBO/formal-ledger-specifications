{-# OPTIONS --safe #-}

module Interface.HasOrder.Instance where

open import Prelude                  using (_≡_)
open import Interface.HasOrder       using (HasPartialOrder; HasStrictTotalOrder)
open import Data.Integer             using (ℤ) renaming  (_≤_ to _≤ℤ_; _<_ to _<ℤ_)
open import Data.Integer.Properties  using ( ) renaming  (≤-isPartialOrder to ≤ℤ-isPartialOrder)
open import Data.Integer.Properties  using ( ) renaming  (<-isStrictTotalOrder to <ℤ-isStrictTotalOrder)
open import Data.Nat                 using (ℕ) renaming  (_≤_ to _≤ℕ_; _<_ to _<ℕ_)
open import Data.Nat.Properties      using ( ) renaming  (≤-isPartialOrder to ≤ℕ-isPartialOrder)
open import Data.Nat.Properties      using ( ) renaming  (<-isStrictTotalOrder to <ℕ-isStrictTotalOrder)


instance
  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { _≤_ = _≤ℤ_ ; isPartialOrder = ≤ℤ-isPartialOrder }

  ltInt : HasStrictTotalOrder ℤ _≡_
  ltInt = record { _<_ = _<ℤ_ ; isStrictTotalOrder = <ℤ-isStrictTotalOrder }

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { _≤_ = _≤ℕ_ ; isPartialOrder = ≤ℕ-isPartialOrder }

  ltNat : HasStrictTotalOrder ℕ _≡_
  ltNat = record { _<_ = _<ℕ_ ; isStrictTotalOrder = <ℕ-isStrictTotalOrder }
