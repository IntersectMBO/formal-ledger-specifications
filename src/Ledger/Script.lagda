\section{Scripts}
\begin{code}[hide]
open import Prelude
open import DecEq

module Ledger.Script (KeyHash Slot : Set) ⦃ _ : DecEq KeyHash ⦄ (_≤ᵇ_ : Slot → Slot → Bool) where

open import FinSet renaming (FinSet to ℙ_)
\end{code}
\begin{code}
data Timelock : Set where
  RequireAllOf : List Timelock → Timelock
  RequireAnyOf : List Timelock → Timelock
  RequireMOf : ℕ → List Timelock → Timelock
  RequireSig : KeyHash → Timelock
  RequireTimeStart : Slot → Timelock
  RequireTimeExpire : Slot → Timelock

evalTimelock : ℙ KeyHash → (Maybe Slot × Maybe Slot) → Timelock → Bool
evalTimelock khs int (RequireAllOf []) = true
evalTimelock khs int (RequireAllOf (x ∷ xs)) = evalTimelock khs int x ∧ evalTimelock khs int (RequireAllOf xs)
evalTimelock khs int (RequireAnyOf []) = false
evalTimelock khs int (RequireAnyOf (x ∷ xs)) = evalTimelock khs int x ∨ evalTimelock khs int (RequireAllOf xs)
evalTimelock khs int (RequireMOf zero _) = true
evalTimelock khs int (RequireMOf (suc _) []) = false
evalTimelock khs int (RequireMOf (suc m) (x ∷ xs)) = if evalTimelock khs int x
  then evalTimelock khs int (RequireMOf m xs)
  else evalTimelock khs int (RequireMOf (suc m) xs)
evalTimelock khs int (RequireSig x) = x ∈ᵇ khs
evalTimelock khs (just l  , _) (RequireTimeStart x)  = x ≤ᵇ l
evalTimelock khs (nothing , _) (RequireTimeStart x)  = false
evalTimelock khs (_ , just r ) (RequireTimeExpire x) = r ≤ᵇ x
evalTimelock khs (_ , nothing) (RequireTimeExpire x) = false
\end{code}
