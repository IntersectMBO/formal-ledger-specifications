{-# OPTIONS --safe #-}

module Interface.HasOrder.Instance where

open import Prelude            using (_≡_)
open import Data.Integer as ℤ  using (ℤ)
open import Data.Nat as ℕ      using (ℕ)
open import Interface.HasOrder

import Data.Integer.Properties as IntProp
import Data.Nat.Properties as NatProp

instance
  preoInt : HasPreorder ℤ _≡_
  preoInt = record { _≤_ = ℤ._≤_; isPreorder = IntProp.≤-isPreorder }

  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { hasPreorder = preoInt; antisym = IntProp.≤-antisym }

  DecLeqInt : HasDecPartialOrder ℤ _≡_
  DecLeqInt = record { hasPartialOrder = leqInt ; _≤?_ = ℤ._≤?_ }

  preoNat : HasPreorder ℕ _≡_
  preoNat = record { _≤_ = ℕ._≤_; isPreorder = NatProp.≤-isPreorder }

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { hasPreorder = preoNat; antisym = NatProp.≤-antisym }

  DecLeqNat : HasDecPartialOrder ℕ _≡_
  DecLeqNat = record { hasPartialOrder = leqNat ; _≤?_ = ℕ._≤?_ }
