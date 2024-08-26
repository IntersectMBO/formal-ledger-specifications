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

module MAlonzo.Code.Ledger.GovernanceActions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _.Credential
d_Credential_22 a0 a1 a2 a3 = ()
-- _.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.UpdateT
d_UpdateT_156 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_UpdateT_156 = erased
-- _.ProtVer
d_ProtVer_168 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ProtVer_168 = erased
-- _.RwdAddr
d_RwdAddr_174 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_188 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ScriptHash_188 = erased
-- Ledger.GovernanceActions.maximum
d_maximum_654 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_654 ~v0 v1 = du_maximum_654 v1
du_maximum_654 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_654 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__322)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_218 v0))
-- Ledger.GovernanceActions.GovRole
d_GovRole_658 a0 = ()
data T_GovRole_658 = C_CC_660 | C_DRep_662 | C_SPO_664
-- Ledger.GovernanceActions.Voter
d_Voter_666 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Voter_666 = erased
-- Ledger.GovernanceActions.GovActionID
d_GovActionID_668 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_668 = erased
-- Ledger.GovernanceActions.VDeleg
d_VDeleg_670 a0 = ()
data T_VDeleg_670
  = C_credVoter_672 T_GovRole_658
                    MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_abstainRep_674 | C_noConfidenceRep_676
-- Ledger.GovernanceActions.Anchor
d_Anchor_678 a0 = ()
data T_Anchor_678
  = C_Anchor'46'constructor_1459 MAlonzo.Code.Agda.Builtin.String.T_String_6
                                 AgdaAny
-- Ledger.GovernanceActions.Anchor.url
d_url_684 ::
  T_Anchor_678 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_684 v0
  = case coe v0 of
      C_Anchor'46'constructor_1459 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.Anchor.hash
d_hash_686 :: T_Anchor_678 -> AgdaAny
d_hash_686 v0
  = case coe v0 of
      C_Anchor'46'constructor_1459 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovAction
d_GovAction_688 a0 = ()
data T_GovAction_688
  = C_NoConfidence_690 |
    C_UpdateCommittee_692 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                          [MAlonzo.Code.Ledger.Address.T_Credential_16]
                          MAlonzo.Code.Data.Rational.Base.T_ℚ_6 |
    C_NewConstitution_694 AgdaAny (Maybe AgdaAny) |
    C_TriggerHF_696 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_ChangePParams_698 AgdaAny |
    C_TreasuryWdrl_700 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Info_702
-- Ledger.GovernanceActions.actionWellFormed
d_actionWellFormed_704 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_688 -> ()
d_actionWellFormed_704 = erased
-- Ledger.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_714 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_688 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_714 v0 v1
  = case coe v1 of
      C_NoConfidence_690
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_UpdateCommittee_692 v2 v3 v4
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_NewConstitution_694 v2 v3
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_TriggerHF_696 v2
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_ChangePParams_698 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
             (coe
                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_256
                         (coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_438)))
                   (coe
                      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
                      (MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
                         (coe
                            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1012 (coe v0)))
                      v2)
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8709'_430
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1458
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
             (coe
                MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
                (MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
                   (coe
                      MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1012 (coe v0)))
                v2)
      C_TreasuryWdrl_700 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Axiom.Set.d_all'63'_1598
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                     erased
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1042
                                         (coe v0))))
                                (coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_262
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1042
                                      (coe v0))))))
                     v3))
             (coe
                MAlonzo.Code.Interface.IsSet.du_dom_540
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1458
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
      C_Info_702
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.NeedsHash
d_NeedsHash_716 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_688 -> ()
d_NeedsHash_716 = erased
-- Ledger.GovernanceActions.HashProtected
d_HashProtected_718 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_718 = erased
-- Ledger.GovernanceActions.Vote
d_Vote_722 a0 = ()
data T_Vote_722 = C_yes_724 | C_no_726 | C_abstain_728
-- Ledger.GovernanceActions.GovVote
d_GovVote_730 a0 = ()
data T_GovVote_730
  = C_GovVote'46'constructor_4797 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_Vote_722
                                  (Maybe T_Anchor_678)
-- Ledger.GovernanceActions.GovVote.gid
d_gid_740 ::
  T_GovVote_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_740 v0
  = case coe v0 of
      C_GovVote'46'constructor_4797 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.voter
d_voter_742 ::
  T_GovVote_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_742 v0
  = case coe v0 of
      C_GovVote'46'constructor_4797 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.vote
d_vote_744 :: T_GovVote_730 -> T_Vote_722
d_vote_744 v0
  = case coe v0 of
      C_GovVote'46'constructor_4797 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.anchor
d_anchor_746 :: T_GovVote_730 -> Maybe T_Anchor_678
d_anchor_746 v0
  = case coe v0 of
      C_GovVote'46'constructor_4797 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal
d_GovProposal_748 a0 = ()
data T_GovProposal_748
  = C_GovProposal'46'constructor_5083 T_GovAction_688 AgdaAny
                                      (Maybe AgdaAny) Integer
                                      MAlonzo.Code.Ledger.Address.T_RwdAddr_76 T_Anchor_678
-- Ledger.GovernanceActions.GovProposal.action
d_action_762 :: T_GovProposal_748 -> T_GovAction_688
d_action_762 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5083 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.prevAction
d_prevAction_764 :: T_GovProposal_748 -> AgdaAny
d_prevAction_764 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5083 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.policy
d_policy_766 :: T_GovProposal_748 -> Maybe AgdaAny
d_policy_766 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5083 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.deposit
d_deposit_768 :: T_GovProposal_748 -> Integer
d_deposit_768 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5083 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.returnAddr
d_returnAddr_770 ::
  T_GovProposal_748 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_770 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5083 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.anchor
d_anchor_772 :: T_GovProposal_748 -> T_Anchor_678
d_anchor_772 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5083 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState
d_GovActionState_774 a0 = ()
data T_GovActionState_774
  = C_GovActionState'46'constructor_5329 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Ledger.Address.T_RwdAddr_76 AgdaAny
                                         T_GovAction_688 AgdaAny
-- Ledger.GovernanceActions.GovActionState.votes
d_votes_786 ::
  T_GovActionState_774 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_786 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5329 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.returnAddr
d_returnAddr_788 ::
  T_GovActionState_774 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_788 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5329 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.expiresIn
d_expiresIn_790 :: T_GovActionState_774 -> AgdaAny
d_expiresIn_790 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5329 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.action
d_action_792 :: T_GovActionState_774 -> T_GovAction_688
d_action_792 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5329 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.prevAction
d_prevAction_794 :: T_GovActionState_774 -> AgdaAny
d_prevAction_794 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5329 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_796 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_796 ~v0 = du_DecEq'45'GovRole_796
du_DecEq'45'GovRole_796 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_796
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_660
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_660
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_DRep_662
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_664
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_662
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_660
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_662
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SPO_664
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_664
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_660
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_662
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_664
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_798 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_798 ~v0 = du_DecEq'45'Vote_798
du_DecEq'45'Vote_798 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_798
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_724
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_724
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_no_726
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_728
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_726
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_724
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_726
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_abstain_728
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_728
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_724
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_726
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_728
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_800 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_800 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_credVoter_672 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_credVoter_672 v5 v6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_532
                                                   (coe v0))))
                                          v6 v3))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe du_DecEq'45'GovRole_796) v5 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          C_abstainRep_674
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_676
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstainRep_674
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_672 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_674
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_noConfidenceRep_676
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_noConfidenceRep_676
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_672 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_674
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_676
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.getDRepVote
d_getDRepVote_802 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovVote_730 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_802 ~v0 v1 = du_getDRepVote_802 v1
du_getDRepVote_802 ::
  T_GovVote_730 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_802 v0
  = case coe v0 of
      C_GovVote'46'constructor_4797 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                  coe
                    (case coe v5 of
                       C_DRep_662
                         -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)
                       _ -> coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
