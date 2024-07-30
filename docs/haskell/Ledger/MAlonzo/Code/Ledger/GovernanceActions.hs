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
d_maximum_614 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_614 ~v0 v1 = du_maximum_614 v1
du_maximum_614 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_614 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__322)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_216 v0))
-- Ledger.GovernanceActions.GovRole
d_GovRole_618 a0 = ()
data T_GovRole_618 = C_CC_620 | C_DRep_622 | C_SPO_624
-- Ledger.GovernanceActions.Voter
d_Voter_626 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Voter_626 = erased
-- Ledger.GovernanceActions.GovActionID
d_GovActionID_628 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_628 = erased
-- Ledger.GovernanceActions.VDeleg
d_VDeleg_630 a0 = ()
data T_VDeleg_630
  = C_credVoter_632 T_GovRole_618
                    MAlonzo.Code.Ledger.Address.T_Credential_16 |
    C_abstainRep_634 | C_noConfidenceRep_636
-- Ledger.GovernanceActions.Anchor
d_Anchor_638 a0 = ()
data T_Anchor_638
  = C_Anchor'46'constructor_1399 MAlonzo.Code.Agda.Builtin.String.T_String_6
                                 AgdaAny
-- Ledger.GovernanceActions.Anchor.url
d_url_644 ::
  T_Anchor_638 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_644 v0
  = case coe v0 of
      C_Anchor'46'constructor_1399 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.Anchor.hash
d_hash_646 :: T_Anchor_638 -> AgdaAny
d_hash_646 v0
  = case coe v0 of
      C_Anchor'46'constructor_1399 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovAction
d_GovAction_648 a0 = ()
data T_GovAction_648
  = C_NoConfidence_650 |
    C_UpdateCommittee_652 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                          [MAlonzo.Code.Ledger.Address.T_Credential_16]
                          MAlonzo.Code.Data.Rational.Base.T_ℚ_6 |
    C_NewConstitution_654 AgdaAny (Maybe AgdaAny) |
    C_TriggerHF_656 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_ChangePParams_658 AgdaAny |
    C_TreasuryWdrl_660 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Info_662
-- Ledger.GovernanceActions.actionWellFormed
d_actionWellFormed_664 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_648 -> ()
d_actionWellFormed_664 = erased
-- Ledger.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_674 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_648 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_674 v0 v1
  = case coe v1 of
      C_NoConfidence_650
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_UpdateCommittee_652 v2 v3 v4
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_NewConstitution_654 v2 v3
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_TriggerHF_656 v2
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      C_ChangePParams_658 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
             (coe
                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                (coe
                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_254
                         (coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_420)))
                   (coe
                      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
                      (MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
                         (coe
                            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_958 (coe v0)))
                      v2)
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8709'_424
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1430
                         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
             (coe
                MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
                (MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
                   (coe
                      MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_958 (coe v0)))
                v2)
      C_TreasuryWdrl_660 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Axiom.Set.d_all'63'_1568
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
                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_986
                                         (coe v0))))
                                (coe MAlonzo.Code.Ledger.Address.d_net_76 (coe v4))
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_986
                                      (coe v0))))))
                     v3))
             (coe
                MAlonzo.Code.Interface.IsSet.du_dom_538
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2))
      C_Info_662
        -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.NeedsHash
d_NeedsHash_676 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_648 -> ()
d_NeedsHash_676 = erased
-- Ledger.GovernanceActions.HashProtected
d_HashProtected_678 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_678 = erased
-- Ledger.GovernanceActions.Vote
d_Vote_682 a0 = ()
data T_Vote_682 = C_yes_684 | C_no_686 | C_abstain_688
-- Ledger.GovernanceActions.GovVote
d_GovVote_690 a0 = ()
data T_GovVote_690
  = C_GovVote'46'constructor_4737 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_Vote_682
                                  (Maybe T_Anchor_638)
-- Ledger.GovernanceActions.GovVote.gid
d_gid_700 ::
  T_GovVote_690 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_700 v0
  = case coe v0 of
      C_GovVote'46'constructor_4737 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.voter
d_voter_702 ::
  T_GovVote_690 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_702 v0
  = case coe v0 of
      C_GovVote'46'constructor_4737 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.vote
d_vote_704 :: T_GovVote_690 -> T_Vote_682
d_vote_704 v0
  = case coe v0 of
      C_GovVote'46'constructor_4737 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.anchor
d_anchor_706 :: T_GovVote_690 -> Maybe T_Anchor_638
d_anchor_706 v0
  = case coe v0 of
      C_GovVote'46'constructor_4737 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal
d_GovProposal_708 a0 = ()
data T_GovProposal_708
  = C_GovProposal'46'constructor_5023 T_GovAction_648 AgdaAny
                                      (Maybe AgdaAny) Integer
                                      MAlonzo.Code.Ledger.Address.T_RwdAddr_70 T_Anchor_638
-- Ledger.GovernanceActions.GovProposal.action
d_action_722 :: T_GovProposal_708 -> T_GovAction_648
d_action_722 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5023 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.prevAction
d_prevAction_724 :: T_GovProposal_708 -> AgdaAny
d_prevAction_724 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5023 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.policy
d_policy_726 :: T_GovProposal_708 -> Maybe AgdaAny
d_policy_726 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5023 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.deposit
d_deposit_728 :: T_GovProposal_708 -> Integer
d_deposit_728 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5023 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.returnAddr
d_returnAddr_730 ::
  T_GovProposal_708 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_730 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5023 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.anchor
d_anchor_732 :: T_GovProposal_708 -> T_Anchor_638
d_anchor_732 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5023 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState
d_GovActionState_734 a0 = ()
data T_GovActionState_734
  = C_GovActionState'46'constructor_5269 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Ledger.Address.T_RwdAddr_70 AgdaAny
                                         T_GovAction_648 AgdaAny
-- Ledger.GovernanceActions.GovActionState.votes
d_votes_746 ::
  T_GovActionState_734 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_746 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5269 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.returnAddr
d_returnAddr_748 ::
  T_GovActionState_734 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_748 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5269 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.expiresIn
d_expiresIn_750 :: T_GovActionState_734 -> AgdaAny
d_expiresIn_750 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5269 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.action
d_action_752 :: T_GovActionState_734 -> T_GovAction_648
d_action_752 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5269 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.prevAction
d_prevAction_754 :: T_GovActionState_734 -> AgdaAny
d_prevAction_754 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5269 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_756 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_756 ~v0 = du_DecEq'45'GovRole_756
du_DecEq'45'GovRole_756 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_756
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_620
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_620
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
                          C_DRep_622
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_624
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_622
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_620
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_622
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
                          C_SPO_624
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_624
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_620
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_622
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_624
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
d_DecEq'45'Vote_758 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_758 ~v0 = du_DecEq'45'Vote_758
du_DecEq'45'Vote_758 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_758
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_684
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_684
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
                          C_no_686
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_688
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_686
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_684
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_686
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
                          C_abstain_688
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_688
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_684
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_686
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_688
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
d_DecEq'45'VDeleg_760 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_760 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_credVoter_632 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_credVoter_632 v5 v6
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
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                   (coe v0))))
                                          v6 v3))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe du_DecEq'45'GovRole_756) v5 v2))
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
                          C_abstainRep_634
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_636
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstainRep_634
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_632 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_634
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
                          C_noConfidenceRep_636
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_noConfidenceRep_636
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_632 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_634
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_636
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
d_getDRepVote_762 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovVote_690 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_762 ~v0 v1 = du_getDRepVote_762 v1
du_getDRepVote_762 ::
  T_GovVote_690 -> Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_762 v0
  = case coe v0 of
      C_GovVote'46'constructor_4737 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                  coe
                    (case coe v5 of
                       C_DRep_622
                         -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)
                       _ -> coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
