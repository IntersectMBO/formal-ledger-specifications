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
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Chain
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_316 ~v0
  = du_HasCast'45'HashProtected_316
du_HasCast'45'HashProtected_316 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1250
-- _.TopLevelTx
d_TopLevelTx_900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_900 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2602 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3124
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2608 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.totalRefScriptsSize
d_totalRefScriptsSize_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3724 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654] ->
  Integer
d_totalRefScriptsSize_2654 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4208
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3744
d_HasLedgerState'45'NewEpochState_2770 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_2770
du_HasLedgerState'45'NewEpochState_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3744
du_HasLedgerState'45'NewEpochState_2770
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4126
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_2804 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4068
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4066
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_3984
d_epochState_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  AgdaAny
d_lastEpoch_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4064
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4074 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706
d_ru_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4072 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3118 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3150 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3150 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3156 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3156 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.ls
d_ls_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3724
d_ls_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4000
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  Integer
d_maxRefScriptSizePerBlock_3198 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_3198 v2
du_maxRefScriptSizePerBlock_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  Integer
du_maxRefScriptSizePerBlock_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1250)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4002
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4050 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_3202 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4208
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4000
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
               (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1250)
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4002
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
                     (coe v2))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_3204 v0 v1
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
                     = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4186
                         (coe v3) in
               coe
                 (let v6
                        = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2950
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
                                  (coe v4))) in
                  coe
                    (let v7
                           = coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_4068
                               (coe v0)
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                     (coe v0))
                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2950
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
                                           (coe v4)))))
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4186
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
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_2912
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4066
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
                                          (coe v5)))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4072
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4076
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4064
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4066
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4068
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
                                                      (coe v8))
                                                   (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4074
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_TICK_2986
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3124
                             (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4002
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_3996
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4070
                                   (coe v6))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3752
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4126)
                                v6)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4068
                                (coe v6)))
                          v4)
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> let v13
                                              = d_refScriptSize'8804''63'Bound_3202
                                                  (coe v0) (coe v1) (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
                                                     (coe v4)) in
                                        coe
                                          (case coe v13 of
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                               -> if coe v14
                                                    then case coe v15 of
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4188
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4076
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4064
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4066
                                                                              (coe v6))
                                                                           (coe v12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4006
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_3996
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4020
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4120)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4186
                                                                                       (coe v3))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_3998
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4020
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4120)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4186
                                                                                       (coe v3))))
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4002
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4020
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4120)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4186
                                                                                       (coe v3))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4004
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4020
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4120)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4186
                                                                                       (coe v3)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4072
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4074
                                                                              (coe v6))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN_4308
                                                                        v6
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v16)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v7) (coe v10)))))
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    else coe
                                                           seq (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                              (coe
                                                                 ("totalRefScriptsSize > maxRefScriptSizePerBlock"
                                                                  ::
                                                                  Data.Text.Text)))
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
