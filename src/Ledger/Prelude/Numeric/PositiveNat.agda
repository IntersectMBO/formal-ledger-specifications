{-# OPTIONS --safe #-}
module Ledger.Prelude.Numeric.PositiveNat where

open import Prelude
  hiding ([_,_]; [_]; _*_)

open import Class.Show using (Show; show)

open import Agda.Builtin.FromNat
open import Data.Nat using (ℕ; NonZero; _>_)
open import Data.Refinement using (Refinement-syntax; value; _,_)
open import Data.Irrelevant

-- PosNat: Non zero natural number.
PosNat : Type
PosNat = [ x ∈ ℕ ∣ NonZero x ]

instance
  Show-PosNat : Show PosNat
  Show-PosNat .show (n , _) = show n

fromPosNat : PosNat → ℕ
fromPosNat = value

toPosNat : ℕ → Maybe PosNat
toPosNat n with nonZero? n
... | yes p = just (n , [ p ])
... | no ¬p = nothing

mkPosNat : ∀ (n : ℕ) → {T (does (nonZero? n))} → PosNat
mkPosNat n {evidence}
  with nonZero? n in eq
... | no  _ = ⊥-elim evidence
... | yes p = n , [ p ]

PosNat-IsNonZero : (n : PosNat) → NonZero (fromPosNat n)
PosNat-IsNonZero (suc n , n>0) .NonZero.nonZero = tt

PosNat-Is>0 : (n : PosNat) → fromPosNat n > 0
PosNat-Is>0 (suc n , n>0) = s≤s z≤n

Number-PosNat : Number PosNat
Number-PosNat = record
  { Constraint = NonZero
  ; fromNat = λ n ⦃ p ⦄ → n , [ p ]
  }
