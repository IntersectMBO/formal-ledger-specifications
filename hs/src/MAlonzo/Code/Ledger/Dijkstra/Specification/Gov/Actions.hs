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
d_Credential_60 a0 a1 a2 a3 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_104 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_104 v2 v3
du_DecEq'45'Credential_104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_104 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe v0) (coe v1)
-- _.DecEq-RewardAddress
d_DecEq'45'RewardAddress_134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_134 ~v0 v1 v2 v3
  = du_DecEq'45'RewardAddress_134 v1 v2 v3
du_DecEq'45'RewardAddress_134 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_134 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe v0) (coe v1) (coe v2)
-- _.Epoch
d_Epoch_170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_170 = erased
-- _.HasRewardAddress
d_HasRewardAddress_224 a0 a1 a2 a3 a4 a5 = ()
-- _.THash
d_THash_250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_THash_250 = erased
-- _.RewardAddress
d_RewardAddress_326 a0 a1 a2 a3 = ()
-- _.RewardAddressOf
d_RewardAddressOf_330 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- _.ScriptHash
d_ScriptHash_344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_344 = erased
-- _.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- _.RewardAddress.net
d_net_890 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_890 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- _.RewardAddress.stake
d_stake_892 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.GovRole
d_GovRole_902 a0 = ()
data T_GovRole_902 = C_CC_904 | C_DRep_906 | C_SPO_908
-- Ledger.Dijkstra.Specification.Gov.Actions.GovRoleCredential
d_GovRoleCredential_910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovRole_902 -> ()
d_GovRoleCredential_910 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionType
d_GovActionType_912 a0 = ()
data T_GovActionType_912
  = C_NoConfidence_914 | C_UpdateCommittee_916 |
    C_NewConstitution_918 | C_TriggerHardFork_920 |
    C_ChangePParams_922 | C_TreasuryWithdrawal_924 | C_Info_926
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionData
d_GovActionData_928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_912 -> ()
d_GovActionData_928 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction
d_GovAction_930 a0 = ()
data T_GovAction_930
  = C_'10214'_'44'_'10215''7501''7491'_940 T_GovActionType_912
                                           AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaType
d_gaType_936 :: T_GovAction_930 -> T_GovActionType_912
d_gaType_936 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_940 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovAction.gaData
d_gaData_938 :: T_GovAction_930 -> AgdaAny
d_gaData_938 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_940 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionID
d_GovActionID_942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_942 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.Vote
d_Vote_944 a0 = ()
data T_Vote_944 = C_yes_946 | C_no_948 | C_abstain_950
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter
d_GovVoter_952 a0 = ()
data T_GovVoter_952
  = C_'10214'_'44'_'10215''7501''7515'_962 T_GovRole_902 AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter.gvRole
d_gvRole_958 :: T_GovVoter_952 -> T_GovRole_902
d_gvRole_958 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_962 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVoter.gvCredential
d_gvCredential_960 :: T_GovVoter_952 -> AgdaAny
d_gvCredential_960 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_962 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor
d_Anchor_964 a0 = ()
data T_Anchor_964
  = C_constructor_974 MAlonzo.Code.Agda.Builtin.String.T_String_6
                      AgdaAny
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor.url
d_url_970 ::
  T_Anchor_964 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_970 v0
  = case coe v0 of
      C_constructor_974 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.Anchor.hash
d_hash_972 :: T_Anchor_964 -> AgdaAny
d_hash_972 v0
  = case coe v0 of
      C_constructor_974 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote
d_GovVote_976 a0 = ()
data T_GovVote_976
  = C_constructor_994 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                      T_GovVoter_952 T_Vote_944 (Maybe T_Anchor_964)
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.gid
d_gid_986 ::
  T_GovVote_976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_986 v0
  = case coe v0 of
      C_constructor_994 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.voter
d_voter_988 :: T_GovVote_976 -> T_GovVoter_952
d_voter_988 v0
  = case coe v0 of
      C_constructor_994 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.vote
d_vote_990 :: T_GovVote_976 -> T_Vote_944
d_vote_990 v0
  = case coe v0 of
      C_constructor_994 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVote.anchor
d_anchor_992 :: T_GovVote_976 -> Maybe T_Anchor_964
d_anchor_992 v0
  = case coe v0 of
      C_constructor_994 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes
d_GovVotes_996 a0 = ()
data T_GovVotes_996
  = C_constructor_1010 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvCC
d_gvCC_1004 ::
  T_GovVotes_996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1004 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvDRep
d_gvDRep_1006 ::
  T_GovVotes_996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1006 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovVotes.gvSPO
d_gvSPO_1008 ::
  T_GovVotes_996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1008 v0
  = case coe v0 of
      C_constructor_1010 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.VDeleg
d_VDeleg_1012 a0 = ()
data T_VDeleg_1012
  = C_vDelegCredential_1014 MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 |
    C_vDelegAbstain_1016 | C_vDelegNoConfidence_1018
-- Ledger.Dijkstra.Specification.Gov.Actions.VoteDelegs
d_VoteDelegs_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_1020 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.NeedsHash
d_NeedsHash_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_912 -> ()
d_NeedsHash_1022 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.HashProtected
d_HashProtected_1024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () -> ()
d_HashProtected_1024 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.Policy
d_Policy_1028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Policy_1028 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal
d_GovProposal_1030 a0 = ()
data T_GovProposal_1030
  = C_constructor_1056 T_GovAction_930 AgdaAny (Maybe AgdaAny)
                       Integer
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       T_Anchor_964
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.action
d_action_1044 :: T_GovProposal_1030 -> T_GovAction_930
d_action_1044 v0
  = case coe v0 of
      C_constructor_1056 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.prevAction
d_prevAction_1046 :: T_GovProposal_1030 -> AgdaAny
d_prevAction_1046 v0
  = case coe v0 of
      C_constructor_1056 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.policy
d_policy_1048 :: T_GovProposal_1030 -> Maybe AgdaAny
d_policy_1048 v0
  = case coe v0 of
      C_constructor_1056 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.deposit
d_deposit_1050 :: T_GovProposal_1030 -> Integer
d_deposit_1050 v0
  = case coe v0 of
      C_constructor_1056 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.returnAddr
d_returnAddr_1052 ::
  T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1052 v0
  = case coe v0 of
      C_constructor_1056 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovProposal.anchor
d_anchor_1054 :: T_GovProposal_1030 -> T_Anchor_964
d_anchor_1054 v0
  = case coe v0 of
      C_constructor_1056 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState
d_GovActionState_1058 a0 = ()
data T_GovActionState_1058
  = C_constructor_1084 T_GovVotes_996
                       MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
                       AgdaAny T_GovAction_930 AgdaAny Integer
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.votes
d_votes_1072 :: T_GovActionState_1058 -> T_GovVotes_996
d_votes_1072 v0
  = case coe v0 of
      C_constructor_1084 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.returnAddr
d_returnAddr_1074 ::
  T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1074 v0
  = case coe v0 of
      C_constructor_1084 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.expiresIn
d_expiresIn_1076 :: T_GovActionState_1058 -> AgdaAny
d_expiresIn_1076 v0
  = case coe v0 of
      C_constructor_1084 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.action
d_action_1078 :: T_GovActionState_1058 -> T_GovAction_930
d_action_1078 v0
  = case coe v0 of
      C_constructor_1084 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.prevAction
d_prevAction_1080 :: T_GovActionState_1058 -> AgdaAny
d_prevAction_1080 v0
  = case coe v0 of
      C_constructor_1084 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.GovActionState.deposit
d_deposit_1082 :: T_GovActionState_1058 -> Integer
d_deposit_1082 v0
  = case coe v0 of
      C_constructor_1084 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.isGovVoterDRep
d_isGovVoterDRep_1086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1086 ~v0 v1 = du_isGovVoterDRep_1086 v1
du_isGovVoterDRep_1086 ::
  T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1086 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_962 v1 v2
        -> let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v1 of
                C_DRep_906
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.govVoterCredential
d_govVoterCredential_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1090 ~v0 v1 = du_govVoterCredential_1090 v1
du_govVoterCredential_1090 ::
  T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1090 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7515'_962 v1 v2
        -> case coe v1 of
             C_CC_904 -> coe v2
             C_DRep_906 -> coe v2
             C_SPO_908
               -> coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                    (coe v2)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.proposedCC
d_proposedCC_1098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1098 ~v0 v1 = du_proposedCC_1098 v1
du_proposedCC_1098 ::
  T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1098 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7501''7491'_940 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_470
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
           coe
             (case coe v1 of
                C_UpdateCommittee_916
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
d_DReps_1102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1102 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType
d_HasGovActionType_1106 a0 a1 = ()
newtype T_HasGovActionType_1106
  = C_constructor_1114 (AgdaAny -> T_GovActionType_912)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1112 ::
  T_HasGovActionType_1106 -> AgdaAny -> T_GovActionType_912
d_GovActionTypeOf_1112 v0
  = case coe v0 of
      C_constructor_1114 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovActionTypeOf
d_GovActionTypeOf_1118 ::
  T_HasGovActionType_1106 -> AgdaAny -> T_GovActionType_912
d_GovActionTypeOf_1118 v0 = coe d_GovActionTypeOf_1112 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVoteDelegs
d_HasVoteDelegs_1124 a0 a1 a2 = ()
newtype T_HasVoteDelegs_1124
  = C_constructor_1134 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1132 ::
  T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1132 v0
  = case coe v0 of
      C_constructor_1134 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.VoteDelegsOf
d_VoteDelegsOf_1138 ::
  T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1138 v0 = coe d_VoteDelegsOf_1132 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction
d_HasGovAction_1142 a0 a1 = ()
newtype T_HasGovAction_1142
  = C_constructor_1150 (AgdaAny -> T_GovAction_930)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction.GovActionOf
d_GovActionOf_1148 ::
  T_HasGovAction_1142 -> AgdaAny -> T_GovAction_930
d_GovActionOf_1148 v0
  = case coe v0 of
      C_constructor_1150 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovActionOf
d_GovActionOf_1154 ::
  T_HasGovAction_1142 -> AgdaAny -> T_GovAction_930
d_GovActionOf_1154 v0 = coe d_GovActionOf_1148 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter
d_HasGovVoter_1160 a0 a1 a2 = ()
newtype T_HasGovVoter_1160
  = C_constructor_1170 (AgdaAny -> T_GovVoter_952)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter.GovVoterOf
d_GovVoterOf_1168 ::
  T_HasGovVoter_1160 -> AgdaAny -> T_GovVoter_952
d_GovVoterOf_1168 v0
  = case coe v0 of
      C_constructor_1170 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovVoterOf
d_GovVoterOf_1174 ::
  T_HasGovVoter_1160 -> AgdaAny -> T_GovVoter_952
d_GovVoterOf_1174 v0 = coe d_GovVoterOf_1168 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes
d_HasGovVotes_1180 a0 a1 a2 = ()
newtype T_HasGovVotes_1180
  = C_constructor_1190 (AgdaAny -> T_GovVotes_996)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes.GovVotesOf
d_GovVotesOf_1188 ::
  T_HasGovVotes_1180 -> AgdaAny -> T_GovVotes_996
d_GovVotesOf_1188 v0
  = case coe v0 of
      C_constructor_1190 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.GovVotesOf
d_GovVotesOf_1194 ::
  T_HasGovVotes_1180 -> AgdaAny -> T_GovVotes_996
d_GovVotesOf_1194 v0 = coe d_GovVotesOf_1188 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote
d_HasVote_1200 a0 a1 a2 = ()
newtype T_HasVote_1200 = C_constructor_1210 (AgdaAny -> T_Vote_944)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote.VoteOf
d_VoteOf_1208 :: T_HasVote_1200 -> AgdaAny -> T_Vote_944
d_VoteOf_1208 v0
  = case coe v0 of
      C_constructor_1210 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.VoteOf
d_VoteOf_1214 :: T_HasVote_1200 -> AgdaAny -> T_Vote_944
d_VoteOf_1214 v0 = coe d_VoteOf_1208 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy
d_HasPolicy_1220 a0 a1 a2 = ()
newtype T_HasPolicy_1220
  = C_constructor_1230 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy.PolicyOf
d_PolicyOf_1228 :: T_HasPolicy_1220 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1228 v0
  = case coe v0 of
      C_constructor_1230 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.PolicyOf
d_PolicyOf_1234 :: T_HasPolicy_1220 -> AgdaAny -> Maybe AgdaAny
d_PolicyOf_1234 v0 = coe d_PolicyOf_1228 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDReps
d_HasDReps_1240 a0 a1 a2 = ()
newtype T_HasDReps_1240
  = C_constructor_1250 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDReps.DRepsOf
d_DRepsOf_1248 ::
  T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1248 v0
  = case coe v0 of
      C_constructor_1250 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.DRepsOf
d_DRepsOf_1254 ::
  T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1254 v0 = coe d_DRepsOf_1248 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor
d_HasAnchor_1260 a0 a1 a2 = ()
newtype T_HasAnchor_1260
  = C_constructor_1270 (AgdaAny -> T_Anchor_964)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor.AnchorOf
d_AnchorOf_1268 :: T_HasAnchor_1260 -> AgdaAny -> T_Anchor_964
d_AnchorOf_1268 v0
  = case coe v0 of
      C_constructor_1270 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.AnchorOf
d_AnchorOf_1274 :: T_HasAnchor_1260 -> AgdaAny -> T_Anchor_964
d_AnchorOf_1274 v0 = coe d_AnchorOf_1268 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit
d_HasDeposit_1280 a0 a1 a2 = ()
newtype T_HasDeposit_1280 = C_constructor_1290 (AgdaAny -> Integer)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit.DepositOf
d_DepositOf_1288 :: T_HasDeposit_1280 -> AgdaAny -> Integer
d_DepositOf_1288 v0
  = case coe v0 of
      C_constructor_1290 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions._.DepositOf
d_DepositOf_1294 :: T_HasDeposit_1280 -> AgdaAny -> Integer
d_DepositOf_1294 v0 = coe d_DepositOf_1288 (coe v0)
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_1296 ~v0
  = du_HasGovActionType'45'GovAction_1296
du_HasGovActionType'45'GovAction_1296 :: T_HasGovActionType_1106
du_HasGovActionType'45'GovAction_1296
  = coe C_constructor_1114 (coe (\ v0 -> d_gaType_936 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1298 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1298
du_HasCast'45'GovAction'45'Sigma_1298 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1298
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe d_gaType_936 (coe v0)) (coe d_gaData_938 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-HashProtected
d_HasCast'45'HashProtected_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1304 ~v0 ~v1
  = du_HasCast'45'HashProtected_1304
du_HasCast'45'HashProtected_1304 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1304
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1306 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
du_HasCast'45'HashProtected'45'MaybeScriptHash_1306 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         (\ v0 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_1308 ~v0 = du_HasGovVoter'45'GovVote_1308
du_HasGovVoter'45'GovVote_1308 :: T_HasGovVoter_1160
du_HasGovVoter'45'GovVote_1308
  = coe C_constructor_1170 (coe (\ v0 -> d_voter_988 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasVote-GovVote
d_HasVote'45'GovVote_1310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasVote_1200
d_HasVote'45'GovVote_1310 ~v0 = du_HasVote'45'GovVote_1310
du_HasVote'45'GovVote_1310 :: T_HasVote_1200
du_HasVote'45'GovVote_1310
  = coe C_constructor_1210 (coe (\ v0 -> d_vote_990 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasPolicy_1220
d_HasPolicy'45'GovProposal_1312 ~v0
  = du_HasPolicy'45'GovProposal_1312
du_HasPolicy'45'GovProposal_1312 :: T_HasPolicy_1220
du_HasPolicy'45'GovProposal_1312
  = coe C_constructor_1230 (coe (\ v0 -> d_policy_1048 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasAnchor_1260
d_HasAnchor'45'GovProposal_1314 ~v0
  = du_HasAnchor'45'GovProposal_1314
du_HasAnchor'45'GovProposal_1314 :: T_HasAnchor_1260
du_HasAnchor'45'GovProposal_1314
  = coe C_constructor_1270 (coe (\ v0 -> d_anchor_1054 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDeposit_1280
d_HasDeposit'45'GovProposal_1316 ~v0
  = du_HasDeposit'45'GovProposal_1316
du_HasDeposit'45'GovProposal_1316 :: T_HasDeposit_1280
du_HasDeposit'45'GovProposal_1316
  = coe C_constructor_1290 (coe (\ v0 -> d_deposit_1050 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_1142
d_HasGovAction'45'GovProposal_1318 ~v0
  = du_HasGovAction'45'GovProposal_1318
du_HasGovAction'45'GovProposal_1318 :: T_HasGovAction_1142
du_HasGovAction'45'GovProposal_1318
  = coe C_constructor_1150 (coe (\ v0 -> d_action_1044 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovAction_1142
d_HasGovAction'45'GovActionState_1320 ~v0
  = du_HasGovAction'45'GovActionState_1320
du_HasGovAction'45'GovActionState_1320 :: T_HasGovAction_1142
du_HasGovAction'45'GovActionState_1320
  = coe C_constructor_1150 (coe (\ v0 -> d_action_1078 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_1322 ~v0
  = du_HasGovActionType'45'GovProposal_1322
du_HasGovActionType'45'GovProposal_1322 :: T_HasGovActionType_1106
du_HasGovActionType'45'GovProposal_1322
  = coe
      C_constructor_1114
      (coe (\ v0 -> d_gaType_936 (coe d_action_1044 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_1324 ~v0
  = du_HasGovActionType'45'GovActionState_1324
du_HasGovActionType'45'GovActionState_1324 ::
  T_HasGovActionType_1106
du_HasGovActionType'45'GovActionState_1324
  = coe
      C_constructor_1114
      (coe (\ v0 -> d_gaType_936 (coe d_action_1078 (coe v0))))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_1326 ~v0
  = du_HasGovVotes'45'GovActionState_1326
du_HasGovVotes'45'GovActionState_1326 :: T_HasGovVotes_1180
du_HasGovVotes'45'GovActionState_1326
  = coe C_constructor_1190 (coe (\ v0 -> d_votes_1072 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_1328 ~v0
  = du_HasRewardAddress'45'GovActionState_1328
du_HasRewardAddress'45'GovActionState_1328 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_1328
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_144
      (coe (\ v0 -> d_returnAddr_1074 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_1330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_1330 ~v0
  = du_HasRewardAddress'45'GovProposal_1330
du_HasRewardAddress'45'GovProposal_1330 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_1330
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_144
      (coe (\ v0 -> d_returnAddr_1052 (coe v0)))
-- Ledger.Dijkstra.Specification.Gov.Actions.Show-GovRole
d_Show'45'GovRole_1332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1332 ~v0 = du_Show'45'GovRole_1332
du_Show'45'GovRole_1332 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1332
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_904 -> coe ("CC" :: Data.Text.Text)
              C_DRep_906 -> coe ("DRep" :: Data.Text.Text)
              C_SPO_908 -> coe ("SPO" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovActionType
d_DecEq'45'GovActionType_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1334 ~v0 = du_DecEq'45'GovActionType_1334
du_DecEq'45'GovActionType_1334 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1334
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_NoConfidence_914
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_UpdateCommittee_916
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_NewConstitution_918
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TriggerHardFork_920
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ChangePParams_922
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TreasuryWithdrawal_924
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Info_926
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NoConfidence_914
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_UpdateCommittee_916
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_NewConstitution_918
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TriggerHardFork_920
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ChangePParams_922
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TreasuryWithdrawal_924
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Info_926
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovRole
d_DecEq'45'GovRole_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1336 ~v0 = du_DecEq'45'GovRole_1336
du_DecEq'45'GovRole_1336 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1336
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_904
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_DRep_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_906
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_SPO_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_908
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_904
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_906
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_908
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-Vote
d_DecEq'45'Vote_1338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1338 ~v0 = du_DecEq'45'Vote_1338
du_DecEq'45'Vote_1338 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1338
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_946
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_946
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_no_948
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_950
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_948
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_946
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_948
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_abstain_950
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_950
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_946
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_948
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_950
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-VDeleg
d_DecEq'45'VDeleg_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1340 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1014 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_vDelegCredential_1014 v4
                            -> let v5
                                     = coe
                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
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
                          C_vDelegAbstain_1016
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1018
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegAbstain_1016
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1014 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1016
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          C_vDelegNoConfidence_1018
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_vDelegNoConfidence_1018
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_vDelegCredential_1014 v3
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegAbstain_1016
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_vDelegNoConfidence_1018
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-GovVoter
d_DecEq'45'GovVoter_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1342 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_'10214'_'44'_'10215''7501''7515'_962 v2 v3
                -> case coe v2 of
                     C_CC_904
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_962 v5 v6
                                   -> case coe v5 of
                                        C_CC_904
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
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
                                        C_DRep_906
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_908
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_DRep_906
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_962 v5 v6
                                   -> case coe v5 of
                                        C_CC_904
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_906
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
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
                                        C_SPO_908
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                     C_SPO_908
                       -> coe
                            (\ v4 ->
                               case coe v4 of
                                 C_'10214'_'44'_'10215''7501''7515'_962 v5 v6
                                   -> case coe v5 of
                                        C_CC_904
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_DRep_906
                                          -> coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                        C_SPO_908
                                          -> let v7
                                                   = coe
                                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
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
d_HasCast'45'GovVote_1440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1440 ~v0 = du_HasCast'45'GovVote_1440
du_HasCast'45'GovVote_1440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1440
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
                                 (976 :: Integer) (13033562529995964478 :: Integer)
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
                                 (942 :: Integer) (13033562529995964478 :: Integer)
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
                                    (976 :: Integer) (13033562529995964478 :: Integer)
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
                                    (952 :: Integer) (13033562529995964478 :: Integer)
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
                                       (976 :: Integer) (13033562529995964478 :: Integer)
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
                                       (944 :: Integer) (13033562529995964478 :: Integer)
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
                                          (976 :: Integer) (13033562529995964478 :: Integer)
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
                                                      (964 :: Integer)
                                                      (13033562529995964478 :: Integer)
                                                      "Ledger.Dijkstra.Specification.Gov.Actions.Anchor"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_constructor_994))
-- Ledger.Dijkstra.Specification.Gov.Actions.Show-VDeleg
d_Show'45'VDeleg_1442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1442 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              C_vDelegCredential_1014 v2
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
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                    (coe v0))))
                           v2))
              C_vDelegAbstain_1016 -> coe ("vDelegAbstain" :: Data.Text.Text)
              C_vDelegNoConfidence_1018
                -> coe ("vDelegNoConfidence" :: Data.Text.Text)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-Anchor
d_DecEq'45'Anchor_1444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1444 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v1 ->
            case coe v1 of
              C_constructor_974 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_constructor_974 v5 v6
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
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_692
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
d_'61''61''45'Set_1450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1450 ~v0 ~v1 v2 v3 v4
  = du_'61''61''45'Set_1450 v2 v3 v4
du_'61''61''45'Set_1450 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1450 v0 v1 v2
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
d_'61''61''45'GovActionData_1462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_912 -> AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1462 v0 v1
  = case coe v1 of
      C_NoConfidence_914
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      C_UpdateCommittee_916
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
                                                      du_'61''61''45'Set_1450
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                          (coe v0))) in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                          (coe v0)) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe v12) (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_788
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
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                             (coe v0))) in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
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
      C_NewConstitution_918
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'DocHash_692
                   (coe v0))
                (coe
                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                      (coe
                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                         (coe v0)))))
      C_TriggerHardFork_920
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      C_ChangePParams_922
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
                (coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_govParams_1358
                   (coe v0)))
      C_TreasuryWithdrawal_924
        -> coe
             (\ v2 v3 ->
                coe
                  du_'61''61''45'Set_1450
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (let v4
                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_836
                                   (coe v0)) in
                      coe
                        (let v5
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                         (coe v0))) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                 (coe v4) (coe v5) (coe v6)))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v3)))
      C_Info_926
        -> coe
             MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
             (coe
                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                (\ v2 v3 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovAction
d_'61''61''45'GovAction_1480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovAction_930 -> T_GovAction_930 -> Bool
d_'61''61''45'GovAction_1480 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'10215''7501''7491'_940 v3 v4
        -> case coe v2 of
             C_'10214'_'44'_'10215''7501''7491'_940 v5 v6
               -> let v7
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_1334) v3 v5 in
                  coe
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                         -> if coe v8
                              then coe
                                     seq (coe v9) (coe d_'61''61''45'GovActionData_1462 v0 v3 v4 v6)
                              else coe seq (coe v9) (coe v8)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovActionType_912 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1512 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (case coe v1 of
         C_NoConfidence_914
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_690
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_UpdateCommittee_916
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_690
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_NewConstitution_918
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_690
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TriggerHardFork_920
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_690
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_ChangePParams_922
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_DecEq'45'TxId_690
                      (coe v0))
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
         C_TreasuryWithdrawal_924
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         C_Info_926
           -> coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Gov.Actions.==-GovProposal
d_'61''61''45'GovProposal_1514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovProposal_1030 -> T_GovProposal_1030 -> Bool
d_'61''61''45'GovProposal_1514 v0 v1 v2
  = case coe v1 of
      C_constructor_1056 v3 v4 v5 v6 v7 v8
        -> case coe v2 of
             C_constructor_1056 v9 v10 v11 v12 v13 v14
               -> let v15
                        = coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe du_DecEq'45'GovActionType_1334) (d_gaType_936 (coe v3))
                            (d_gaType_936 (coe v9)) in
                  coe
                    (case coe v15 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                         -> if coe v16
                              then coe
                                     seq (coe v17)
                                     (case coe v3 of
                                        C_'10214'_'44'_'10215''7501''7491'_940 v18 v19
                                          -> coe
                                               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                               (coe
                                                  d_'61''61''45'GovAction_1480 (coe v0)
                                                  (coe
                                                     C_'10214'_'44'_'10215''7501''7491'_940
                                                     (coe d_gaType_936 (coe v9)) (coe v19))
                                                  (coe v9))
                                               (coe
                                                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                     (coe ())
                                                     (coe
                                                        d_DecEq'45'NeedsHash_1512 (coe v0)
                                                        (coe d_gaType_936 (coe v9)))
                                                     (coe v4) (coe v10))
                                                  (coe
                                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                        (coe ())
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_globalConstants_836
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_cryptoStructure_694
                                                                       (coe v0))))
                                                              (coe v7) (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18
                                                              (coe ())
                                                              (coe d_DecEq'45'Anchor_1444 (coe v0))
                                                              (coe v8) (coe v14))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              else coe seq (coe v17) (coe v16)
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Gov.Actions.activeInEpoch
d_activeInEpoch_1610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1610 = erased
-- Ledger.Dijkstra.Specification.Gov.Actions.activeDRepsOf
d_activeDRepsOf_1620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  () ->
  T_HasDReps_1240 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1620 v0 ~v1 v2 v3 v4
  = du_activeDRepsOf_1620 v0 v2 v3 v4
du_activeDRepsOf_1620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10 ->
  T_HasDReps_1240 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_activeDRepsOf_1620 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1424
      (\ v4 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
           (coe
              MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_788
                    (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_788
                       (coe v0)))
                 (\ v5 v6 -> v5) v3
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v5 v6 -> v6)
                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_788
                       (coe v0)))
                 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.d_epochStructure_788
                    (coe v0)))
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe d_DRepsOf_1248 v1 v2)
