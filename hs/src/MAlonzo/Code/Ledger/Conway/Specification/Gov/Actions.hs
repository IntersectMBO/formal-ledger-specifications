{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_42 a0 a1 a2 a3 = ()
-- _.Epoch
d_Epoch_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_124 = erased
-- _.THash
d_THash_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_178 = erased
-- _.RewardAddress
d_RewardAddress_248 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_264 = erased
-- _.RewardAddress.net
d_net_768 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RewardAddress.stake
d_stake_770 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_770 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovRole
d_GovRole_790 a0 = ()
data T_GovRole_790 = C_CC_792 | C_DRep_794 | C_SPO_796
-- Ledger.Conway.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_798 ~v0 = du_Show'45'GovRole_798
du_Show'45'GovRole_798 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_798
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_792 -> coe ("CC" :: Data.Text.Text)
              C_DRep_794 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_796 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_790 -> ()
d_GovRoleCredential_800 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovActionType
d_GovActionType_802 a0 = ()
data T_GovActionType_802
  = C_NoConfidence_804 | C_UpdateCommittee_806 |
    C_NewConstitution_808 | C_TriggerHardFork_810 |
    C_ChangePParams_812 | C_TreasuryWithdrawal_814 | C_Info_816
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_820 a0 a1 = ()
newtype T_HasGovActionType_820
  = C_constructor_828 (AgdaAny -> T_GovActionType_802)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_826 ::
  T_HasGovActionType_820 -> AgdaAny -> T_GovActionType_802
d_GovActionTypeOf_826 v0
  = case coe v0 of
      C_constructor_828 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_832 ::
  T_HasGovActionType_820 -> AgdaAny -> T_GovActionType_802
d_GovActionTypeOf_832 v0 = coe d_GovActionTypeOf_826 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovActionData
d_GovActionData_834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_802 -> ()
d_GovActionData_834 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovAction
d_GovAction_836 a0 = ()
data T_GovAction_836
  = C_'10214'_'44'_'10215''7501''7491'_846 T_GovActionType_802
                                           AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaType
d_gaType_842 :: T_GovAction_836 -> T_GovActionType_802
d_gaType_842 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_846 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaData
d_gaData_844 :: T_GovAction_836 -> AgdaAny
d_gaData_844 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_846 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction
d_HasGovAction_850 a0 a1 = ()
newtype T_HasGovAction_850
  = C_constructor_858 (AgdaAny -> T_GovAction_836)
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_856 ::
  T_HasGovAction_850 -> AgdaAny -> T_GovAction_836
d_GovActionOf_856 v0
  = case coe v0 of
      C_constructor_858 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_862 ::
  T_HasGovAction_850 -> AgdaAny -> T_GovAction_836
d_GovActionOf_862 v0 = coe d_GovActionOf_856 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_820
d_HasGovActionType'45'GovAction_864 ~v0
  = du_HasGovActionType'45'GovAction_864
du_HasGovActionType'45'GovAction_864 :: T_HasGovActionType_820
du_HasGovActionType'45'GovAction_864
  = coe C_constructor_828 (coe (\ v0 -> d_gaType_842 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_866 ~v0
  = du_HasCast'45'GovAction'45'Sigma_866
du_HasCast'45'GovAction'45'Sigma_866 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_866
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_842 (coe v0)) (coe d_gaData_844 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.GovActionID
d_GovActionID_870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_870 = erased
-- Ledger.Conway.Specification.Gov.Actions.Vote
d_Vote_872 a0 = ()
data T_Vote_872 = C_yes_874 | C_no_876 | C_abstain_878
-- Ledger.Conway.Specification.Gov.Actions.GovVoter
d_GovVoter_880 a0 = ()
data T_GovVoter_880
  = C_'10214'_'44'_'10215''7501''7515'_890 T_GovRole_790 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_886 :: T_GovVoter_880 -> T_GovRole_790
d_gvRole_886 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_890 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_888 :: T_GovVoter_880 -> AgdaAny
d_gvCredential_888 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_890 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor
d_Anchor_892 a0 = ()
data T_Anchor_892
  = C_constructor_902 MAlonzo.Code.Agda.Builtin.String.T_String_6
                      AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.Anchor.url
d_url_898 ::
  T_Anchor_892 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_898 v0
  = case coe v0 of
      C_constructor_902 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor.hash
d_hash_900 :: T_Anchor_892 -> AgdaAny
d_hash_900 v0
  = case coe v0 of
      C_constructor_902 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote
d_GovVote_904 a0 = ()
data T_GovVote_904
  = C_constructor_922 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      T_GovVoter_880 T_Vote_872 (Maybe T_Anchor_892)
-- Ledger.Conway.Specification.Gov.Actions.GovVote.gid
d_gid_914 ::
  T_GovVote_904 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_914 v0
  = case coe v0 of
      C_constructor_922 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.voter
d_voter_916 :: T_GovVote_904 -> T_GovVoter_880
d_voter_916 v0
  = case coe v0 of
      C_constructor_922 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.vote
d_vote_918 :: T_GovVote_904 -> T_Vote_872
d_vote_918 v0
  = case coe v0 of
      C_constructor_922 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.anchor
d_anchor_920 :: T_GovVote_904 -> Maybe T_Anchor_892
d_anchor_920 v0
  = case coe v0 of
      C_constructor_922 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes
d_GovVotes_924 a0 = ()
data T_GovVotes_924
  = C_constructor_938 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_932 ::
  T_GovVotes_924 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_932 v0
  = case coe v0 of
      C_constructor_938 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_934 ::
  T_GovVotes_924 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_934 v0
  = case coe v0 of
      C_constructor_938 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_936 ::
  T_GovVotes_924 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_936 v0
  = case coe v0 of
      C_constructor_938 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.VDeleg
d_VDeleg_940 a0 = ()
data T_VDeleg_940
  = C_vDelegCredential_942 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_944 | C_vDelegNoConfidence_946
-- Ledger.Conway.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_948 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_954 a0 a1 a2 = ()
newtype T_HasVoteDelegs_954
  = C_constructor_964 (AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_962 ::
  T_HasVoteDelegs_954 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_962 v0
  = case coe v0 of
      C_constructor_964 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_968 ::
  T_HasVoteDelegs_954 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_968 v0 = coe d_VoteDelegsOf_962 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.NeedsHash
d_NeedsHash_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_802 -> ()
d_NeedsHash_970 = erased
-- Ledger.Conway.Specification.Gov.Actions.HashProtected
d_HashProtected_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_972 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_978 ~v0 ~v1
  = du_HasCast'45'HashProtected_978
du_HasCast'45'HashProtected_978 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_978
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_980 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_980
du_HasCast'45'HashProtected'45'MaybeScriptHash_980 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_980
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.Policy
d_Policy_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_982 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovProposal
d_GovProposal_984 a0 = ()
data T_GovProposal_984
  = C_constructor_1010 T_GovAction_836 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
                       T_Anchor_892
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.action
d_action_998 :: T_GovProposal_984 -> T_GovAction_836
d_action_998 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_1000 :: T_GovProposal_984 -> AgdaAny
d_prevAction_1000 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.policy
d_policy_1002 :: T_GovProposal_984 -> Maybe AgdaAny
d_policy_1002 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.deposit
d_deposit_1004 :: T_GovProposal_984 -> Integer
d_deposit_1004 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_1006 ::
  T_GovProposal_984 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1006 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1008 :: T_GovProposal_984 -> T_Anchor_892
d_anchor_1008 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState
d_GovActionState_1012 a0 = ()
data T_GovActionState_1012
  = C_constructor_1034 T_GovVotes_924
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
                       AgdaAny T_GovAction_836 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.votes
d_votes_1024 :: T_GovActionState_1012 -> T_GovVotes_924
d_votes_1024 v0
  = case coe v0 of
      C_constructor_1034 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1026 ::
  T_GovActionState_1012 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1026 v0
  = case coe v0 of
      C_constructor_1034 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1028 :: T_GovActionState_1012 -> AgdaAny
d_expiresIn_1028 v0
  = case coe v0 of
      C_constructor_1034 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.action
d_action_1030 :: T_GovActionState_1012 -> T_GovAction_836
d_action_1030 v0
  = case coe v0 of
      C_constructor_1034 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1032 :: T_GovActionState_1012 -> AgdaAny
d_prevAction_1032 v0
  = case coe v0 of
      C_constructor_1034 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1040 a0 a1 a2 = ()
newtype T_HasGovVoter_1040
  = C_constructor_1050 (AgdaAny -> T_GovVoter_880)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1048 ::
  T_HasGovVoter_1040 -> AgdaAny -> T_GovVoter_880
d_GovVoterOf_1048 v0
  = case coe v0 of
      C_constructor_1050 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1054 ::
  T_HasGovVoter_1040 -> AgdaAny -> T_GovVoter_880
d_GovVoterOf_1054 v0 = coe d_GovVoterOf_1048 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasVote
d_HasVote_1060 a0 a1 a2 = ()
newtype T_HasVote_1060 = C_constructor_1070 (AgdaAny -> T_Vote_872)
-- Ledger.Conway.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1068 :: T_HasVote_1060 -> AgdaAny -> T_Vote_872
d_VoteOf_1068 v0
  = case coe v0 of
      C_constructor_1070 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteOf
d_VoteOf_1074 :: T_HasVote_1060 -> AgdaAny -> T_Vote_872
d_VoteOf_1074 v0 = coe d_VoteOf_1068 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1080 a0 a1 a2 = ()
newtype T_HasPolicy_1080
  = C_constructor_1090 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1088 :: T_HasPolicy_1080 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1088 v0
  = case coe v0 of
      C_constructor_1090 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1094 :: T_HasPolicy_1080 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1094 v0 = coe d_PolicyOf_1088 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1040
d_HasGovVoter'45'GovVote_1096 ~v0 = du_HasGovVoter'45'GovVote_1096
du_HasGovVoter'45'GovVote_1096 :: T_HasGovVoter_1040
du_HasGovVoter'45'GovVote_1096
  = coe C_constructor_1050 (coe (\ v0 -> d_voter_916 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1060
d_HasVote'45'GovVote_1098 ~v0 = du_HasVote'45'GovVote_1098
du_HasVote'45'GovVote_1098 :: T_HasVote_1060
du_HasVote'45'GovVote_1098
  = coe C_constructor_1070 (coe (\ v0 -> d_vote_918 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1080
d_HasPolicy'45'GovProposal_1100 ~v0
  = du_HasPolicy'45'GovProposal_1100
du_HasPolicy'45'GovProposal_1100 :: T_HasPolicy_1080
du_HasPolicy'45'GovProposal_1100
  = coe C_constructor_1090 (coe (\ v0 -> d_policy_1002 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_850
d_HasGovAction'45'GovProposal_1102 ~v0
  = du_HasGovAction'45'GovProposal_1102
du_HasGovAction'45'GovProposal_1102 :: T_HasGovAction_850
du_HasGovAction'45'GovProposal_1102
  = coe C_constructor_858 (coe (\ v0 -> d_action_998 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_850
d_HasGovAction'45'GovActionState_1104 ~v0
  = du_HasGovAction'45'GovActionState_1104
du_HasGovAction'45'GovActionState_1104 :: T_HasGovAction_850
du_HasGovAction'45'GovActionState_1104
  = coe C_constructor_858 (coe (\ v0 -> d_action_1030 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_820
d_HasGovActionType'45'GovProposal_1106 ~v0
  = du_HasGovActionType'45'GovProposal_1106
du_HasGovActionType'45'GovProposal_1106 :: T_HasGovActionType_820
du_HasGovActionType'45'GovProposal_1106
  = coe
      C_constructor_828
      (coe (\ v0 -> d_gaType_842 (coe d_action_998 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_820
d_HasGovActionType'45'GovActionState_1108 ~v0
  = du_HasGovActionType'45'GovActionState_1108
du_HasGovActionType'45'GovActionState_1108 ::
  T_HasGovActionType_820
du_HasGovActionType'45'GovActionState_1108
  = coe
      C_constructor_828
      (coe (\ v0 -> d_gaType_842 (coe d_action_1030 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1110 ~v0 = du_DecEq'45'GovActionType_1110
du_DecEq'45'GovActionType_1110 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1110
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_804
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_806
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_808
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_810
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_812
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_814
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_816
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_814
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_816
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1112 ~v0 = du_DecEq'45'GovRole_1112
du_DecEq'45'GovRole_1112 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1112
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_792
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_792
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_794
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_794
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_792
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_794
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_796
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_792
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_794
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1114 ~v0 = du_DecEq'45'Vote_1114
du_DecEq'45'Vote_1114 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1114
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_874
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_874
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_876
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_878
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_876
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_874
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_876
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_878
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_878
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_874
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_876
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_878
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1116 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_942 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_942 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                  (coe v0))))
                                         v2 v4 in
                               coe
                                 (case coe v5 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                      -> if coe v6
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          C_vDelegAbstain_944
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_946
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_944
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_942 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_944
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_946
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_946
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_942 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_944
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_946
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1118 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_890 v2 v3
                -> case coe v2 of
                     C_CC_792
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_890 v5 v6
                                   -> case coe v5 of
                                        C_CC_792
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                                (coe v0))))
                                                       v3 v6 in
                                             coe
                                               (case coe v7 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                    -> if coe v8
                                                         then coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased))
                                                         else coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        C_DRep_794
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_796
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_794
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_890 v5 v6
                                   -> case coe v5 of
                                        C_CC_792
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_794
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                                (coe v0))))
                                                       v3 v6 in
                                             coe
                                               (case coe v7 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                    -> if coe v8
                                                         then coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased))
                                                         else coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        C_SPO_796
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_796
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_890 v5 v6
                                   -> case coe v5 of
                                        C_CC_792
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_794
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_796
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                                                (coe v0))))
                                                       v3 v6 in
                                             coe
                                               (case coe v7 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                                    -> if coe v8
                                                         then coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased))
                                                         else coe
                                                                seq (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v8)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovVote
d_HasCast'45'GovVote_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1216 ~v0 = du_HasCast'45'GovVote_1216
du_HasCast'45'GovVote_1216 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1216
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (904 :: Integer) (9062150309299526334 :: Integer)
                                 "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (870 :: Integer) (9062150309299526334 :: Integer)
                                 "Ledger.Conway.Specification.Gov.Actions.GovActionID"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (904 :: Integer) (9062150309299526334 :: Integer)
                                    "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (880 :: Integer) (9062150309299526334 :: Integer)
                                    "Ledger.Conway.Specification.Gov.Actions.GovVoter"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (904 :: Integer) (9062150309299526334 :: Integer)
                                       "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (872 :: Integer) (9062150309299526334 :: Integer)
                                       "Ledger.Conway.Specification.Gov.Actions.Vote"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (904 :: Integer) (9062150309299526334 :: Integer)
                                          "Ledger.Conway.Specification.Gov.Actions.GovVote"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (10 :: Integer) (15412666033012224255 :: Integer)
                                          "Agda.Builtin.Maybe.Maybe"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (20 :: Integer) (10880583612240331187 :: Integer)
                                                   "Agda.Primitive.lzero"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (892 :: Integer)
                                                      (9062150309299526334 :: Integer)
                                                      "Ledger.Conway.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_922))
-- Ledger.Conway.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1218 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_942 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("vDelegCredential" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_608
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_944 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_946
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_880 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1220 ~v0 v1 = du_isGovVoterDRep_1220 v1
du_isGovVoterDRep_1220 ::
  T_GovVoter_880 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1220 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_890 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_794
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_880 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1224 ~v0 v1 = du_govVoterCredential_1224 v1
du_govVoterCredential_1224 ::
  T_GovVoter_880 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1224 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_890 v1 v2
        -> case coe v1 of
             C_CC_792 -> coe v2
             C_DRep_794 -> coe v2
             C_SPO_796
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.proposedCC
d_proposedCC_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_836 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1232 ~v0 v1 = du_proposedCC_1232 v1
du_proposedCC_1232 ::
  T_GovAction_836 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1232 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_846 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_806
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                         -> coe
                              seq (coe v5)
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v4))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.DReps
d_DReps_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1236 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasDReps
d_HasDReps_1242 a0 a1 a2 = ()
newtype T_HasDReps_1242
  = C_constructor_1252 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1250 ::
  T_HasDReps_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1250 v0
  = case coe v0 of
      C_constructor_1252 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1256 ::
  T_HasDReps_1242 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1256 v0 = coe d_DRepsOf_1250 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1258 = erased
-- Ledger.Conway.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1242 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1268 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1268 v0 v2 v3 v4
du_activeDRepsOf_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1242 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1268 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_654
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_654
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_654
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_654
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1250 v1 v2)
