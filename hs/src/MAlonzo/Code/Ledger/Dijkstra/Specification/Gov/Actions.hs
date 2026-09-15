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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions where

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
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Bool.ListAction
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.String.Properties
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_58 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_102 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_102 v2 v3
du_DecEq'45'Credential_102 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_102 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_128 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_128 v1 v2 v3
du_DecEq'45'RewardAddress_128 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_128 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_160 = erased
-- _.HasRewardAddress
d_HasRewardAddress_214 a0 a1 a2 a3 a4 a5 = ()
-- _.THash
d_THash_240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_240 = erased
-- _.RewardAddress
d_RewardAddress_314 a0 a1 a2 a3 = ()
-- _.RewardAddressOf
d_RewardAddressOf_318 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- _.ScriptHash
d_ScriptHash_332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_332 = erased
-- _.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_638 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_638 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- _.RewardAddress.net
d_net_876 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_876 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- _.RewardAddress.stake
d_stake_878 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_878 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.GovRole
d_GovRole_888 a0 = ()
data T_GovRole_888 = C_CC_890 | C_DRep_892 | C_SPO_894
-- Ledger.Dijkstra.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_888 -> ()
d_GovRoleCredential_896 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionType
d_GovActionType_898 a0 = ()
data T_GovActionType_898
  = C_NoConfidence_900 | C_UpdateCommittee_902 |
    C_NewConstitution_904 | C_TriggerHardFork_906 |
    C_ChangePParams_908 | C_TreasuryWithdrawal_910 | C_Info_912
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionData
d_GovActionData_914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_898 -> ()
d_GovActionData_914 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction
d_GovAction_916 a0 = ()
data T_GovAction_916
  = C_'10214'_'44'_'10215''7501''7491'_926 T_GovActionType_898
                                           AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaType
d_gaType_922 :: T_GovAction_916 -> T_GovActionType_898
d_gaType_922 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_926 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaData
d_gaData_924 :: T_GovAction_916 -> AgdaAny
d_gaData_924 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_926 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionID
d_GovActionID_928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_928 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.Vote
d_Vote_930 a0 = ()
data T_Vote_930 = C_yes_932 | C_no_934 | C_abstain_936
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter
d_GovVoter_938 a0 = ()
data T_GovVoter_938
  = C_'10214'_'44'_'10215''7501''7515'_948 T_GovRole_888 AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_944 :: T_GovVoter_938 -> T_GovRole_888
d_gvRole_944 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_948 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_946 :: T_GovVoter_938 -> AgdaAny
d_gvCredential_946 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_948 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor
d_Anchor_950 a0 = ()
data T_Anchor_950
  = C_constructor_960 MAlonzo.Code.Agda.Builtin.String.T_String_6
                      AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor.url
d_url_956 ::
  T_Anchor_950 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_956 v0
  = case coe v0 of
      C_constructor_960 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor.hash
d_hash_958 :: T_Anchor_950 -> AgdaAny
d_hash_958 v0
  = case coe v0 of
      C_constructor_960 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote
d_GovVote_962 a0 = ()
data T_GovVote_962
  = C_constructor_980 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      T_GovVoter_938 T_Vote_930 (Maybe T_Anchor_950)
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.gid
d_gid_972 ::
  T_GovVote_962 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_972 v0
  = case coe v0 of
      C_constructor_980 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.voter
d_voter_974 :: T_GovVote_962 -> T_GovVoter_938
d_voter_974 v0
  = case coe v0 of
      C_constructor_980 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.vote
d_vote_976 :: T_GovVote_962 -> T_Vote_930
d_vote_976 v0
  = case coe v0 of
      C_constructor_980 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.anchor
d_anchor_978 :: T_GovVote_962 -> Maybe T_Anchor_950
d_anchor_978 v0
  = case coe v0 of
      C_constructor_980 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes
d_GovVotes_982 a0 = ()
data T_GovVotes_982
  = C_constructor_996 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_990 ::
  T_GovVotes_982 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_990 v0
  = case coe v0 of
      C_constructor_996 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_992 ::
  T_GovVotes_982 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_992 v0
  = case coe v0 of
      C_constructor_996 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_994 ::
  T_GovVotes_982 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_994 v0
  = case coe v0 of
      C_constructor_996 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.VDeleg
d_VDeleg_998 a0 = ()
data T_VDeleg_998
  = C_vDelegCredential_1000 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_1002 | C_vDelegNoConfidence_1004
-- Ledger.Dijkstra.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_1006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_1006 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.NeedsHash
d_NeedsHash_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_898 -> ()
d_NeedsHash_1008 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.HashProtected
d_HashProtected_1010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_1010 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.Policy
d_Policy_1014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_1014 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal
d_GovProposal_1016 a0 = ()
data T_GovProposal_1016
  = C_constructor_1042 T_GovAction_916 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       T_Anchor_950
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.action
d_action_1030 :: T_GovProposal_1016 -> T_GovAction_916
d_action_1030 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_1032 :: T_GovProposal_1016 -> AgdaAny
d_prevAction_1032 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.policy
d_policy_1034 :: T_GovProposal_1016 -> Maybe AgdaAny
d_policy_1034 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.deposit
d_deposit_1036 :: T_GovProposal_1016 -> Integer
d_deposit_1036 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_1038 ::
  T_GovProposal_1016 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1038 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1040 :: T_GovProposal_1016 -> T_Anchor_950
d_anchor_1040 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState
d_GovActionState_1044 a0 = ()
data T_GovActionState_1044
  = C_constructor_1070 T_GovVotes_982
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       AgdaAny T_GovAction_916 AgdaAny Integer
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.votes
d_votes_1058 :: T_GovActionState_1044 -> T_GovVotes_982
d_votes_1058 v0
  = case coe v0 of
      C_constructor_1070 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1060 ::
  T_GovActionState_1044 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1060 v0
  = case coe v0 of
      C_constructor_1070 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1062 :: T_GovActionState_1044 -> AgdaAny
d_expiresIn_1062 v0
  = case coe v0 of
      C_constructor_1070 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.action
d_action_1064 :: T_GovActionState_1044 -> T_GovAction_916
d_action_1064 v0
  = case coe v0 of
      C_constructor_1070 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1066 :: T_GovActionState_1044 -> AgdaAny
d_prevAction_1066 v0
  = case coe v0 of
      C_constructor_1070 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.deposit
d_deposit_1068 :: T_GovActionState_1044 -> Integer
d_deposit_1068 v0
  = case coe v0 of
      C_constructor_1070 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_938 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1072 ~v0 v1 = du_isGovVoterDRep_1072 v1
du_isGovVoterDRep_1072 ::
  T_GovVoter_938 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1072 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_948 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_892
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_938 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1076 ~v0 v1 = du_govVoterCredential_1076 v1
du_govVoterCredential_1076 ::
  T_GovVoter_938 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1076 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_948 v1 v2
        -> case coe v1 of
             C_CC_890 -> coe v2
             C_DRep_892 -> coe v2
             C_SPO_894
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.proposedCC
d_proposedCC_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_916 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1084 ~v0 v1 = du_proposedCC_1084 v1
du_proposedCC_1084 ::
  T_GovAction_916 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1084 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_926 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_902
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
-- Ledger.Dijkstra.Specification.Gov.Actions.DReps
d_DReps_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1088 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_1092 a0 a1 = ()
newtype T_HasGovActionType_1092
  = C_constructor_1100 (AgdaAny -> T_GovActionType_898)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1098 ::
  T_HasGovActionType_1092 -> AgdaAny -> T_GovActionType_898
d_GovActionTypeOf_1098 v0
  = case coe v0 of
      C_constructor_1100 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_1104 ::
  T_HasGovActionType_1092 -> AgdaAny -> T_GovActionType_898
d_GovActionTypeOf_1104 v0 = coe d_GovActionTypeOf_1098 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_1110 a0 a1 a2 = ()
newtype T_HasVoteDelegs_1110
  = C_constructor_1120 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1118 ::
  T_HasVoteDelegs_1110 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1118 v0
  = case coe v0 of
      C_constructor_1120 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_1124 ::
  T_HasVoteDelegs_1110 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1124 v0 = coe d_VoteDelegsOf_1118 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction
d_HasGovAction_1128 a0 a1 = ()
newtype T_HasGovAction_1128
  = C_constructor_1136 (AgdaAny -> T_GovAction_916)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_1134 ::
  T_HasGovAction_1128 -> AgdaAny -> T_GovAction_916
d_GovActionOf_1134 v0
  = case coe v0 of
      C_constructor_1136 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_1140 ::
  T_HasGovAction_1128 -> AgdaAny -> T_GovAction_916
d_GovActionOf_1140 v0 = coe d_GovActionOf_1134 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1146 a0 a1 a2 = ()
newtype T_HasGovVoter_1146
  = C_constructor_1156 (AgdaAny -> T_GovVoter_938)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1154 ::
  T_HasGovVoter_1146 -> AgdaAny -> T_GovVoter_938
d_GovVoterOf_1154 v0
  = case coe v0 of
      C_constructor_1156 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1160 ::
  T_HasGovVoter_1146 -> AgdaAny -> T_GovVoter_938
d_GovVoterOf_1160 v0 = coe d_GovVoterOf_1154 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes
d_HasGovVotes_1166 a0 a1 a2 = ()
newtype T_HasGovVotes_1166
  = C_constructor_1176 (AgdaAny -> T_GovVotes_982)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes.GovVotesOf
d_GovVotesOf_1174 ::
  T_HasGovVotes_1166 -> AgdaAny -> T_GovVotes_982
d_GovVotesOf_1174 v0
  = case coe v0 of
      C_constructor_1176 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovVotesOf
d_GovVotesOf_1180 ::
  T_HasGovVotes_1166 -> AgdaAny -> T_GovVotes_982
d_GovVotesOf_1180 v0 = coe d_GovVotesOf_1174 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote
d_HasVote_1186 a0 a1 a2 = ()
newtype T_HasVote_1186 = C_constructor_1196 (AgdaAny -> T_Vote_930)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1194 :: T_HasVote_1186 -> AgdaAny -> T_Vote_930
d_VoteOf_1194 v0
  = case coe v0 of
      C_constructor_1196 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.VoteOf
d_VoteOf_1200 :: T_HasVote_1186 -> AgdaAny -> T_Vote_930
d_VoteOf_1200 v0 = coe d_VoteOf_1194 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1206 a0 a1 a2 = ()
newtype T_HasPolicy_1206
  = C_constructor_1216 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1214 :: T_HasPolicy_1206 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1214 v0
  = case coe v0 of
      C_constructor_1216 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1220 :: T_HasPolicy_1206 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1220 v0 = coe d_PolicyOf_1214 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDReps
d_HasDReps_1226 a0 a1 a2 = ()
newtype T_HasDReps_1226
  = C_constructor_1236 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1234 ::
  T_HasDReps_1226 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1234 v0
  = case coe v0 of
      C_constructor_1236 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1240 ::
  T_HasDReps_1226 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1240 v0 = coe d_DRepsOf_1234 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor
d_HasAnchor_1246 a0 a1 a2 = ()
newtype T_HasAnchor_1246
  = C_constructor_1256 (AgdaAny -> T_Anchor_950)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor.AnchorOf
d_AnchorOf_1254 :: T_HasAnchor_1246 -> AgdaAny -> T_Anchor_950
d_AnchorOf_1254 v0
  = case coe v0 of
      C_constructor_1256 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.AnchorOf
d_AnchorOf_1260 :: T_HasAnchor_1246 -> AgdaAny -> T_Anchor_950
d_AnchorOf_1260 v0 = coe d_AnchorOf_1254 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit
d_HasDeposit_1266 a0 a1 a2 = ()
newtype T_HasDeposit_1266 = C_constructor_1276 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit.DepositOf
d_DepositOf_1274 :: T_HasDeposit_1266 -> AgdaAny -> Integer
d_DepositOf_1274 v0
  = case coe v0 of
      C_constructor_1276 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.DepositOf
d_DepositOf_1280 :: T_HasDeposit_1266 -> AgdaAny -> Integer
d_DepositOf_1280 v0 = coe d_DepositOf_1274 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1092
d_HasGovActionType'45'GovAction_1282 ~v0
  = du_HasGovActionType'45'GovAction_1282
du_HasGovActionType'45'GovAction_1282 :: T_HasGovActionType_1092
du_HasGovActionType'45'GovAction_1282
  = coe C_constructor_1100 (coe (\ v0 -> d_gaType_922 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1284 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1284
du_HasCast'45'GovAction'45'Sigma_1284 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1284
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_922 (coe v0)) (coe d_gaData_924 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1290 ~v0 ~v1
  = du_HasCast'45'HashProtected_1290
du_HasCast'45'HashProtected_1290 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1290
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1292 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1292
du_HasCast'45'HashProtected'45'MaybeScriptHash_1292 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1292
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1146
d_HasGovVoter'45'GovVote_1294 ~v0 = du_HasGovVoter'45'GovVote_1294
du_HasGovVoter'45'GovVote_1294 :: T_HasGovVoter_1146
du_HasGovVoter'45'GovVote_1294
  = coe C_constructor_1156 (coe (\ v0 -> d_voter_974 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1186
d_HasVote'45'GovVote_1296 ~v0 = du_HasVote'45'GovVote_1296
du_HasVote'45'GovVote_1296 :: T_HasVote_1186
du_HasVote'45'GovVote_1296
  = coe C_constructor_1196 (coe (\ v0 -> d_vote_976 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1206
d_HasPolicy'45'GovProposal_1298 ~v0
  = du_HasPolicy'45'GovProposal_1298
du_HasPolicy'45'GovProposal_1298 :: T_HasPolicy_1206
du_HasPolicy'45'GovProposal_1298
  = coe C_constructor_1216 (coe (\ v0 -> d_policy_1034 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_1300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasAnchor_1246
d_HasAnchor'45'GovProposal_1300 ~v0
  = du_HasAnchor'45'GovProposal_1300
du_HasAnchor'45'GovProposal_1300 :: T_HasAnchor_1246
du_HasAnchor'45'GovProposal_1300
  = coe C_constructor_1256 (coe (\ v0 -> d_anchor_1040 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDeposit_1266
d_HasDeposit'45'GovProposal_1302 ~v0
  = du_HasDeposit'45'GovProposal_1302
du_HasDeposit'45'GovProposal_1302 :: T_HasDeposit_1266
du_HasDeposit'45'GovProposal_1302
  = coe C_constructor_1276 (coe (\ v0 -> d_deposit_1036 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_1128
d_HasGovAction'45'GovProposal_1304 ~v0
  = du_HasGovAction'45'GovProposal_1304
du_HasGovAction'45'GovProposal_1304 :: T_HasGovAction_1128
du_HasGovAction'45'GovProposal_1304
  = coe C_constructor_1136 (coe (\ v0 -> d_action_1030 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_1128
d_HasGovAction'45'GovActionState_1306 ~v0
  = du_HasGovAction'45'GovActionState_1306
du_HasGovAction'45'GovActionState_1306 :: T_HasGovAction_1128
du_HasGovAction'45'GovActionState_1306
  = coe C_constructor_1136 (coe (\ v0 -> d_action_1064 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1092
d_HasGovActionType'45'GovProposal_1308 ~v0
  = du_HasGovActionType'45'GovProposal_1308
du_HasGovActionType'45'GovProposal_1308 :: T_HasGovActionType_1092
du_HasGovActionType'45'GovProposal_1308
  = coe
      C_constructor_1100
      (coe (\ v0 -> d_gaType_922 (coe d_action_1030 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1092
d_HasGovActionType'45'GovActionState_1310 ~v0
  = du_HasGovActionType'45'GovActionState_1310
du_HasGovActionType'45'GovActionState_1310 ::
  T_HasGovActionType_1092
du_HasGovActionType'45'GovActionState_1310
  = coe
      C_constructor_1100
      (coe (\ v0 -> d_gaType_922 (coe d_action_1064 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVotes_1166
d_HasGovVotes'45'GovActionState_1312 ~v0
  = du_HasGovVotes'45'GovActionState_1312
du_HasGovVotes'45'GovActionState_1312 :: T_HasGovVotes_1166
du_HasGovVotes'45'GovActionState_1312
  = coe C_constructor_1176 (coe (\ v0 -> d_votes_1058 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_1314 ~v0
  = du_HasRewardAddress'45'GovActionState_1314
du_HasRewardAddress'45'GovActionState_1314 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_1314
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_144
      (coe (\ v0 -> d_returnAddr_1060 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_1316 ~v0
  = du_HasRewardAddress'45'GovProposal_1316
du_HasRewardAddress'45'GovProposal_1316 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_1316
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_144
      (coe (\ v0 -> d_returnAddr_1038 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1318 ~v0 = du_Show'45'GovRole_1318
du_Show'45'GovRole_1318 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1318
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_890 -> coe ("CC" :: Data.Text.Text)
              C_DRep_892 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_894 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1320 ~v0 = du_DecEq'45'GovActionType_1320
du_DecEq'45'GovActionType_1320 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1320
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_900
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_902
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_904
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_906
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_908
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_910
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_912
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_900
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_902
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_910
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_912
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1322 ~v0 = du_DecEq'45'GovRole_1322
du_DecEq'45'GovRole_1322 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1322
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_890
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_890
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_892
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_894
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_892
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_890
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_892
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_894
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_894
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_890
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_892
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_894
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1324 ~v0 = du_DecEq'45'Vote_1324
du_DecEq'45'Vote_1324 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1324
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_932
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_932
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_934
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_934
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_932
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_934
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_936
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_932
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_934
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_936
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1326 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1000 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_1000 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
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
                          C_vDelegAbstain_1002
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1004
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_1002
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1000 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1002
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_1004
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_1004
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1000 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1002
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1004
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1328 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_948 v2 v3
                -> case coe v2 of
                     C_CC_890
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_948 v5 v6
                                   -> case coe v5 of
                                        C_CC_890
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
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
                                        C_DRep_892
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_894
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_892
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_948 v5 v6
                                   -> case coe v5 of
                                        C_CC_890
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_892
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
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
                                        C_SPO_894
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_894
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_948 v5 v6
                                   -> case coe v5 of
                                        C_CC_890
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_892
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_894
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
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
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-GovVote
d_HasCast'45'GovVote_1426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1426 ~v0 = du_HasCast'45'GovVote_1426
du_HasCast'45'GovVote_1426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1426
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
                                 (962 :: Integer) (13033562529995964478 :: Integer)
                                 "Ledger.Dijkstra.Specification.Gov.Actions.GovVote"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (928 :: Integer) (13033562529995964478 :: Integer)
                                 "Ledger.Dijkstra.Specification.Gov.Actions.GovActionID"
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
                                    (962 :: Integer) (13033562529995964478 :: Integer)
                                    "Ledger.Dijkstra.Specification.Gov.Actions.GovVote"
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
                                    (938 :: Integer) (13033562529995964478 :: Integer)
                                    "Ledger.Dijkstra.Specification.Gov.Actions.GovVoter"
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
                                       (962 :: Integer) (13033562529995964478 :: Integer)
                                       "Ledger.Dijkstra.Specification.Gov.Actions.GovVote"
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
                                       (930 :: Integer) (13033562529995964478 :: Integer)
                                       "Ledger.Dijkstra.Specification.Gov.Actions.Vote"
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
                                          (962 :: Integer) (13033562529995964478 :: Integer)
                                          "Ledger.Dijkstra.Specification.Gov.Actions.GovVote"
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
                                                      (950 :: Integer)
                                                      (13033562529995964478 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_980))
-- Ledger.Dijkstra.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1428 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1000 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("vDelegCredential" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_1002 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_1004
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-Anchor
d_DecEq'45'Anchor_1430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1430 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_960 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_constructor_960 v5 v6
                            -> let v7
                                     = MAlonzo.Code.Data.String.Properties.d__'8799'__54
                                         (coe v2) (coe v5) in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                      -> if coe v8
                                           then let v10
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_680
                                                             (coe v0))
                                                          v3 v6 in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                       -> if coe v11
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v11)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.==-Set
d_'61''61''45'Set_1436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1436 ~v0 ~v1 v2 v3 v4
  = du_'61''61''45'Set_1436 v2 v3 v4
du_'61''61''45'Set_1436 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1436 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         MAlonzo.Code.Data.Bool.ListAction.du_all_18
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
                 erased
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased v0 v3 v2)))
         (coe v1))
      (coe
         MAlonzo.Code.Data.Bool.ListAction.du_all_18
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
                 erased
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased v0 v3 v1)))
         (coe v2))
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovActionData
d_'61''61''45'GovActionData_1448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_898 -> AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1448 v0 v1
  = case coe v1 of
      C_NoConfidence_900
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      C_UpdateCommittee_902
        -> coe
             (\ v2 ->
                case coe v2 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                    -> case coe v4 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                           -> coe
                                (\ v7 ->
                                   case coe v7 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                       -> case coe v9 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                              -> coe
                                                   MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                   (coe
                                                      du_'61''61''45'Set_1436
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                          (coe v0))) in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                          (coe v0)) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe v12) (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_766
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                         (coe v8)))
                                                   (coe
                                                      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                         (coe ())
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                             (coe v0))) in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                             (coe v0)) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                     (coe v12) (coe v13)))))
                                                         (coe v5) (coe v10))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                         (coe ())
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2792))
                                                         (coe v6) (coe v11)))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError)
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError)
      C_NewConstitution_904
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_680
                   (coe v0))
                (coe
                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                      (coe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                         (coe v0)))))
      C_TriggerHardFork_906
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      C_ChangePParams_908
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1334
                   (coe v0)))
      C_TreasuryWithdrawal_910
        -> coe
             (\ v2 v3 ->
                coe
                  du_'61''61''45'Set_1436
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (let v4
                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_814
                                   (coe v0)) in
                      coe
                        (let v5
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                         (coe v0))) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe v4) (coe v5) (coe v6)))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3)))
      C_Info_912
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovAction
d_'61''61''45'GovAction_1466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_916 -> T_GovAction_916 -> Bool
d_'61''61''45'GovAction_1466 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'10215''7501''7491'_926 v3 v4
        -> case coe v2 of
             C_'10214'_'44'_'10215''7501''7491'_926 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_1320) v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     seq (coe v9) (coe d_'61''61''45'GovActionData_1448 v0 v3 v4 v6)
                              else coe seq (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_898 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1498 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (case coe v1 of
         C_NoConfidence_900
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_678
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_UpdateCommittee_902
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_678
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_NewConstitution_904
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_678
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TriggerHardFork_906
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_678
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_ChangePParams_908
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_678
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TreasuryWithdrawal_910
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         C_Info_912
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovProposal
d_'61''61''45'GovProposal_1500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovProposal_1016 -> T_GovProposal_1016 -> Bool
d_'61''61''45'GovProposal_1500 v0 v1 v2
  = case coe v1 of
      C_constructor_1042 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C_constructor_1042 v9 v10 v11 v12 v13 v14
               -> let v15
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_1320) (d_gaType_922 (coe v3))
                            (d_gaType_922 (coe v9)) in
                  coe
                    (case coe v15 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                         -> if coe v16
                              then coe
                                     seq (coe v17)
                                     (case coe v3 of
                                        C_'10214'_'44'_'10215''7501''7491'_926 v18 v19
                                          -> coe
                                               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                               (coe
                                                  d_'61''61''45'GovAction_1466 (coe v0)
                                                  (coe
                                                     C_'10214'_'44'_'10215''7501''7491'_926
                                                     (coe d_gaType_922 (coe v9)) (coe v19))
                                                  (coe v9))
                                               (coe
                                                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                     (coe ())
                                                     (coe
                                                        d_DecEq'45'NeedsHash_1498 (coe v0)
                                                        (coe d_gaType_922 (coe v9)))
                                                     (coe v4) (coe v10))
                                                  (coe
                                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                        (coe ())
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                 (coe v0))))
                                                        (coe v5) (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                           (coe ())
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                              (coe
                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                           (coe v6) (coe v12))
                                                        (coe
                                                           MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_814
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_682
                                                                       (coe v0))))
                                                              (coe v7) (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe d_DecEq'45'Anchor_1430 (coe v0))
                                                              (coe v8) (coe v14))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              else coe seq (coe v17) (coe v16)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1596 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1226 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1606 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1606 v0 v2 v3 v4
du_activeDRepsOf_1606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1226 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1606 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_766
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_766
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_766
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_766
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1234 v1 v2)
