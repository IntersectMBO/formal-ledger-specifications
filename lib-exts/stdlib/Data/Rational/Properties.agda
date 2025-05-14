{-# OPTIONS --safe #-}
module stdlib.Data.Rational.Properties where

open import Data.Integer using (ℤ)
import      Data.Integer as ℤ
import      Data.Integer.DivMod as ℤ
import      Data.Integer.Properties as ℤ
open import Data.Nat using (ℕ)
import      Data.Nat as ℕ
open import Data.Rational as ℚ
import      Data.Rational.Properties as ℚ
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
floor-def : ∀ (x : ℚ) → floor x ≡ ℚ.numerator x ℤ./ ℚ.denominator x
floor-def x@record{} = refl

-- A non-negative rational number has a non-negative numerator.
0≤⇒0≤numerator : ∀ (x : ℚ) → 0 ≤ x → 0 ℤ.≤ ℚ.numerator x
0≤⇒0≤numerator x 0≤x =
  begin
    0                       ≡⟨ sym (ℤ.*-zeroˡ (ℚ.denominator x)) ⟩
    0 ℤ.* ℚ.denominator x   ≤⟨ drop-*≤* 0≤x ⟩
    ℚ.numerator x ℤ.* 1     ≡⟨ ℤ.*-identityʳ _ ⟩
    ℚ.numerator x           ∎
  where open ℤ.≤-Reasoning

-- The 'floor' of a non-negative number is again non-negative.
0≤⇒0≤floor : ∀ (x : ℚ) → 0 ≤ x → 0 ℤ.≤ floor x
0≤⇒0≤floor x 0≤x =
  begin
    0                                     ≤⟨ ℤ.0≤n⇒0≤n/ℕd _ _ (0≤⇒0≤numerator x 0≤x) ⟩
    (ℚ.numerator x ℤ./ℕ ℚ.denominatorℕ x) ≡⟨ sym (ℤ.div-pos-is-/ℕ (ℚ.numerator x) (ℚ.denominatorℕ x)) ⟩
    (ℚ.numerator x ℤ./ ℚ.denominator x)   ≡⟨ sym (floor-def x) ⟩
    floor x                               ∎
  where open ℤ.≤-Reasoning

-- Properties related to non-negativity

-- Any non-negative integer is a non-negative rational number.
fromℤ-0≤ : ∀ (i : ℤ) → 0 ℤ.≤ i → 0 ≤ fromℤ i
fromℤ-0≤ i 0≤i = *≤* (begin
    0 ℤ.* i ≡⟨ sym (ℤ.*-zeroˡ i) ⟩
    0       ≤⟨ 0≤i ⟩
    i       ≡⟨ sym (ℤ.*-identityʳ i) ⟩
    i ℤ.* 1 ∎)
  where open ℤ.≤-Reasoning

-- Any natural number is a non-negative rational number.
fromℕ-0≤ : ∀ (n : ℕ) → 0 ≤ fromℕ n
fromℕ-0≤ n = fromℤ-0≤ (ℤ.+ n) (ℤ.+≤+ ℕ.z≤n)

-- The product of 2 non-negative numbers is non-negative.
*-0≤-2⇒0≤ : ∀ (x y : ℚ) → 0 ≤ x → 0 ≤ y → 0 ≤ (x * y) 
*-0≤-2⇒0≤ x y 0≤x 0≤y =
  begin
    0      ≡⟨ sym (ℚ.*-zeroʳ x) ⟩
    x * 0  ≤⟨ ℚ.*-monoˡ-≤-nonNeg x ⦃ ℚ.nonNegative 0≤x ⦄ 0≤y ⟩
    x * y  ∎
  where open ℚ.≤-Reasoning

-- The product of 3 non-negative numbers is non-negative.
*-0≤-3⇒0≤ : ∀ (x y z : ℚ) → 0 ≤ x → 0 ≤ y → 0 ≤ z → 0 ≤ (x * y * z) 
*-0≤-3⇒0≤ x y z 0≤x 0≤y 0≤z =
  *-0≤-2⇒0≤ (x * y) z (*-0≤-2⇒0≤ x y 0≤x 0≤y) 0≤z

-- Division by a non-negative number 
lemma-÷ : ∀ (x y : ℚ) → .{{_ : ℚ.NonZero y}} → 0 ≤ x → 0 ≤ y → 0 ≤ x ÷ y 
lemma-÷ x y 0≤x 0≤y = ℚ.nonNegative⁻¹ (x ÷ y)
  where
    instance
      lemma-1/y : ℚ.Positive (1/ y)
      lemma-1/y = ℚ.1/pos⇒pos y {{ℚ.nonNeg∧nonZero⇒pos y {{ℚ.nonNegative 0≤y}}}}

      lemma-x÷y : ℚ.NonNegative (x * 1/ y)
      lemma-x÷y = ℚ.nonNeg*nonNeg⇒nonNeg x {{ℚ.nonNegative 0≤x}} (1/ y) {{ℚ.pos⇒nonNeg (1/ y)}}
