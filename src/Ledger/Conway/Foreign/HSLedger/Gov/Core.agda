module Ledger.Conway.Foreign.HSLedger.Gov.Core where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)

instance
  HsTy-GovVoter : HasHsType GovVoter
  HsTy-GovVoter .HasHsType.HsType = GovRole × Credential

  Conv-GovVoter : Convertible GovVoter (GovRole × Credential)
  Conv-GovVoter .to ⟦ CC   , c ⟧ᵍᵛ = CC   , c
  Conv-GovVoter .to ⟦ DRep , c ⟧ᵍᵛ = DRep , c
  Conv-GovVoter .to ⟦ SPO  , c ⟧ᵍᵛ = SPO  , KeyHashObj c
  Conv-GovVoter .from (CC   , c) = ⟦ CC   , c ⟧ᵍᵛ
  Conv-GovVoter .from (DRep , c) = ⟦ DRep , c ⟧ᵍᵛ
  Conv-GovVoter .from (SPO  , c) =
    case c of λ where
      (KeyHashObj kh) → ⟦ SPO , kh ⟧ᵍᵛ
      (ScriptObj _)   → error "Conv-GovVoter: Converting from SPO with ScriptObj credential"

instance
  HsTy-GovRole = autoHsType GovRole
  Conv-GovRole = autoConvert GovRole

  HsTy-Anchor = autoHsType Anchor
  Conv-Anchor = autoConvert Anchor

  HsTy-VDeleg = autoHsType VDeleg
  Conv-VDeleg = autoConvert VDeleg

  HsTy-Vote = autoHsType Vote
  Conv-Vote = autoConvert Vote

  HsTy-GovVote = autoHsType GovVote
  Conv-GovVote = autoConvert GovVote

  HsTy-GovVotes = autoHsType GovVotes
  Conv-GovVotes = autoConvert GovVotes
