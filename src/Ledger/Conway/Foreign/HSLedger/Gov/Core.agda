module Ledger.Conway.Foreign.HSLedger.Gov.Core where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)

GovVoter' : Type
GovVoter' = GovRole × Credential

instance
  HsTy-GovVoter : HasHsType GovVoter
  HsTy-GovVoter .HasHsType.HsType = GovVoter'

  Conv-GovVoter : Convertible GovVoter GovVoter'
  Conv-GovVoter .to ⟦ CC   , c ⟧ᵍᵛ = CC   , c
  Conv-GovVoter .to ⟦ DRep , c ⟧ᵍᵛ = DRep , c
  Conv-GovVoter .to ⟦ SPO  , c ⟧ᵍᵛ = SPO  , KeyHashObj c
  Conv-GovVoter .from (CC   , c)   = ⟦ CC   , c ⟧ᵍᵛ
  Conv-GovVoter .from (DRep , c)   = ⟦ DRep , c ⟧ᵍᵛ
  Conv-GovVoter .from (SPO  , c)   =
    case c of λ where
      (KeyHashObj kh) → ⟦ SPO , kh ⟧ᵍᵛ
      (ScriptObj _)   → error "Conv-GovVoter: Converting from SPO with ScriptObj credential"

record GovVote' : Type where
  field
    gid         : GovActionID
    voter       : GovVoter'
    vote        : Vote
    anchor      : Maybe Anchor

instance
  HsTy-GovVote : HasHsType GovVote
  HsTy-GovVote .HasHsType.HsType = GovVote'
  
  Conv-GovVote : Convertible GovVote GovVote'
  Conv-GovVote .to v = record { gid = v.gid ; voter = to v.voter  ; vote = v.vote ; anchor = v.anchor }
    where module v = GovVote v
  Conv-GovVote .from v = record { gid = v.gid ; voter = from v.voter ; vote = v.vote ; anchor = v.anchor }
    where module v = GovVote' v

instance
  HsTy-GovRole = autoHsType GovRole
  Conv-GovRole = autoConvert GovRole

  HsTy-Anchor = autoHsType Anchor
  Conv-Anchor = autoConvert Anchor

  HsTy-VDeleg = autoHsType VDeleg
  Conv-VDeleg = autoConvert VDeleg

  HsTy-Vote = autoHsType Vote
  Conv-Vote = autoConvert Vote

  HsTy-GovVotes = autoHsType GovVotes
  Conv-GovVotes = autoConvert GovVotes
