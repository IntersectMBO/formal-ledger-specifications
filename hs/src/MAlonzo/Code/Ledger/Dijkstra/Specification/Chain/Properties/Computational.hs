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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational where

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
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Chain
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction

-- _.TopLevelTx
d_TopLevelTx_926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_926 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2692 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3260
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2700 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3978
d_HasLedgerState'45'NewEpochState_2872 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_2872
du_HasLedgerState'45'NewEpochState_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3978
du_HasLedgerState'45'NewEpochState_2872
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4378
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_2906 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4318
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4316
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4232
d_epochState_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  AgdaAny
d_lastEpoch_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4314
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.leiosCommittee
d_leiosCommittee_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
d_leiosCommittee_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4326
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4324 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4298 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3902
d_ru_3014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4322 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3492 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3524 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3524 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3530 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3530 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_3558 v0 v1
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
              (let v5
                     = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4388
                         (coe v3) in
               coe
                 (let v6
                        = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                                  (coe v4))) in
                  coe
                    (let v7
                           = coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_4256
                               (coe v0)
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                     (coe v0))
                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                                           (coe v4)))))
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4388
                                  (coe v3)) in
                     coe
                       (case coe v7 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                            -> coe
                                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                 () erased () erased
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_3002
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4316
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                          (coe v5)))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4322
                                       (coe v8))
                                    v6)
                                 (\ v10 ->
                                    case coe v10 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                        -> coe
                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4328
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4314
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4316
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4318
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                                      (coe v8))
                                                   (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4324
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4326
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_TICK_3076
                                                   v8
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v9) (coe v12))))
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)))))
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3260
                             (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4320
                                   (coe v6))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3986
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4378)
                                v6)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4318
                                (coe v6)))
                          v4)
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> coe
                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4390
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4328
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4314
                                                      (coe v6))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4316
                                                      (coe v6))
                                                   (coe v12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4254
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4244
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4268
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4372)
                                                            v6))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4246
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4268
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4372)
                                                            v6))
                                                      (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4268
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4372)
                                                            v6))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4252
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4268
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4372)
                                                            v6)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4322
                                                      (coe v6))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4324
                                                      (coe v6))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4326
                                                      (coe v6))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN_4496
                                                v6
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v7) (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
