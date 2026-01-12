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

module MAlonzo.Code.Tactic.ByEq where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Reflection.QQuotedDefinitions
import qualified MAlonzo.Code.Reflection.Utils.Core

-- Tactic.ByEq.by-eq
d_by'45'eq_4 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_by'45'eq_4 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_withNormalisation_428 ()
         erased (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_346 v0))
      (\ v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v0
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
              (coe
                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe
                       MAlonzo.Code.Class.Functor.Core.du__'60''38''62'__30
                       (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
                       (coe ()) (coe ())
                       (coe MAlonzo.Code.Reflection.Utils.Core.d_argTys_68 (coe v1))
                       (coe
                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Arg_450 () erased
                          () erased
                          (\ v2 ->
                             let v3
                                   = coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) in
                             coe
                               (case coe v2 of
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
                                    -> case coe v4 of
                                         MAlonzo.RTE.QName 12 1335258922519917603 _ _
                                           -> case coe v5 of
                                                (:) v6 v7
                                                  -> case coe v7 of
                                                       (:) v8 v9
                                                         -> case coe v9 of
                                                              (:) v10 v11
                                                                -> case coe v10 of
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v12 v13
                                                                       -> case coe v12 of
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v14 v15
                                                                              -> case coe v14 of
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                     -> case coe
                                                                                               v15 of
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v16 v17
                                                                                            -> case coe
                                                                                                      v16 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                   -> case coe
                                                                                                             v17 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                          -> case coe
                                                                                                                    v11 of
                                                                                                               (:) v18 v19
                                                                                                                 -> case coe
                                                                                                                           v18 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v20 v21
                                                                                                                        -> case coe
                                                                                                                                  v20 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v22 v23
                                                                                                                               -> case coe
                                                                                                                                         v22 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                      -> case coe
                                                                                                                                                v23 of
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v24 v25
                                                                                                                                             -> case coe
                                                                                                                                                       v24 of
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                    -> case coe
                                                                                                                                                              v25 of
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                           -> case coe
                                                                                                                                                                     v19 of
                                                                                                                                                                []
                                                                                                                                                                  -> coe
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                                                                                                                       (coe
                                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                                             (20 ::
                                                                                                                                                                                Integer)
                                                                                                                                                                             (1335258922519917603 ::
                                                                                                                                                                                Integer)
                                                                                                                                                                             "Agda.Builtin.Equality._\8801_.refl"
                                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                                                                       (coe
                                                                                                                                                                          v19)
                                                                                                                                                                _ -> coe
                                                                                                                                                                       v3
                                                                                                                                                         _ -> coe
                                                                                                                                                                v3
                                                                                                                                                  _ -> coe
                                                                                                                                                         v3
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                    _ -> coe
                                                                                                                                           v3
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> coe
                                                                                                                      v3
                                                                                                        _ -> coe
                                                                                                               v3
                                                                                                 _ -> coe
                                                                                                        v3
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> coe v3
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> coe v3
                                                       _ -> coe v3
                                                _ -> coe v3
                                         _ -> coe v3
                                  _ -> coe v3))))
                    (coe MAlonzo.Code.Reflection.QQuotedDefinitions.d_'96'refl_16)))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.ByEq.$by-eq
d_'36'by'45'eq_14 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_'36'by'45'eq_14 = coe d_by'45'eq_4
