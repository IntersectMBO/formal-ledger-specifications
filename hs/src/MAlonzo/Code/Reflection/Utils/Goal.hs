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

module MAlonzo.Code.Reflection.Utils.Goal where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Reflection.Utils.Args
import qualified MAlonzo.Code.Reflection.Utils.Metas

-- Reflection.Utils.Goal.underPis
d_underPis_6 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny) ->
  AgdaAny
d_underPis_6 = coe d_go_12 (coe (0 :: Integer))
-- Reflection.Utils.Goal._.go
d_go_12 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny) ->
  AgdaAny
d_go_12 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe v3 v0 v2
      _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                erased (coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_352 v2)
                (\ v5 ->
                   coe du_'46'extendedlambda0_30 (coe v0) (coe v4) (coe v3) (coe v5)))
-- Reflection.Utils.Goal._..extendedlambda0
d_'46'extendedlambda0_30 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_'46'extendedlambda0_30 v0 v1 ~v2 v3 ~v4 v5
  = du_'46'extendedlambda0_30 v0 v1 v3 v5
du_'46'extendedlambda0_30 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_'46'extendedlambda0_30 v0 v1 v2 v3
  = let v4 = coe v2 v0 v3 in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                  -> case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v9 v10
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                     erased
                                     (let v13
                                            = MAlonzo.Code.Reflection.Utils.Metas.d_firstMeta_60
                                                (coe v8) in
                                      coe
                                        (case coe v13 of
                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v14
                                             -> coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.du_blockOnMeta_628
                                                  (coe ()) (coe v14)
                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                             -> coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                  () erased
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                     (\ v13 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () ()
                                          erased erased
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382
                                             () erased v11 v5
                                             (d_go_12
                                                (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
                                                (coe v12) (coe v2)))
                                          (\ v14 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                               () erased
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                     (coe v11) (coe v14)))))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v4)
-- Reflection.Utils.Goal.equationSides
d_equationSides_50 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_equationSides_50 v0
  = let v1
          = MAlonzo.Code.Reflection.Utils.Args.d_getVisibleArgs_54
              (coe (2 :: Integer)) (coe v0) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
           -> case coe v2 of
                MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
                  -> case coe v5 of
                       MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
                         -> case coe v8 of
                              MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                        (coe v7))
                              _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                       _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
         _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- Reflection.Utils.Goal.requireEquationSides
d_requireEquationSides_60 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_requireEquationSides_60 v0
  = let v1 = d_equationSides_50 (coe v0) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
           -> coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v2
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 () erased
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                      (coe ("Malformed call to algebraic solver. " :: Data.Text.Text)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                         (coe
                            ("Expected target type to be of shape  LHS \8776 RHS.  "
                             ::
                             Data.Text.Text)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                            (coe ("Instead: " :: Data.Text.Text)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v0))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Reflection.Utils.Goal.blockOnEquationMetas
d_blockOnEquationMetas_74 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_blockOnEquationMetas_74 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  MAlonzo.Code.Data.Bool.Base.d_not_22
                  (coe MAlonzo.Code.Reflection.Utils.Metas.d_isMeta_6 (coe v2)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d_not_22
                  (coe MAlonzo.Code.Reflection.Utils.Metas.d_isMeta_6 (coe v3))))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  MAlonzo.Code.Data.Bool.Base.d_not_22
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                     (coe
                        MAlonzo.Code.Data.List.Base.du_null_262
                        (coe
                           MAlonzo.Code.Reflection.Utils.Metas.d_findMetaIds_58 (coe v2)))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_null_262
                        (coe
                           MAlonzo.Code.Reflection.Utils.Metas.d_findMetaIds_58 (coe v3)))))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d_not_22
                  (coe
                     MAlonzo.Code.Reflection.Utils.Metas.d_shareMeta_62
                     (coe MAlonzo.Code.Reflection.Utils.Metas.d_findMetaIds_58 (coe v2))
                     (coe
                        MAlonzo.Code.Reflection.Utils.Metas.d_findMetaIds_58 (coe v3))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 () erased
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                     (coe
                        (": the goal `LHS \8776 RHS` has at least one side "
                         ::
                         Data.Text.Text)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                        (coe
                           ("containing a metavariable that could not be resolved. To run this "
                            ::
                            Data.Text.Text)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                           (coe
                              ("solver you must add type annotations to resolve these variables."
                               ::
                               Data.Text.Text)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      (\ v4 ->
         let v5
               = MAlonzo.Code.Reflection.Utils.Metas.d_firstMeta_60 (coe v1) in
         coe
           (case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.du_blockOnMeta_628 (coe ())
                     (coe v6)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              _ -> MAlonzo.RTE.mazUnreachableError))
