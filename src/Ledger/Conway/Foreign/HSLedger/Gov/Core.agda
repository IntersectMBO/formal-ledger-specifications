module Ledger.Conway.Foreign.HSLedger.Gov.Core where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Specification.Gov.Base
open import Ledger.Conway.Specification.Gov.Actions (GS→GAS govStructure) using (Vote)

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

GovVoter' : Type
GovVoter' = GovRole × Credential

instance
  mkGovVoter' : Convertible GovVoter GovVoter'
  mkGovVoter' .to ⟦ CC   , c ⟧ᵍᵛ = CC   , c
  mkGovVoter' .to ⟦ DRep , c ⟧ᵍᵛ = DRep , c
  mkGovVoter' .to ⟦ SPO  , c ⟧ᵍᵛ = SPO  , KeyHashObj c
  mkGovVoter' .from (CC   , c)   = ⟦ CC   , c ⟧ᵍᵛ
  mkGovVoter' .from (DRep , c)   = ⟦ DRep , c ⟧ᵍᵛ
  mkGovVoter' .from (SPO  , c)   =
    case c of λ where
      (KeyHashObj kh) → ⟦ SPO , kh ⟧ᵍᵛ
      (ScriptObj _)   → error "mkGovVoter: Converting from SPO with ScriptObj credential"

  HsTy-GovVoter = MkHsType GovVoter (HsType GovVoter')
  Conv-GovVoter : Convertible GovVoter (HsType GovVoter')
  Conv-GovVoter = mkGovVoter' ⨾ Convertible-Pair

unquoteDecl = do
  hsTypeAlias GovVoter

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

  HsTy-GovVote' = autoHsType GovVote' ⊣ withConstructor "MkGovVote"
                                      • withName "GovVote"
  Conv-GovVote' = autoConvert GovVote'

  HsTy-GovVote = MkHsType GovVote (HsType GovVote')
  Conv-GovVote = mkGovVote' ⨾ Conv-GovVote'
