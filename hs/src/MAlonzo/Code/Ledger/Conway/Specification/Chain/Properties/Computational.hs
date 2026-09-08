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
d_HasCast'45'HashProtected_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_296 ~v0
  = du_HasCast'45'HashProtected_296
du_HasCast'45'HashProtected_296 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- _.Tx
d_Tx_662 a0 = ()
-- _.Tx.body
d_body_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- _.Tx.isValid
d_isValid_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- _.Tx.txAD
d_txAD_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe AgdaAny
d_txAD_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- _.Tx.txsize
d_txsize_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- _.Tx.wits
d_wits_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2090 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_2558
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2098 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain.Properties.Computational._.totalRefScriptsSize
d_totalRefScriptsSize_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726] ->
  Integer
d_totalRefScriptsSize_2146 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Chain.d_totalRefScriptsSize_3560
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.HasLState-NewEpochState
d_HasLState'45'NewEpochState_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030
d_HasLState'45'NewEpochState_2258 ~v0 ~v1
  = du_HasLState'45'NewEpochState_2258
du_HasLState'45'NewEpochState_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030
du_HasLState'45'NewEpochState_2258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3480
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_2300 a0 a1 = ()
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3422 (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3420
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3332
d_epochState_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  AgdaAny
d_lastEpoch_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3418
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3428 (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056
d_ru_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3426 (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__2564 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain.Properties.Computational._.completeness
d_completeness_2596 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2596 = erased
-- Ledger.Conway.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_2602 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2602 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Chain.Properties.Computational._._.ls
d_ls_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
d_ls_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
         (coe v0))
-- Ledger.Conway.Specification.Chain.Properties.Computational._._._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  Integer
d_maxRefScriptSizePerBlock_2644 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_2644 v2
du_maxRefScriptSizePerBlock_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  Integer
du_maxRefScriptSizePerBlock_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain.Properties.Computational._._._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_2648 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Conway.Specification.Chain.d_totalRefScriptsSize_3560
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3348
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
               (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140)
            (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1244
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                     (coe v2))))))
-- Ledger.Conway.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_2650 v0 v1
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
                     = MAlonzo.Code.Ledger.Conway.Specification.Chain.d_newEpochState_3536
                         (coe v3) in
               coe
                 (let v6
                        = MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2386
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2400
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2420
                                  (coe v4))) in
                  coe
                    (let v7
                           = coe
                               MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3494
                               (coe v0)
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
                                     (coe v0))
                                  (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2386
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2400
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2420
                                           (coe v4)))))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Chain.d_newEpochState_3536
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
                                       MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_2406
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3420
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                          (coe v5)))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3426
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3418
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3420
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3422
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                                      (coe v8))
                                                   (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3428
                                                      (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate.C_TICK_2480
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
                          (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_2558
                             (coe v0) (coe v1))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3344
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                   (coe v6))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3480)
                                v6)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3422
                                (coe v6)))
                          v4)
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> let v13
                                              = d_refScriptSize'8804''63'Bound_2648
                                                  (coe v0) (coe v1) (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2422
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
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Chain.C_constructor_3538
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3430
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3418
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3420
                                                                              (coe v6))
                                                                           (coe v12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3354
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3344
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                                                                    (coe v6)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3346
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                                                                    (coe v6)))
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                                                                    (coe v6)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3352
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                                                                                    (coe v6))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3426
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3428
                                                                              (coe v6))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Chain.C_CHAIN_3672
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
