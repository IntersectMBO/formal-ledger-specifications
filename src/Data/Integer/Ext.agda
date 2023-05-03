{-# OPTIONS --safe #-}

module Data.Integer.Ext where

open import Data.Integer using (ℤ ; sign ; ∣_∣)
open import Data.Nat using (ℕ)
open import Data.Product using (_×_ ; _,_)
open import Data.Sign using (Sign)

ℤtoSignedℕ : ℤ → Sign × ℕ
ℤtoSignedℕ x = (sign x , ∣ x ∣)

posPart : ℤ → ℕ
posPart x with ℤtoSignedℕ x
... | (Sign.+ , x) = x
... | _            = 0

negPart : ℤ → ℕ
negPart x with ℤtoSignedℕ x
... | (Sign.- , x) = x
... | _            = 0
