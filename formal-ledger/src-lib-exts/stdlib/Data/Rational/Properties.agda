{-# OPTIONS --safe #-}
module stdlib.Data.Rational.Properties where

open import Data.Integer using (ℤ; _/ℕ_; +≤+)
import      Data.Integer as ℤ
open import Data.Integer.DivMod using (div-pos-is-/ℕ; 0≤n⇒0≤n/ℕd)
open import Data.Integer.Properties using (module ≤-Reasoning; *-identityʳ; *-zeroˡ)
open import Data.Nat using (ℕ; z≤n)
open import Data.Rational
open import Data.Rational.Properties renaming (module ≤-Reasoning to ≤ℚ-Reasoning)
                                     using (*-monoˡ-≤-nonNeg; *-zeroʳ; 1/pos⇒pos; nonNeg∧nonZero⇒pos;
                                           nonNeg*nonNeg⇒nonNeg; pos⇒nonNeg; nonNegative⁻¹)
open import Data.Unit.Base using (⊤)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym)

-- Natural number literals
open import Agda.Builtin.FromNat
import      Data.Integer.Literals as ℤ
import      Data.Rational.Literals as ℚ
open import Data.Rational.Literals using (fromℤ)
instance Number-ℤ = ℤ.number
instance Number-ℚ = ℚ.number
open Number ℚ.number using () renaming (fromNat to fromℕ)

-- Properties of 'floor'

-- 'floor' is defined such that it typically does not normalize,
-- but we can use its definition as a propositional equality.
floor-def : ∀ (x : ℚ) → floor x ≡ ↥ x ℤ./ ↧ x
floor-def x@record{} = refl

-- A non-negative rational number has a non-negative numerator.
0≤⇒0≤numerator : ∀ (x : ℚ) → 0 ≤ x → 0 ℤ.≤ ↥ x
0≤⇒0≤numerator x 0≤x =
  begin
    0         ≡⟨ sym (*-zeroˡ (↧ x)) ⟩
    0 ℤ.* ↧ x ≤⟨ drop-*≤* 0≤x ⟩
    ↥ x ℤ.* 1 ≡⟨ *-identityʳ _ ⟩
    ↥ x       ∎
  where open ≤-Reasoning

-- The 'floor' of a non-negative number is again non-negative.
0≤⇒0≤floor : ∀ (x : ℚ) → 0 ≤ x → 0 ℤ.≤ floor x
0≤⇒0≤floor x 0≤x =
  begin
    0             ≤⟨ 0≤n⇒0≤n/ℕd _ _ (0≤⇒0≤numerator x 0≤x) ⟩
    (↥ x /ℕ ↧ₙ x) ≡⟨ sym (div-pos-is-/ℕ (↥ x) (↧ₙ x)) ⟩
    (↥ x ℤ./ ↧ x) ≡⟨ sym (floor-def x) ⟩
    floor x       ∎
  where open ≤-Reasoning

-- Properties related to non-negativity

-- Any non-negative integer is a non-negative rational number.
fromℤ-0≤ : ∀ (i : ℤ) → 0 ℤ.≤ i → 0 ≤ fromℤ i
fromℤ-0≤ i 0≤i = *≤* (begin
    0 ℤ.* i ≡⟨ sym (*-zeroˡ i) ⟩
    0       ≤⟨ 0≤i ⟩
    i       ≡⟨ sym (*-identityʳ i) ⟩
    i ℤ.* 1 ∎)
  where open ≤-Reasoning

-- Any natural number is a non-negative rational number.
fromℕ-0≤ : ∀ (n : ℕ) → 0 ≤ fromℕ n
fromℕ-0≤ n = fromℤ-0≤ (ℤ.+ n) (+≤+ z≤n)

-- The product of 2 non-negative numbers is non-negative.
*-0≤⇒0≤ : ∀ (x y : ℚ) → 0 ≤ x → 0 ≤ y → 0 ≤ (x * y) 
*-0≤⇒0≤ x y 0≤x 0≤y =
  begin
    0      ≡⟨ sym (*-zeroʳ x) ⟩
    x * 0  ≤⟨ *-monoˡ-≤-nonNeg x ⦃ nonNegative 0≤x ⦄ 0≤y ⟩
    x * y  ∎
  where open ≤ℚ-Reasoning

-- The product of 3 non-negative numbers is non-negative.
*-0≤-3⇒0≤ : ∀ (x y z : ℚ) → 0 ≤ x → 0 ≤ y → 0 ≤ z → 0 ≤ (x * y * z) 
*-0≤-3⇒0≤ x y z 0≤x 0≤y 0≤z =
  *-0≤⇒0≤ (x * y) z (*-0≤⇒0≤ x y 0≤x 0≤y) 0≤z

-- Division by a non-negative number 
÷-0≤⇒0≤ : ∀ (x y : ℚ) → .{{_ : NonZero y}} → 0 ≤ x → 0 ≤ y → 0 ≤ x ÷ y 
÷-0≤⇒0≤ x y 0≤x 0≤y = nonNegative⁻¹ (x ÷ y)
  where
    instance
      lemma-1/y : Positive (1/ y)
      lemma-1/y = 1/pos⇒pos y {{nonNeg∧nonZero⇒pos y {{nonNegative 0≤y}}}}

      lemma-x÷y : NonNegative (x * 1/ y)
      lemma-x÷y = nonNeg*nonNeg⇒nonNeg x {{nonNegative 0≤x}} (1/ y) {{pos⇒nonNeg (1/ y)}}
