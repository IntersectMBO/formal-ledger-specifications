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

-- Ledger.Chain.Properties._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__1492 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1528 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain.Properties._.completeness
d_completeness_1746 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1746 = erased
-- Ledger.Chain.Properties._.computeProof
d_computeProof_1752 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1752 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Chain.Properties.Computational-CHAIN
d_Computational'45'CHAIN_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1500 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_1772 v0 v1
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
                    MAlonzo.Code.Ledger.Epoch.Properties.du_NEWEPOCH'45'total_1922
                    (coe v0)
                    (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_1994 (coe v3))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1390 (coe v0))
                       (MAlonzo.Code.Ledger.Chain.d_slot_2004 (coe v4))))))
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
                             MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_762
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_726)
                             (coe
                                MAlonzo.Code.Ledger.Ledger.Properties.d_Computational'45'LEDGER_2428
                                (coe v0) (coe v1))
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77263
                                (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError)))
                             (coe
                                MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77263
                                (coe (\ v8 -> v8))))
                          (coe
                             MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1870
                             (coe MAlonzo.Code.Ledger.Chain.d_slot_2004 (coe v4))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Ledger.Enact.d_constitution_778
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_es_2046
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_epochState_2060
                                            (coe v6))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Enact.d_pparams_782
                                   (coe
                                      MAlonzo.Code.Ledger.Epoch.d_es_2046
                                      (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2060 (coe v6)))))
                             (coe
                                MAlonzo.Code.Ledger.Epoch.d_es_2046
                                (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2060 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_treasury_130
                                (coe
                                   MAlonzo.Code.Ledger.Epoch.d_acnt_2040
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2060 (coe v6)))))
                          (MAlonzo.Code.Ledger.Epoch.d_ls_2044
                             (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2060 (coe v6)))
                          (MAlonzo.Code.Ledger.Chain.d_ts_2002 (coe v4)))
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Chain.C_ChainState'46'constructor_3141
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''8319''7497'_2062
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2058 (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2050
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_acnt_2040
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_37987
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_37981
                                                           v11))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_ss_2042
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_37987
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_37981
                                                           v11))))
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_es_2046
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_37987
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_37981
                                                           v11))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2048
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Chain.C_mkGeneralizeTel_37987
                                                             (coe v3) (coe v4) (coe v6) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Chain.d_'46'generalizedField'45'nes_37981
                                                           v11)))))))
                                      (coe MAlonzo.Code.Ledger.Chain.C_CHAIN_2248 v6 v7 v10))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
