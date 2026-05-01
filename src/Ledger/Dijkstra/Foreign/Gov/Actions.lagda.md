---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Gov/Actions.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Gov.Actions where

open import Data.Rational using (ℚ)
open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Core.Foreign.Address
open import Ledger.Core.Specification.ProtocolVersion

-- nondependent version of GovAction
data GovAction' : Type where
  NoConfidence        :                                             GovAction'
  UpdateCommittee     : (Credential ⇀ Epoch) → ℙ Credential → ℚ  →  GovAction'
  NewConstitution     : ADHash → Maybe ScriptHash               →  GovAction'
  TriggerHardFork     : ProtVer                                  →  GovAction'
  ChangePParams       : PParamsUpdate                            →  GovAction'
  TreasuryWithdrawal  : (RewardAddress ⇀ Treasury)               →  GovAction'
  Info                :                                             GovAction'

instance
  mkGovAction' : Convertible GovAction GovAction'
  mkGovAction' = λ where
    .to ⟦ NoConfidence        , _           ⟧ᵍᵃ → NoConfidence
    .to ⟦ UpdateCommittee     , (m , s , q) ⟧ᵍᵃ → UpdateCommittee m s q
    .to ⟦ NewConstitution     , (h , s)     ⟧ᵍᵃ → NewConstitution h s
    .to ⟦ TriggerHardFork     , v           ⟧ᵍᵃ → TriggerHardFork v
    .to ⟦ ChangePParams       , u           ⟧ᵍᵃ → ChangePParams u
    .to ⟦ TreasuryWithdrawal  , w           ⟧ᵍᵃ → TreasuryWithdrawal w
    .to ⟦ Info                , _           ⟧ᵍᵃ → Info
    .from NoConfidence              → ⟦ NoConfidence        , tt          ⟧ᵍᵃ
    .from (UpdateCommittee m s q)   → ⟦ UpdateCommittee     , (m , s , q) ⟧ᵍᵃ
    .from (NewConstitution h s)     → ⟦ NewConstitution     , (h , s)     ⟧ᵍᵃ
    .from (TriggerHardFork v)       → ⟦ TriggerHardFork     , v           ⟧ᵍᵃ
    .from (ChangePParams u)         → ⟦ ChangePParams       , u           ⟧ᵍᵃ
    .from (TreasuryWithdrawal w)    → ⟦ TreasuryWithdrawal  , w           ⟧ᵍᵃ
    .from Info                      → ⟦ Info                , tt          ⟧ᵍᵃ

  HsTy-GovAction' = autoHsType GovAction' ⊣ withName "GovAction"
  Conv-GovAction' = autoConvert GovAction'

  HsTy-GovAction = MkHsType GovAction (HsType GovAction')
  Conv-GovAction = mkGovAction' ⨾ Conv-GovAction'
```
