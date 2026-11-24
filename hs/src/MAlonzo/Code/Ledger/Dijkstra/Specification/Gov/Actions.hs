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
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_100 v2 v3
du_DecEq'45'Credential_100 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_100 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_130 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_130 v1 v2 v3
du_DecEq'45'RewardAddress_130 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_130 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_166 = erased
-- _.HasRewardAddress
d_HasRewardAddress_222 a0 a1 a2 a3 a4 a5 = ()
-- _.THash
d_THash_248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_248 = erased
-- _.RewardAddress
d_RewardAddress_328 a0 a1 a2 a3 = ()
-- _.RewardAddressOf
d_RewardAddressOf_332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- _.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_344 = erased
-- _.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- _.RewardAddress.net
d_net_938 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_938 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- _.RewardAddress.stake
d_stake_940 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_940 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.GovRole
d_GovRole_950 a0 = ()
data T_GovRole_950 = C_CC_952 | C_DRep_954 | C_SPO_956
-- Ledger.Dijkstra.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_950 -> ()
d_GovRoleCredential_958 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionType
d_GovActionType_960 a0 = ()
data T_GovActionType_960
  = C_NoConfidence_962 | C_UpdateCommittee_964 |
    C_NewConstitution_966 | C_TriggerHardFork_968 |
    C_ChangePParams_970 | C_TreasuryWithdrawal_972 | C_Info_974
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionData
d_GovActionData_976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_960 -> ()
d_GovActionData_976 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction
d_GovAction_978 a0 = ()
data T_GovAction_978
  = C_'10214'_'44'_'10215''7501''7491'_988 T_GovActionType_960
                                           AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaType
d_gaType_984 :: T_GovAction_978 -> T_GovActionType_960
d_gaType_984 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_988 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaData
d_gaData_986 :: T_GovAction_978 -> AgdaAny
d_gaData_986 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_988 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionID
d_GovActionID_990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_990 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.Vote
d_Vote_992 a0 = ()
data T_Vote_992 = C_yes_994 | C_no_996 | C_abstain_998
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter
d_GovVoter_1000 a0 = ()
data T_GovVoter_1000
  = C_'10214'_'44'_'10215''7501''7515'_1010 T_GovRole_950 AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_1006 :: T_GovVoter_1000 -> T_GovRole_950
d_gvRole_1006 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1010 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_1008 :: T_GovVoter_1000 -> AgdaAny
d_gvCredential_1008 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1010 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor
d_Anchor_1012 a0 = ()
data T_Anchor_1012
  = C_constructor_1022 MAlonzo.Code.Agda.Builtin.String.T_String_6
                       AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor.url
d_url_1018 ::
  T_Anchor_1012 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1018 v0
  = case coe v0 of
      C_constructor_1022 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor.hash
d_hash_1020 :: T_Anchor_1012 -> AgdaAny
d_hash_1020 v0
  = case coe v0 of
      C_constructor_1022 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote
d_GovVote_1024 a0 = ()
data T_GovVote_1024
  = C_constructor_1042 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       T_GovVoter_1000 T_Vote_992 (Maybe T_Anchor_1012)
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.gid
d_gid_1034 ::
  T_GovVote_1024 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1034 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.voter
d_voter_1036 :: T_GovVote_1024 -> T_GovVoter_1000
d_voter_1036 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.vote
d_vote_1038 :: T_GovVote_1024 -> T_Vote_992
d_vote_1038 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.anchor
d_anchor_1040 :: T_GovVote_1024 -> Maybe T_Anchor_1012
d_anchor_1040 v0
  = case coe v0 of
      C_constructor_1042 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes
d_GovVotes_1044 a0 = ()
data T_GovVotes_1044
  = C_constructor_1058 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_1052 ::
  T_GovVotes_1044 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1052 v0
  = case coe v0 of
      C_constructor_1058 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_1054 ::
  T_GovVotes_1044 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1054 v0
  = case coe v0 of
      C_constructor_1058 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_1056 ::
  T_GovVotes_1044 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1056 v0
  = case coe v0 of
      C_constructor_1058 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.VDeleg
d_VDeleg_1060 a0 = ()
data T_VDeleg_1060
  = C_vDelegCredential_1062 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_1064 | C_vDelegNoConfidence_1066
-- Ledger.Dijkstra.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_1068 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.NeedsHash
d_NeedsHash_1070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_960 -> ()
d_NeedsHash_1070 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.HashProtected
d_HashProtected_1072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_1072 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.Policy
d_Policy_1076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_1076 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal
d_GovProposal_1078 a0 = ()
data T_GovProposal_1078
  = C_constructor_1104 T_GovAction_978 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       T_Anchor_1012
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.action
d_action_1092 :: T_GovProposal_1078 -> T_GovAction_978
d_action_1092 v0
  = case coe v0 of
      C_constructor_1104 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_1094 :: T_GovProposal_1078 -> AgdaAny
d_prevAction_1094 v0
  = case coe v0 of
      C_constructor_1104 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.policy
d_policy_1096 :: T_GovProposal_1078 -> Maybe AgdaAny
d_policy_1096 v0
  = case coe v0 of
      C_constructor_1104 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.deposit
d_deposit_1098 :: T_GovProposal_1078 -> Integer
d_deposit_1098 v0
  = case coe v0 of
      C_constructor_1104 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_1100 ::
  T_GovProposal_1078 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1100 v0
  = case coe v0 of
      C_constructor_1104 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1102 :: T_GovProposal_1078 -> T_Anchor_1012
d_anchor_1102 v0
  = case coe v0 of
      C_constructor_1104 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState
d_GovActionState_1106 a0 = ()
data T_GovActionState_1106
  = C_constructor_1132 T_GovVotes_1044
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       AgdaAny T_GovAction_978 AgdaAny Integer
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.votes
d_votes_1120 :: T_GovActionState_1106 -> T_GovVotes_1044
d_votes_1120 v0
  = case coe v0 of
      C_constructor_1132 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1122 ::
  T_GovActionState_1106 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1122 v0
  = case coe v0 of
      C_constructor_1132 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1124 :: T_GovActionState_1106 -> AgdaAny
d_expiresIn_1124 v0
  = case coe v0 of
      C_constructor_1132 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.action
d_action_1126 :: T_GovActionState_1106 -> T_GovAction_978
d_action_1126 v0
  = case coe v0 of
      C_constructor_1132 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1128 :: T_GovActionState_1106 -> AgdaAny
d_prevAction_1128 v0
  = case coe v0 of
      C_constructor_1132 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.deposit
d_deposit_1130 :: T_GovActionState_1106 -> Integer
d_deposit_1130 v0
  = case coe v0 of
      C_constructor_1132 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_1000 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1134 ~v0 v1 = du_isGovVoterDRep_1134 v1
du_isGovVoterDRep_1134 ::
  T_GovVoter_1000 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1134 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1010 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_954
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_1000 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1138 ~v0 v1 = du_govVoterCredential_1138 v1
du_govVoterCredential_1138 ::
  T_GovVoter_1000 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1138 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_1010 v1 v2
        -> case coe v1 of
             C_CC_952 -> coe v2
             C_DRep_954 -> coe v2
             C_SPO_956
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.proposedCC
d_proposedCC_1146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_978 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1146 ~v0 v1 = du_proposedCC_1146 v1
du_proposedCC_1146 ::
  T_GovAction_978 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1146 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_988 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_964
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                         -> coe
                              seq (coe v5)
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596) (coe v4))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.DReps
d_DReps_1150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1150 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_1154 a0 a1 = ()
newtype T_HasGovActionType_1154
  = C_constructor_1162 (AgdaAny -> T_GovActionType_960)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1160 ::
  T_HasGovActionType_1154 -> AgdaAny -> T_GovActionType_960
d_GovActionTypeOf_1160 v0
  = case coe v0 of
      C_constructor_1162 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_1166 ::
  T_HasGovActionType_1154 -> AgdaAny -> T_GovActionType_960
d_GovActionTypeOf_1166 v0 = coe d_GovActionTypeOf_1160 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_1172 a0 a1 a2 = ()
newtype T_HasVoteDelegs_1172
  = C_constructor_1182 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1180 ::
  T_HasVoteDelegs_1172 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1180 v0
  = case coe v0 of
      C_constructor_1182 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_1186 ::
  T_HasVoteDelegs_1172 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1186 v0 = coe d_VoteDelegsOf_1180 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction
d_HasGovAction_1190 a0 a1 = ()
newtype T_HasGovAction_1190
  = C_constructor_1198 (AgdaAny -> T_GovAction_978)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_1196 ::
  T_HasGovAction_1190 -> AgdaAny -> T_GovAction_978
d_GovActionOf_1196 v0
  = case coe v0 of
      C_constructor_1198 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_1202 ::
  T_HasGovAction_1190 -> AgdaAny -> T_GovAction_978
d_GovActionOf_1202 v0 = coe d_GovActionOf_1196 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1208 a0 a1 a2 = ()
newtype T_HasGovVoter_1208
  = C_constructor_1218 (AgdaAny -> T_GovVoter_1000)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1216 ::
  T_HasGovVoter_1208 -> AgdaAny -> T_GovVoter_1000
d_GovVoterOf_1216 v0
  = case coe v0 of
      C_constructor_1218 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1222 ::
  T_HasGovVoter_1208 -> AgdaAny -> T_GovVoter_1000
d_GovVoterOf_1222 v0 = coe d_GovVoterOf_1216 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes
d_HasGovVotes_1228 a0 a1 a2 = ()
newtype T_HasGovVotes_1228
  = C_constructor_1238 (AgdaAny -> T_GovVotes_1044)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes.GovVotesOf
d_GovVotesOf_1236 ::
  T_HasGovVotes_1228 -> AgdaAny -> T_GovVotes_1044
d_GovVotesOf_1236 v0
  = case coe v0 of
      C_constructor_1238 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovVotesOf
d_GovVotesOf_1242 ::
  T_HasGovVotes_1228 -> AgdaAny -> T_GovVotes_1044
d_GovVotesOf_1242 v0 = coe d_GovVotesOf_1236 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote
d_HasVote_1248 a0 a1 a2 = ()
newtype T_HasVote_1248 = C_constructor_1258 (AgdaAny -> T_Vote_992)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1256 :: T_HasVote_1248 -> AgdaAny -> T_Vote_992
d_VoteOf_1256 v0
  = case coe v0 of
      C_constructor_1258 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.VoteOf
d_VoteOf_1262 :: T_HasVote_1248 -> AgdaAny -> T_Vote_992
d_VoteOf_1262 v0 = coe d_VoteOf_1256 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1268 a0 a1 a2 = ()
newtype T_HasPolicy_1268
  = C_constructor_1278 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1276 :: T_HasPolicy_1268 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1276 v0
  = case coe v0 of
      C_constructor_1278 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1282 :: T_HasPolicy_1268 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1282 v0 = coe d_PolicyOf_1276 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDReps
d_HasDReps_1288 a0 a1 a2 = ()
newtype T_HasDReps_1288
  = C_constructor_1298 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1296 ::
  T_HasDReps_1288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1296 v0
  = case coe v0 of
      C_constructor_1298 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1302 ::
  T_HasDReps_1288 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1302 v0 = coe d_DRepsOf_1296 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor
d_HasAnchor_1308 a0 a1 a2 = ()
newtype T_HasAnchor_1308
  = C_constructor_1318 (AgdaAny -> T_Anchor_1012)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor.AnchorOf
d_AnchorOf_1316 :: T_HasAnchor_1308 -> AgdaAny -> T_Anchor_1012
d_AnchorOf_1316 v0
  = case coe v0 of
      C_constructor_1318 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.AnchorOf
d_AnchorOf_1322 :: T_HasAnchor_1308 -> AgdaAny -> T_Anchor_1012
d_AnchorOf_1322 v0 = coe d_AnchorOf_1316 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit
d_HasDeposit_1328 a0 a1 a2 = ()
newtype T_HasDeposit_1328 = C_constructor_1338 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit.DepositOf
d_DepositOf_1336 :: T_HasDeposit_1328 -> AgdaAny -> Integer
d_DepositOf_1336 v0
  = case coe v0 of
      C_constructor_1338 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.DepositOf
d_DepositOf_1342 :: T_HasDeposit_1328 -> AgdaAny -> Integer
d_DepositOf_1342 v0 = coe d_DepositOf_1336 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1154
d_HasGovActionType'45'GovAction_1344 ~v0
  = du_HasGovActionType'45'GovAction_1344
du_HasGovActionType'45'GovAction_1344 :: T_HasGovActionType_1154
du_HasGovActionType'45'GovAction_1344
  = coe C_constructor_1162 (coe (\ v0 -> d_gaType_984 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1346 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1346
du_HasCast'45'GovAction'45'Sigma_1346 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1346
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_984 (coe v0)) (coe d_gaData_986 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1352 ~v0 ~v1
  = du_HasCast'45'HashProtected_1352
du_HasCast'45'HashProtected_1352 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1352
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1354 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1354
du_HasCast'45'HashProtected'45'MaybeScriptHash_1354 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1354
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1208
d_HasGovVoter'45'GovVote_1356 ~v0 = du_HasGovVoter'45'GovVote_1356
du_HasGovVoter'45'GovVote_1356 :: T_HasGovVoter_1208
du_HasGovVoter'45'GovVote_1356
  = coe C_constructor_1218 (coe (\ v0 -> d_voter_1036 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1248
d_HasVote'45'GovVote_1358 ~v0 = du_HasVote'45'GovVote_1358
du_HasVote'45'GovVote_1358 :: T_HasVote_1248
du_HasVote'45'GovVote_1358
  = coe C_constructor_1258 (coe (\ v0 -> d_vote_1038 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1268
d_HasPolicy'45'GovProposal_1360 ~v0
  = du_HasPolicy'45'GovProposal_1360
du_HasPolicy'45'GovProposal_1360 :: T_HasPolicy_1268
du_HasPolicy'45'GovProposal_1360
  = coe C_constructor_1278 (coe (\ v0 -> d_policy_1096 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_1362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasAnchor_1308
d_HasAnchor'45'GovProposal_1362 ~v0
  = du_HasAnchor'45'GovProposal_1362
du_HasAnchor'45'GovProposal_1362 :: T_HasAnchor_1308
du_HasAnchor'45'GovProposal_1362
  = coe C_constructor_1318 (coe (\ v0 -> d_anchor_1102 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDeposit_1328
d_HasDeposit'45'GovProposal_1364 ~v0
  = du_HasDeposit'45'GovProposal_1364
du_HasDeposit'45'GovProposal_1364 :: T_HasDeposit_1328
du_HasDeposit'45'GovProposal_1364
  = coe C_constructor_1338 (coe (\ v0 -> d_deposit_1098 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_1190
d_HasGovAction'45'GovProposal_1366 ~v0
  = du_HasGovAction'45'GovProposal_1366
du_HasGovAction'45'GovProposal_1366 :: T_HasGovAction_1190
du_HasGovAction'45'GovProposal_1366
  = coe C_constructor_1198 (coe (\ v0 -> d_action_1092 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_1190
d_HasGovAction'45'GovActionState_1368 ~v0
  = du_HasGovAction'45'GovActionState_1368
du_HasGovAction'45'GovActionState_1368 :: T_HasGovAction_1190
du_HasGovAction'45'GovActionState_1368
  = coe C_constructor_1198 (coe (\ v0 -> d_action_1126 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1154
d_HasGovActionType'45'GovProposal_1370 ~v0
  = du_HasGovActionType'45'GovProposal_1370
du_HasGovActionType'45'GovProposal_1370 :: T_HasGovActionType_1154
du_HasGovActionType'45'GovProposal_1370
  = coe
      C_constructor_1162
      (coe (\ v0 -> d_gaType_984 (coe d_action_1092 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1154
d_HasGovActionType'45'GovActionState_1372 ~v0
  = du_HasGovActionType'45'GovActionState_1372
du_HasGovActionType'45'GovActionState_1372 ::
  T_HasGovActionType_1154
du_HasGovActionType'45'GovActionState_1372
  = coe
      C_constructor_1162
      (coe (\ v0 -> d_gaType_984 (coe d_action_1126 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVotes_1228
d_HasGovVotes'45'GovActionState_1374 ~v0
  = du_HasGovVotes'45'GovActionState_1374
du_HasGovVotes'45'GovActionState_1374 :: T_HasGovVotes_1228
du_HasGovVotes'45'GovActionState_1374
  = coe C_constructor_1238 (coe (\ v0 -> d_votes_1120 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_1376 ~v0
  = du_HasRewardAddress'45'GovActionState_1376
du_HasRewardAddress'45'GovActionState_1376 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_1376
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_144
      (coe (\ v0 -> d_returnAddr_1122 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_1378 ~v0
  = du_HasRewardAddress'45'GovProposal_1378
du_HasRewardAddress'45'GovProposal_1378 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_1378
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_144
      (coe (\ v0 -> d_returnAddr_1100 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1380 ~v0 = du_Show'45'GovRole_1380
du_Show'45'GovRole_1380 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1380
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_952 -> coe ("CC" :: Data.Text.Text)
              C_DRep_954 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_956 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_1382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1382 ~v0 = du_DecEq'45'GovActionType_1382
du_DecEq'45'GovActionType_1382 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1382
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_962
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_964
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_966
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_968
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_970
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_972
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_974
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_962
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_964
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_966
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_968
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_970
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_972
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_974
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1384 ~v0 = du_DecEq'45'GovRole_1384
du_DecEq'45'GovRole_1384 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1384
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_952
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_952
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_954
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_956
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_954
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_952
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_954
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_956
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_956
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_952
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_954
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_956
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1386 ~v0 = du_DecEq'45'Vote_1386
du_DecEq'45'Vote_1386 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1386
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_994
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_994
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_996
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_998
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_996
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_994
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_996
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_998
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_998
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_994
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_996
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_998
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1388 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1062 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_1062 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
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
                          C_vDelegAbstain_1064
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1066
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_1064
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1062 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1064
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_1066
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_1066
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1062 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1064
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1066
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1390 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_1010 v2 v3
                -> case coe v2 of
                     C_CC_952
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_1010 v5 v6
                                   -> case coe v5 of
                                        C_CC_952
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
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
                                        C_DRep_954
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_956
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_954
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_1010 v5 v6
                                   -> case coe v5 of
                                        C_CC_952
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_954
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
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
                                        C_SPO_956
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_956
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_1010 v5 v6
                                   -> case coe v5 of
                                        C_CC_952
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_954
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_956
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
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
d_HasCast'45'GovVote_1488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1488 ~v0 = du_HasCast'45'GovVote_1488
du_HasCast'45'GovVote_1488 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1488
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
                                 (1024 :: Integer) (13033562529995964478 :: Integer)
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
                                 (990 :: Integer) (13033562529995964478 :: Integer)
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
                                    (1024 :: Integer) (13033562529995964478 :: Integer)
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
                                    (1000 :: Integer) (13033562529995964478 :: Integer)
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
                                       (1024 :: Integer) (13033562529995964478 :: Integer)
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
                                       (992 :: Integer) (13033562529995964478 :: Integer)
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
                                          (1024 :: Integer) (13033562529995964478 :: Integer)
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
                                                      (1012 :: Integer)
                                                      (13033562529995964478 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_1042))
-- Ledger.Dijkstra.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1490 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1062 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("vDelegCredential" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_352
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_1064 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_1066
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-Anchor
d_DecEq'45'Anchor_1492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1492 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_1022 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_constructor_1022 v5 v6
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
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_746
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
d_'61''61''45'Set_1498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1498 ~v0 ~v1 v2 v3 v4
  = du_'61''61''45'Set_1498 v2 v3 v4
du_'61''61''45'Set_1498 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1498 v0 v1 v2
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
d_'61''61''45'GovActionData_1510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_960 -> AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1510 v0 v1
  = case coe v1 of
      C_NoConfidence_962
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      C_UpdateCommittee_964
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
                                                      du_'61''61''45'Set_1498
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                          (coe v0))) in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                          (coe v0)) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                  (coe v12) (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_844
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                         (coe v8)))
                                                   (coe
                                                      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                         (coe ())
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                             (coe v0))) in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                             (coe v0)) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
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
      C_NewConstitution_966
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_746
                   (coe v0))
                (coe
                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                      (coe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                         (coe v0)))))
      C_TriggerHardFork_968
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      C_ChangePParams_970
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1930
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1466
                   (coe v0)))
      C_TreasuryWithdrawal_972
        -> coe
             (\ v2 v3 ->
                coe
                  du_'61''61''45'Set_1498
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (let v4
                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_894
                                   (coe v0)) in
                      coe
                        (let v5
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                         (coe v0))) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                 (coe v4) (coe v5) (coe v6)))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v2))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_580 (coe v3)))
      C_Info_974
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovAction
d_'61''61''45'GovAction_1528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_978 -> T_GovAction_978 -> Bool
d_'61''61''45'GovAction_1528 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'10215''7501''7491'_988 v3 v4
        -> case coe v2 of
             C_'10214'_'44'_'10215''7501''7491'_988 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_1382) v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     seq (coe v9) (coe d_'61''61''45'GovActionData_1510 v0 v3 v4 v6)
                              else coe seq (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_960 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1560 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (case coe v1 of
         C_NoConfidence_962
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_744
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_UpdateCommittee_964
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_744
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_NewConstitution_966
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_744
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TriggerHardFork_968
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_744
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_ChangePParams_970
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_744
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TreasuryWithdrawal_972
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         C_Info_974
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovProposal
d_'61''61''45'GovProposal_1562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovProposal_1078 -> T_GovProposal_1078 -> Bool
d_'61''61''45'GovProposal_1562 v0 v1 v2
  = case coe v1 of
      C_constructor_1104 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C_constructor_1104 v9 v10 v11 v12 v13 v14
               -> let v15
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_1382) (d_gaType_984 (coe v3))
                            (d_gaType_984 (coe v9)) in
                  coe
                    (case coe v15 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                         -> if coe v16
                              then coe
                                     seq (coe v17)
                                     (case coe v3 of
                                        C_'10214'_'44'_'10215''7501''7491'_988 v18 v19
                                          -> coe
                                               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                               (coe
                                                  d_'61''61''45'GovAction_1528 (coe v0)
                                                  (coe
                                                     C_'10214'_'44'_'10215''7501''7491'_988
                                                     (coe d_gaType_984 (coe v9)) (coe v19))
                                                  (coe v9))
                                               (coe
                                                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                     (coe ())
                                                     (coe
                                                        d_DecEq'45'NeedsHash_1560 (coe v0)
                                                        (coe d_gaType_984 (coe v9)))
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_894
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_748
                                                                       (coe v0))))
                                                              (coe v7) (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe d_DecEq'45'Anchor_1492 (coe v0))
                                                              (coe v8) (coe v14))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              else coe seq (coe v17) (coe v16)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1658 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1288 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1668 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1668 v0 v2 v3 v4
du_activeDRepsOf_1668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1288 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1668 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1446
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_844
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_844
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_844
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_844
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1296 v1 v2)
