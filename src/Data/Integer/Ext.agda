{-# OPTIONS --safe #-}

module Data.Integer.Ext where

open import Data.Integer
open import Data.Nat hiding (_≥_)
open import Data.Product
open import Data.Sign
open import Relation.Binary.PropositionalEquality

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

≥0→negPart≡0 : {x : ℤ} → x ≥ 0ℤ → negPart x ≡ 0
≥0→negPart≡0 {+_ n} x≥0 = refl
