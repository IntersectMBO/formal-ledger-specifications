module Ledger.Foreign.HSLedger.NewEpoch where

import Ledger.Foreign.LedgerTypes as F
import Data.Integer as ℤ

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Ratify
open import Ledger.Foreign.HSLedger.Epoch

open import Ledger.Epoch HSTransactionStructure HSAbstractFunctions
open import Ledger.Epoch.Properties HSTransactionStructure HSAbstractFunctions

instance
  -- manual, since we want to throw an error on non-zero update
  Convertible-RewardUpdate : Convertible RewardUpdate F.RewardUpdate
  Convertible-RewardUpdate .to   ru = record { RewardUpdate ru; rs = to (ru .RewardUpdate.rs) }
  Convertible-RewardUpdate .from ru =
    case (let open F.RewardUpdate ru in ¿ Δt + Δr + Δf + ℤ.+ ∑[ x ← from rs ] x ≡ ℤ.0ℤ ¿) of λ where
      (yes p) → record { F.RewardUpdate ru ; rs = from (ru .F.RewardUpdate.rs) ; zeroSum = p }
      (no ¬p) → error "Formal Spec: cannot make a non-zero reward update"

  Convertible-NewEpochState : Convertible NewEpochState F.NewEpochState
  Convertible-NewEpochState = autoConvertible

newepoch-step : ⊤ → F.NewEpochState → F.Epoch → F.ComputationResult F.Empty F.NewEpochState
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
