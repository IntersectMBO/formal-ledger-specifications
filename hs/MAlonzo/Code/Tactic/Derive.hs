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

module MAlonzo.Code.Tactic.Derive where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Meta.Prelude
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.Name
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.Args
import qualified MAlonzo.Code.Reflection.Utils.Core
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder

-- Tactic.Derive._
d___8 ::
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_20 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_444
d___8 ~v0 ~v1 = du___8
du___8 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_20 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_80 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_444
du___8 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_598 v1
      v2 v3 v4
-- Tactic.Derive._
d___10 ::
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
d___10 ~v0 ~v1 ~v2 v3 = du___10 v3
du___10 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
du___10 v0
  = coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)
-- Tactic.Derive._
d___12 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d___12 ~v0 ~v1 = du___12
du___12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du___12 v0 v1 v2
  = coe MAlonzo.Code.Class.Show.Instances.du_Show'45'List_16 v2
-- Tactic.Derive.genClassType
d_genClassType_14 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_genClassType_14 v0 ~v1 v2 v3 v4 v5
  = du_genClassType_14 v0 v2 v3 v4 v5
du_genClassType_14 ::
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_genClassType_14 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_418
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_120
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144 v2 v4)
      (\ v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased
           (coe
              du_collectRelevantSorts_26
              (coe
                 MAlonzo.Code.Data.List.Base.du_map_22
                 (coe
                    (\ v6 ->
                       case coe v6 of
                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v7 v8
                           -> coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v7)
                                (coe MAlonzo.Code.Reflection.Utils.Args.du_hide_66 (coe v8))
                         _ -> MAlonzo.RTE.mazUnreachableError))
                 (coe
                    MAlonzo.Code.Data.List.Base.du_take_546
                    (coe
                       MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                       (coe MAlonzo.Code.Data.List.Base.du_length_284 v5) v1)
                    (coe v5)))
              v4)
           (\ v6 ->
              coe
                MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                (coe
                   MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                () ()
                (coe
                   MAlonzo.Code.Class.MonadTC.du_debugLog1_732
                   (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                   (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                   (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_18)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      ("Generate required instances at indices: " :: Data.Text.Text)
                      (coe
                         MAlonzo.Code.Class.Show.Core.d_show_16
                         (coe
                            du___12 () erased MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_36)
                         (coe
                            MAlonzo.Code.Data.List.Base.du_map_22
                            (coe (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                            (coe v6)))))
                (\ v7 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Class.MonadTC.du_extendContext''_706
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                        () (coe MAlonzo.Code.Reflection.Utils.Core.d_toTelescope_108 v5)
                        (coe
                           du_genSortInstanceWithCtx_58 (coe v0)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_zipWith_104
                              (coe
                                 (\ v8 v9 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         addInt
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                         (coe v9))
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))
                              (coe v6)
                              (coe
                                 MAlonzo.Code.Data.List.Base.d_upTo_418
                                 (coe MAlonzo.Code.Data.List.Base.du_length_284 v6))))
                        v7)
                     (\ v8 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                          (coe
                             MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                             (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                          () ()
                          (coe
                             MAlonzo.Code.Class.MonadTC.du_debugLog1_732
                             (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                             (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144)
                             (coe
                                MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                                (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_18)
                             (coe ("AdjustedParams: " :: Data.Text.Text)))
                          (coe
                             MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                             (coe
                                MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                                (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                             (coe ()) (coe ())
                             (coe
                                MAlonzo.Code.Reflection.Utils.TCI.du_logTelescope_256
                                (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                (coe
                                   MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_120
                                   (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30))
                                (coe
                                   MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144)
                                (coe
                                   MAlonzo.Code.Data.List.Base.du_map_22
                                   (coe
                                      (\ v9 ->
                                         case coe v9 of
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v10 v11
                                             -> coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe v10))
                                                  (coe v11)
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_map_22
                                         (coe
                                            (\ v9 ->
                                               case coe v9 of
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v10 v11
                                                   -> coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Reflection.Utils.Args.du_hide_66
                                                           (coe v11))
                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_take_546
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                               (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                                               v1)
                                            (coe v5)))
                                      (coe v8))))
                             (coe
                                (\ v9 ->
                                   coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                     erased
                                     (coe
                                        MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_478
                                        MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_120
                                           (coe
                                              MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30))
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                        MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144 v2
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_map_22
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                   (coe
                                                      addInt
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_length_284
                                                         v6)
                                                      (coe v10))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe
                                              MAlonzo.Code.Data.List.Base.d_downFrom_420
                                              (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)))
                                        v9)
                                     (\ v10 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 ()
                                          erased
                                          (coe
                                             du_modifyClassType_70 (coe v0) (coe v3)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_map_22
                                                      (coe
                                                         (\ v11 ->
                                                            case coe v11 of
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                                -> coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                     (coe v12)
                                                                     (coe
                                                                        MAlonzo.Code.Reflection.Utils.Args.du_hide_66
                                                                        (coe v13))
                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_take_546
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_284
                                                               v5)
                                                            v1)
                                                         (coe v5)))
                                                   (coe v8))
                                                (coe v10)))))))
                          v7))
                v4))
-- Tactic.Derive._.collectRelevantSorts
d_collectRelevantSorts_26 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_collectRelevantSorts_26 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_collectRelevantSorts_26 v5
du_collectRelevantSorts_26 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_collectRelevantSorts_26 v0
  = case coe v0 of
      []
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v0)
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
                      -> coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                erased
                                (coe
                                   MAlonzo.Code.Class.MonadTC.du_extendContext_672
                                   (coe
                                      MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                   ()
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe v6)))
                                   (coe du_collectRelevantSorts_26 (coe v2)) v7)
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                     (coe
                                        MAlonzo.Code.Reflection.Utils.TCI.du_isNArySort_448
                                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                        (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                        (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe v6))
                                     (\ v9 ->
                                        case coe v9 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                            -> coe
                                                 MAlonzo.Code.Class.Monad.Core.d_return_16
                                                 MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                                 (coe
                                                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                                                    (coe v10)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_length_284
                                                             v2)
                                                          (coe v11))
                                                       (coe v8))
                                                    (coe v8))
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                     v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._.genSortInstance
d_genSortInstance_42 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_genSortInstance_42 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_genSortInstance_42 v0 v5 v6 v7
du_genSortInstance_42 ::
  AgdaAny ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_genSortInstance_42 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             (\ v4 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                  erased
                  (coe
                     MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibilityDB_492
                     (coe
                        MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                     (coe
                        MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                     MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144
                     (addInt (coe v1) (coe v3))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v5)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Data.List.Base.d_downFrom_420 v1))
                     v4)
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                (coe v5))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                (\ v5 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Class.MonadTC.du_extendContext_672
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                        ()
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe ("" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))
                        (coe du_genSortInstance_42 (coe v0) (coe v1) (coe v4) (coe v3)) v5)
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                (coe ("_" :: Data.Text.Text)) (coe v6))))))
-- Tactic.Derive._.genSortInstanceWithCtx
d_genSortInstanceWithCtx_58 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_genSortInstanceWithCtx_58 v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_genSortInstanceWithCtx_58 v0 v5
du_genSortInstanceWithCtx_58 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_genSortInstanceWithCtx_58 v0 v1
  = case coe v1 of
      []
        -> coe
             (\ v2 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                         erased
                         (coe
                            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                            (coe
                               MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                               (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4))
                            () erased () erased
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("_" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe v7)))
                            (coe du_genSortInstance_42 (coe v0) (coe v5) (coe v5) (coe v4)) v6)
                         (\ v7 ->
                            coe
                              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                              (coe du___10 (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)) ()
                              erased () erased
                              (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7))
                              (coe
                                 MAlonzo.Code.Class.MonadTC.du_extendContext_672
                                 MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 ()
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe ("" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))
                                 (coe du_genSortInstanceWithCtx_58 (coe v0) (coe v3)))
                              v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._.modifyClassType
d_modifyClassType_70 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_modifyClassType_70 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_modifyClassType_70 v0 v5 v6
du_modifyClassType_70 ::
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_modifyClassType_70 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Reflection.Utils.Core.d_tyView_34
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                         (coe v5))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Reflection.Utils.Core.d_tyView_34
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                (coe v4))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.lookupName
d_lookupName_118 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
d_lookupName_118 ~v0 ~v1 = du_lookupName_118
du_lookupName_118 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
du_lookupName_118
  = coe
      MAlonzo.Code.Meta.Prelude.du_lookup'7495'_18
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
              erased
              (MAlonzo.Code.Reflection.AST.Name.d__'8799'__12
                 (coe v0) (coe v1))))
-- Tactic.Derive.genMutualHelpers
d_genMutualHelpers_124 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_genMutualHelpers_124 ~v0 ~v1 v2 v3
  = du_genMutualHelpers_124 v2 v3
du_genMutualHelpers_124 ::
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_genMutualHelpers_124 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe
            MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
            (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4))
         () erased () erased
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                    (coe
                       MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36 (coe v2)))))
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
            (coe
               MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
               (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4))
            () erased () erased
            (coe
               MAlonzo.Code.Data.List.Base.du_concatMap_246
               (coe
                  (\ v2 ->
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
            (coe
               MAlonzo.Code.Class.MonadTC.du_getConstrs_778
               (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
               (coe
                  MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_120
                  (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30))
               (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144) (coe v0)))
         v1)
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
           (coe
              MAlonzo.Code.Data.List.Base.du_deduplicate_898
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Name_200))
              (coe
                 MAlonzo.Code.Data.List.Base.du_mapMaybe_258
                 (coe du_helper_132 (coe v0)) (coe v2))))
-- Tactic.Derive._.helper
d_helper_132 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_helper_132 ~v0 ~v1 v2 v3 = du_helper_132 v2 v3
du_helper_132 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
du_helper_132 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                (coe
                   MAlonzo.Code.Data.List.Base.du_any_272
                   (coe
                      (\ v5 ->
                         case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                             -> let v8 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                coe
                                  (case coe v7 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v9 v10
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130
                                            () erased
                                            (MAlonzo.Code.Reflection.AST.Name.d__'8799'__12
                                               (coe v0) (coe v9))
                                     _ -> coe v8)
                           _ -> MAlonzo.RTE.mazUnreachableError))
                   (coe v4))
                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))
                (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> coe v2)
-- Tactic.Derive._.deriveSingle
d_deriveSingle_152 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_deriveSingle_152 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_320
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144) (coe ())
      (coe ("DeriveSingle" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_debugLog_574
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_108
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__36
               (coe ("For: " :: Data.Text.Text))
               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_18)
               (coe
                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__36 (coe v5)
                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_22)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe
            (\ v8 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                 erased
                 (coe
                    du_genClassType_14 (coe v0) (coe v2) (coe v5) (coe v7) (coe v8))
                 (\ v9 ->
                    coe
                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                      MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                      (coe
                         MAlonzo.Code.Tactic.ClauseBuilder.du_constructorPatterns''_276
                         (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                         (coe MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_10)
                         (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                         (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                            (coe MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46 v5 v7)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                      (\ v10 ->
                         coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                           (coe
                              MAlonzo.Code.Class.MonadReader.d_local_42
                              MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 () erased
                              (\ v11 ->
                                 coe
                                   MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_205
                                   (coe MAlonzo.Code.Class.MonadTC.d_normalisation_42 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_44 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_46 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reduction_48 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_globalContext_50 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_localContext_52 (coe v11))
                                   (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v9))
                                   (coe MAlonzo.Code.Class.MonadTC.d_options_56 (coe v11)))
                              (coe
                                 MAlonzo.Code.Tactic.ClauseBuilder.du_singleMatchExpr_660
                                 (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                 (coe
                                    du___8 erased MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                    MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
                                    MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                    MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Tactic.ClauseBuilder.du_contMatch_724
                                    (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                    (coe
                                       MAlonzo.Code.Tactic.ClauseBuilder.du_multiMatchExprM_636
                                       (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                       (coe
                                          du___8 erased MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                          MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
                                          MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                          MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                       (coe v3 (coe du_lookupName_118 v4) v10)))))
                           (\ v11 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d_return_16
                                MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                      (coe
                                         (\ v12 ->
                                            coe
                                              MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                 (coe v6))
                                              (coe du_lookupName_118 v4 v12)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe v6))
                                      (coe v7))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                      (coe
                                         MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToClauses_422
                                         (coe v11))))))
                      v8))))
-- Tactic.Derive._.deriveMulti
d_deriveMulti_172 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_deriveMulti_172 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    (\ v9 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                         erased
                         (coe
                            MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12
                            () ()
                            (coe
                               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.MonadTC.d_freshName_152
                                 MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v0)
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                       ("-" :: Data.Text.Text)
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12
                                             v10)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12
                                             v5)))))
                            v8 v9)
                         (\ v10 ->
                            coe
                              MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                              MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12
                              () () MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                              (d_deriveSingle_152
                                 (coe v0) (coe v1) (coe v2) (coe v3)
                                 (coe MAlonzo.Code.Data.List.Base.du_zip_182 v8 v10) (coe v5)
                                 (coe v7))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_map_22
                                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16) (coe v8)))
                              v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._.derive-Class
d_derive'45'Class_184 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'Class_184 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_112 (coe v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_declareAndDefineFuns_336
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144))
         (coe
            MAlonzo.Code.Class.MonadTC.du_runAndReset_184
            (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_144) (coe ())
            (coe
               MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
               (coe
                  MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                  (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4))
               () erased () erased (coe MAlonzo.Code.Data.List.Base.du_concat_244)
               (coe
                  MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                  (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
                  (coe
                     MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
                  (coe ()) (coe ())
                  (coe
                     MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_94
                     (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                  (coe du_helper_192 (coe v0) (coe v1) (coe v2) (coe v3))
                  (coe v5)))))
-- Tactic.Derive._._.helper
d_helper_192 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
d_helper_192 v0 v1 v2 v3 ~v4 ~v5 v6 = du_helper_192 v0 v1 v2 v3 v6
du_helper_192 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_24 -> AgdaAny
du_helper_192 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             (\ v7 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                  erased (coe du_genMutualHelpers_124 (coe v5) (coe v7))
                  (\ v8 ->
                     coe
                       d_deriveMulti_172 v0 v1 v2 v3
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v8)))
                       v7))
      _ -> MAlonzo.RTE.mazUnreachableError
