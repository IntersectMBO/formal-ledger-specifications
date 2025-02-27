module Ledger.Conway.Foreign.HSLedger.GovernanceActions where

open import Data.Rational using (ℚ)

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.PParams

open import Ledger.Types.GovStructure
open import Ledger.GovernanceActions govStructure using (Vote) public

DocHash = GovStructure.DocHash govStructure 

-- nondependent version of GovAction
data GovAction' : Type where
  NoConfidence     :                                             GovAction'
  UpdateCommittee  : (Credential ⇀ Epoch) → ℙ Credential → ℚ  →  GovAction'
  NewConstitution  : DocHash → Maybe ScriptHash               →  GovAction'
  TriggerHF        : ProtVer                                  →  GovAction'
  ChangePParams    : PParamsUpdate                            →  GovAction'
  TreasuryWdrl     : (RwdAddr ⇀ Coin)                         →  GovAction'
  Info             :                                             GovAction'

instance
  mkGovAction' : Convertible GovAction GovAction'
  mkGovAction' = λ where
    .to (NoConfidence , _)            → NoConfidence
    .to (UpdateCommittee , m , p , q) → (UpdateCommittee m p q)
    .to (NewConstitution , dh , s)    → (NewConstitution dh s)
    .to (TriggerHF , p)               → (TriggerHF p)
    .to (ChangePParams , pu)          → (ChangePParams pu)
    .to (TreasuryWdrl , m)            → ((TreasuryWdrl m))
    .to (Info , _)                    → Info
    .from NoConfidence                → NoConfidence , tt
    .from (UpdateCommittee m p q)     → UpdateCommittee , m , p , q
    .from (NewConstitution dh s)      → NewConstitution , dh , s
    .from (TriggerHF p)               → TriggerHF , p
    .from (ChangePParams pu)          → ChangePParams , pu
    .from (TreasuryWdrl m)            → TreasuryWdrl , m
    .from Info                        → Info , tt

  HsTy-GovAction' = autoHsType GovAction' ⊣ withName "GovAction"
  Conv-GovAction' = autoConvert GovAction'

  HsTy-GovAction = MkHsType GovAction (HsType GovAction')
  Conv-GovAction = mkGovAction' ⨾ Conv-GovAction'
