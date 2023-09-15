{-# OPTIONS --safe #-}

module Interface.HasOrder.Instance where

open import Prelude                  using (_≡_)

open import Data.Integer             using (ℤ) renaming  ( _≤_           to _≤ℤ_ )
open import Data.Integer.Properties  using ( ) renaming  ( ≤-isPreorder  to ≤ℤ-isPreorder
                                                         ; ≤-antisym     to ≤ℤ-antisym
                                                         ; _≟_           to _≟ℤ_ )
open import Data.Nat                 using (ℕ) renaming  ( _≤_           to _≤ℕ_ )
open import Data.Nat.Properties      using ( ) renaming  ( ≤-isPreorder  to ≤ℕ-isPreorder
                                                         ; ≤-antisym     to ≤ℕ-antisym
                                                         ; _≟_           to _≟ℕ_ )
open import Interface.HasOrder       public


instance
  preoInt : HasPreorder ℤ _≡_
  preoInt = hasPreorderFromNonStrict ℤ _≡_ _≤ℤ_ _≟ℤ_ ≤ℤ-isPreorder

  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { hasPreorder = preoInt; antisym = ≤ℤ-antisym }

  preoNat : HasPreorder ℕ _≡_
  preoNat = hasPreorderFromNonStrict ℕ _≡_ _≤ℕ_ _≟ℕ_ ≤ℕ-isPreorder

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { hasPreorder = preoNat; antisym = ≤ℕ-antisym }
