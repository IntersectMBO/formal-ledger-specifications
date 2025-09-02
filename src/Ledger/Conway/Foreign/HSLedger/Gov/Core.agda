module Ledger.Conway.Foreign.HSLedger.Gov.Core where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)

GovVoter' : Type
GovVoter' = GovRole × Credential

instance
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
  mkGovVote' : Convertible GovVote GovVote'
  mkGovVote' = λ where
    .to v   → let module v = GovVote v in record { gid = v.gid ; voter = to v.voter  ; vote = v.vote ; anchor = v.anchor }
    .from v → let module v = GovVote' v in record { gid = v.gid ; voter = from v.voter ; vote = v.vote ; anchor = v.anchor }

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

  HsTy-GovVote' = autoHsType GovVote'
  Conv-GovVote' = autoConvert GovVote'

  HsTy-GovVote = MkHsType GovVote (HsType GovVote')
  Conv-GovVote = mkGovVote' ⨾ Conv-GovVote'
