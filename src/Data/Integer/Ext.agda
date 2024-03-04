{-# OPTIONS --safe #-}

module Data.Integer.Ext where

open import Data.Integer using (ℤ; 0ℤ; _≤_; _≥_; +_; ∣_∣; sign; _⊖_; +≤+)
open import Data.Integer.Properties using (+-cancelˡ-⊖)
open import Data.Nat as ℕ using (ℕ; z≤n; s≤s; suc)
open import Data.Product using (_,_; _×_)
open import Data.Sign using (Sign)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; subst)

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

x≤y⇒0≤y⊖x : ∀ {x y : ℕ} → x ℕ.≤ y → 0ℤ ≤ y ⊖ x
x≤y⇒0≤y⊖x {.0} z≤n = +≤+ z≤n
x≤y⇒0≤y⊖x {.(suc x)} (s≤s {x} x≤y) = subst (λ x → 0ℤ ≤ x)
                                           (sym (+-cancelˡ-⊖ 1 _ x))
                                           (x≤y⇒0≤y⊖x x≤y)
