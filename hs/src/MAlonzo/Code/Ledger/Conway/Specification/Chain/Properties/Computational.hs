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

module MAlonzo.Code.Ledger.Conway.Specification.Chain.Properties.Computational where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Chain
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_254 ~v0
  = du_HasCast'45'HashProtected_254
du_HasCast'45'HashProtected_254 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1082
-- _.Tx
d_Tx_606 a0 = ()
-- _.Tx.body
d_body_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386
d_body_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
      (coe v0)
-- _.Tx.isValid
d_isValid_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Bool
d_isValid_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3584
      (coe v0)
-- _.Tx.txAD
d_txAD_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Maybe AgdaAny
d_txAD_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3586
      (coe v0)
-- _.Tx.txsize
d_txsize_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Integer
d_txsize_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3582
      (coe v0)
-- _.Tx.wits
d_wits_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3544
d_wits_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3580
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2006 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_2474
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2012 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain.Properties.Computational._.totalRefScriptsSize
d_totalRefScriptsSize_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566] ->
  Integer
d_totalRefScriptsSize_2060 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Chain.d_totalRefScriptsSize_3482
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.HasLState-NewEpochState
d_HasLState'45'NewEpochState_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934
d_HasLState'45'NewEpochState_2172 ~v0 ~v1
  = du_HasLState'45'NewEpochState_2172
du_HasLState'45'NewEpochState_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2934
du_HasLState'45'NewEpochState_2172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3398
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_2212 a0 a1 = ()
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3340 (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3338
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3252
d_epochState_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  AgdaAny
d_lastEpoch_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3336
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3346 (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2978
d_ru_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3344 (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2476 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain.Properties.Computational._.completeness
d_completeness_2508 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2508 = erased
-- Ledger.Conway.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_2514 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2514 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._._.ls
d_ls_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914
d_ls_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
         (coe v0))
-- Ledger.Conway.Specification.Chain.Properties.Computational._._._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  Integer
d_maxRefScriptSizePerBlock_2556 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_2556 v2
du_maxRefScriptSizePerBlock_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  Integer
du_maxRefScriptSizePerBlock_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_390
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1082)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain.Properties.Computational._._._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_2560 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Conway.Specification.Chain.d_totalRefScriptsSize_3482
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
               (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_390
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1082)
            (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                     (coe v2))))))
-- Ledger.Conway.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_2562 v0 v1
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
                     = MAlonzo.Code.Ledger.Conway.Specification.Chain.d_newEpochState_3458
                         (coe v3) in
               coe
                 (let v6
                        = MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2302
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
                                  (coe v4))) in
                  coe
                    (let v7
                           = coe
                               MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3410
                               (coe v0)
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
                                     (coe v0))
                                  (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2302
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
                                           (coe v4)))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Chain.d_newEpochState_3458
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
                                       MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_2320
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3338
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                          (coe v5)))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3344
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3348
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3336
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3338
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3340
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                                      (coe v8))
                                                   (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3346
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.C_TICK_2396
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
                          (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_2474
                             (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3264
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                   (coe v6))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2942
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3398)
                                v6)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3340
                                (coe v6)))
                          v4)
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> let v13
                                              = d_refScriptSize'8804''63'Bound_2560
                                                  (coe v0) (coe v1) (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
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
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Chain.C_constructor_3460
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3348
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3336
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3338
                                                                              (coe v6))
                                                                           (coe v12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3274
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3264
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                                                                    (coe v6)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3266
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                                                                    (coe v6)))
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3270
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                                                                    (coe v6)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3272
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3342
                                                                                    (coe v6))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3344
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3346
                                                                              (coe v6))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Chain.C_CHAIN_3594
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
