module Ledger.Conway.Foreign.HSLedger.Rewards where

import Data.Integer as ℤ

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Certs
open import Ledger.Conway.Foreign.HSLedger.Enact
open import Ledger.Conway.Foreign.HSLedger.Ledger
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Ratify

open import Ledger.Conway.Conformance.Rewards it it

instance
  HsTy-Snapshot = autoHsType Snapshot ⊣ withConstructor "MkSnapshot"
  Conv-Snapshot = autoConvert Snapshot

  HsTy-Snapshots = autoHsType Snapshots ⊣ withConstructor "MkSnapshots"
  Conv-Snapshots = autoConvert Snapshots

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

module _ (ru : HsRewardUpdate) where
  module ru = HsRewardUpdate ru
  open ru

  flowConservation? = ¿ Δt + Δr + Δf + ℤ.+ (indexedSumᵛ' {A = Credential} (λ x → x) (from rs)) ≡ ℤ.0ℤ ¿
  Δt-nonnegative?   = ¿ ℤ.0ℤ ℤ.≤ Δt ¿
  Δf-nonpositive?   = ¿ Δf ℤ.≤ ℤ.0ℤ ¿

  HsRewardUpdate→RewardUpdate : RewardUpdate
  HsRewardUpdate→RewardUpdate
    with flowConservation? | Δt-nonnegative? | Δf-nonpositive?
  ... | yes p | yes q | yes r =
    record { ru
           ; rs = from ru.rs
           ; flowConservation = p
           ; Δt-nonnegative   = q
           ; Δf-nonpositive   = r
           }
  ... | _ | _ | _ = error "Formal Spec: cannot make a non-zero reward update"

instance
  HsTy-RewardUpdate : HasHsType RewardUpdate
  HsTy-RewardUpdate .HasHsType.HsType = HsRewardUpdate

  -- manual, since we want to throw an error on non-zero update
  Conv-RewardUpdate : Convertible RewardUpdate HsRewardUpdate
  Conv-RewardUpdate .to   ru = record { RewardUpdate ru; rs = to (ru .RewardUpdate.rs) }
  Conv-RewardUpdate .from ru = HsRewardUpdate→RewardUpdate ru
