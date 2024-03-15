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
import qualified MAlonzo.Code.Data.List.Base

-- Interface.STS.∙_
d_'8729'__4 :: () -> ()
d_'8729'__4 = erased
-- Interface.STS._∙_
d__'8729'__8 :: () -> () -> ()
d__'8729'__8 = erased
-- Interface.STS.────────────────────────────────_
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__14 ::
  () -> ()
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__14
  = erased
-- Interface.STS._────────────────────────────────_
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__18 ::
  () -> () -> ()
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__18
  = erased
-- Interface.STS.───────────────────────────────────────_
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__24 ::
  () -> ()
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__24
  = erased
-- Interface.STS._───────────────────────────────────────_
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__28 ::
  () -> () -> ()
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__28
  = erased
-- Interface.STS._._⊢_⇀⟦_⟧*_
d__'8866'_'8640''10214'_'10215''42'__66 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''42'__66
  = C_BS'45'base_68 AgdaAny |
    C_BS'45'ind_70 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''42'__66
-- Interface.STS._._⊢_⇀⟦_⟧ᵢ*_
d__'8866'_'8640''10214'_'10215''7522''42'__86 a0 a1 a2 a3 a4 a5 a6
                                              a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''7522''42'__86
  = C_BS'45'base_88 AgdaAny |
    C_BS'45'ind_90 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''7522''42'__86
-- Interface.STS.IdSTS
d_IdSTS_96 a0 a1 a2 a3 a4 a5 = ()
data T_IdSTS_96 = C_Id'45'nop_102
-- Interface.STS.ReflexiveTransitiveClosure
d_ReflexiveTransitiveClosure_104 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure_104 = erased
-- Interface.STS.ReflexiveTransitiveClosure-total
d_ReflexiveTransitiveClosure'45'total_124 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ReflexiveTransitiveClosure'45'total_124 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
                                          v7
  = du_ReflexiveTransitiveClosure'45'total_124 v4 v5 v6 v7
du_ReflexiveTransitiveClosure'45'total_124 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ReflexiveTransitiveClosure'45'total_124 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_68 (coe C_Id'45'nop_102))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda0_142 (coe v0) (coe v1) (coe v5)
             (coe v0 v1 v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda0
d_'46'extendedlambda0_142 ::
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
d_'46'extendedlambda0_142 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda0_142 v4 v5 v8 v9
du_'46'extendedlambda0_142 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda0_142 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
             (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
             (\ v6 -> coe C_BS'45'ind_70 v4 v5)
             (coe
                du_ReflexiveTransitiveClosure'45'total_124 (coe v0) (coe v1)
                (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.ReflexiveTransitiveClosureᵢ
d_ReflexiveTransitiveClosure'7522'_148 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7522'_148 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵢ-total
d_ReflexiveTransitiveClosure'7522''45'total_168 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ReflexiveTransitiveClosure'7522''45'total_168 ~v0 ~v1 ~v2 ~v3 v4
                                                v5 v6 v7
  = du_ReflexiveTransitiveClosure'7522''45'total_168 v4 v5 v6 v7
du_ReflexiveTransitiveClosure'7522''45'total_168 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ReflexiveTransitiveClosure'7522''45'total_168 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_88 (coe C_Id'45'nop_102))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda1_182 (coe v0) (coe v1) (coe v5)
             (coe
                v0
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))
                v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda1
d_'46'extendedlambda1_182 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda1_182 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda1_182 v4 v5 v8 v9
du_'46'extendedlambda1_182 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda1_182 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
             (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
             (\ v6 -> coe C_BS'45'ind_90 v4 v5)
             (coe
                du_ReflexiveTransitiveClosure'7522''45'total_168 (coe v0) (coe v1)
                (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.ReflexiveTransitiveClosureᵢᵇ
d_ReflexiveTransitiveClosure'7522''7495'_188 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7522''7495'_188 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵇ
d_ReflexiveTransitiveClosure'7495'_190 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7495'_190 = erased
-- Interface.STS.LedgerInvariant
d_LedgerInvariant_192 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) -> ()
d_LedgerInvariant_192 = erased
-- Interface.STS.RTC-preserves-inv
d_RTC'45'preserves'45'inv_210 ::
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
  T__'8866'_'8640''10214'_'10215''42'__66 -> AgdaAny -> AgdaAny
d_RTC'45'preserves'45'inv_210 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 ~v9
                              v10
  = du_RTC'45'preserves'45'inv_210 v5 v6 v7 v8 v10
du_RTC'45'preserves'45'inv_210 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  T__'8866'_'8640''10214'_'10215''42'__66 -> AgdaAny -> AgdaAny
du_RTC'45'preserves'45'inv_210 v0 v1 v2 v3 v4
  = case coe v4 of
      C_BS'45'base_68 v8 -> coe seq (coe v8) (coe (\ v9 -> v9))
      C_BS'45'ind_70 v8 v11 v12
        -> case coe v3 of
             (:) v13 v14
               -> coe
                    (\ v15 ->
                       coe
                         du_RTC'45'preserves'45'inv_210 v0 v1 v8 v14 v12
                         (coe v0 v1 v2 v13 v8 v11 v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
