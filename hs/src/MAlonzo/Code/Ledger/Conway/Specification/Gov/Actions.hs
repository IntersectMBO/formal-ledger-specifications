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
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
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
-- _.RwdAddr
d_RwdAddr_246 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_262 = erased
-- _.RwdAddr.net
d_net_762 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  AgdaAny
d_net_762 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- _.RwdAddr.stake
d_stake_764 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovRole
d_GovRole_784 a0 = ()
data T_GovRole_784 = C_CC_786 | C_DRep_788 | C_SPO_790
-- Ledger.Conway.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_784 -> ()
d_GovRoleCredential_792 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovVoter
d_GovVoter_794 a0 = ()
data T_GovVoter_794
  = C_'10214'_'44'_'10215''7501''7515'_804 T_GovRole_784 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_800 :: T_GovVoter_794 -> T_GovRole_784
d_gvRole_800 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_804 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_802 :: T_GovVoter_794 -> AgdaAny
d_gvCredential_802 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_804 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.VDeleg
d_VDeleg_806 a0 = ()
data T_VDeleg_806
  = C_vDelegCredential_808 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_810 | C_vDelegNoConfidence_812
-- Ledger.Conway.Specification.Gov.Actions.GovActionID
d_GovActionID_814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_814 = erased
-- Ledger.Conway.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_816 = erased
-- Ledger.Conway.Specification.Gov.Actions.Anchor
d_Anchor_818 a0 = ()
data T_Anchor_818
  = C_constructor_828 MAlonzo.Code.Agda.Builtin.String.T_String_6
                      AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.Anchor.url
d_url_824 ::
  T_Anchor_818 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_824 v0
  = case coe v0 of
      C_constructor_828 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Anchor.hash
d_hash_826 :: T_Anchor_818 -> AgdaAny
d_hash_826 v0
  = case coe v0 of
      C_constructor_828 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionType
d_GovActionType_830 a0 = ()
data T_GovActionType_830
  = C_NoConfidence_832 | C_UpdateCommittee_834 |
    C_NewConstitution_836 | C_TriggerHardFork_838 |
    C_ChangePParams_840 | C_TreasuryWithdrawal_842 | C_Info_844
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_850 a0 a1 a2 = ()
newtype T_HasVoteDelegs_850
  = C_constructor_860 (AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_858 ::
  T_HasVoteDelegs_850 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_858 v0
  = case coe v0 of
      C_constructor_860 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_864 ::
  T_HasVoteDelegs_850 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_864 v0 = coe d_VoteDelegsOf_858 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_868 a0 a1 = ()
newtype T_HasGovActionType_868
  = C_constructor_876 (AgdaAny -> T_GovActionType_830)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_874 ::
  T_HasGovActionType_868 -> AgdaAny -> T_GovActionType_830
d_GovActionTypeOf_874 v0
  = case coe v0 of
      C_constructor_876 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_880 ::
  T_HasGovActionType_868 -> AgdaAny -> T_GovActionType_830
d_GovActionTypeOf_880 v0 = coe d_GovActionTypeOf_874 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.GovActionData
d_GovActionData_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_830 -> ()
d_GovActionData_882 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovAction
d_GovAction_884 a0 = ()
data T_GovAction_884
  = C_'10214'_'44'_'10215''7501''7491'_894 T_GovActionType_830
                                           AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaType
d_gaType_890 :: T_GovAction_884 -> T_GovActionType_830
d_gaType_890 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_894 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovAction.gaData
d_gaData_892 :: T_GovAction_884 -> AgdaAny
d_gaData_892 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_894 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction
d_HasGovAction_898 a0 a1 = ()
newtype T_HasGovAction_898
  = C_constructor_906 (AgdaAny -> T_GovAction_884)
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_904 ::
  T_HasGovAction_898 -> AgdaAny -> T_GovAction_884
d_GovActionOf_904 v0
  = case coe v0 of
      C_constructor_906 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_910 ::
  T_HasGovAction_898 -> AgdaAny -> T_GovAction_884
d_GovActionOf_910 v0 = coe d_GovActionOf_904 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_868
d_HasGovActionType'45'GovAction_912 ~v0
  = du_HasGovActionType'45'GovAction_912
du_HasGovActionType'45'GovAction_912 :: T_HasGovActionType_868
du_HasGovActionType'45'GovAction_912
  = coe C_constructor_876 (coe (\ v0 -> d_gaType_890 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_914 ~v0
  = du_HasCast'45'GovAction'45'Sigma_914
du_HasCast'45'GovAction'45'Sigma_914 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_914
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_890 (coe v0)) (coe d_gaData_892 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_918 ~v0 = du_Show'45'GovRole_918
du_Show'45'GovRole_918 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_918
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_786 -> coe ("CC" :: Data.Text.Text)
              C_DRep_788 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_790 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.NeedsHash
d_NeedsHash_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_830 -> ()
d_NeedsHash_920 = erased
-- Ledger.Conway.Specification.Gov.Actions.HashProtected
d_HashProtected_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_922 = erased
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_928 ~v0 ~v1
  = du_HasCast'45'HashProtected_928
du_HasCast'45'HashProtected_928 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_928
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_930 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_930
du_HasCast'45'HashProtected'45'MaybeScriptHash_930 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_930
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.Vote
d_Vote_932 a0 = ()
data T_Vote_932 = C_yes_934 | C_no_936 | C_abstain_938
-- Ledger.Conway.Specification.Gov.Actions.GovVote
d_GovVote_940 a0 = ()
data T_GovVote_940
  = C_constructor_958 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      T_GovVoter_794 T_Vote_932 (Maybe T_Anchor_818)
-- Ledger.Conway.Specification.Gov.Actions.GovVote.gid
d_gid_950 ::
  T_GovVote_940 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_950 v0
  = case coe v0 of
      C_constructor_958 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.voter
d_voter_952 :: T_GovVote_940 -> T_GovVoter_794
d_voter_952 v0
  = case coe v0 of
      C_constructor_958 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.vote
d_vote_954 :: T_GovVote_940 -> T_Vote_932
d_vote_954 v0
  = case coe v0 of
      C_constructor_958 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVote.anchor
d_anchor_956 :: T_GovVote_940 -> Maybe T_Anchor_818
d_anchor_956 v0
  = case coe v0 of
      C_constructor_958 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.Policy
d_Policy_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_960 = erased
-- Ledger.Conway.Specification.Gov.Actions.GovProposal
d_GovProposal_962 a0 = ()
data T_GovProposal_962
  = C_constructor_988 T_GovAction_884 AgdaAny (Maybe AgdaAny) Integer
                      MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
                      T_Anchor_818
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.action
d_action_976 :: T_GovProposal_962 -> T_GovAction_884
d_action_976 v0
  = case coe v0 of
      C_constructor_988 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_978 :: T_GovProposal_962 -> AgdaAny
d_prevAction_978 v0
  = case coe v0 of
      C_constructor_988 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.policy
d_policy_980 :: T_GovProposal_962 -> Maybe AgdaAny
d_policy_980 v0
  = case coe v0 of
      C_constructor_988 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.deposit
d_deposit_982 :: T_GovProposal_962 -> Integer
d_deposit_982 v0
  = case coe v0 of
      C_constructor_988 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_984 ::
  T_GovProposal_962 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_984 v0
  = case coe v0 of
      C_constructor_988 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovProposal.anchor
d_anchor_986 :: T_GovProposal_962 -> T_Anchor_818
d_anchor_986 v0
  = case coe v0 of
      C_constructor_988 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes
d_GovVotes_990 a0 = ()
data T_GovVotes_990
  = C_constructor_1004 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_998 ::
  T_GovVotes_990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_998 v0
  = case coe v0 of
      C_constructor_1004 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_1000 ::
  T_GovVotes_990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1000 v0
  = case coe v0 of
      C_constructor_1004 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_1002 ::
  T_GovVotes_990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1002 v0
  = case coe v0 of
      C_constructor_1004 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState
d_GovActionState_1006 a0 = ()
data T_GovActionState_1006
  = C_constructor_1028 T_GovVotes_990
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
                       AgdaAny T_GovAction_884 AgdaAny
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.votes
d_votes_1018 :: T_GovActionState_1006 -> T_GovVotes_990
d_votes_1018 v0
  = case coe v0 of
      C_constructor_1028 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1020 ::
  T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1020 v0
  = case coe v0 of
      C_constructor_1028 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1022 :: T_GovActionState_1006 -> AgdaAny
d_expiresIn_1022 v0
  = case coe v0 of
      C_constructor_1028 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.action
d_action_1024 :: T_GovActionState_1006 -> T_GovAction_884
d_action_1024 v0
  = case coe v0 of
      C_constructor_1028 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1026 :: T_GovActionState_1006 -> AgdaAny
d_prevAction_1026 v0
  = case coe v0 of
      C_constructor_1028 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1034 a0 a1 a2 = ()
newtype T_HasGovVoter_1034
  = C_constructor_1044 (AgdaAny -> T_GovVoter_794)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1042 ::
  T_HasGovVoter_1034 -> AgdaAny -> T_GovVoter_794
d_GovVoterOf_1042 v0
  = case coe v0 of
      C_constructor_1044 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1048 ::
  T_HasGovVoter_1034 -> AgdaAny -> T_GovVoter_794
d_GovVoterOf_1048 v0 = coe d_GovVoterOf_1042 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasVote
d_HasVote_1054 a0 a1 a2 = ()
newtype T_HasVote_1054 = C_constructor_1064 (AgdaAny -> T_Vote_932)
-- Ledger.Conway.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1062 :: T_HasVote_1054 -> AgdaAny -> T_Vote_932
d_VoteOf_1062 v0
  = case coe v0 of
      C_constructor_1064 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.VoteOf
d_VoteOf_1068 :: T_HasVote_1054 -> AgdaAny -> T_Vote_932
d_VoteOf_1068 v0 = coe d_VoteOf_1062 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1074 a0 a1 a2 = ()
newtype T_HasPolicy_1074
  = C_constructor_1084 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1082 :: T_HasPolicy_1074 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1082 v0
  = case coe v0 of
      C_constructor_1084 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1088 :: T_HasPolicy_1074 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1088 v0 = coe d_PolicyOf_1082 (coe v0)
-- Ledger.Conway.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1034
d_HasGovVoter'45'GovVote_1090 ~v0 = du_HasGovVoter'45'GovVote_1090
du_HasGovVoter'45'GovVote_1090 :: T_HasGovVoter_1034
du_HasGovVoter'45'GovVote_1090
  = coe C_constructor_1044 (coe (\ v0 -> d_voter_952 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1054
d_HasVote'45'GovVote_1092 ~v0 = du_HasVote'45'GovVote_1092
du_HasVote'45'GovVote_1092 :: T_HasVote_1054
du_HasVote'45'GovVote_1092
  = coe C_constructor_1064 (coe (\ v0 -> d_vote_954 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1074
d_HasPolicy'45'GovProposal_1094 ~v0
  = du_HasPolicy'45'GovProposal_1094
du_HasPolicy'45'GovProposal_1094 :: T_HasPolicy_1074
du_HasPolicy'45'GovProposal_1094
  = coe C_constructor_1084 (coe (\ v0 -> d_policy_980 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_898
d_HasGovAction'45'GovProposal_1096 ~v0
  = du_HasGovAction'45'GovProposal_1096
du_HasGovAction'45'GovProposal_1096 :: T_HasGovAction_898
du_HasGovAction'45'GovProposal_1096
  = coe C_constructor_906 (coe (\ v0 -> d_action_976 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_898
d_HasGovAction'45'GovActionState_1098 ~v0
  = du_HasGovAction'45'GovActionState_1098
du_HasGovAction'45'GovActionState_1098 :: T_HasGovAction_898
du_HasGovAction'45'GovActionState_1098
  = coe C_constructor_906 (coe (\ v0 -> d_action_1024 (coe v0)))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_868
d_HasGovActionType'45'GovProposal_1100 ~v0
  = du_HasGovActionType'45'GovProposal_1100
du_HasGovActionType'45'GovProposal_1100 :: T_HasGovActionType_868
du_HasGovActionType'45'GovProposal_1100
  = coe
      C_constructor_876
      (coe (\ v0 -> d_gaType_890 (coe d_action_976 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_868
d_HasGovActionType'45'GovActionState_1102 ~v0
  = du_HasGovActionType'45'GovActionState_1102
du_HasGovActionType'45'GovActionState_1102 ::
  T_HasGovActionType_868
du_HasGovActionType'45'GovActionState_1102
  = coe
      C_constructor_876
      (coe (\ v0 -> d_gaType_890 (coe d_action_1024 (coe v0))))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1104 ~v0 = du_DecEq'45'GovActionType_1104
du_DecEq'45'GovActionType_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1104
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_832
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_834
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_836
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_838
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_840
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_842
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_844
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_832
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_834
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_836
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_838
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_840
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_842
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_844
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1106 ~v0 = du_DecEq'45'GovRole_1106
du_DecEq'45'GovRole_1106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1106
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_786
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_786
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_788
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_790
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_788
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_786
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_788
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_790
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_790
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_786
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_788
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_790
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1108 ~v0 = du_DecEq'45'Vote_1108
du_DecEq'45'Vote_1108 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1108
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_934
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_934
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_938
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_936
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_934
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_938
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_938
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_934
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_938
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1110 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_808 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_808 v4
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
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
                          C_vDelegAbstain_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_810
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_808 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_812
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_808 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_810
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_812
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1112 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_804 v2 v3
                -> case coe v2 of
                     C_CC_786
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_804 v5 v6
                                   -> case coe v5 of
                                        C_CC_786
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
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
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
                                        C_DRep_788
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_790
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_788
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_804 v5 v6
                                   -> case coe v5 of
                                        C_CC_786
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_788
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
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
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
                                        C_SPO_790
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_790
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_804 v5 v6
                                   -> case coe v5 of
                                        C_CC_786
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_788
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_790
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
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
d_HasCast'45'GovVote_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1210 ~v0 = du_HasCast'45'GovVote_1210
du_HasCast'45'GovVote_1210 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1210
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
                                 (940 :: Integer) (9062150309299526334 :: Integer)
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
                                 (814 :: Integer) (9062150309299526334 :: Integer)
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
                                    (940 :: Integer) (9062150309299526334 :: Integer)
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
                                    (794 :: Integer) (9062150309299526334 :: Integer)
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
                                       (940 :: Integer) (9062150309299526334 :: Integer)
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
                                       (932 :: Integer) (9062150309299526334 :: Integer)
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
                                          (940 :: Integer) (9062150309299526334 :: Integer)
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
                                                      (818 :: Integer)
                                                      (9062150309299526334 :: Integer)
                                                      "Ledger.Conway.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_958))
-- Ledger.Conway.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1212 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_808 v2
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_810 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_812
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_794 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1214 ~v0 v1 = du_isGovVoterDRep_1214 v1
du_isGovVoterDRep_1214 ::
  T_GovVoter_794 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1214 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_804 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_788
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.isGovVoterCredential
d_isGovVoterCredential_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_794 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1218 ~v0 v1
  = du_isGovVoterCredential_1218 v1
du_isGovVoterCredential_1218 ::
  T_GovVoter_794 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterCredential_1218 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_804 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_CC_786 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                C_DRep_788
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Actions.proposedCC
d_proposedCC_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_884 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1224 ~v0 v1 = du_proposedCC_1224 v1
du_proposedCC_1224 ::
  T_GovAction_884 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1224 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_894 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_834
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
