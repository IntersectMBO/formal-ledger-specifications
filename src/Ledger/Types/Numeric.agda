{-# OPTIONS --safe #-}

-- Subsets of number types useful for the ledger specification.
module Ledger.Types.Numeric where

open import Prelude
  hiding ([_,_]; [_])

open import Class.DecEq
  using (DecEq; _≟_)
open import Data.Irrelevant
  using ([_])
import Data.Rational as ℚ
import Data.Rational.Properties as ℚ
open import Data.Rational
  using (ℚ; 0ℚ; 1ℚ; _≤_; _≤?_)
open import Data.Refinement
  using (Refinement-syntax; Refinement; value; _,_)

{----------------------------------------------------------------------
    inUnitInterval
    Predicate
----------------------------------------------------------------------}
inUnitInterval : (x : ℚ) → Type
inUnitInterval x = (0ℚ ≤ x) × (x ≤ 1ℚ)

-- Decide whether a rational number is in the unit interval.
isInUnitInterval : (x : ℚ) → Dec (inUnitInterval x)
isInUnitInterval x
  with 0ℚ ≤? x
  with x  ≤? 1ℚ
... | no  ¬p  | q       = no λ prf → ¬p (proj₁ prf)
... | yes 0≤x | no ¬q   = no λ prf → ¬q (proj₂ prf)
... | yes 0≤x | yes x≤1 = yes (0≤x , x≤1)

-- Multiplying with a number from the unit interval only decreases.
prop-inUnitInterval-*-≤y
  : ∀ (x y : ℚ)
  → inUnitInterval x
  → 0ℚ ≤ y
  → x ℚ.* y ≤ y
--
prop-inUnitInterval-*-≤y x y (0≤x , x≤1) 0≤y
  with lemma ← ℚ.*-monoʳ-≤-nonNeg y ⦃ ℚ.nonNegative 0≤y ⦄ x≤1
  rewrite ℚ.*-identityˡ y
  = lemma

-- Multiplying with a number from the unit interval stays positive.
prop-inUnitInterval-*-0≤
  : ∀ (x y : ℚ)
  → inUnitInterval x
  → 0ℚ ≤ y
  → 0ℚ ≤ x ℚ.* y
--
prop-inUnitInterval-*-0≤ x y (0≤x , x≤1) 0≤y
  with lemma ← ℚ.*-monoʳ-≤-nonNeg y ⦃ ℚ.nonNegative 0≤y ⦄ 0≤x
  rewrite ℚ.*-zeroˡ y
  = lemma

-- The product of two numbers from the unit interval is also
-- in the unit interval.
prop-inUnitInterval-*
  : ∀ (x y : ℚ)
  → inUnitInterval x
  → inUnitInterval y
  → inUnitInterval (x ℚ.* y)
--
prop-inUnitInterval-* x y ux (0≤y , y≤1) =
  ( prop-inUnitInterval-*-0≤ x y ux 0≤y , x*y≤1)
  where
  x*y≤1 = ℚ.≤-trans (prop-inUnitInterval-*-≤y x y ux 0≤y) y≤1

{----------------------------------------------------------------------
    UnitInterval
    Data Type
----------------------------------------------------------------------}
-- Rational number in the unit interval [0, 1].
UnitInterval : Type
UnitInterval = [ x ∈ ℚ ∣ inUnitInterval x ]

-- Equality for a Refinement type is decide if the equality
-- for the type to be refined is decidable.
DeqEq-Refinement
    : ∀ {a p} (A : Set a) (P : A → Set p)
    → ⦃ DecEq A ⦄ → DecEq (Refinement A P)
DeqEq-Refinement A P ._≟_ (x , px) (y , py)
  with x ≟ y
... | no neq = no (neq ∘ cong value)
... | yes refl = yes refl

instance
  DecEq-UnitInterval : DecEq UnitInterval
  DecEq-UnitInterval = DeqEq-Refinement ℚ inUnitInterval

-- In the cardano-ledger codebase:
--  unboundRational
fromUnitInterval : UnitInterval → ℚ
fromUnitInterval = value

-- In the cardano-ledger codebase:
--  unboundRational
toUnitInterval : ℚ → Maybe UnitInterval
toUnitInterval x
  with isInUnitInterval x
... | no ¬p = nothing
... | yes p = just (x , [ p ])

-- Helper function to make an element of the Refinement type
-- while having the Adga compiler compute the evidence from Dec.
-- Usage example:  mkUnitInterval (+ 2 / 10) refl
mkUnitInterval
  : ∀ (x : ℚ) → does (isInUnitInterval x) ≡ true → UnitInterval
mkUnitInterval x evidence
  with isInUnitInterval x
... | yes p = x , [ p ]

{----------------------------------------------------------------------
    UnitInterval
    Properties
----------------------------------------------------------------------}
-- to/from is the identity
prop-toUnitInterval-fromUnitInterval
  : ∀ (x : UnitInterval)
  → toUnitInterval (fromUnitInterval x) ≡ just x
--
prop-toUnitInterval-fromUnitInterval (x , [ p0 ])
  with isInUnitInterval x
... | no ¬p = case [ ¬p p0 ] of λ ()
... | yes p = refl
