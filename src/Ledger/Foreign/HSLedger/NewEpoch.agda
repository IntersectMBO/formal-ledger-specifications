module Ledger.Foreign.HSLedger.NewEpoch where

import Ledger.Foreign.LedgerTypes as F
import Data.Integer as ℤ

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Ratify
open import Ledger.Foreign.HSLedger.Epoch

open import Ledger.Epoch it it
open import Ledger.Epoch.Properties it it

instance
  -- manual, since we want to throw an error on non-zero update
  Convertible-RewardUpdate : Convertible RewardUpdate F.RewardUpdate
  Convertible-RewardUpdate .to   ru = record { RewardUpdate ru; rs = to (ru .RewardUpdate.rs) }
  Convertible-RewardUpdate .from ru =
    case (let open F.RewardUpdate ru in ¿ Δt + Δr + Δf + ℤ.+ ∑[ x ← from rs ] x ≡ ℤ.0ℤ ¿) of λ where
      (yes p) → record { F.RewardUpdate ru ; rs = from (ru .F.RewardUpdate.rs) ; zeroSum = p }
      (no ¬p) → error "Formal Spec: cannot make a non-zero reward update"

  HsTy-NewEpochState = autoHsType' NewEpochState (⟦_,_⟧ⁿᵉ ↦ "MkNewEpochState" ∷ [])
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ NewEpochState)
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
