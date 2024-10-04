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

module MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.preoEpoch
d_preoEpoch_354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_preoEpoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
         (coe v0))
-- Ledger.Conway.Conformance.GovernanceActions.Properties._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__840 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.GovernanceActions.Properties._.completeness
d_completeness_908 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_908 = erased
-- Ledger.Conway.Conformance.GovernanceActions.Properties._.computeProof
d_computeProof_914 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_914 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.GovernanceActions.Properties.Computational-ENACT
d_Computational'45'ENACT_926 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_926 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_'10214'_'44'_'44'_'10215''7497'_854 v2 v3 v4
             -> coe
                  (\ v5 v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NoConfidence_722
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                       (coe v5)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'NoConf_940))
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_UpdateCommittee_724 v7 v8 v9
                         -> let v10
                                  = coe
                                      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                         (coe
                                            (\ v10 ->
                                               coe
                                                 MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased erased
                                                 (coe
                                                    MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                    (coe
                                                       (\ v11 ->
                                                          coe
                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                            (coe
                                                               MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                     (coe v0)))
                                                               (coe
                                                                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                        (coe v0)))
                                                                  (\ v12 v13 -> v12) v11
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'''__82
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                        (coe v0))
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                              (coe v5))))
                                                                     v4))
                                                               (coe
                                                                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                  (\ v12 v13 -> v13)
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                        (coe v0)))
                                                                  v11
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'''__82
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                        (coe v0))
                                                                     (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                              (coe v5))))
                                                                     v4)))
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                     (coe v0)))
                                                               (coe v11)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'''__82
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_epochStructure_608
                                                                     (coe v0))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                                           (coe v5))))
                                                                  v4)))))
                                                 v10))
                                         (coe
                                            MAlonzo.Code.Interface.IsSet.du_range_552
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_558)
                                            (coe v7))) in
                            coe
                              (case coe v10 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                   -> if coe v11
                                        then case coe v12 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                 -> coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (let v14
                                                                            = let v14
                                                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                              (coe
                                                                                                 v0))) in
                                                                              coe
                                                                                (let v15
                                                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                              (coe
                                                                                                 v0)) in
                                                                                 coe
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                      (coe v14)
                                                                                      (coe v15))) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1382
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                              erased v14)
                                                                           (let v15
                                                                                  = let v15
                                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v16
                                                                                             = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                            (coe
                                                                                               v15)
                                                                                            (coe
                                                                                               v16))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__888
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v15)
                                                                                 (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                    (coe
                                                                                       (\ v16 ->
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_310
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                                                          (coe
                                                                                             v5))))))
                                                                           (coe v8)))
                                                                     (coe v9)))
                                                               (coe v2))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                               (coe v5)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'NewComm_948
                                                            (\ v14 -> coe v13 v14)))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v12)
                                               (coe
                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                  (coe
                                                     ("ENACT failed at \8704[ term \8712 range new ] term \8804 (s .pparams .proj\8321 .PParams.ccMaxTermLength +\7497 e)"
                                                      ::
                                                      Data.Text.Text)))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_NewConstitution_726 v7 v8
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                          (coe v8))
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                       (coe v5)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'NewConst_950))
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TriggerHF_728 v7
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                       (coe v5)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'HF_952))
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_ChangePParams_730 v7
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
                                          (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_govParams_1068
                                                (coe v0)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                (coe v5)))
                                          v7)
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                       (coe v5)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'PParams_954))
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_TreasuryWdrl_732 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1180
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_globalConstants_1098
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                               (coe
                                                  MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                               (coe (\ v8 -> v8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                  (coe
                                                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_globalConstants_1098
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                           (coe v0))))
                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                     (coe v5))
                                                  v7))
                                            (coe v3))) in
                            coe
                              (case coe v8 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                   -> if coe v9
                                        then case coe v10 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                 -> coe
                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                               (coe v5))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                               MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                                               (let v12
                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_globalConstants_1098
                                                                             (coe v0)) in
                                                                coe
                                                                  (let v13
                                                                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                   (coe v0))) in
                                                                   coe
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.d_crypto_562
                                                                                   (coe v0)) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                                           (coe v12) (coe v13)
                                                                           (coe v14)))))
                                                               (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                                  (coe v5))
                                                               v7))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'Wdrl_960
                                                            v11))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v10)
                                               (coe
                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                  (coe
                                                     ("ENACT failed at \8721[ x \8592 (s .withdrawals \8746\8314 wdrl) \7584\7504 ] x \8804 t"
                                                      ::
                                                      Data.Text.Text)))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_Info_734
                         -> coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v5)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_Enact'45'Info_962))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
