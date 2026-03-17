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

module MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.Properties.Computational where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational._._⊢_⇀⦇_,RUPD⦈_
d__'8866'_'8640''10631'_'44'RUPD'10632'__2016 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2018 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2046 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational._.completeness
d_completeness_2316 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2316 = erased
-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational._.computeProof
d_computeProof_2322 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2322 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational.Computational-RUPD
d_Computational'45'RUPD_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RUPD_2334 v0 ~v1
  = du_Computational'45'RUPD_2334 v0
du_Computational'45'RUPD_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'RUPD_2334 v0
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
                             MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.C_RUPD'45'Reward'45'Update'45'Exists_2388)))
           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             -> coe
                  (\ v3 ->
                     let v4
                           = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                               (coe
                                  MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                  (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
                                           (coe v0)))
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
                                              (coe v0))
                                           v3))
                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3436
                                                        (coe v0)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
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
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.C_RUPD'45'Create'45'Reward'45'Update_2378
                                                     v7))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v6)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.C_RUPD'45'Reward'45'Too'45'Early_2396)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.RewardUpdate.Properties.Computational.Computational-TICK
d_Computational'45'TICK_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'TICK_2414 v0 ~v1
  = du_Computational'45'TICK_2414 v0
du_Computational'45'TICK_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'TICK_2414 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3426
                   (coe v0)
                   (coe
                      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
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
                        (coe du_Computational'45'RUPD_2334 (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3352
                              (coe v2))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
                              (coe v2)))
                        (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3358 (coe v5))
                        v3)
                     (\ v7 ->
                        case coe v7 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3362
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3350
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3352
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3354
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3356
                                          (coe v5))
                                       (coe v8)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3360
                                          (coe v5)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.C_TICK_2408
                                       v5
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                          (coe v9))))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
