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
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Interface.ComputationalRelation
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

-- _.Epoch
d_Epoch_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_196 = erased
-- Ledger.Chain.Properties._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__1730 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1766 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain.Properties._.NewEpochState
d_NewEpochState_1780 a0 a1 = ()
-- Ledger.Chain.Properties._.NewEpochState.epochState
d_epochState_1842 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2286
d_epochState_1842 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2320 (coe v0)
-- Ledger.Chain.Properties._.NewEpochState.lastEpoch
d_lastEpoch_1844 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310 -> AgdaAny
d_lastEpoch_1844 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2318 (coe v0)
-- Ledger.Chain.Properties._.NewEpochState.ru
d_ru_1846 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2226
d_ru_1846 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2322 (coe v0)
-- Ledger.Chain.Properties._.Computational-LEDGER
d_Computational'45'LEDGER_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_1906 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ledger.Properties.d_Computational'45'LEDGER_2720
      (coe v0) (coe v1)
-- Ledger.Chain.Properties._.completeness
d_completeness_1990 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1990 = erased
-- Ledger.Chain.Properties._.computeProof
d_computeProof_1996 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1996 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Chain.Properties.Computational-CHAIN
d_Computational'45'CHAIN_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_2016 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
           (coe
              MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
           () erased () erased
           (coe
              MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
              (coe
                 MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
              (\ v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
              (coe
                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                 (coe
                    MAlonzo.Code.Ledger.Epoch.Properties.du_NEWEPOCH'45'total_2182
                    (coe v0)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
                       (MAlonzo.Code.Ledger.Chain.d_slot_2246 (coe v4)))
                    (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2236 (coe v3)))))
           (\ v5 ->
              case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
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
                                MAlonzo.Code.Ledger.Ledger.Properties.d_Computational'45'LEDGER_2720
                                (coe v0) (coe v1))
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                          (coe
                             MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2134
                             (coe MAlonzo.Code.Ledger.Chain.d_slot_2246 (coe v4))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Ledger.Enact.d_constitution_842
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_es_2304
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2320
                                            (coe v6))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Enact.d_pparams_846
                                   (coe
                                      MAlonzo.Code.Ledger.Epoch.d_es_2304
                                      (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2320 (coe v6)))))
                             (coe
                                MAlonzo.Code.Ledger.Epoch.d_es_2304
                                (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2320 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_treasury_150
                                (coe
                                   MAlonzo.Code.Ledger.Epoch.d_acnt_2298
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2320 (coe v6)))))
                          (MAlonzo.Code.Ledger.Epoch.d_ls_2302
                             (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2320 (coe v6)))
                          (MAlonzo.Code.Ledger.Chain.d_ts_2244 (coe v4)))
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3871
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2324
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2318 (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_acnt_2298
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_40655
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2320
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_40649
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_ss_2300
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_40655
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2320
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_40649
                                                           (coe v11)))))
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_es_2304
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_40655
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2320
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_40649
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2306
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_40655
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2320
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_40649
                                                           (coe v11))))))
                                            (coe MAlonzo.Code.Ledger.Epoch.d_ru_2322 (coe v6))))
                                      (coe MAlonzo.Code.Ledger.Chain.C_CHAIN_2492 v6 v7 v10))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
