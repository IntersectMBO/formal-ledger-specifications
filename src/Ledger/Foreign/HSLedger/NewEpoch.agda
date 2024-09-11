module Ledger.Foreign.HSLedger.NewEpoch where

import Data.Integer as ℤ

open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Ratify
open import Ledger.Foreign.HSLedger.Epoch

open import Ledger.Epoch it it
open import Ledger.Epoch.Properties it it

instance

  record HsRewardUpdate : Type where
    field Δt Δr Δf : ℤ
          rs : HsType (Credential ⇀ Coin)
  {-# FOREIGN GHC
    data RewardUpdate = MkRewardUpdate
      { deltaT  :: Integer
      , deltaR  :: Integer
      , deltaF  :: Integer
      , rs      :: HSMap Credential Coin
      }
  #-}
  {-# COMPILE GHC HsRewardUpdate = data RewardUpdate (MkRewardUpdate) #-}

  HsTy-RewardUpdate : HasHsType RewardUpdate
  HsTy-RewardUpdate .HasHsType.HsType = HsRewardUpdate

  -- manual, since we want to throw an error on non-zero update
  Conv-RewardUpdate : Convertible RewardUpdate HsRewardUpdate
  Conv-RewardUpdate .to   ru = record { RewardUpdate ru; rs = to (ru .RewardUpdate.rs) }
  Conv-RewardUpdate .from ru =
    case (let open HsRewardUpdate ru in ¿ Δt + Δr + Δf + ℤ.+ ∑[ x ← from rs ] x ≡ ℤ.0ℤ ¿) of λ where
      (yes p) → record { HsRewardUpdate ru ; rs = from (ru .HsRewardUpdate.rs) ; zeroSum = p }
      (no ¬p) → error "Formal Spec: cannot make a non-zero reward update"

  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ NewEpochState)
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
