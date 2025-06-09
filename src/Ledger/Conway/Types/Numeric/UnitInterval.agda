{-# OPTIONS --safe #-}

-- Rational number in the unit interval.
module Ledger.Conway.Types.Numeric.UnitInterval where

open import Prelude
  hiding ([_,_]; [_]; _*_)

open import Agda.Builtin.FromNat
open import Class.Show using (Show; show)
open import Data.Irrelevant using ([_])
open import Data.Rational using (ℚ; _≤_; _≤?_; _*_; nonNegative)
open import Data.Rational.Properties
open import Data.Rational.Show using () renaming (show to ℚshow)
open import Data.Refinement using (Refinement-syntax; value; _,_)

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
    x * y  ≤⟨ *-monoʳ-≤-nonNeg y ⦃ nonNegative 0≤y ⦄ x≤1 ⟩
    1 * y  ≡⟨ *-identityˡ _ ⟩
    y      ∎

-- Left multiplication by unit interval element preserves non-negativity.
inUnitInterval-*-0≤ : ∀ (x y : ℚ) → inUnitInterval y → 0 ≤ x → 0 ≤ x * y
inUnitInterval-*-0≤ x y (0≤y , _) 0≤x =
  begin
    0      ≡⟨ sym (*-zeroʳ x) ⟩
    x * 0  ≤⟨ *-monoˡ-≤-nonNeg x ⦃ nonNegative 0≤x ⦄ 0≤y ⟩
    x * y  ∎

-- Left multiplication by unit interval element preserves being upper boundeded by 1.
inUnitInterval-*-≤1 : ∀ (x y : ℚ) → inUnitInterval x → y ≤ 1 → x * y ≤ 1
inUnitInterval-*-≤1 x y (0≤x , x≤1) y≤1 =
  begin
    x * y  ≤⟨ *-monoˡ-≤-nonNeg x ⦃ nonNegative 0≤x ⦄ y≤1 ⟩
    x * 1  ≡⟨ *-identityʳ _ ⟩
    x      ≤⟨ x≤1 ⟩
    1      ∎

-- UnitInterval: rational number in the unit interval [0, 1].
UnitInterval : Type
UnitInterval = [ x ∈ ℚ ∣ inUnitInterval x ]

instance
  Show-UnitInterval : Show UnitInterval
  Show-UnitInterval .show = ℚshow ∘ value

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

-- Clamp a rational number to the unit interval.
-- Values below 0 or above 1 are set to 0 or 1, respectively.
clamp : ℚ → UnitInterval
clamp x with 0 ≤? x
... | no  _ = mkUnitInterval 0
... | yes 0≤x with x ≤? 1
...     | no  _   = mkUnitInterval 1
...     | yes x≤1 = (x , [ 0≤x , x≤1 ])

-- UnitInterval Properties

-- The predicate for 'UnitInterval' also holds in a proof-relevant context.
fromUnitInterval-inUnitInterval
  : ∀ (x : UnitInterval) → inUnitInterval (fromUnitInterval x)
fromUnitInterval-inUnitInterval (x , [ p0 ]) with isInUnitInterval x
... | no ¬p = ⊥-elim-irr (¬p p0)
... | yes p = p

-- Left multiplication by unit interval element preserves non-negativity.
UnitInterval-*-0≤
  : ∀ (x : ℚ) (y : UnitInterval) → 0 ≤ x → 0 ≤ x * fromUnitInterval y
UnitInterval-*-0≤ x y 0≤x =
  inUnitInterval-*-0≤ x (value y) (fromUnitInterval-inUnitInterval y) 0≤x

-- to/from is the identity
prop-toUnitInterval-fromUnitInterval : ∀ (x : UnitInterval)
  → toUnitInterval (fromUnitInterval x) ≡ just x
prop-toUnitInterval-fromUnitInterval (x , [ p0 ]) with isInUnitInterval x
... | no ¬p = ⊥-elim-irr (¬p p0)
... | yes p = refl
