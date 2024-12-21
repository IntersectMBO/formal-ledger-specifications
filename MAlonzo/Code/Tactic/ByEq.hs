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
import qualified MAlonzo.Code.Reflection.Utils

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
                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe
                       MAlonzo.Code.Class.Functor.Core.du__'60''38''62'__30
                       (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
                       (coe ()) (coe ())
                       (coe MAlonzo.Code.Reflection.Utils.d_argTys_192 (coe v1))
                       (coe
                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Arg_94 () erased
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
                                           -> coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (20 :: Integer)
                                                      (1335258922519917603 :: Integer)
                                                      "Agda.Builtin.Equality._\8801_.refl"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                         _ -> coe v3
                                  _ -> coe v3))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                       (coe
                          (MAlonzo.RTE.QName
                             (20 :: Integer) (1335258922519917603 :: Integer)
                             "Agda.Builtin.Equality._\8801_.refl"
                             (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.ByEq.$by-eq
d_'36'by'45'eq_14 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_'36'by'45'eq_14 = coe d_by'45'eq_4
