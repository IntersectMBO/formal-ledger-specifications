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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Chain
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch

-- _.Epoch
d_Epoch_148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_148 = erased
-- Ledger.Conway.Conformance.Chain.Properties._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__1486 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1522 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState
d_NewEpochState_1536 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.epochState
d_epochState_1602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2246 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2222
d_epochState_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
      (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.lastEpoch
d_lastEpoch_1604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2246 ->
  AgdaAny
d_lastEpoch_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2254
      (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.NewEpochState.ru
d_ru_1606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2246 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2174
d_ru_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2258 (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties._.Computational-LEDGER
d_Computational'45'LEDGER_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_1662 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties.d_Computational'45'LEDGER_2706
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Chain.Properties._.completeness
d_completeness_1668 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1668 = erased
-- Ledger.Conway.Conformance.Chain.Properties._.computeProof
d_computeProof_1674 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1674 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Chain.Properties.Computational-CHAIN
d_Computational'45'CHAIN_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_1694 v0 v1
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
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_NEWEPOCH'45'total_2198
                    (coe v0)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
                       (MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_slot_2182
                          (coe v4)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_newEpochState_2172
                       (coe v3)))))
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
                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties.d_Computational'45'LEDGER_2706
                                (coe v0) (coe v1))
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                          (coe
                             MAlonzo.Code.Ledger.Ledger.C_LEnv'46'constructor_4929
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_slot_2182 (coe v4))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Ledger.Enact.d_constitution_840
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2240
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                            (coe v6))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Enact.d_pparams_844
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2240
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                         (coe v6)))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2240
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                   (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_treasury_150
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2234
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                      (coe v6)))))
                          (MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2238
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                (coe v6)))
                          (MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_ts_2180 (coe v4)))
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_ChainState'46'constructor_4471
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NewEpochState'46'constructor_5355
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2254
                                               (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2234
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_41731
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_41725
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2236
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_41731
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_41725
                                                           (coe v11)))))
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2240
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_41731
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_41725
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2242
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_mkGeneralizeTel_41731
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2256
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Chain.d_'46'generalizedField'45'nes_41725
                                                           (coe v11))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2258
                                               (coe v6))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Chain.C_CHAIN_2432
                                         v6 v7 v10))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
