{-# OPTIONS --safe #-}

module Data.Integer.Ext where

open import Data.Integer as ℤ
open import Data.Integer.Properties using (+-cancelˡ-⊖)
open import Data.Nat as ℕ
open import Data.Product
open import Data.Sign
open import Relation.Binary.PropositionalEquality as Eq
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

≥0→negPart≡0 : {x : ℤ} → x ℤ.≥ 0ℤ → negPart x ≡ 0
≥0→negPart≡0 {ℤ.+_ n} x≥0 = refl

x≤y⇒0≤y⊖x : ∀ {x y : ℕ} → x ℕ.≤ y → 0ℤ ℤ.≤ y ⊖ x
x≤y⇒0≤y⊖x {.zero} z≤n = +≤+ z≤n
x≤y⇒0≤y⊖x {.(ℕ.suc x)} (s≤s {x} x≤y) = subst (λ x → 0ℤ ℤ.≤ x)
                                             (sym (+-cancelˡ-⊖ 1 _ x))
                                             (x≤y⇒0≤y⊖x x≤y)
