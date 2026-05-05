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

module MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational._._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2584 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2586 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2614 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational._.completeness
d_completeness_2800 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2800 = erased
-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational._.computeProof
d_computeProof_2806 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2806 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.Computational-RUPD
d_Computational'45'RUPD_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RUPD_2818 v0 ~v1
  = du_Computational'45'RUPD_2818 v0
du_Computational'45'RUPD_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'RUPD_2818 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
             -> coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_RUPD'45'Reward'45'Update'45'Exists_2874)))
           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             -> coe
                  (\ v3 ->
                     let v4
                           = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                               (coe
                                  MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                  (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                           (coe v0)))
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                              (coe v0))
                                           v3))
                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                           (coe v0))))
                                  v3) in
                     coe
                       (case coe v4 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                            -> if coe v5
                                 then case coe v6 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                          -> coe
                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4180
                                                        (coe v0)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_RUPD'45'Create'45'Reward'45'Update_2864
                                                     v7))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v6)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_RUPD'45'Reward'45'Too'45'Early_2882)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.Computational-TICK
d_Computational'45'TICK_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'TICK_2898 v0 ~v1
  = du_Computational'45'TICK_2898 v0
du_Computational'45'TICK_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'TICK_2898 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3166
                   (coe v0)
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                         (coe v0))
                      v3)
                   (coe v2) in
         coe
           (case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                     (coe
                        MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                     () erased () erased
                     (coe
                        MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                        (coe du_Computational'45'RUPD_2818 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4104
                              (coe v2))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4108
                              (coe v2)))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4110
                           (coe v5))
                        v3)
                     (\ v7 ->
                        case coe v7 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4114
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4102
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4104
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4106
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4108
                                          (coe v5))
                                       (coe v8)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4112
                                          (coe v5)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_TICK_2894
                                       v5
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                          (coe v9))))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
