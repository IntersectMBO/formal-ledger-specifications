{-# OPTIONS --safe #-}

-- Rational number in the unit interval.
module Ledger.Types.Numeric.UnitInterval where

open import Prelude
  hiding ([_,_]; [_]; _*_)

open import Agda.Builtin.FromNat
open import Class.Show using (Show; show)
open import Data.Irrelevant using ([_])
import Data.Rational as ℚ
open import Data.Rational.Properties
import Data.Rational.Show as ℚshow
open import Data.Rational using (ℚ; _≤_; _≤?_; _*_)
open import Data.Refinement using (Refinement-syntax; value; _,_)

open import Tactic.EquationalReasoning using (module ≡-Reasoning)
open ≤-Reasoning

-- inUnitInterval predicate
inUnitInterval : (x : ℚ) → Type
inUnitInterval x = (0 ≤ x) × (x ≤ 1)

-- Decide whether a rational number is in the unit interval.
isInUnitInterval : (x : ℚ) → Dec (inUnitInterval x)
isInUnitInterval x = (0 ≤? x) ×-dec (x ≤? 1)

-- Multiplying with a number from the unit interval only decreases.
inUnitInterval-*-≤y : ∀ (x y : ℚ) → inUnitInterval x → 0 ≤ y → x * y ≤ y
inUnitInterval-*-≤y x y (0≤x , x≤1) 0≤y =
  begin
    x * y  ≤⟨ *-monoʳ-≤-nonNeg y ⦃ ℚ.nonNegative 0≤y ⦄ x≤1 ⟩
    1 * y  ≡⟨ *-identityˡ _ ⟩
    y      ∎

-- Left multiplication by unit interval element preserves non-negativity.
inUnitInterval-*-0≤ : ∀ (x y : ℚ) → inUnitInterval x → 0 ≤ y → 0 ≤ x * y
inUnitInterval-*-0≤ x y (0≤x , x≤1) 0≤y =
  begin
    0      ≡⟨ sym (*-zeroʳ x) ⟩
    x * 0  ≤⟨ *-monoˡ-≤-nonNeg x ⦃ ℚ.nonNegative 0≤x ⦄ 0≤y ⟩
    x * y  ∎

-- Left multiplication by unit interval element preserves being upper boundeded by 1.
inUnitInterval-*-≤1 : ∀ (x y : ℚ) → inUnitInterval x → y ≤ 1 → x * y ≤ 1
inUnitInterval-*-≤1 x y (0≤x , x≤1) y≤1 =
  begin
    x * y  ≤⟨ *-monoˡ-≤-nonNeg x ⦃ ℚ.nonNegative 0≤x ⦄ y≤1 ⟩
    x * 1  ≡⟨ *-identityʳ _ ⟩
    x      ≤⟨ x≤1 ⟩
    1      ∎

-- The product of two numbers from the unit interval is also in the unit interval.
inUnitInterval-* : ∀ (x y : ℚ)
  → inUnitInterval x → inUnitInterval y → inUnitInterval (x * y)
inUnitInterval-* x y ux (0≤y , y≤1) =
  inUnitInterval-*-0≤ x y ux 0≤y
  , inUnitInterval-*-≤1 x y ux y≤1

-- UnitInterval: rational number in the unit interval [0, 1].
UnitInterval : Type
UnitInterval = [ x ∈ ℚ ∣ inUnitInterval x ]

instance
  Show-UnitInterval : Show UnitInterval
  Show-UnitInterval .show = ℚshow.show ∘ value

-- In the cardano-ledger codebase:
--  unboundRational
fromUnitInterval : UnitInterval → ℚ
fromUnitInterval = value

-- In the cardano-ledger codebase:
--  unboundRational
toUnitInterval : ℚ → Maybe UnitInterval
toUnitInterval x with isInUnitInterval x
... | no ¬p = nothing
... | yes p = just (x , [ p ])

-- Helper function to make an element of the Refinement type
-- that is useful in the case where Agda can infer the evidence
-- automatically by computation.
-- Usage example:  mkUnitInterval (+ 2 / 10)
mkUnitInterval : ∀ (x : ℚ) → {T (does (isInUnitInterval x))} → UnitInterval
mkUnitInterval x {evidence} with isInUnitInterval x in eq
... | no  _ rewrite cong does eq = ⊥-elim evidence
... | yes p = x , [ p ]


-- UnitInterval Properties

-- to/from is the identity
prop-toUnitInterval-fromUnitInterval : ∀ (x : UnitInterval)
  → toUnitInterval (fromUnitInterval x) ≡ just x

prop-toUnitInterval-fromUnitInterval (x , [ p0 ]) with isInUnitInterval x
... | no ¬p = ⊥-elim-irr (¬p p0)
... | yes p = refl
