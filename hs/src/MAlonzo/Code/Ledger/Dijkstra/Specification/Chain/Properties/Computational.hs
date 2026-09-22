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
d_HasCast'45'HashProtected_320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_320 ~v0
  = du_HasCast'45'HashProtected_320
du_HasCast'45'HashProtected_320 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- _.TopLevelTx
d_TopLevelTx_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_920 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3246 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2676 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3206
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2682 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.totalRefScriptsSize
d_totalRefScriptsSize_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3246 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3916 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838] ->
  Integer
d_totalRefScriptsSize_2728 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4354
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3246 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3936
d_HasLedgerState'45'NewEpochState_2844 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_2844
du_HasLedgerState'45'NewEpochState_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3936
du_HasLedgerState'45'NewEpochState_2844
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4332
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_2878 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4270
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4186
d_epochState_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  AgdaAny
d_lastEpoch_2980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4268
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.leiosCommittee
d_leiosCommittee_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosCommittee_2982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4280
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4278 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3862
d_ru_2986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4276 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3194 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3226 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3226 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3232 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3232 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.ls
d_ls_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3916
d_ls_3258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4202
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3246 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  Integer
d_maxRefScriptSizePerBlock_3274 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_3274 v2
du_maxRefScriptSizePerBlock_3274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  Integer
du_maxRefScriptSizePerBlock_3274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4204
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_3278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3246 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4252 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_3278 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4354
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4202
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
               (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348)
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4204
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
                     (coe v2))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3246 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_3280 v0 v1
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
                     = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4332
                         (coe v3) in
               coe
                 (let v6
                        = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3026
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3040
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3060
                                  (coe v4))) in
                  coe
                    (let v7
                           = coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_4220
                               (coe v0)
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                                     (coe v0))
                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3026
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3040
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3060
                                           (coe v4)))))
                               (coe
                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4332
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
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_2986
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4270
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
                                          (coe v5)))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4276
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4282
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4268
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4270
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4272
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
                                                      (coe v8))
                                                   (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4278
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4280
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_TICK_3060
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3206
                             (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4204
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4198
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4274
                                   (coe v6))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3944
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4332)
                                v6)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4272
                                (coe v6)))
                          v4)
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> let v13
                                              = d_refScriptSize'8804''63'Bound_3278
                                                  (coe v0) (coe v1) (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3062
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4334
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4282
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4268
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4270
                                                                              (coe v6))
                                                                           (coe v12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4198
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4222
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4326)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4332
                                                                                       (coe v3))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4222
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4326)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4332
                                                                                       (coe v3))))
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4222
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4326)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4332
                                                                                       (coe v3))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4222
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4326)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4332
                                                                                       (coe v3)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4276
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4278
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4280
                                                                              (coe v6))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN_4456
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
