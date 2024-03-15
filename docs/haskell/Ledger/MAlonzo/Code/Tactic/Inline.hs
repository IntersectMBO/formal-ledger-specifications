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

module MAlonzo.Code.Tactic.Inline where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.Name
import qualified MAlonzo.Code.Reflection.AST.Show
import qualified MAlonzo.Code.Reflection.Ext
import qualified MAlonzo.Code.Reflection.Utils.Debug
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Tactic.Inline._.print
d_print_10 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_print_10
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_print_20
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.inline" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Tactic.Inline._.printLn
d_printLn_16 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_printLn_16
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printLn_22
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.inline" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Tactic.Inline.$inline
d_'36'inline_30 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_'36'inline_30 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.Monad.Core.d_return_16
         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Reflection.Utils.Debug.du__IMPOSSIBLE__14 (coe ()) in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                     (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                     (coe ())
                     (coe
                        MAlonzo.Code.Reflection.Utils.Debug.d_printLn_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe ("tactic.inline" :: Data.Text.Text)) (coe (100 :: Integer)))
                        (coe
                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                           ("** Inlining " :: Data.Text.Text)
                           (coe
                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v5)
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                 ("(" :: Data.Text.Text)
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                    (MAlonzo.Code.Reflection.AST.Show.d_showTerms_36 (coe v6))
                                    (")" :: Data.Text.Text))))))
                     (coe
                        MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                        (coe ())
                        (coe
                           MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                           (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v0)
                           (coe
                              MAlonzo.Code.Level.C_lift_20
                              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
                                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                                   (coe ())
                                   (coe
                                      MAlonzo.Code.Class.MonadTC.d_declareDef_166
                                      MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe v1)))
                                   (coe
                                      MAlonzo.Code.Class.MonadTC.d_inferType_148
                                      MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v3)))
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Class.Monad.Core.d_return_16
                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                        (coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                           erased
                           (coe
                              MAlonzo.Code.Class.MonadTC.d_getDefinition_174
                              MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v5)
                           (\ v7 ->
                              let v8
                                    = coe
                                        MAlonzo.Code.Reflection.Utils.Debug.du__IMPOSSIBLE__14
                                        (coe ()) in
                              coe
                                (case coe v7 of
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_function_284 v9
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                          (coe ()) (coe ())
                                          (coe
                                             MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe ("tactic.inline" :: Data.Text.Text))
                                                (coe (100 :: Integer)))
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12
                                                   v5)
                                                ("'s clauses: " :: Data.Text.Text)))
                                          (coe
                                             MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                             (coe
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                             (coe ()) (coe ())
                                             (coe
                                                MAlonzo.Code.Class.Monad.Core.du_void_100
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                ()
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Core.du_forM_80
                                                   (coe
                                                      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                                   (coe ()) (coe v9)
                                                   (coe
                                                      (\ v10 ->
                                                         MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 ("tactic.inline"
                                                                  ::
                                                                  Data.Text.Text))
                                                              (coe (100 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                              (" - " :: Data.Text.Text)
                                                              (MAlonzo.Code.Reflection.AST.Show.d_showClause_46
                                                                 (coe v10)))))))
                                             (coe
                                                MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                                (coe ()) (coe ())
                                                (coe
                                                   MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe ("tactic.inline" :: Data.Text.Text))
                                                      (coe (100 :: Integer)))
                                                   (coe ("" :: Data.Text.Text)))
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                   (coe
                                                      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                                   (coe ()) (coe ())
                                                   (coe
                                                      MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe ("tactic.inline" :: Data.Text.Text))
                                                         (coe (100 :: Integer)))
                                                      (coe
                                                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                         ("\n" :: Data.Text.Text)
                                                         (coe
                                                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12
                                                               v1)
                                                            ("'s clauses: " :: Data.Text.Text))))
                                                   (coe
                                                      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                      (coe
                                                         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                                      (coe ()) (coe ())
                                                      (coe
                                                         MAlonzo.Code.Class.Monad.Core.du_void_100
                                                         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6
                                                         ()
                                                         (coe
                                                            MAlonzo.Code.Class.Monad.Core.du_forM_80
                                                            (coe
                                                               MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                                            (coe ())
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_map_22
                                                               (coe
                                                                  d_go'7580'_232 (coe v0) (coe v1)
                                                                  (coe v2) (coe v5) (coe v1)
                                                                  (coe v6))
                                                               (coe v9))
                                                            (coe
                                                               (\ v10 ->
                                                                  MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          ("tactic.inline"
                                                                           ::
                                                                           Data.Text.Text))
                                                                       (coe (100 :: Integer)))
                                                                    (coe
                                                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                       (" - " :: Data.Text.Text)
                                                                       (coe
                                                                          MAlonzo.Code.Class.Show.Core.d_show_16
                                                                          MAlonzo.Code.Class.Show.Instances.d_Show'45'Clause_90
                                                                          v10))))))
                                                      (coe
                                                         MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                         (coe
                                                            MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                                         (coe ()) (coe ())
                                                         (coe
                                                            MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  ("tactic.inline"
                                                                   ::
                                                                   Data.Text.Text))
                                                               (coe (100 :: Integer)))
                                                            (coe ("" :: Data.Text.Text)))
                                                         (coe
                                                            MAlonzo.Code.Class.MonadTC.d_defineFun_170
                                                            MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_map_22
                                                               (coe
                                                                  d_go'7580'_232 (coe v0) (coe v1)
                                                                  (coe v2) (coe v5) (coe v1)
                                                                  (coe v6))
                                                               (coe v9))))))))
                                   _ -> coe v8))))
              _ -> coe v4))
-- Tactic.Inline._._.lookupVar
d_lookupVar_54 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  Integer -> Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_lookupVar_54 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_lookupVar_54 v5 v6 v7
du_lookupVar_54 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  Integer -> Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_lookupVar_54 v0 v1 v2
  = let v3
          = MAlonzo.Code.Data.Nat.Properties.d__'60''63'__2892
              (coe v2) (coe v1) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then coe
                       seq (coe v5) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                          () erased (coe MAlonzo.Code.Reflection.AST.Argument.du_unArg_74)
                          (coe
                             MAlonzo.Code.Data.List.Ext.du__'8265'__12 (coe v0)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                (coe MAlonzo.Code.Data.List.Base.du_length_304 v0)
                                (addInt
                                   (coe (1 :: Integer))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''8243'_6040
                                         (coe v1) (coe v2)))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Inline._._.go
d_go_76 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_go_76 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda0_94 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.go∗
d_go'8727'_78 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda1_148 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.goSort
d_goSort_80 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_goSort_80 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda2_158 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.goC
d_goC_82 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_goC_82 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda3_168 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.goCls
d_goCls_84 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_goCls_84 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda4_186 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.goP
d_goP_86 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_goP_86 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda5_194 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.goPs
d_goPs_88 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_goPs_88 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda7_212 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._.goTel
d_goTel_90 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_goTel_90 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_'46'extendedlambda8_222 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4) (coe v5) (coe v6)
-- Tactic.Inline._._..extendedlambda0
d_'46'extendedlambda0_94 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'46'extendedlambda0_94 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v8 v9
        -> coe
             d_'46'extendedlambda1_102 (coe v0) (coe v1) (coe v2) (coe v3)
             (coe v4) (coe v5) (coe v6) (coe v8) (coe v9)
             (coe du_lookupVar_54 (coe v5) (coe v6) (coe v8))
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v8)
             (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v9)
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v8 v9
        -> coe
             MAlonzo.Code.Interface.ToBool.du_if_then_else__46
             (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94)
             (coe
                MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Reflection.AST.Name.d__'8799'__12))
                (coe v8) (coe v3))
             (coe
                MAlonzo.Code.Level.C_lift_20
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             (coe
                (\ v10 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v4)
                     (coe
                        MAlonzo.Code.Data.List.Base.du_drop_634
                        (coe MAlonzo.Code.Data.List.Base.du_length_304 v5)
                        (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v9))))
             (coe
                (\ v10 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v8)
                     (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v9)))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v8 v9
        -> case coe v9 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v10 v11
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v8)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v10)
                       (coe
                          d_go_76 v0 v1 v2 v3 v4 v5 (addInt (coe (1 :: Integer)) (coe v6))
                          v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v8 v9
        -> let v10
                 = coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                     (coe d_goCls_84 v0 v1 v2 v3 v4 v5 v6 v8)
                     (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v9) in
           coe
             (case coe v9 of
                (:) v11 v12
                  -> case coe v11 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v13 v14
                         -> case coe v13 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v15 v16
                                -> case coe v15 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                       -> case coe v16 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v17 v18
                                              -> case coe v17 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                     -> case coe v18 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                            -> case coe v12 of
                                                                 []
                                                                   -> coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (234 :: Integer)
                                                                              (10779521135412943468 ::
                                                                                 Integer)
                                                                              "Function.Base.case_of_"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 (MAlonzo.RTE.Related
                                                                                    (0.0 ::
                                                                                       Double)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe v13)
                                                                              (coe
                                                                                 d_go_76 v0 v1 v2 v3
                                                                                 v4 v5 v6 v14))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                 (coe v13)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                                                                    (coe
                                                                                       d_goCls_84 v0
                                                                                       v1 v2 v3 v4
                                                                                       v5 v6 v8)
                                                                                    (coe v12)))
                                                                              (coe v12)))
                                                                 _ -> coe v10
                                                          _ -> coe v10
                                                   _ -> coe v10
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> coe v10
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> coe v10)
      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v8 v9
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
               -> case coe v9 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v10)
                              (coe d_go_76 v0 v1 v2 v3 v4 v5 v6 v11))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v12)
                              (coe
                                 d_go_76 v0 v1 v2 v3 v4 v5 (addInt (coe (1 :: Integer)) (coe v6))
                                 v13))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
             (coe d_goSort_80 v0 v1 v2 v3 v4 v5 v6 v8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v8)
             (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v9)
      _ -> coe v7
-- Tactic.Inline._._..extendedlambda1
d_'46'extendedlambda1_102 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_'46'extendedlambda1_102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
        -> coe
             MAlonzo.Code.Reflection.Ext.d_apply'8727'_42 (coe v10)
             (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v8)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v7)
             (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._..extendedlambda1
d_'46'extendedlambda1_148 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_'46'extendedlambda1_148 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      [] -> coe v7
      (:) v8 v9
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v10)
                       (coe d_go_76 v0 v1 v2 v3 v4 v5 v6 v11))
                    (coe d_go'8727'_78 v0 v1 v2 v3 v4 v5 v6 v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._..extendedlambda2
d_'46'extendedlambda2_158 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Sort_156
d_'46'extendedlambda2_158 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
             (coe d_go_76 v0 v1 v2 v3 v4 v5 v6 v8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_prop_228
             (coe d_go_76 v0 v1 v2 v3 v4 v5 v6 v8)
      _ -> coe v7
-- Tactic.Inline._._..extendedlambda3
d_'46'extendedlambda3_168 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_'46'extendedlambda3_168 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v8 v9 v10
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
             (coe d_goTel_90 v0 v1 v2 v3 v4 v5 v6 v8)
             (coe
                d_goPs_88 v0 v1 v2 v3 v4 v5
                (addInt
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v8) (coe v6))
                v9)
             (coe
                d_go_76 v0 v1 v2 v3 v4 v5
                (addInt
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v8) (coe v6))
                v10)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
             (coe d_goTel_90 v0 v1 v2 v3 v4 v5 v6 v8)
             (coe
                d_goPs_88 v0 v1 v2 v3 v4 v5
                (addInt
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v8) (coe v6))
                v9)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._..extendedlambda4
d_'46'extendedlambda4_186 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_'46'extendedlambda4_186 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      [] -> coe v7
      (:) v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe d_goC_82 v0 v1 v2 v3 v4 v5 v6 v8)
             (coe d_goCls_84 v0 v1 v2 v3 v4 v5 v6 v9)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._..extendedlambda5
d_'46'extendedlambda5_194 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_'46'extendedlambda5_194 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v8)
             (coe d_goPs_88 v0 v1 v2 v3 v4 v5 v6 v9)
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248
             (coe d_go_76 v0 v1 v2 v3 v4 v5 v6 v8)
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 v8
        -> let v9 = coe du_lookupVar_54 (coe v5) (coe v6) (coe v8) in
           coe
             (case coe v9 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                  -> coe MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 (coe v10)
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v7
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> coe v7
-- Tactic.Inline._._..extendedlambda7
d_'46'extendedlambda7_212 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_'46'extendedlambda7_212 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      [] -> coe v7
      (:) v8 v9
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v10)
                       (coe d_goP_86 v0 v1 v2 v3 v4 v5 v6 v11))
                    (coe d_goPs_88 v0 v1 v2 v3 v4 v5 v6 v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._..extendedlambda8
d_'46'extendedlambda8_222 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'extendedlambda8_222 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      [] -> coe v7
      (:) v8 v9
        -> case coe v8 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> case coe v11 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v12 v13
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v12)
                                 (coe d_go_76 v0 v1 v2 v3 v4 v5 v6 v13)))
                           (coe
                              d_goTel_90 v0 v1 v2 v3 v4 v5 (addInt (coe (1 :: Integer)) (coe v6))
                              v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._.goᶜ
d_go'7580'_232 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_go'7580'_232 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v7 v8 v9
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
             (coe
                d_instTel_238 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe v7))
             (coe
                d_instPs_240 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe
                   MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v7)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))
                (coe v8))
             (coe
                d_go_76 v0 v1 v2 v3 v4 v5
                (coe
                   MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v7)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))
                v9)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v7 v8
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
             (coe
                d_instTel_238 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe v7))
             (coe
                d_instPs_240 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                (coe
                   MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v7)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))
                (coe v8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Inline._._._.instTel
d_instTel_238 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_instTel_238 v0 v1 v2 v3 v4 v5 v6
  = coe
      d_goTel_90 v0 v1 v2 v3 v4 v5 (0 :: Integer)
      (coe
         MAlonzo.Code.Data.List.Base.du_drop_634
         (coe MAlonzo.Code.Data.List.Base.du_length_304 v5) (coe v6))
-- Tactic.Inline._._._.instPs
d_instPs_240 ::
  Bool ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_instPs_240 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      d_goPs_88 v0 v1 v2 v3 v4 v5 v6
      (coe
         MAlonzo.Code.Data.List.Base.du_drop_634
         (coe MAlonzo.Code.Data.List.Base.du_length_304 v5) (coe v7))
-- Tactic.Inline.inline
d_inline_278 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inline_278
  = coe
      d_'36'inline_30 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
-- Tactic.Inline.inlineDecl
d_inlineDecl_280 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_inlineDecl_280
  = coe
      d_'36'inline_30 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
