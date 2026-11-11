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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Bisimilarity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Interface.STS

-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar
d_Bisimilar_22 a0 a1 a2 a3 a4 a5 = ()
data T_Bisimilar_22
  = C_constructor_96 (AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                     (AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar._≈_
d__'8776'__66 :: T_Bisimilar_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__66 = erased
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar.to
d_to_80 ::
  T_Bisimilar_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_to_80 v0
  = case coe v0 of
      C_constructor_96 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar.from
d_from_94 ::
  T_Bisimilar_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_from_94 v0
  = case coe v0 of
      C_constructor_96 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.bisimilarity*
d_bisimilarity'42'_110 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Bisimilar_22 -> T_Bisimilar_22
d_bisimilarity'42'_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_bisimilarity'42'_110 v6
du_bisimilarity'42'_110 :: T_Bisimilar_22 -> T_Bisimilar_22
du_bisimilarity'42'_110 v0
  = coe
      C_constructor_96
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         case coe v7 of
           MAlonzo.Code.Interface.STS.C_BS'45'base_82 v11
             -> coe
                  seq (coe v11)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                        (coe
                           MAlonzo.Code.Interface.STS.C_BS'45'base_82
                           (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_120))))
           MAlonzo.Code.Interface.STS.C_BS'45'ind_84 v11 v14 v15
             -> case coe v2 of
                  (:) v16 v17
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               d_to_80 (coe du_bisimilarity'42'_110 (coe v0)) v1 v17 v11 v4
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14)))
                               v15))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     d_to_80 (coe du_bisimilarity'42'_110 (coe v0)) v1 v17 v11 v4
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14))
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14)))
                                     v15)))
                            (coe
                               MAlonzo.Code.Interface.STS.C_BS'45'ind_84
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        d_to_80 (coe du_bisimilarity'42'_110 (coe v0)) v1 v17 v11 v4
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe d_to_80 v0 v1 v16 v3 v11 v5 v6 v14)))
                                        v15)))))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         case coe v7 of
           MAlonzo.Code.Interface.STS.C_BS'45'base_82 v11
             -> coe
                  seq (coe v11)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                        (coe
                           MAlonzo.Code.Interface.STS.C_BS'45'base_82
                           (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_120))))
           MAlonzo.Code.Interface.STS.C_BS'45'ind_84 v11 v14 v15
             -> case coe v2 of
                  (:) v16 v17
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               d_from_94 (coe du_bisimilarity'42'_110 (coe v0)) v1 v17
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14))
                               v11 v5
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14)))
                               v15))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     d_from_94 (coe du_bisimilarity'42'_110 (coe v0)) v1 v17
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14))
                                     v11 v5
                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14)))
                                     v15)))
                            (coe
                               MAlonzo.Code.Interface.STS.C_BS'45'ind_84
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        d_from_94 (coe du_bisimilarity'42'_110 (coe v0)) v1 v17
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14))
                                        v11 v5
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe d_from_94 v0 v1 v16 v3 v4 v11 v6 v14)))
                                        v15)))))
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
