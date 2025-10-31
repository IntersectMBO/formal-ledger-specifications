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

module MAlonzo.Code.Ledger.Conway.Specification.Enact.Properties.Computational where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.preoEpoch
d_preoEpoch_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_428 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
         (coe v0))
-- Ledger.Conway.Specification.Enact.Properties.Computational._.GovAction
d_GovAction_814 a0 = ()
-- Ledger.Conway.Specification.Enact.Properties.Computational._.GovAction.gaData
d_gaData_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.GovAction.gaType
d_gaType_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_796
d_gaType_974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1096 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactEnv
d_EnactEnv_1112 a0 = ()
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactState
d_EnactState_1116 a0 = ()
-- Ledger.Conway.Specification.Enact.Properties.Computational._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_444
d_HasccMaxTermLength'45'EnactState_1132 ~v0
  = du_HasccMaxTermLength'45'EnactState_1132
du_HasccMaxTermLength'45'EnactState_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_444
du_HasccMaxTermLength'45'EnactState_1132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1156
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactEnv.epoch
d_epoch_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1094 ->
  AgdaAny
d_epoch_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1106
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactEnv.gid
d_gid_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1102 (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactEnv.treasury
d_treasury_1162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1094 ->
  Integer
d_treasury_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1104
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactState.cc
d_cc_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactState.constitution
d_constitution_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactState.pparams
d_pparams_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactState.pv
d_pv_1172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126 (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.EnactState.withdrawals
d_withdrawals_1174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.completeness
d_completeness_1182 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1182 = erased
-- Ledger.Conway.Specification.Enact.Properties.Computational._.computeProof
d_computeProof_1188 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1188 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Enact.Properties.Computational._.ENACT-deterministic
d_ENACT'45'deterministic_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__1196 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__1196 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ENACT'45'deterministic_1214 = erased
-- Ledger.Conway.Specification.Enact.Properties.Computational.Computational-ENACT
d_Computational'45'ENACT_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_1216 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         case coe v3 of
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_840 v4 v5
             -> case coe v4 of
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_798
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1102
                                     (coe v1)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                  (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126 (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                  (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                  (coe v2)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'NoConf_1224))
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_800
                    -> case coe v5 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                           -> case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                  -> let v10
                                           = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                                                  (coe
                                                     (\ v10 ->
                                                        coe
                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1658
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          erased erased
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                                             (coe
                                                                (\ v11 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                                                        (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                           (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                                 (coe v0)))
                                                                           (\ v12 v13 -> v12) v11
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1156)
                                                                                 v2)
                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1106
                                                                                 (coe v1))))
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                           (\ v12 v13 -> v13)
                                                                           (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                                 (coe v0)))
                                                                           v11
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1156)
                                                                                 v2)
                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1106
                                                                                 (coe v1)))))
                                                                     (coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                              (coe v0)))
                                                                        (coe v11)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_648
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1156)
                                                                              v2)
                                                                           (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1106
                                                                              (coe v1)))))))
                                                          v10))
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_range_588
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
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
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (let v14
                                                                                     = let v14
                                                                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v15
                                                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  v14)
                                                                                               (coe
                                                                                                  v15))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       erased v14)
                                                                                    (let v15
                                                                                           = let v15
                                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                                                             (coe
                                                                                                                v0))) in
                                                                                             coe
                                                                                               (let v16
                                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                                                             (coe
                                                                                                                v0)) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                     (coe
                                                                                                        v15)
                                                                                                     (coe
                                                                                                        v16))) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
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
                                                                                                MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_348
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
                                                                                                   (coe
                                                                                                      v2))))))
                                                                                    (coe v8)))
                                                                              (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1102
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'UpdComm_1232
                                                                     v13))
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 else coe
                                                        seq (coe v12)
                                                        (coe
                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                           (coe
                                                              ("ENACT failed at \8704[ term \8712 range new ] term \8804 (CCMaxTermLengthOf s +\7497 e)"
                                                               ::
                                                               Data.Text.Text)))
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_802
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1102
                                     (coe v1)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126 (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                  (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                  (coe v2)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'NewConst_1234))
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_804
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                  (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1102
                                     (coe v1)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                  (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                  (coe v2)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'HF_1236))
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_806
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122 (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                  (coe v2))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1160
                                           (coe v0)))
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                           (coe v2)))
                                     v5)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1102
                                     (coe v1)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                  (coe v2)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'PParams_1238))
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_808
                    -> let v6
                             = MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1414
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1178
                                             (coe v0)))
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
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                    (coe
                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                    (coe (\ v6 -> v6))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__550
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       (coe
                                          MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1178
                                                (coe v0)))
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
                                       (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                          (coe v2))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1104
                                    (coe v1)) in
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
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__550
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                          (let v10
                                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1178
                                                                        (coe v0)) in
                                                           coe
                                                             (let v11
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                              (coe v0))) in
                                                              coe
                                                                (let v12
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_602
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                                                      (coe v10) (coe v11)
                                                                      (coe v12)))))
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                                             (coe v2))
                                                          v5))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'Wdrl_1244
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
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_810
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_Enact'45'Info_1246))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
