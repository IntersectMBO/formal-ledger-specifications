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

module MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions where

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
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_30 a0 a1 a2 a3 = ()
-- _.DecEq-PParamGroup
d_DecEq'45'PParamGroup_74 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_74 ~v0 = du_DecEq'45'PParamGroup_74
du_DecEq'45'PParamGroup_74 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_74
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- _.Epoch
d_Epoch_112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_Epoch_112 = erased
-- _.UpdateT
d_UpdateT_164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_UpdateT_164 = erased
-- _.ProtVer
d_ProtVer_176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_ProtVer_176 = erased
-- _.RwdAddr
d_RwdAddr_182 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_ScriptHash_196 = erased
-- _.RwdAddr.net
d_net_664 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_664 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_666 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_666 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.GovernanceActions.maximum
d_maximum_686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_686 ~v0 v1 = du_maximum_686 v1
du_maximum_686 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_686 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__322)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1104
            v0))
-- Ledger.Conway.Conformance.GovernanceActions.GovRole
d_GovRole_690 a0 = ()
data T_GovRole_690 = C_CC_692 | C_DRep_694 | C_SPO_696
-- Ledger.Conway.Conformance.GovernanceActions.Voter
d_Voter_698 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_Voter_698 = erased
-- Ledger.Conway.Conformance.GovernanceActions.GovActionID
d_GovActionID_700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  ()
d_GovActionID_700 = erased
-- Ledger.Conway.Conformance.GovernanceActions.VDeleg
d_VDeleg_702 a0 = ()
data T_VDeleg_702
  = C_credVoter_704 T_GovRole_690
                    MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_abstainRep_706 | C_noConfidenceRep_708
-- Ledger.Conway.Conformance.GovernanceActions.Anchor
d_Anchor_710 a0 = ()
data T_Anchor_710
  = C_Anchor'46'constructor_2075 MAlonzo.Code.Agda.Builtin.String.T_String_6
                                 AgdaAny
-- Ledger.Conway.Conformance.GovernanceActions.Anchor.url
d_url_716 ::
  T_Anchor_710 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_716 v0
  = case coe v0 of
      C_Anchor'46'constructor_2075 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.Anchor.hash
d_hash_718 :: T_Anchor_710 -> AgdaAny
d_hash_718 v0
  = case coe v0 of
      C_Anchor'46'constructor_2075 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovAction
d_GovAction_720 a0 = ()
data T_GovAction_720
  = C_NoConfidence_722 |
    C_UpdateCommittee_724 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                          [MAlonzo.Code.Ledger.Address.T_Credential_16]
                          MAlonzo.Code.Data.Rational.Base.T_ℚ_6 |
    C_NewConstitution_726 AgdaAny (Maybe AgdaAny) |
    C_TriggerHF_728 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_ChangePParams_730 AgdaAny |
    C_TreasuryWdrl_732 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Info_734
-- Ledger.Conway.Conformance.GovernanceActions.actionWellFormed
d_actionWellFormed_736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_GovAction_720 -> ()
d_actionWellFormed_736 = erased
-- Ledger.Conway.Conformance.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_GovAction_720 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_746 v0 v1
  = case coe v1 of
      C_NoConfidence_722
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_UpdateCommittee_724 v2 v3 v4
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_NewConstitution_726 v2 v3
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_TriggerHF_728 v2
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_ChangePParams_730 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
             (coe
                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                (coe
                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
                      (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_govParams_1068
                            (coe v0)))
                      v2)
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8709'_442
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1470
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
                (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_govParams_1068
                      (coe v0)))
                v2)
      C_TreasuryWdrl_732 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Axiom.Set.d_all'63'_1610
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased erased
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_globalConstants_1098
                                      (coe v0)))
                                (coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_globalConstants_1098
                                      (coe v0))))))
                     v3))
             (coe
                MAlonzo.Code.Class.IsSet.du_dom_548
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
      C_Info_734
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.NeedsHash
d_NeedsHash_748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_GovAction_720 -> ()
d_NeedsHash_748 = erased
-- Ledger.Conway.Conformance.GovernanceActions.HashProtected
d_HashProtected_750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  () -> ()
d_HashProtected_750 = erased
-- Ledger.Conway.Conformance.GovernanceActions.Vote
d_Vote_754 a0 = ()
data T_Vote_754 = C_yes_756 | C_no_758 | C_abstain_760
-- Ledger.Conway.Conformance.GovernanceActions.GovVote
d_GovVote_762 a0 = ()
data T_GovVote_762
  = C_GovVote'46'constructor_6043 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_Vote_754
                                  (Maybe T_Anchor_710)
-- Ledger.Conway.Conformance.GovernanceActions.GovVote.gid
d_gid_772 ::
  T_GovVote_762 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_772 v0
  = case coe v0 of
      C_GovVote'46'constructor_6043 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovVote.voter
d_voter_774 ::
  T_GovVote_762 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_774 v0
  = case coe v0 of
      C_GovVote'46'constructor_6043 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovVote.vote
d_vote_776 :: T_GovVote_762 -> T_Vote_754
d_vote_776 v0
  = case coe v0 of
      C_GovVote'46'constructor_6043 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovVote.anchor
d_anchor_778 :: T_GovVote_762 -> Maybe T_Anchor_710
d_anchor_778 v0
  = case coe v0 of
      C_GovVote'46'constructor_6043 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal
d_GovProposal_780 a0 = ()
data T_GovProposal_780
  = C_GovProposal'46'constructor_6413 T_GovAction_720 AgdaAny
                                      (Maybe AgdaAny) Integer
                                      MAlonzo.Code.Ledger.Address.T_RwdAddr_76 T_Anchor_710
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal.action
d_action_794 :: T_GovProposal_780 -> T_GovAction_720
d_action_794 v0
  = case coe v0 of
      C_GovProposal'46'constructor_6413 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal.prevAction
d_prevAction_796 :: T_GovProposal_780 -> AgdaAny
d_prevAction_796 v0
  = case coe v0 of
      C_GovProposal'46'constructor_6413 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal.policy
d_policy_798 :: T_GovProposal_780 -> Maybe AgdaAny
d_policy_798 v0
  = case coe v0 of
      C_GovProposal'46'constructor_6413 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal.deposit
d_deposit_800 :: T_GovProposal_780 -> Integer
d_deposit_800 v0
  = case coe v0 of
      C_GovProposal'46'constructor_6413 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal.returnAddr
d_returnAddr_802 ::
  T_GovProposal_780 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_802 v0
  = case coe v0 of
      C_GovProposal'46'constructor_6413 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovProposal.anchor
d_anchor_804 :: T_GovProposal_780 -> T_Anchor_710
d_anchor_804 v0
  = case coe v0 of
      C_GovProposal'46'constructor_6413 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovActionState
d_GovActionState_806 a0 = ()
data T_GovActionState_806
  = C_GovActionState'46'constructor_6761 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Ledger.Address.T_RwdAddr_76 AgdaAny
                                         T_GovAction_720 AgdaAny
-- Ledger.Conway.Conformance.GovernanceActions.GovActionState.votes
d_votes_818 ::
  T_GovActionState_806 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_818 v0
  = case coe v0 of
      C_GovActionState'46'constructor_6761 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovActionState.returnAddr
d_returnAddr_820 ::
  T_GovActionState_806 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_820 v0
  = case coe v0 of
      C_GovActionState'46'constructor_6761 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovActionState.expiresIn
d_expiresIn_822 :: T_GovActionState_806 -> AgdaAny
d_expiresIn_822 v0
  = case coe v0 of
      C_GovActionState'46'constructor_6761 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovActionState.action
d_action_824 :: T_GovActionState_806 -> T_GovAction_720
d_action_824 v0
  = case coe v0 of
      C_GovActionState'46'constructor_6761 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.GovActionState.prevAction
d_prevAction_826 :: T_GovActionState_806 -> AgdaAny
d_prevAction_826 v0
  = case coe v0 of
      C_GovActionState'46'constructor_6761 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_828 ~v0 = du_DecEq'45'GovRole_828
du_DecEq'45'GovRole_828 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_828
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_692
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_692
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_DRep_694
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_696
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_694
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_692
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_694
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SPO_696
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_696
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_692
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_694
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_696
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_830 ~v0 = du_DecEq'45'Vote_830
du_DecEq'45'Vote_830 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_830
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_756
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_756
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_no_758
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_760
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_758
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_756
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_758
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_abstain_760
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_760
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_756
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_758
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_760
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_832 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_credVoter_704 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_credVoter_704 v5 v6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                   (coe v0))))
                                          v6 v3))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe du_DecEq'45'GovRole_828) v5 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          C_abstainRep_706
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_708
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstainRep_706
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_704 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_706
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_noConfidenceRep_708
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_noConfidenceRep_708
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_704 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_706
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_708
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.GovernanceActions.getDRepVote
d_getDRepVote_834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  T_GovVote_762 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_834 ~v0 v1 = du_getDRepVote_834 v1
du_getDRepVote_834 ::
  T_GovVote_762 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_834 v0
  = case coe v0 of
      C_GovVote'46'constructor_6043 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                  coe
                    (case coe v5 of
                       C_DRep_694
                         -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)
                       _ -> coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
