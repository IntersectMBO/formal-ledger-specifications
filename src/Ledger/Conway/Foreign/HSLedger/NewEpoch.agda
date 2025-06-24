module Ledger.Conway.Foreign.HSLedger.NewEpoch where

import Data.Integer as ℤ

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Epoch

open import Ledger.Conway.Conformance.Epoch it it
open import Ledger.Conway.Conformance.Epoch.Properties it it

open import Ledger.Prelude.Foreign.HSTypes hiding (ComputationResult)

open import Ledger.Prelude.Foreign.Util

record HsRewardUpdate : Type where
  field Δt Δr Δf : ℤ
        rs : HsType (Credential ⇀ Coin)
{-# FOREIGN GHC
  data HsRewardUpdate = MkRewardUpdate
    { deltaT  :: Integer
    , deltaR  :: Integer
    , deltaF  :: Integer
    , rs      ::
        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap
          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential
          Integer
    }
    deriving (Eq, Show)
#-}
{-# COMPILE GHC HsRewardUpdate = data HsRewardUpdate (MkRewardUpdate) #-}

instance
  HsTy-RewardUpdate : HasHsType RewardUpdate
  HsTy-RewardUpdate .HasHsType.HsType = HsRewardUpdate

  -- manual, since we want to throw an error on non-zero update
  Conv-RewardUpdate : Convertible RewardUpdate HsRewardUpdate
  Conv-RewardUpdate .to   ru = record { RewardUpdate ru; rs = to (ru .RewardUpdate.rs) }
  Conv-RewardUpdate .from ru =
    case (let open HsRewardUpdate ru in ¿ Δt + Δr + Δf + ℤ.+ (indexedSumᵛ' {A = Credential} (λ x → x) (from rs)) ≡ ℤ.0ℤ ¿) of λ where
      (yes p) → record { HsRewardUpdate ru ; rs = from (ru .HsRewardUpdate.rs) }
      (no ¬p) → error "Formal Spec: cannot make a non-zero reward update"

  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ NewEpochState)
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}
