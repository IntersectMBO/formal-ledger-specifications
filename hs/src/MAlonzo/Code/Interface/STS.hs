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

module MAlonzo.Code.Interface.STS where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.Bifunctor

-- Interface.STS.RunTraceAndThen
d_RunTraceAndThen_34 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_RunTraceAndThen_34
  = C_run'45''91''93'_40 AgdaAny |
    C_run'45''8759'_42 AgdaAny AgdaAny T_RunTraceAndThen_34
-- Interface.STS.RunTraceAfterAndThen
d_RunTraceAfterAndThen_56 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_RunTraceAfterAndThen_56
  = C_run_64 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Interface.STS._._⊢_⇀⟦_⟧*_
d__'8866'_'8640''10214'_'10215''42'__80 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''42'__80
  = C_BS'45'base_82 AgdaAny |
    C_BS'45'ind_84 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''42'__80
-- Interface.STS._._⊢_⇀⟦_⟧ᵢ*'_
d__'8866'_'8640''10214'_'10215''7522''42'''__100 a0 a1 a2 a3 a4 a5
                                                 a6 a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''7522''42'''__100
  = C_BS'45'base_102 AgdaAny |
    C_BS'45'ind_104 AgdaAny AgdaAny
                    T__'8866'_'8640''10214'_'10215''7522''42'''__100
-- Interface.STS._._⊢_⇀⟦_⟧ᵢ*_
d__'8866'_'8640''10214'_'10215''7522''42'__106 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d__'8866'_'8640''10214'_'10215''7522''42'__106 = erased
-- Interface.STS.IdSTS
d_IdSTS_114 a0 a1 a2 a3 a4 a5 = ()
data T_IdSTS_114 = C_Id'45'nop_120
-- Interface.STS.ReflexiveTransitiveClosure
d_ReflexiveTransitiveClosure_124 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure_124 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵢ
d_ReflexiveTransitiveClosure'7522'_130 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7522'_130 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵢᵇ
d_ReflexiveTransitiveClosure'7522''7495'_134 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7522''7495'_134 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵇ
d_ReflexiveTransitiveClosure'7495'_136 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7495'_136 = erased
-- Interface.STS.STS-total
d_STS'45'total_138 ::
  () ->
  () -> () -> (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) -> ()
d_STS'45'total_138 = erased
-- Interface.STS.ReflexiveTransitiveClosure-total
d_ReflexiveTransitiveClosure'45'total_152 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ReflexiveTransitiveClosure'45'total_152 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
                                          v7
  = du_ReflexiveTransitiveClosure'45'total_152 v4 v5 v6 v7
du_ReflexiveTransitiveClosure'45'total_152 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ReflexiveTransitiveClosure'45'total_152 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_82 (coe C_Id'45'nop_120))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda0_170 (coe v0) (coe v1) (coe v5)
             (coe v0 v1 v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda0
d_'46'extendedlambda0_170 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda0_170 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda0_170 v4 v5 v8 v9
du_'46'extendedlambda0_170 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda0_170 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
             (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
             (\ v6 -> coe C_BS'45'ind_84 v4 v5)
             (coe
                du_ReflexiveTransitiveClosure'45'total_152 (coe v0) (coe v1)
                (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.LedgerInvariant
d_LedgerInvariant_176 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) -> ()
d_LedgerInvariant_176 = erased
-- Interface.STS.RTC-preserves-inv
d_RTC'45'preserves'45'inv_194 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  T__'8866'_'8640''10214'_'10215''42'__80 -> AgdaAny -> AgdaAny
d_RTC'45'preserves'45'inv_194 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 ~v9
                              v10
  = du_RTC'45'preserves'45'inv_194 v5 v6 v7 v8 v10
du_RTC'45'preserves'45'inv_194 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  T__'8866'_'8640''10214'_'10215''42'__80 -> AgdaAny -> AgdaAny
du_RTC'45'preserves'45'inv_194 v0 v1 v2 v3 v4
  = case coe v4 of
      C_BS'45'base_82 v8 -> coe seq (coe v8) (coe (\ v9 -> v9))
      C_BS'45'ind_84 v8 v11 v12
        -> case coe v3 of
             (:) v13 v14
               -> coe
                    (\ v15 ->
                       coe
                         du_RTC'45'preserves'45'inv_194 v0 v1 v8 v14 v12
                         (coe v0 v1 v2 v13 v8 v11 v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
