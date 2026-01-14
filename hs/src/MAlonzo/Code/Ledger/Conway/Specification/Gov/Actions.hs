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
d_RewardAddress_246 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_262 = erased
-- _.RewardAddress.net
d_net_760 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_760 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RewardAddress.stake
d_stake_762 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_762 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovRole
d_GovRole_782 a0 = ()
data T_GovRole_782 = C_CC_784 | C_DRep_786 | C_SPO_788
-- Ledger.Conway.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_790 ~v0 = du_Show'45'GovRole_790
du_Show'45'GovRole_790 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_790
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_784 -> coe ("CC" :: Data.Text.Text)
              C_DRep_786 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_788 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_782 -> ()
d_GovRoleCredential_792 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovActionType
d_GovActionType_794 a0 = ()
data T_GovActionType_794
  = C_NoConfidence_796 | C_UpdateCommittee_798 |
    C_NewConstitution_800 | C_TriggerHardFork_802 |
    C_ChangePParams_804 | C_TreasuryWithdrawal_806 | C_Info_808
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_812 a0 a1 = ()
newtype T_HasGovActionType_812
  = C_constructor_820 (AgdaAny -> T_GovActionType_794)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_818 ::
  T_HasGovActionType_812 -> AgdaAny -> T_GovActionType_794
d_GovActionTypeOf_818 v0
  = case coe v0 of
      C_constructor_820 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_824 ::
  T_HasGovActionType_812 -> AgdaAny -> T_GovActionType_794
d_GovActionTypeOf_824 v0 = coe d_GovActionTypeOf_818 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovActionData
d_GovActionData_826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_794 -> ()
d_GovActionData_826 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovAction
d_GovAction_828 a0 = ()
data T_GovAction_828
  = C_'10214'_'44'_'10215''7501''7491'_838 T_GovActionType_794
                                           AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaType
d_gaType_834 :: T_GovAction_828 -> T_GovActionType_794
d_gaType_834 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_838 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaData
d_gaData_836 :: T_GovAction_828 -> AgdaAny
d_gaData_836 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_838 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction
d_HasGovAction_842 a0 a1 = ()
newtype T_HasGovAction_842
  = C_constructor_850 (AgdaAny -> T_GovAction_828)
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_848 ::
  T_HasGovAction_842 -> AgdaAny -> T_GovAction_828
d_GovActionOf_848 v0
  = case coe v0 of
      C_constructor_850 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_854 ::
  T_HasGovAction_842 -> AgdaAny -> T_GovAction_828
d_GovActionOf_854 v0 = coe d_GovActionOf_848 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_812
d_HasGovActionType'45'GovAction_856 ~v0
  = du_HasGovActionType'45'GovAction_856
du_HasGovActionType'45'GovAction_856 :: T_HasGovActionType_812
du_HasGovActionType'45'GovAction_856
  = coe C_constructor_820 (coe (\ v0 -> d_gaType_834 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_858 ~v0
  = du_HasCast'45'GovAction'45'Sigma_858
du_HasCast'45'GovAction'45'Sigma_858 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_858
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_834 (coe v0)) (coe d_gaData_836 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.GovActionID
d_GovActionID_862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_862 = erased
-- Ledger.Conway.Specification.Gov.Actions.Vote
d_Vote_864 a0 = ()
data T_Vote_864 = C_yes_866 | C_no_868 | C_abstain_870
-- Ledger.Conway.Specification.Gov.Actions.GovVoter
d_GovVoter_872 a0 = ()
data T_GovVoter_872
  = C_'10214'_'44'_'10215''7501''7515'_882 T_GovRole_782 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_878 :: T_GovVoter_872 -> T_GovRole_782
d_gvRole_878 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_882 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_880 :: T_GovVoter_872 -> AgdaAny
d_gvCredential_880 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_882 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor
d_Anchor_884 a0 = ()
data T_Anchor_884
  = C_constructor_894 MAlonzo.Code.Agda.Builtin.String.T_String_6
                      AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.Anchor.url
d_url_890 ::
  T_Anchor_884 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_890 v0
  = case coe v0 of
      C_constructor_894 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor.hash
d_hash_892 :: T_Anchor_884 -> AgdaAny
d_hash_892 v0
  = case coe v0 of
      C_constructor_894 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote
d_GovVote_896 a0 = ()
data T_GovVote_896
  = C_constructor_914 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      T_GovVoter_872 T_Vote_864 (Maybe T_Anchor_884)
-- Ledger.Conway.Specification.Gov.Actions.GovVote.gid
d_gid_906 ::
  T_GovVote_896 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_906 v0
  = case coe v0 of
      C_constructor_914 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.voter
d_voter_908 :: T_GovVote_896 -> T_GovVoter_872
d_voter_908 v0
  = case coe v0 of
      C_constructor_914 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.vote
d_vote_910 :: T_GovVote_896 -> T_Vote_864
d_vote_910 v0
  = case coe v0 of
      C_constructor_914 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.anchor
d_anchor_912 :: T_GovVote_896 -> Maybe T_Anchor_884
d_anchor_912 v0
  = case coe v0 of
      C_constructor_914 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes
d_GovVotes_916 a0 = ()
data T_GovVotes_916
  = C_constructor_930 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_924 ::
  T_GovVotes_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_924 v0
  = case coe v0 of
      C_constructor_930 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_926 ::
  T_GovVotes_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_926 v0
  = case coe v0 of
      C_constructor_930 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_928 ::
  T_GovVotes_916 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_928 v0
  = case coe v0 of
      C_constructor_930 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.VDeleg
d_VDeleg_932 a0 = ()
data T_VDeleg_932
  = C_vDelegCredential_934 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_936 | C_vDelegNoConfidence_938
-- Ledger.Conway.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_940 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_946 a0 a1 a2 = ()
newtype T_HasVoteDelegs_946
  = C_constructor_956 (AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_954 ::
  T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_954 v0
  = case coe v0 of
      C_constructor_956 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_960 ::
  T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_960 v0 = coe d_VoteDelegsOf_954 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.NeedsHash
d_NeedsHash_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_794 -> ()
d_NeedsHash_962 = erased
-- Ledger.Conway.Specification.Gov.Actions.HashProtected
d_HashProtected_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_964 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_970 ~v0 ~v1
  = du_HasCast'45'HashProtected_970
du_HasCast'45'HashProtected_970 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_970
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_972 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_972
du_HasCast'45'HashProtected'45'MaybeScriptHash_972 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_972
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.Policy
d_Policy_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_974 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovProposal
d_GovProposal_976 a0 = ()
data T_GovProposal_976
  = C_constructor_1002 T_GovAction_828 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
                       T_Anchor_884
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.action
d_action_990 :: T_GovProposal_976 -> T_GovAction_828
d_action_990 v0
  = case coe v0 of
      C_constructor_1002 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_992 :: T_GovProposal_976 -> AgdaAny
d_prevAction_992 v0
  = case coe v0 of
      C_constructor_1002 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.policy
d_policy_994 :: T_GovProposal_976 -> Maybe AgdaAny
d_policy_994 v0
  = case coe v0 of
      C_constructor_1002 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.deposit
d_deposit_996 :: T_GovProposal_976 -> Integer
d_deposit_996 v0
  = case coe v0 of
      C_constructor_1002 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_998 ::
  T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_998 v0
  = case coe v0 of
      C_constructor_1002 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1000 :: T_GovProposal_976 -> T_Anchor_884
d_anchor_1000 v0
  = case coe v0 of
      C_constructor_1002 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState
d_GovActionState_1004 a0 = ()
data T_GovActionState_1004
  = C_constructor_1026 T_GovVotes_916
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
                       AgdaAny T_GovAction_828 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.votes
d_votes_1016 :: T_GovActionState_1004 -> T_GovVotes_916
d_votes_1016 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1018 ::
  T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1018 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1020 :: T_GovActionState_1004 -> AgdaAny
d_expiresIn_1020 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.action
d_action_1022 :: T_GovActionState_1004 -> T_GovAction_828
d_action_1022 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1024 :: T_GovActionState_1004 -> AgdaAny
d_prevAction_1024 v0
  = case coe v0 of
      C_constructor_1026 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1032 a0 a1 a2 = ()
newtype T_HasGovVoter_1032
  = C_constructor_1042 (AgdaAny -> T_GovVoter_872)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1040 ::
  T_HasGovVoter_1032 -> AgdaAny -> T_GovVoter_872
d_GovVoterOf_1040 v0
  = case coe v0 of
      C_constructor_1042 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1046 ::
  T_HasGovVoter_1032 -> AgdaAny -> T_GovVoter_872
d_GovVoterOf_1046 v0 = coe d_GovVoterOf_1040 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasVote
d_HasVote_1052 a0 a1 a2 = ()
newtype T_HasVote_1052 = C_constructor_1062 (AgdaAny -> T_Vote_864)
-- Ledger.Conway.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1060 :: T_HasVote_1052 -> AgdaAny -> T_Vote_864
d_VoteOf_1060 v0
  = case coe v0 of
      C_constructor_1062 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteOf
d_VoteOf_1066 :: T_HasVote_1052 -> AgdaAny -> T_Vote_864
d_VoteOf_1066 v0 = coe d_VoteOf_1060 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1072 a0 a1 a2 = ()
newtype T_HasPolicy_1072
  = C_constructor_1082 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1080 :: T_HasPolicy_1072 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1080 v0
  = case coe v0 of
      C_constructor_1082 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1086 :: T_HasPolicy_1072 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1086 v0 = coe d_PolicyOf_1080 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1032
d_HasGovVoter'45'GovVote_1088 ~v0 = du_HasGovVoter'45'GovVote_1088
du_HasGovVoter'45'GovVote_1088 :: T_HasGovVoter_1032
du_HasGovVoter'45'GovVote_1088
  = coe C_constructor_1042 (coe (\ v0 -> d_voter_908 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1052
d_HasVote'45'GovVote_1090 ~v0 = du_HasVote'45'GovVote_1090
du_HasVote'45'GovVote_1090 :: T_HasVote_1052
du_HasVote'45'GovVote_1090
  = coe C_constructor_1062 (coe (\ v0 -> d_vote_910 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1072
d_HasPolicy'45'GovProposal_1092 ~v0
  = du_HasPolicy'45'GovProposal_1092
du_HasPolicy'45'GovProposal_1092 :: T_HasPolicy_1072
du_HasPolicy'45'GovProposal_1092
  = coe C_constructor_1082 (coe (\ v0 -> d_policy_994 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_842
d_HasGovAction'45'GovProposal_1094 ~v0
  = du_HasGovAction'45'GovProposal_1094
du_HasGovAction'45'GovProposal_1094 :: T_HasGovAction_842
du_HasGovAction'45'GovProposal_1094
  = coe C_constructor_850 (coe (\ v0 -> d_action_990 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_842
d_HasGovAction'45'GovActionState_1096 ~v0
  = du_HasGovAction'45'GovActionState_1096
du_HasGovAction'45'GovActionState_1096 :: T_HasGovAction_842
du_HasGovAction'45'GovActionState_1096
  = coe C_constructor_850 (coe (\ v0 -> d_action_1022 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_812
d_HasGovActionType'45'GovProposal_1098 ~v0
  = du_HasGovActionType'45'GovProposal_1098
du_HasGovActionType'45'GovProposal_1098 :: T_HasGovActionType_812
du_HasGovActionType'45'GovProposal_1098
  = coe
      C_constructor_820
      (coe (\ v0 -> d_gaType_834 (coe d_action_990 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_812
d_HasGovActionType'45'GovActionState_1100 ~v0
  = du_HasGovActionType'45'GovActionState_1100
du_HasGovActionType'45'GovActionState_1100 ::
  T_HasGovActionType_812
du_HasGovActionType'45'GovActionState_1100
  = coe
      C_constructor_820
      (coe (\ v0 -> d_gaType_834 (coe d_action_1022 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1102 ~v0 = du_DecEq'45'GovActionType_1102
du_DecEq'45'GovActionType_1102 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1102
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_796
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_798
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_800
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_802
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_804
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_806
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_808
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_796
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_798
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_800
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_802
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_804
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_806
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_808
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1104 ~v0 = du_DecEq'45'GovRole_1104
du_DecEq'45'GovRole_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1104
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_784
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_784
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_786
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_788
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_786
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_784
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_786
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_788
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_788
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_784
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_786
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_788
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1106 ~v0 = du_DecEq'45'Vote_1106
du_DecEq'45'Vote_1106 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1106
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_866
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_868
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_870
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_868
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_868
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_870
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_870
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_866
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_868
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_870
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1108 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_934 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_934 v4
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
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
                          C_vDelegAbstain_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_938
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_936
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_934 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_938
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_938
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_934 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_938
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1110 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_882 v2 v3
                -> case coe v2 of
                     C_CC_784
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_882 v5 v6
                                   -> case coe v5 of
                                        C_CC_784
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
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
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
                                        C_DRep_786
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_788
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_786
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_882 v5 v6
                                   -> case coe v5 of
                                        C_CC_784
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_786
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
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
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
                                        C_SPO_788
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_788
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_882 v5 v6
                                   -> case coe v5 of
                                        C_CC_784
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_786
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_788
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
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
d_HasCast'45'GovVote_1208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1208 ~v0 = du_HasCast'45'GovVote_1208
du_HasCast'45'GovVote_1208 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1208
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
                                 (896 :: Integer) (9062150309299526334 :: Integer)
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
                                 (862 :: Integer) (9062150309299526334 :: Integer)
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
                                    (896 :: Integer) (9062150309299526334 :: Integer)
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
                                       (896 :: Integer) (9062150309299526334 :: Integer)
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
                                       (864 :: Integer) (9062150309299526334 :: Integer)
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
                                          (896 :: Integer) (9062150309299526334 :: Integer)
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
                                                      (884 :: Integer)
                                                      (9062150309299526334 :: Integer)
                                                      "Ledger.Conway.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_914))
-- Ledger.Conway.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1210 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_934 v2
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_600
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_936 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_938
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1212 ~v0 v1 = du_isGovVoterDRep_1212 v1
du_isGovVoterDRep_1212 ::
  T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1212 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_882 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_786
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_872 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1216 ~v0 v1 = du_govVoterCredential_1216 v1
du_govVoterCredential_1216 ::
  T_GovVoter_872 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1216 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_882 v1 v2
        -> case coe v1 of
             C_CC_784 -> coe v2
             C_DRep_786 -> coe v2
             C_SPO_788
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.proposedCC
d_proposedCC_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_828 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1224 ~v0 v1 = du_proposedCC_1224 v1
du_proposedCC_1224 ::
  T_GovAction_828 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1224 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_838 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_798
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
d_DReps_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1228 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasDReps
d_HasDReps_1234 a0 a1 a2 = ()
newtype T_HasDReps_1234
  = C_constructor_1244 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1242 ::
  T_HasDReps_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1242 v0
  = case coe v0 of
      C_constructor_1244 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1248 ::
  T_HasDReps_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1248 v0 = coe d_DRepsOf_1242 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1250 = erased
-- Ledger.Conway.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1234 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1260 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1260 v0 v2 v3 v4
du_activeDRepsOf_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1234 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1260 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_646
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_646
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_646
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_646
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1242 v1 v2)
