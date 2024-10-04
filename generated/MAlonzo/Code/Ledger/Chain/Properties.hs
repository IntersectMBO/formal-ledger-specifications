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

module MAlonzo.Code.Ledger.Chain.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Chain
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.Ledger.Properties
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Tx
d_Tx_442 a0 = ()
-- _.Tx.body
d_body_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
d_body_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v0)
-- _.Tx.isValid
d_isValid_1640 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Bool
d_isValid_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2916 (coe v0)
-- _.Tx.txAD
d_txAD_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Maybe AgdaAny
d_txAD_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2918 (coe v0)
-- _.Tx.wits
d_wits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2882
d_wits_1644 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v0)
-- Ledger.Chain.Properties._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__1748 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain.Properties._.totalRefScriptsSize
d_totalRefScriptsSize_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902] -> Integer
d_totalRefScriptsSize_1766 v0 v1
  = coe
      MAlonzo.Code.Ledger.Chain.d_totalRefScriptsSize_2470 (coe v0)
      (coe v1)
-- Ledger.Chain.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1802 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain.Properties._.NewEpochState
d_NewEpochState_1816 a0 a1 = ()
-- Ledger.Chain.Properties._.NewEpochState.epochState
d_epochState_1878 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2308
d_epochState_1878 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v0)
-- Ledger.Chain.Properties._.NewEpochState.lastEpoch
d_lastEpoch_1880 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 -> AgdaAny
d_lastEpoch_1880 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2340 (coe v0)
-- Ledger.Chain.Properties._.NewEpochState.ru
d_ru_1882 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2248
d_ru_1882 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2344 (coe v0)
-- Ledger.Chain.Properties._.Computational-LEDGER
d_Computational'45'LEDGER_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_1942 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ledger.Properties.d_Computational'45'LEDGER_2760
      (coe v0) (coe v1)
-- Ledger.Chain.Properties._.completeness
d_completeness_2030 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2030 = erased
-- Ledger.Chain.Properties._.computeProof
d_computeProof_2036 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2036 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Chain.Properties._._.ls
d_ls_2062 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158
d_ls_2062 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_2324
      (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v0))
-- Ledger.Chain.Properties._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2070 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 -> Integer
d_maxRefScriptSizePerBlock_2070 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Enact.d_pparams_870
            (coe
               MAlonzo.Code.Ledger.Epoch.d_es_2326
               (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v0)))))
-- Ledger.Chain.Properties._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_2074 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Chain.d_totalRefScriptsSize_2470
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Epoch.d_ls_2324
            (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Enact.d_pparams_870
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_es_2326
                  (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v2))))))
-- Ledger.Chain.Properties.Computational-CHAIN
d_Computational'45'CHAIN_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_2076 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         case coe v4 of
           MAlonzo.Code.Ledger.Chain.C_Block'46'constructor_3969 v5 v6
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                  (coe
                     MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                  () erased () erased
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                     (coe
                        MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
                     (\ v7 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                     (coe
                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                        (coe
                           MAlonzo.Code.Ledger.Epoch.Properties.du_NEWEPOCH'45'total_2200
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
                              (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
                              v6)
                           (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2258 (coe v3)))))
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
                                    (coe
                                       MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.Properties.d_Computational'45'LEDGER_2760
                                       (coe v0) (coe v1))
                                    (coe
                                       MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                                    (coe
                                       MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2156
                                    (coe v6)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Enact.d_constitution_866
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                   (coe v8))))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Enact.d_pparams_870
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_es_2326
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                (coe v8)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_es_2326
                                       (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v8)))
                                    (coe
                                       MAlonzo.Code.Ledger.PParams.d_treasury_152
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_acnt_2320
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                             (coe v8)))))
                                 (MAlonzo.Code.Ledger.Epoch.d_ls_2324
                                    (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v8)))
                                 v5)
                              (\ v10 ->
                                 case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> let v13
                                              = d_refScriptSize'8804''63'Bound_2074
                                                  (coe v0) (coe v1) (coe v8) (coe v5) in
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
                                                                        MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3911
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2346
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2340
                                                                              (coe v8))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_acnt_2320
                                                                                 (let v17
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_41783
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3911
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2258
                                                                                                  (coe
                                                                                                     v3)))
                                                                                            (coe v4)
                                                                                            (coe v8)
                                                                                            (coe
                                                                                               v11) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_41777
                                                                                          (coe
                                                                                             v17)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_ss_2322
                                                                                 (let v17
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_41783
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3911
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2258
                                                                                                  (coe
                                                                                                     v3)))
                                                                                            (coe v4)
                                                                                            (coe v8)
                                                                                            (coe
                                                                                               v11) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_41777
                                                                                          (coe
                                                                                             v17)))))
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                 (let v17
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_41783
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3911
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2258
                                                                                                  (coe
                                                                                                     v3)))
                                                                                            (coe v4)
                                                                                            (coe v8)
                                                                                            (coe
                                                                                               v11) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_41777
                                                                                          (coe
                                                                                             v17)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_fut_2328
                                                                                 (let v17
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_41783
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3911
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2258
                                                                                                  (coe
                                                                                                     v3)))
                                                                                            (coe v4)
                                                                                            (coe v8)
                                                                                            (coe
                                                                                               v11) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_41777
                                                                                          (coe
                                                                                             v17))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_ru_2344
                                                                              (coe v8))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Chain.C_CHAIN_2540
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2346
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2340
                                                                              (coe v8))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_acnt_2320
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                    (coe v8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_ss_2322
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                    (coe v8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2324
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                    (coe v8)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                          (coe
                                                                                             v8))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                          (coe
                                                                                             v8))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                          (coe
                                                                                             v8))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_3863
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_pv_326
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_a_328
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_b_330
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_keyDeposit_332
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_poolDeposit_334
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_prices_338
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_Emax_352
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_nopt_354
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_a0_356
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_costmdls_360
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_poolThresholds_362
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_drepThresholds_364
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_ccMinSize_366
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_drepDeposit_374
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_drepActivity_376
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                      (coe
                                                                                                         v8)))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                                (coe
                                                                                                   v8))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_es_2326
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                          (coe
                                                                                             v8)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_fut_2328
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                                                                                    (coe v8))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_ru_2344
                                                                              (coe v8)))
                                                                        v16 v9 v12))
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
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
