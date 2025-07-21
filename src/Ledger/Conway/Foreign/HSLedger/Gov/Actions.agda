module Ledger.Conway.Foreign.HSLedger.Gov.Actions where

open import Data.Rational using (ℚ)

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.PParams

open import Ledger.Conway.Specification.Gov.Base
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote) public

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
    .to ⟦ NoConfidence    , _           ⟧ᵍᵃ → NoConfidence
    .to ⟦ UpdateCommittee , (m , p , q) ⟧ᵍᵃ → (UpdateCommittee m p q)
    .to ⟦ NewConstitution , (dh , s )   ⟧ᵍᵃ → (NewConstitution dh s)
    .to ⟦ TriggerHF       , p           ⟧ᵍᵃ → (TriggerHF p)
    .to ⟦ ChangePParams   , pu          ⟧ᵍᵃ → (ChangePParams pu)
    .to ⟦ TreasuryWdrl    , m           ⟧ᵍᵃ → ((TreasuryWdrl m))
    .to ⟦ Info            , _           ⟧ᵍᵃ → Info
    .from NoConfidence                → ⟦ NoConfidence    , tt          ⟧ᵍᵃ
    .from (UpdateCommittee m p q)     → ⟦ UpdateCommittee , (m , p , q) ⟧ᵍᵃ
    .from (NewConstitution dh s)      → ⟦ NewConstitution , (dh , s)    ⟧ᵍᵃ
    .from (TriggerHF p)               → ⟦ TriggerHF       , p           ⟧ᵍᵃ
    .from (ChangePParams pu)          → ⟦ ChangePParams   , pu          ⟧ᵍᵃ
    .from (TreasuryWdrl m)            → ⟦ TreasuryWdrl    , m           ⟧ᵍᵃ
    .from Info                        → ⟦ Info , tt ⟧ᵍᵃ

  HsTy-GovAction' = autoHsType GovAction' ⊣ withName "GovAction"
  Conv-GovAction' = autoConvert GovAction'

  HsTy-GovAction = MkHsType GovAction (HsType GovAction')
  Conv-GovAction = mkGovAction' ⨾ Conv-GovAction'
