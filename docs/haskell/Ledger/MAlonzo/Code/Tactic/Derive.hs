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
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.MetaPrelude
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.Name
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder

-- Tactic.Derive._
d___8 ::
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_450
d___8 ~v0 ~v1 = du___8
du___8 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_450
du___8 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_604 v1
      v2 v3 v4
-- Tactic.Derive.genClassType
d_genClassType_12 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_genClassType_12 v0 ~v1 v2 v3 v4 v5
  = du_genClassType_12 v0 v2 v3 v4 v5
du_genClassType_12 ::
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_genClassType_12 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_422
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v2 v4)
      (\ v5 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
           MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
           (coe
              du_adjustParams_24 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Data.List.Base.du_take_622
                 (coe
                    MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                    (coe MAlonzo.Code.Data.List.Base.du_length_304 v5) v1)
                 (coe v5)))
           (\ v6 ->
              coe
                MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                (coe
                   MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe ()) (coe ())
                (coe
                   MAlonzo.Code.Class.MonadTC.du_debugLog1_596
                   (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                   (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                   (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                   (coe ("AdjustedParams: " :: Data.Text.Text)))
                (coe
                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                   (coe ()) (coe ())
                   (coe
                      MAlonzo.Code.Reflection.Utils.TCI.du_logTelescope_264
                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                      (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                      (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                      (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                      (coe
                         MAlonzo.Code.Data.List.Base.du_map_22
                         (coe
                            (\ v7 ->
                               let v8 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7) in
                               coe
                                 (case coe v8 of
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v9 v10
                                      -> coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v9))
                                           (coe v10)
                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                         (coe v6)))
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                           erased
                           (coe
                              MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_484
                              MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                              (coe
                                 MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                 (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                              (coe
                                 MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                 (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                              MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156 v2
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v8 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v8)
                                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe du_trueIndices_54 (coe v6)))
                              v7)
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d_return_16
                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
                                (coe
                                   du_modifyClassType_60 (coe v0) (coe v3)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_map_22
                                         (coe
                                            (\ v9 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                         (coe v6))
                                      (coe v8))))))))
           v4)
-- Tactic.Derive._.adjustParams
d_adjustParams_24 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_adjustParams_24 v0 ~v1 v2 ~v3 ~v4 v5
  = du_adjustParams_24 v0 v2 v5
du_adjustParams_24 ::
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_adjustParams_24 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Monad.Core.d_return_16
                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased v2)
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                      -> coe
                           (\ v9 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                                erased
                                (coe
                                   MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                   (coe
                                      MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
                                      (coe
                                         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                                         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
                                   () erased () erased
                                   (\ v10 ->
                                      coe
                                        MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v10)
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
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
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                       (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                (coe (0 :: Integer))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                   (coe
                                      MAlonzo.Code.Reflection.Utils.TCI.du_isNArySort_452
                                      (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                      (coe
                                         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
                                      (coe v1) (coe v8))
                                   v9)
                                (\ v10 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                                     erased
                                     (coe
                                        MAlonzo.Code.Class.MonadTC.du_extendContext_536
                                        MAlonzo.Code.Meta.d_iMonadReader'45'TC_6 ()
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                              (coe v8)))
                                        (coe du_adjustParams_24 (coe v0) (coe v1) (coe v4)) v9)
                                     (\ v11 ->
                                        coe
                                          MAlonzo.Code.Class.Monad.Core.d_return_16
                                          MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 ()
                                          erased
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                      (coe v5)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                         (coe v8)))
                                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                (coe v10))
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                (coe
                                                   (\ v12 ->
                                                      case coe v12 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                          -> case coe v13 of
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v15 v16
                                                                 -> case coe v16 of
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v17 v18
                                                                        -> coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe v15)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe v17)
                                                                                   (coe
                                                                                      MAlonzo.Code.Reflection.Utils.d_mapVars_360
                                                                                      (\ v19 ->
                                                                                         addInt
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                                                                                              (coe
                                                                                                 v14)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                 v10)
                                                                                              (coe
                                                                                                 (0 ::
                                                                                                    Integer)))
                                                                                           (coe
                                                                                              v19))
                                                                                      v18)))
                                                                             (coe v14)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe v11))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._.trueIndices
d_trueIndices_54 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [Integer]
d_trueIndices_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trueIndices_54 v6
du_trueIndices_54 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [Integer]
du_trueIndices_54 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe MAlonzo.Code.Data.List.Base.du_length_304 v2)
                (coe du_trueIndices_54 (coe v2)))
             (coe du_trueIndices_54 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._.modifyClassType
d_modifyClassType_60 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_modifyClassType_60 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_modifyClassType_60 v0 v5 v6
du_modifyClassType_60 ::
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_modifyClassType_60 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Reflection.Utils.d_tyView_158
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
                    MAlonzo.Code.Reflection.Utils.d_tyView_158
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
d_lookupName_84 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
d_lookupName_84 ~v0 ~v1 = du_lookupName_84
du_lookupName_84 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
du_lookupName_84
  = coe
      MAlonzo.Code.MetaPrelude.du_lookup'7495'_6
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 ()
              erased
              (MAlonzo.Code.Reflection.AST.Name.d__'8799'__12
                 (coe v0) (coe v1))))
-- Tactic.Derive.genMutualHelpers
d_genMutualHelpers_90 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_genMutualHelpers_90 ~v0 ~v1 v2 v3 = du_genMutualHelpers_90 v2 v3
du_genMutualHelpers_90 ::
  AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_genMutualHelpers_90 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe
            MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
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
               (coe
                  MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                  (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
            () erased () erased
            (coe
               MAlonzo.Code.Data.List.Base.du_concatMap_272
               (coe
                  (\ v2 ->
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Reflection.Utils.d_viewTy_146
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
            (coe
               MAlonzo.Code.Class.MonadTC.du_getConstrs_642
               (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
               (coe
                  MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                  (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
               (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe v0)))
         v1)
      (\ v2 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d_return_16
           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
           (coe
              MAlonzo.Code.Data.List.Base.du_deduplicate_934
              (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Name_178))
              (coe
                 MAlonzo.Code.Data.List.Base.du_mapMaybe_32
                 (coe du_helper_98 (coe v0)) (coe v2))))
-- Tactic.Derive._.helper
d_helper_98 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_helper_98 ~v0 ~v1 v2 v3 = du_helper_98 v2 v3
du_helper_98 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
du_helper_98 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                (coe
                   MAlonzo.Code.Data.List.Base.du_any_292
                   (coe
                      (\ v5 ->
                         case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                             -> let v8 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
                                coe
                                  (case coe v7 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v9 v10
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106
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
d_deriveSingle_118 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  Maybe AgdaAny -> MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_deriveSingle_118 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_328
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156) (coe ())
      (coe ("DeriveSingle" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_debugLog_438
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
               (coe ("For: " :: Data.Text.Text))
               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
               (coe
                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_26)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe
            (\ v8 ->
               coe
                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                 erased
                 (coe
                    du_genClassType_12 (coe v0) (coe v2) (coe v5) (coe v7) (coe v8))
                 (\ v9 ->
                    coe
                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                      MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                      (coe
                         MAlonzo.Code.Tactic.ClauseBuilder.du_constructorPatterns''_282
                         (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                         (coe MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22)
                         (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                         (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                            (coe MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_50 v5 v7)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                      (\ v10 ->
                         coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                           MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                           (coe
                              MAlonzo.Code.Class.MonadReader.d_local_44
                              MAlonzo.Code.Meta.d_iMonadReader'45'TC_6 () erased
                              (\ v11 ->
                                 coe
                                   MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_309
                                   (coe MAlonzo.Code.Class.MonadTC.d_normalisation_50 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reduction_56 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v11))
                                   (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v9))
                                   (coe MAlonzo.Code.Class.MonadTC.d_options_64 (coe v11)))
                              (coe
                                 MAlonzo.Code.Tactic.ClauseBuilder.du_singleMatchExpr_664
                                 (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                 (coe
                                    du___8 erased MAlonzo.Code.Meta.d_iMonad'45'TC_2
                                    (coe
                                       MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                       (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                    (coe
                                       MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                    MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
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
                                    MAlonzo.Code.Tactic.ClauseBuilder.du_contMatch_728
                                    (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                    (coe
                                       MAlonzo.Code.Tactic.ClauseBuilder.du_multiMatchExprM_640
                                       (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                       (coe
                                          du___8 erased MAlonzo.Code.Meta.d_iMonad'45'TC_2
                                          (coe
                                             MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                                             (coe
                                                MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                                          (coe
                                             MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
                                             (coe
                                                MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                          MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156)
                                       (coe v3 (coe du_lookupName_84 v4) v10)))))
                           (\ v11 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d_return_16
                                MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                      (coe
                                         (\ v12 ->
                                            coe
                                              MAlonzo.Code.Data.Maybe.Base.du_maybe_36
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
                                              (coe du_lookupName_84 v4 v12)))
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
                                         MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToClauses_428
                                         (coe v11))))))
                      v8))))
-- Tactic.Derive._.deriveMulti
d_deriveMulti_138 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_deriveMulti_138 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    (\ v9 ->
                       coe
                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                         erased
                         (coe
                            MAlonzo.Code.Class.Traversable.Core.du_traverse_20
                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12
                            () ()
                            (coe
                               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                            (\ v10 ->
                               coe
                                 MAlonzo.Code.Class.MonadTC.d_freshName_164
                                 MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
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
                              () () MAlonzo.Code.Meta.d_iMonad'45'TC_2
                              (d_deriveSingle_118
                                 (coe v0) (coe v1) (coe v2) (coe v3)
                                 (coe MAlonzo.Code.Data.List.Base.du_zip_212 v8 v10) (coe v5)
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
d_derive'45'Class_150 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'Class_150 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_104 (coe v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_declareAndDefineFuns_246
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_156))
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
            (coe
               MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50
               (coe
                  MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                  (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)))
            () erased () erased (coe MAlonzo.Code.Data.List.Base.du_concat_270)
            (coe
               MAlonzo.Code.Class.Traversable.Core.du_traverse_20
               (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
               (coe
                  MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
               (coe ()) (coe ())
               (coe
                  MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
                  (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
               (coe du_helper_158 (coe v0) (coe v1) (coe v2) (coe v3)) (coe v5))))
-- Tactic.Derive._._.helper
d_helper_158 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_helper_158 v0 v1 v2 v3 ~v4 ~v5 v6 = du_helper_158 v0 v1 v2 v3 v6
du_helper_158 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((AgdaAny -> Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
du_helper_158 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             (\ v7 ->
                coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                  erased (coe du_genMutualHelpers_90 (coe v5) (coe v7))
                  (\ v8 ->
                     coe
                       d_deriveMulti_138 v0 v1 v2 v3
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v8)))
                       v7))
      _ -> MAlonzo.RTE.mazUnreachableError
