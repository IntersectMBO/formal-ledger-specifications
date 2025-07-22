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

module MAlonzo.Code.Ledger.Conway.Enact.Properties where

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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.preoEpoch
d_preoEpoch_388 ::
  MAlonzo.Code.Ledger.Conway.Gov.Base.T_GovStructure_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644 (coe v0))
-- Ledger.Conway.Enact.Properties._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__928 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Enact.Properties._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_956 ::
  MAlonzo.Code.Ledger.Conway.Gov.Base.T_GovStructure_8 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478
d_HasccMaxTermLength'45'EnactState_956 ~v0
  = du_HasccMaxTermLength'45'EnactState_956
du_HasccMaxTermLength'45'EnactState_956 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478
du_HasccMaxTermLength'45'EnactState_956
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.du_HasccMaxTermLength'45'EnactState_984
-- Ledger.Conway.Enact.Properties._.completeness
d_completeness_1006 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1006 = erased
-- Ledger.Conway.Enact.Properties._.computeProof
d_computeProof_1012 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1012 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Enact.Properties.Computational-ENACT
d_Computational'45'ENACT_1024 ::
  MAlonzo.Code.Ledger.Conway.Gov.Base.T_GovStructure_8 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_1024 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         case coe v3 of
           MAlonzo.Code.Ledger.Conway.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_812 v4 v5
             -> case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NoConfidence_786
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2885
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_gid_936 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_958 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'NoConf_1050))
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_UpdateCommittee_788
                    -> case coe v5 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                           -> case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                  -> let v10
                                           = coe
                                               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                  (coe
                                                     (\ v10 ->
                                                        coe
                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1610
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                             (coe
                                                                (\ v11 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                                                                        (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                           (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                                 (coe v0)))
                                                                           (\ v12 v13 -> v12) v11
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
                                                                              (MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Enact.du_HasccMaxTermLength'45'EnactState_984)
                                                                                 v2)
                                                                              (MAlonzo.Code.Ledger.Conway.Enact.d_epoch_940
                                                                                 (coe v1))))
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                           (\ v12 v13 -> v13)
                                                                           (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                                 (coe v0)))
                                                                           v11
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
                                                                              (MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Enact.du_HasccMaxTermLength'45'EnactState_984)
                                                                                 v2)
                                                                              (MAlonzo.Code.Ledger.Conway.Enact.d_epoch_940
                                                                                 (coe v1)))))
                                                                     (coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                              (coe v0)))
                                                                        (coe v11)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
                                                                           (MAlonzo.Code.Ledger.Conway.Gov.Base.d_epochStructure_644
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Enact.du_HasccMaxTermLength'45'EnactState_984)
                                                                              v2)
                                                                           (MAlonzo.Code.Ledger.Conway.Enact.d_epoch_940
                                                                              (coe v1)))))))
                                                          v10))
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_range_550
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                     (coe v6))) in
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
                                                                     MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2885
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (let v14
                                                                                     = let v14
                                                                                             = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v15
                                                                                                = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                               (coe
                                                                                                  v14)
                                                                                               (coe
                                                                                                  v15))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       erased v14)
                                                                                    (let v15
                                                                                           = let v15
                                                                                                   = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                                                                             (coe
                                                                                                                v0))) in
                                                                                             coe
                                                                                               (let v16
                                                                                                      = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                                                                             (coe
                                                                                                                v0)) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                                                     (coe
                                                                                                        v15)
                                                                                                     (coe
                                                                                                        v16))) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__898
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                             erased
                                                                                             v15)
                                                                                          (coe v6)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                             (coe
                                                                                                (\ v16 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v16)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.HasEmptySet.d_'8709'_306
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_320
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Enact.d_cc_954
                                                                                                   (coe
                                                                                                      v2))))))
                                                                                    (coe v8)))
                                                                              (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Enact.d_gid_936
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Enact.d_pv_958
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'UpdComm_1058
                                                                     v13))
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 else coe
                                                        seq (coe v12)
                                                        (coe
                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                           (coe
                                                              ("ENACT failed at \8704[ term \8712 range new ] term \8804 (ccMaxTermLengthOf s +\7497 e)"
                                                               ::
                                                               Data.Text.Text)))
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_NewConstitution_790
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2885
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_gid_936 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_958 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'NewConst_1060))
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TriggerHF_792
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2885
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_gid_936 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'HF_1062))
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_ChangePParams_794
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2885
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_954 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956 (coe v2))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_958 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
                                     (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Gov.Base.d_govParams_1154
                                           (coe v0)))
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960 (coe v2)))
                                     v5)
                                  (coe MAlonzo.Code.Ledger.Conway.Enact.d_gid_936 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'PParams_1064))
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_TreasuryWdrl_796
                    -> let v6
                             = coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2824
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Gov.Base.d_globalConstants_1172
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                                          (coe (\ v6 -> v6))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Gov.Base.d_globalConstants_1172
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962
                                                (coe v2))
                                             v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Enact.d_treasury_938
                                          (coe v1)))) in
                       coe
                         (case coe v6 of
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                              -> if coe v7
                                   then case coe v8 of
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                            -> coe
                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Enact.C_EnactState'46'constructor_2885
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Enact.d_cc_954
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Enact.d_pv_958
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                          (let v10
                                                                 = MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Gov.Base.d_globalConstants_1172
                                                                        (coe v0)) in
                                                           coe
                                                             (let v11
                                                                    = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                                              (coe v0))) in
                                                              coe
                                                                (let v12
                                                                       = MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Gov.Base.d_crypto_598
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
                                                                      (coe v10) (coe v11)
                                                                      (coe v12)))))
                                                          (MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_962
                                                             (coe v2))
                                                          v5))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'Wdrl_1070
                                                       v9))
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   else coe
                                          seq (coe v8)
                                          (coe
                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                             (coe
                                                ("ENACT failed at \8721[ x \8592 (s .withdrawals \8746\8314 wdrl) \7584\7504 ] x \8804 t"
                                                 ::
                                                 Data.Text.Text)))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Ledger.Conway.Gov.Actions.C_Info_798
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                            (coe MAlonzo.Code.Ledger.Conway.Enact.C_Enact'45'Info_1072))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
