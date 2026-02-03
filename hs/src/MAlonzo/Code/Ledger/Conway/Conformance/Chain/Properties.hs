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

module MAlonzo.Code.Ledger.Conway.Conformance.Chain.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Chain
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch

-- _.Epoch
d_Epoch_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_170 = erased
-- Ledger.Conway.Conformance.Chain.Properties._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__1960 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1998 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState
d_NewEpochState_2020 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.bcur
d_bcur_2070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4842 (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.bprev
d_bprev_2072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4840 (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.epochState
d_epochState_2074 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4824 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4798
d_epochState_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
      (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.lastEpoch
d_lastEpoch_2076 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4824 ->
  AgdaAny
d_lastEpoch_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4838
      (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.pd
d_pd_2078 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4848 (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.ru
d_ru_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4824 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2934
d_ru_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4846 (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.Computational-LEDGER
d_Computational'45'LEDGER_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2114 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties.d_Computational'45'LEDGER_3466
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Chain.Properties._.completeness
d_completeness_2120 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2120 = erased
-- Ledger.Conway.Conformance.Chain.Properties._.computeProof
d_computeProof_2126 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2126 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties.Computational-CHAIN
d_Computational'45'CHAIN_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_2146 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
           (coe
              MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
           () erased () erased
           (coe
              MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
              (coe
                 MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
              (\ v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
              (coe
                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_NEWEPOCH'45'total_3036
                    (coe v0)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1716
                          (coe v0))
                       (MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_slot_2912
                          (coe v4)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_newEpochState_2900
                       (coe v3)))))
           (\ v5 ->
              case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> coe
                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                       () erased () erased
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties.d_Computational'45'LEDGER_3466
                                (coe v0) (coe v1))
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2866
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_slot_2912 (coe v4))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1156
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4816
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                            (coe v6))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1160
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4816
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                         (coe v6)))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4816
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4810
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                      (coe v6)))))
                          (MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4814
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                (coe v6)))
                          (MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_ts_2910 (coe v4)))
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_constructor_2902
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_constructor_4850
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4838
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4840
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4842
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4820
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4810
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_48095
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_48089
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_4812
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_48095
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_48089
                                                           (coe v11)))))
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4816
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_48095
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_48089
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_4818
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_48095
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4844
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_48089
                                                           (coe v11))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4846
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4848
                                               (coe v6))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_CHAIN_3122
                                         v6 v7 v10))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
