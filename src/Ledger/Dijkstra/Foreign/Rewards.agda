module Ledger.Dijkstra.Foreign.Rewards where

open import Class.Convertible
open import Tactic.Derive.Convertible
open import Class.HasHsType
open import Tactic.Derive.HsType

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Specification.Rewards it DummyAbstractFunctions

instance
  HsTy-Snapshot = autoHsType Snapshot ⊣ withConstructor "MkSnapshot"
                                       • fieldPrefix "ss"
  Conv-Snapshot = autoConvert Snapshot

  HsTy-Snapshots = autoHsType Snapshots ⊣ withConstructor "MkSnapshots"
  Conv-Snapshots = autoConvert Snapshots

record HsRewardUpdate : Type where
  field
    Δt Δr Δf  : ℤ
    rs        : Stake

open import Data.Integer using (ℤ) renaming (+_ to pos; _≤_ to _≤ℤ_)

instance
  iHsTy-ℤ : HasHsType ℤ
  iHsTy-ℤ = mkHsType ℤ ℤ
  iConv-ℤ : Convertible ℤ ℤ
  iConv-ℤ = Convertible-Refl

postulate
  trustMe-flowConservation : ∀ {Δt Δr Δf : ℤ} {rs : Stake} → Δt + Δr + Δf + pos (∑[ c ← rs ] c) ≡ pos 0
  trustMe-nonneg : ∀ {x : ℤ} → pos 0 ≤ℤ x
  trustMe-nonpos : ∀ {x : ℤ} → x ≤ℤ pos 0

private
  mkHsRewardUpdate : Convertible RewardUpdate HsRewardUpdate
  mkHsRewardUpdate = λ where
    .to   ru → let module ru = RewardUpdate ru in
      record { Δt = ru.Δt ; Δr = ru.Δr ; Δf = ru.Δf ; rs = ru.rs }
    .from ru → let module ru = HsRewardUpdate ru in
      record { Δt = ru.Δt ; Δr = ru.Δr ; Δf = ru.Δf ; rs = ru.rs
             ; flowConservation = trustMe-flowConservation {ru.Δt} {ru.Δr} {ru.Δf} {ru.rs}
             ; Δt-nonnegative   = trustMe-nonneg {ru.Δt}
             ; Δf-nonpositive   = trustMe-nonpos {ru.Δf}
             }

instance
  HsTy-HsRewardUpdate = autoHsType HsRewardUpdate ⊣ withName "RewardUpdate"
                                                    • withConstructor "MkRewardUpdate"
                                                    • fieldPrefix "ru"
  Conv-HsRewardUpdate = autoConvert HsRewardUpdate

  HsTy-RewardUpdate = mkHsType RewardUpdate (HsType HsRewardUpdate)
  Conv-RewardUpdate = mkHsRewardUpdate ⨾ Conv-HsRewardUpdate

unquoteDecl = do
  hsTypeAlias BlocksMade ⊣ withName "BlocksMade"
