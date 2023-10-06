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
  preoInt = hasPreorderFromNonStrict ℤ _≡_ ℤ._≤_ IntProp.≤-isPreorder IntProp._≟_

  leqInt : HasPartialOrder ℤ _≡_
  leqInt = record { hasPreorder = preoInt ; ≤-antisym = IntProp.≤-antisym }

  DecLeqInt : HasDecPartialOrder ℤ _≡_
  DecLeqInt = record { hasPartialOrder = leqInt ; _≤?_ = ℤ._≤?_ }

  preoNat : HasPreorder ℕ _≡_
  preoNat = hasPreorderFromNonStrict ℕ _≡_ ℕ._≤_ NatProp.≤-isPreorder NatProp._≟_

  leqNat : HasPartialOrder ℕ _≡_
  leqNat = record { hasPreorder = preoNat ; ≤-antisym = NatProp.≤-antisym }

  DecLeqNat : HasDecPartialOrder ℕ _≡_
  DecLeqNat = record { hasPartialOrder = leqNat ; _≤?_ = ℕ._≤?_ }
