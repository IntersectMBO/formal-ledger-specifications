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

module MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.Gov.Properties
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.DecEq-Credential
d_DecEq'45'Credential_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_64 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_64 v2 v3
du_DecEq'45'Credential_64 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_64 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- _.DecEq-PParamGroup
d_DecEq'45'PParamGroup_80 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_80 ~v0 = du_DecEq'45'PParamGroup_80
du_DecEq'45'PParamGroup_80 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_80
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_500
-- _.preoEpoch
d_preoEpoch_342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_342 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_580
            (coe v1)))
-- Ledger.Conway.Conformance.Gov.Properties._._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__734 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Gov.Properties._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__736 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.isRegistered
d_isRegistered_746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_746 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.GovAction
d_GovAction_788 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal
d_GovProposal_794 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote
d_GovVote_798 a0 = ()
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.action
d_action_874 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_874 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.anchor
d_anchor_876 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_876 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_764 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.deposit
d_deposit_878 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 -> Integer
d_deposit_878 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_760 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.policy
d_policy_880 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  Maybe AgdaAny
d_policy_880 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_758 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.prevAction
d_prevAction_882 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 -> AgdaAny
d_prevAction_882 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_756 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovProposal.returnAddr
d_returnAddr_884 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_886 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_762 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.anchor
d_anchor_896 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_896 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_738 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.gid
d_gid_898 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_898 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_732 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.vote
d_vote_900 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_714
d_vote_900 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_736 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.GovVote.voter
d_voter_902 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_902 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_734 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties.L._.actionValid
d_actionValid_1068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionValid_1068 = erased
-- Ledger.Conway.Conformance.Gov.Properties.L._.actionWellFormed
d_actionWellFormed_1072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_1072 = erased
-- Ledger.Conway.Conformance.Gov.Properties.L._.hasParent'
d_hasParent''_1100 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Gov.Properties.L._.hasParent?'
d_hasParent'63'''_1104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1104 v0
  = coe MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_2274 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties.L._.validHFAction?
d_validHFAction'63'_1172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_1172 v0
  = coe
      MAlonzo.Code.Ledger.Gov.Properties.d_validHFAction'63'_1258
      (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties.isUpdateCommittee
d_isUpdateCommittee_1182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isUpdateCommittee_1182 ~v0 v1 = du_isUpdateCommittee_1182 v1
du_isUpdateCommittee_1182 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isUpdateCommittee_1182 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v1 v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.isRegistered?
d_isRegistered'63'_1282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isRegistered'63'_1282 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Ledger.GovernanceActions.C_CC_664
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                             (let v5
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                              (coe v0))) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                              (coe v0)) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                      (coe v5) (coe v6))))))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_208
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1064
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_2066
                                         (coe v1))))))))
             MAlonzo.Code.Ledger.GovernanceActions.C_DRep_666
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (let v5
                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                           (coe v0))) in
                           coe
                             (let v6
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v5)
                                   (coe v6)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_208
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased
                             (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_2066
                                         (coe v1))))))))
             MAlonzo.Code.Ledger.GovernanceActions.C_SPO_668
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (let v5
                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                           (coe v0))) in
                           coe
                             (let v6
                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                           (coe v0)) in
                              coe
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v5)
                                   (coe v6)))))
                       (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_208
                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased erased (coe MAlonzo.Code.Ledger.Address.C_KeyHashObj_18)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_548
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                (coe
                                   MAlonzo.Code.Ledger.Certs.d_pools_912
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_2066
                                         (coe v1))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties.Computational-GOV'
d_Computational'45'GOV''_1284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_1284 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1702 (coe v0))
-- Ledger.Conway.Conformance.Gov.Properties._.Go._.epoch
d_epoch_1302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_epoch_1302 ~v0 v1 ~v2 = du_epoch_1302 v1
du_epoch_1302 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_epoch_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
-- Ledger.Conway.Conformance.Gov.Properties._.Go._.ppolicy
d_ppolicy_1306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_ppolicy_1306 ~v0 v1 ~v2 = du_ppolicy_1306 v1
du_ppolicy_1306 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_ppolicy_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2062
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
-- Ledger.Conway.Conformance.Gov.Properties._.Go._.rewardCreds
d_rewardCreds_1308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_1308 ~v0 v1 ~v2 = du_rewardCreds_1308 v1
du_rewardCreds_1308 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_rewardCreds_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_rewardCreds_2068
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoVote.computeProof
d_computeProof_1328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1328 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (coe
                 MAlonzo.Code.Ledger.Gov.Properties.d_lookupActionId_1130 v0
                 (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_734 (coe v3)))
                 (MAlonzo.Code.Ledger.GovernanceActions.d_gid_732 (coe v3))
                 (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                 v2)
              (d_isRegistered'63'_1282
                 (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_voter_734 (coe v3))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v6 of
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                       -> if coe v10
                                            then case coe v11 of
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                     -> let v13
                                                              = coe
                                                                  MAlonzo.Code.Function.Bundles.d_from_1974
                                                                  (coe
                                                                     MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_144
                                                                     (coe v2))
                                                                  v9 in
                                                        coe
                                                          (case coe v13 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                               -> case coe v15 of
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                                      -> case coe v17 of
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                             -> case coe v3 of
                                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3437 v20 v21 v22 v23
                                                                                    -> case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                           -> coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Gov.d_addVote_2014
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         v21)
                                                                                                      (coe
                                                                                                         v22))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Vote_2134
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                         (coe
                                                                                                            v14))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Bundles.d_to_1724
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_432
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               (coe
                                                                                                                  v2)
                                                                                                               (coe
                                                                                                                  v14))
                                                                                                            v16)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v24)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v12)
                                                                                                               (coe
                                                                                                                  v25))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            else coe
                                                   seq (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                      (coe
                                                         ("\172\nisRegistered (.proj\8321 \915)\n(.Ledger.GovernanceActions.GovVote.voter sig)"
                                                          ::
                                                          Data.Text.Text)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe
                                    ("Dec\n(isRegistered (.proj\8321 \915)\n (.Ledger.GovernanceActions.GovVote.voter sig))"
                                     ::
                                     Data.Text.Text)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoVote.completeness
d_completeness_1350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__2110 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1350 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.Dec-actionWellFormed
d_Dec'45'actionWellFormed_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionWellFormed_1510 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionWellFormed_1510 v0
du_Dec'45'actionWellFormed_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionWellFormed_1510 v0
  = coe MAlonzo.Code.Ledger.Gov.d_actionWellFormed'63'_2534 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.Dec-actionValid
d_Dec'45'actionValid_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'actionValid_1512 v0 ~v1 ~v2 ~v3
  = du_Dec'45'actionValid_1512 v0
du_Dec'45'actionValid_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'actionValid_1512 v0
  = coe MAlonzo.Code.Ledger.Gov.d_actionValid'63'_2530 (coe v0)
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.H
d_H_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_1514 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               du_Dec'45'actionWellFormed_1510 v0
               (MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  du_Dec'45'actionValid_1512 v0
                  (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_rewardCreds_2068
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_policy_758 (coe v3))
                  (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2062
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                  (MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v3)))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_760 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Ledger.Gov.Properties.d_validHFAction'63'_1258
                        (coe v0) (coe v3) (coe v2)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2064
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_2274 (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2064
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                           (coe v2)
                           (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_756 (coe v3)))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Address.d_net_82
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_762
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (let v4
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                               (coe v0))) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v4) (coe v5))))
                              (coe
                                 MAlonzo.Code.Ledger.Address.d_stake_84
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_762
                                    (coe v3)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_rewardCreds_2068
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))))))))
      (coe
         du_isUpdateCommittee_1182
         (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_754 (coe v3)))
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.genErrorsActionWellFormed
d_genErrorsActionWellFormed_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErrorsActionWellFormed_1518 v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_genErrorsActionWellFormed_1518 v0 v4
du_genErrorsActionWellFormed_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErrorsActionWellFormed_1518 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             ("\172\nL.actionWellFormed Ledger.GovernanceActions.GovAction.NoConfidence"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v2 v3 v4
        -> coe
             ("\172\nL.actionWellFormed\n(Ledger.GovernanceActions.GovAction.UpdateCommittee x x\8321 x\8322)"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v2 v3
        -> coe
             ("\172\nL.actionWellFormed\n(Ledger.GovernanceActions.GovAction.NewConstitution x x\8321)"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v2
        -> coe
             ("\172\nL.actionWellFormed (Ledger.GovernanceActions.GovAction.TriggerHF x)"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                              (coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_500))
                           (coe
                              MAlonzo.Code.Ledger.PParams.d_updateGroups_1368
                              (MAlonzo.Code.Ledger.PParams.d_ppUpd_1400
                                 (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2194 (coe v0)))
                              v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_442
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                        (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                     erased in
           coe
             (case coe v3 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
                  -> coe
                       ("\172\n.Ledger.PParams.PParamsDiff.updateGroups\n(.Ledger.PParams.GovParams.ppUpd\n (.TransactionStructure.govParams txs))\nx\n\8802\n.Class.HasEmptySet.HasEmptySet.\8709\n(Class.HasEmptySet.HasEmptySet-Set\n (.Axiom.Set.Theory\7496.th List-Model\7496))"
                        ::
                        Data.Text.Text)
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
                  -> coe
                       ("\172\n((pp\n  : Ledger.PParams.PParams (.TransactionStructure.crypto txs)\n    (.TransactionStructure.epochStructure txs)\n    (.TransactionStructure.scriptStructure txs))\n (p\8321\n  : Ledger.PParams.paramsWellFormed\n    (.TransactionStructure.crypto txs)\n    (.TransactionStructure.epochStructure txs)\n    (.TransactionStructure.scriptStructure txs) pp) \8594\n Ledger.PParams.paramsWellFormed (.TransactionStructure.crypto txs)\n (.TransactionStructure.epochStructure txs)\n (.TransactionStructure.scriptStructure txs)\n (.Ledger.PParams.PParamsDiff.applyUpdate\n  (.Ledger.PParams.GovParams.ppUpd\n   (.TransactionStructure.govParams txs))\n  pp x))"
                        ::
                        Data.Text.Text)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                      (coe v0)))
                                (coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v3))
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                      (coe v0)))))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_548
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
                     erased in
           coe
             (case coe v3 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
                  -> coe
                       ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 a\8321 \8594\n   .Ledger.Address.RwdAddr.net a\8321 \8801\n   .Ledger.Types.Epoch.GlobalConstants.NetworkId\n   (.TransactionStructure.globalConstants txs))\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) x)"
                        ::
                        Data.Text.Text)
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
                  -> coe
                       ("\172\nClass.IsSet.Ex-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 v \8594 \172 v \8801 0)\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) x)"
                        ::
                        Data.Text.Text)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             ("\172 L.actionWellFormed Ledger.GovernanceActions.GovAction.Info"
              ::
              Data.Text.Text)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.genErrorsActionValid
d_genErrorsActionValid_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErrorsActionValid_1536 v0 v1 ~v2 v3 v4 ~v5
  = du_genErrorsActionValid_1536 v0 v1 v3 v4
du_genErrorsActionValid_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErrorsActionValid_1536 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_694
        -> coe
             ("\172\nL.actionValid rewardCreds\n(.Ledger.GovernanceActions.GovProposal.policy prop) ppolicy epoch\nLedger.GovernanceActions.GovAction.NoConfidence"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696 v4 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                        (coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_758 (coe v2))
                        (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                     erased in
           coe
             (case coe v7 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                  -> coe
                       ("\172 .Ledger.GovernanceActions.GovProposal.policy prop \8801 nothing"
                        ::
                        Data.Text.Text)
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                  -> let v9
                           = coe
                               MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                  (coe
                                     (\ v9 ->
                                        coe
                                          MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
                                          (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                             (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                   (coe v0)))
                                             (\ v10 v11 -> v10)
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v1)))
                                             v9)
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                             (\ v10 v11 -> v11)
                                             (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                   (coe v0)))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v1)))
                                             v9)))
                                  (coe
                                     MAlonzo.Code.Class.IsSet.du_range_550
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v4)))
                               erased in
                     coe
                       (case coe v9 of
                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                            -> coe
                                 ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(preoEpoch txs HasPreorder.< epoch)\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) x)"
                                  ::
                                  Data.Text.Text)
                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                            -> let v11
                                     = coe
                                         MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                    (let v12
                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                     (coe v0))) in
                                                     coe
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                     (coe v0)) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe v12) (coe v13))))
                                                    (coe v11)
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                            (let v11
                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du__'8745'__704
                                                  (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v11))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_548
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                     (coe v4))
                                                  (coe v5))))
                                         erased in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                      -> coe
                                           ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n (List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n  .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) x) x\8321)\n(.Class.HasEmptySet.HasEmptySet.\8709\n (Class.HasEmptySet.HasEmptySet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)))"
                                            ::
                                            Data.Text.Text)
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                      -> coe
                                           ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n .Class.HasEmptySet.HasEmptySet.\8709\n (Class.HasEmptySet.HasEmptySet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)))\n((List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n  .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) x) x\8321)"
                                            ::
                                            Data.Text.Text)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_698 v4 v5
        -> coe
             ("\172\nL.actionValid rewardCreds\n(.Ledger.GovernanceActions.GovProposal.policy prop) ppolicy epoch\n(Ledger.GovernanceActions.GovAction.NewConstitution x x\8321)"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_700 v4
        -> coe
             ("\172\nL.actionValid rewardCreds\n(.Ledger.GovernanceActions.GovProposal.policy prop) ppolicy epoch\n(Ledger.GovernanceActions.GovAction.TriggerHF x)"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_702 v4
        -> coe
             ("\172\nL.actionValid rewardCreds\n(.Ledger.GovernanceActions.GovProposal.policy prop) ppolicy epoch\n(Ledger.GovernanceActions.GovAction.ChangePParams x)"
              ::
              Data.Text.Text)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_704 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                        (coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_758 (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2062
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     erased in
           coe
             (case coe v5 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
                  -> coe
                       ("\172 .Ledger.GovernanceActions.GovProposal.policy prop \8801 ppolicy"
                        ::
                        Data.Text.Text)
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                  -> coe
                       ("\172\n(HasSubset-Set HasSubset.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (\955 r \8594 .Ledger.Address.RwdAddr.stake r)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) x))\nrewardCreds"
                        ::
                        Data.Text.Text)
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_706
        -> coe
             ("\172\nL.actionValid rewardCreds\n(.Ledger.GovernanceActions.GovProposal.policy prop) ppolicy epoch\nLedger.GovernanceActions.GovAction.Info"
              ::
              Data.Text.Text)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.computeProof
d_computeProof_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1552 v0 v1 v2 v3
  = let v4 = d_H_1514 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                       -> case coe v11 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                              -> case coe v13 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                            -> case coe v17 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                   -> case coe v18 of
                                                                        MAlonzo.Code.Ledger.Gov.C_HasParent''_2264 v24
                                                                          -> case coe v3 of
                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_3825 v25 v26 v27 v28 v29 v30
                                                                                 -> let v31
                                                                                          = case coe
                                                                                                   v6 of
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v31 v32
                                                                                                -> coe
                                                                                                     seq
                                                                                                     (coe
                                                                                                        v31)
                                                                                                     (coe
                                                                                                        seq
                                                                                                        (coe
                                                                                                           v32)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Gov.du_insertGovAction_1970
                                                                                                                 (coe
                                                                                                                    v2)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_2056
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                             (coe
                                                                                                                                v1)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                          (coe
                                                                                                                             v1)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4191
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                erased
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                          (coe
                                                                                                                             (\ v33
                                                                                                                                v34
                                                                                                                                v35
                                                                                                                                v36
                                                                                                                                v37 ->
                                                                                                                                coe
                                                                                                                                  MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                       (coe
                                                                                                                          v29)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Types.Epoch.du_additionVia_8
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                                                                                                (coe
                                                                                                                                   v0)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                   (coe
                                                                                                                                      v1))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                (coe
                                                                                                                                   v1))))
                                                                                                                       (coe
                                                                                                                          v25)
                                                                                                                       (coe
                                                                                                                          v26))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Propose_2224
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       v10)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          v12)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v14)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                v16)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v24)
                                                                                                                                (coe
                                                                                                                                   v19))))))))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError in
                                                                                    coe
                                                                                      (coe
                                                                                         seq
                                                                                         (coe v19)
                                                                                         (case coe
                                                                                                 v6 of
                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v32 v33
                                                                                              -> if coe
                                                                                                      v32
                                                                                                   then case coe
                                                                                                               v33 of
                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v34
                                                                                                            -> case coe
                                                                                                                      v34 of
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                   -> case coe
                                                                                                                             v36 of
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                          -> case coe
                                                                                                                                    v38 of
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                 -> let v41
                                                                                                                                          = coe
                                                                                                                                              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                                                 (coe
                                                                                                                                                    (\ v41 ->
                                                                                                                                                       coe
                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_all'63'_1610
                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                         erased
                                                                                                                                                         erased
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                                            (coe
                                                                                                                                                               (\ v42 ->
                                                                                                                                                                  coe
                                                                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
                                                                                                                                                                       (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                                                                                                                                             (coe
                                                                                                                                                                                v0)))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                                                                                                                                                (coe
                                                                                                                                                                                   v0)))
                                                                                                                                                                          (\ v43
                                                                                                                                                                             v44 ->
                                                                                                                                                                             v43)
                                                                                                                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                (coe
                                                                                                                                                                                   v1)))
                                                                                                                                                                          v42)
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                                                          (\ v43
                                                                                                                                                                             v44 ->
                                                                                                                                                                             v44)
                                                                                                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                                                                                                                                                (coe
                                                                                                                                                                                   v0)))
                                                                                                                                                                          (MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                (coe
                                                                                                                                                                                   v1)))
                                                                                                                                                                          v42))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                          (coe
                                                                                                                                                                             (\ v43 ->
                                                                                                                                                                                coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v0))) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (let v45
                                                                                                                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v0)) in
                                                                                                                                                                                      coe
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v44)
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v45))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v43)
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                                                                                                                          (let v43
                                                                                                                                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                                                                                           coe
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.du__'8745'__704
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v43))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                   erased
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v0))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0)))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v35))
                                                                                                                                                                                (coe
                                                                                                                                                                                   v37))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                          (coe
                                                                                                                                                                             (\ v43 ->
                                                                                                                                                                                coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v0))) in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (let v45
                                                                                                                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v0)) in
                                                                                                                                                                                      coe
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v44)
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v45))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v43)
                                                                                                                                                                                  (let v44
                                                                                                                                                                                         = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                                                                                                                                   coe
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.du__'8745'__704
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v44))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                           erased
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          v0))))
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0)))))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v35))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v37)))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))
                                                                                                                                                         v41))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                    (coe
                                                                                                                                                       v35))) in
                                                                                                                                    coe
                                                                                                                                      (case coe
                                                                                                                                              v41 of
                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v42 v43
                                                                                                                                           -> if coe
                                                                                                                                                   v42
                                                                                                                                                then coe
                                                                                                                                                       seq
                                                                                                                                                       (coe
                                                                                                                                                          v43)
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Gov.du_insertGovAction_1970
                                                                                                                                                                (coe
                                                                                                                                                                   v2)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_2056
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               v1)))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                         (coe
                                                                                                                                                                            v1)))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4191
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                               erased
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                                                         (coe
                                                                                                                                                                            (\ v44
                                                                                                                                                                               v45
                                                                                                                                                                               v46
                                                                                                                                                                               v47
                                                                                                                                                                               v48 ->
                                                                                                                                                                               coe
                                                                                                                                                                                 MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                                                                      (coe
                                                                                                                                                                         v29)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Types.Epoch.du_additionVia_8
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                                                                                                                                               (coe
                                                                                                                                                                                  v0)))
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v1))))
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                               (coe
                                                                                                                                                                                  v1))))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_696
                                                                                                                                                                         (coe
                                                                                                                                                                            v35)
                                                                                                                                                                         (coe
                                                                                                                                                                            v37)
                                                                                                                                                                         (coe
                                                                                                                                                                            v39))
                                                                                                                                                                      (coe
                                                                                                                                                                         v26))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Propose_2224
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v12)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v14)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v16)
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                               (coe
                                                                                                                                                                                  v24)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v19)))))))))
                                                                                                                                                else coe
                                                                                                                                                       seq
                                                                                                                                                       (coe
                                                                                                                                                          v43)
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                          (coe
                                                                                                                                                             ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (preoEpoch HasPreorder.<\n    .Ledger.Conway.Conformance.Gov.GovEnv.epoch (.proj\8321 \915))\n   e\n   \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.Class.HasEmptySet.HasEmptySet.\8709\n    (Class.HasEmptySet.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
                                                                                                                                                              ::
                                                                                                                                                              Data.Text.Text)))
                                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                          _ -> coe
                                                                                                                 v31
                                                                                                   else (case coe
                                                                                                                v33 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                                                             -> coe
                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Gov.du_insertGovAction_1970
                                                                                                                        (coe
                                                                                                                           v2)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_2056
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                    (coe
                                                                                                                                       v1)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                 (coe
                                                                                                                                    v1)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4191
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                       erased
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                 (coe
                                                                                                                                    (\ v35
                                                                                                                                       v36
                                                                                                                                       v37
                                                                                                                                       v38
                                                                                                                                       v39 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                              (coe
                                                                                                                                 v29)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Types.Epoch.du_additionVia_8
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.PParams.d_govActionLifetime_368
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                          (coe
                                                                                                                                             v1))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v1))))
                                                                                                                              (coe
                                                                                                                                 v25)
                                                                                                                              (coe
                                                                                                                                 v26))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_GOV'45'Propose_2224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              v10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 v12)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    v14)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       v16)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v24)
                                                                                                                                       (coe
                                                                                                                                          v19))))))))
                                                                                                           _ -> coe
                                                                                                                  v31)
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (let v9
                                     = coe
                                         MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                         (coe
                                            MAlonzo.Code.Ledger.Gov.d_actionWellFormed'63'_2534
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.GovernanceActions.d_action_754
                                               (coe v3)))
                                         erased in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                      -> coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              du_genErrorsActionWellFormed_1518 (coe v0)
                                              (coe
                                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_754
                                                 (coe v3)))
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                      -> let v11
                                               = coe
                                                   MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                   (coe
                                                      MAlonzo.Code.Ledger.Gov.d_actionValid'63'_2530
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_rewardCreds_2068
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_policy_758
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2062
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_action_754
                                                         (coe v3)))
                                                   erased in
                                         coe
                                           (case coe v11 of
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                -> coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        du_genErrorsActionValid_1536 (coe v0)
                                                        (coe v1) (coe v3)
                                                        (coe
                                                           MAlonzo.Code.Ledger.GovernanceActions.d_action_754
                                                           (coe v3)))
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                -> coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_deposit_760
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_370
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1)))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\n.Ledger.GovernanceActions.GovProposal.deposit prop \8801\n.Ledger.PParams.PParams.govActionDeposit\n(.Ledger.Conway.Conformance.Gov.GovEnv.pparams (.proj\8321 \915))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Gov.Properties.d_validHFAction'63'_1258
                                                                             (coe v0) (coe v3)
                                                                             (coe v2)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2064
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v1))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\nLedger.Gov.validHFAction txs prop s\n(.Ledger.Conway.Conformance.Gov.GovEnv.enactState (.proj\8321 \915))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> let v17
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Gov.d_hasParent'63'''_2274
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2064
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe v2)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_action_754
                                                                                          (coe v3))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_756
                                                                                          (coe v3)))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v17 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                                 -> coe
                                                                                      ("\172\nL.hasParent'\n(.Ledger.Conway.Conformance.Gov.GovEnv.enactState (.proj\8321 \915)) s\n(.Ledger.GovernanceActions.GovProposal.action prop)\n(.Ledger.GovernanceActions.GovProposal.prevAction prop)"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                                 -> let v19
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Address.d_net_82
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_762
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                           -> coe
                                                                                                ("\172\n.Ledger.Address.RwdAddr.net\n(.Ledger.GovernanceActions.GovProposal.returnAddr prop)\n\8801\n.Ledger.Types.Epoch.GlobalConstants.NetworkId\n(.GovStructure.globalConstants\n (TransactionStructure.govStructure txs))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                           -> coe
                                                                                                ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712\n .Ledger.Address.RwdAddr.stake\n (.Ledger.GovernanceActions.GovProposal.returnAddr prop))\n(.Ledger.Conway.Conformance.Gov.GovEnv.rewardCreds (.proj\8321 \915))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Gov.Properties._.Go.GoProp.completeness
d_completeness_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_740 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__2110 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1614 = erased
-- Ledger.Conway.Conformance.Gov.Properties._.Go.computeProof
d_computeProof_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1702 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_1328 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_1552 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.Properties._.Go.completeness
d_completeness_1712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__2110 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1712 = erased
-- Ledger.Conway.Conformance.Gov.Properties.Computational-GOV
d_Computational'45'GOV_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_1718 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'GOV''_1284 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
