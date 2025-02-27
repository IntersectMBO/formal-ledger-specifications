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

module MAlonzo.Code.Ledger.GovernanceActions.Properties where

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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.preoEpoch
d_preoEpoch_338 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_338 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
         (coe v0))
-- Ledger.GovernanceActions.Properties._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__816 a0 a1 a2 a3 a4 = ()
-- Ledger.GovernanceActions.Properties._.completeness
d_completeness_884 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_884 = erased
-- Ledger.GovernanceActions.Properties._.computeProof
d_computeProof_890 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_890 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.GovernanceActions.Properties.Computational-ENACT
d_Computational'45'ENACT_902 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_902 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         case coe v3 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_696
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2161
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                  (coe MAlonzo.Code.Ledger.Enact.d_gid_824 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Enact.C_Enact'45'NoConf_916))
                  MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_698
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
                                                                        MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_234
                                                                        (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                           (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                                 (coe v0)))
                                                                           (\ v12 v13 -> v12) v11
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
                                                                              (MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                                 (coe v0))
                                                                              (MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                                       (coe v2))))
                                                                              (MAlonzo.Code.Ledger.Enact.d_epoch_828
                                                                                 (coe v1))))
                                                                        (coe
                                                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                           (\ v12 v13 -> v13)
                                                                           (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                                 (coe v0)))
                                                                           v11
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
                                                                              (MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                                 (coe v0))
                                                                              (MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                                       (coe v2))))
                                                                              (MAlonzo.Code.Ledger.Enact.d_epoch_828
                                                                                 (coe v1)))))
                                                                     (coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                              (coe v0)))
                                                                        (coe v11)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
                                                                           (MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                              (coe v0))
                                                                           (MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                                    (coe v2))))
                                                                           (MAlonzo.Code.Ledger.Enact.d_epoch_828
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
                                                                     MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2161
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (let v14
                                                                                     = let v14
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v15
                                                                                                = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
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
                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                             (coe
                                                                                                                v0))) in
                                                                                             coe
                                                                                               (let v16
                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                             (coe
                                                                                                                v0)) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
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
                                                                                                   MAlonzo.Code.Ledger.Enact.d_cc_842
                                                                                                   (coe
                                                                                                      v2))))))
                                                                                    (coe v8)))
                                                                              (coe v9)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Enact.d_gid_824
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Enact.d_pv_846
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Enact.C_Enact'45'UpdComm_924
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
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError
                  MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_700
                    -> coe
                         seq (coe v5)
                         (coe
                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                            (coe
                               MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                               (coe
                                  MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2161
                                  (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                     (coe MAlonzo.Code.Ledger.Enact.d_gid_824 (coe v1)))
                                  (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v2))
                                  (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2))
                                  (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v2)))
                               (coe MAlonzo.Code.Ledger.Enact.C_Enact'45'NewConst_926)))
                  MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_702
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2161
                               (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                  (coe MAlonzo.Code.Ledger.Enact.d_gid_824 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Enact.C_Enact'45'HF_928))
                  MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_704
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                            (coe
                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2161
                               (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v2))
                               (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v2))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.PParams.d_applyUpdate_1368
                                     (MAlonzo.Code.Ledger.PParams.d_ppUpd_1402
                                        (coe
                                           MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_1032
                                           (coe v0)))
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v2)))
                                     v5)
                                  (coe MAlonzo.Code.Ledger.Enact.d_gid_824 (coe v1)))
                               (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v2)))
                            (coe MAlonzo.Code.Ledger.Enact.C_Enact'45'PParams_930))
                  MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_706
                    -> let v6
                             = coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                             (coe
                                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                          (coe (\ v6 -> v6))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v2))
                                             v5))
                                       (coe MAlonzo.Code.Ledger.Enact.d_treasury_826 (coe v1)))) in
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
                                                       MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2161
                                                       (coe
                                                          MAlonzo.Code.Ledger.Enact.d_cc_842
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Enact.d_constitution_844
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Enact.d_pv_846
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                                                          (let v10
                                                                 = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                                                        (coe v0)) in
                                                           coe
                                                             (let v11
                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                              (coe v0))) in
                                                              coe
                                                                (let v12
                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                      (coe v10) (coe v11)
                                                                      (coe v12)))))
                                                          (MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                                             (coe v2))
                                                          v5))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Enact.C_Enact'45'Wdrl_936
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
                  MAlonzo.Code.Ledger.GovernanceActions.C_Info_708
                    -> coe
                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                            (coe MAlonzo.Code.Ledger.Enact.C_Enact'45'Info_938))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
