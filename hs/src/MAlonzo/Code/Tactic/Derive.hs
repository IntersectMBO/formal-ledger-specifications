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
import qualified MAlonzo.Code.Data.Bool.ListAction
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta.Init
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
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_84 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_446
d___8 ~v0 ~v1 = du___8
du___8 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_10 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_16 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_84 ->
  MAlonzo.Code.Tactic.ClauseBuilder.T_ContextMonad_446
du___8 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_600 v1
      v2 v3 v4
-- Tactic.Derive._
d___10 ::
  AgdaAny ->
  AgdaAny ->
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
d___10 ~v0 ~v1 = du___10
du___10 ::
  () ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
du___10 v0 v1 v2
  = coe MAlonzo.Code.Class.MonadReader.du_Functor'45'ReaderT_90 v2
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
-- Tactic.Derive._
d___14 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d___14 ~v0 ~v1 = du___14
du___14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du___14 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 v4 v5
-- Tactic.Derive.WrapperChain
d_WrapperChain_16 :: AgdaAny -> AgdaAny -> ()
d_WrapperChain_16 = erased
-- Tactic.Derive.applyChain
d_applyChain_18 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_applyChain_18 ~v0 ~v1 v2 v3 = du_applyChain_18 v2 v3
du_applyChain_18 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_applyChain_18 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v2)
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
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                   (coe du_applyChain_18 (coe v3) (coe v1)))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.matchesChain
d_matchesChain_28 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_matchesChain_28 v0 v1 v2 v3 v4
  = let v5 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v2 of
         []
           -> let v6 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
              coe
                (case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v7 v8
                     -> coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
                          erased
                          (MAlonzo.Code.Reflection.AST.Name.d__'8799'__12 (coe v3) (coe v7))
                   _ -> coe v6)
         (:) v6 v7
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v8 v9
                  -> coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
                          erased
                          (MAlonzo.Code.Reflection.AST.Name.d__'8799'__12 (coe v6) (coe v8)))
                       (coe
                          MAlonzo.Code.Data.Bool.ListAction.du_any_14
                          (coe du_'46'extendedlambda0_44 (coe v0) (coe v1) (coe v7) (coe v3))
                          (coe v9))
                _ -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Derive..extendedlambda0
d_'46'extendedlambda0_44 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> Bool
d_'46'extendedlambda0_44 v0 v1 ~v2 v3 v4 ~v5 ~v6 v7
  = du_'46'extendedlambda0_44 v0 v1 v3 v4 v7
du_'46'extendedlambda0_44 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> Bool
du_'46'extendedlambda0_44 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
        -> coe
             d_matchesChain_28 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.genClassType
d_genClassType_48 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genClassType_48 v0 ~v1 v2 v3 v4 v5
  = du_genClassType_48 v0 v2 v3 v4 v5
du_genClassType_48 ::
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_genClassType_48 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Reflection.Utils.TCI.du_getParamsAndIndices_416
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_138
            (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_40))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146 v2 v4)
      (\ v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased
           (coe
              du_collectRelevantSorts_60
              (coe
                 MAlonzo.Code.Data.List.Base.du_map_22
                 (coe
                    (\ v6 ->
                       case coe v6 of
                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v7 v8
                           -> coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v7)
                                (coe MAlonzo.Code.Reflection.Utils.Args.du_hide_92 (coe v8))
                         _ -> MAlonzo.RTE.mazUnreachableError))
                 (coe
                    MAlonzo.Code.Data.List.Base.du_take_530
                    (coe
                       MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                       (coe MAlonzo.Code.Data.List.Base.du_length_268 v5) v1)
                    (coe v5)))
              v4)
           (\ v6 ->
              coe
                MAlonzo.Code.Class.Monad.Core.du__'62''62'__26
                (coe
                   MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                () ()
                (coe
                   MAlonzo.Code.Class.MonadTC.du_debugLog1_740
                   (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                   (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                   (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
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
                        MAlonzo.Code.Class.MonadTC.du_extendContext''_714
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                        () (coe MAlonzo.Code.Reflection.Utils.Core.d_toTelescope_186 v5)
                        (coe
                           du_genSortInstanceWithCtx_92 (coe v0)
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
                                 MAlonzo.Code.Data.List.Base.d_upTo_402
                                 (coe MAlonzo.Code.Data.List.Base.du_length_268 v6))))
                        v7)
                     (\ v8 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__26
                          (coe
                             MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                             (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                          () ()
                          (coe
                             MAlonzo.Code.Class.MonadTC.du_debugLog1_740
                             (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                             (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
                             (coe
                                MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
                                (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                             (coe ("AdjustedParams: " :: Data.Text.Text)))
                          (coe
                             MAlonzo.Code.Class.Monad.Core.du__'62''62'__26
                             (coe
                                MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                                (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                             (coe ()) (coe ())
                             (coe
                                MAlonzo.Code.Reflection.Utils.TCI.du_logTelescope_254
                                (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                (coe
                                   MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_138
                                   (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_40))
                                (coe
                                   MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
                                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
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
                                                           MAlonzo.Code.Reflection.Utils.Args.du_hide_92
                                                           (coe v11))
                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_take_530
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                               (coe MAlonzo.Code.Data.List.Base.du_length_268 v5)
                                               v1)
                                            (coe v5)))
                                      (coe v8))))
                             (coe
                                (\ v9 ->
                                   coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                     erased
                                     (coe
                                        MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_476
                                        MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_138
                                           (coe
                                              MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_40))
                                        (coe
                                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
                                           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                        MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146 v2
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_map_22
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                   (coe
                                                      addInt
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_length_268
                                                         v6)
                                                      (coe v10))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe
                                              MAlonzo.Code.Data.List.Base.d_downFrom_404
                                              (coe MAlonzo.Code.Data.List.Base.du_length_268 v5)))
                                        v9)
                                     (\ v10 ->
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 ()
                                          erased
                                          (coe
                                             du_modifyClassType_104 (coe v0) (coe v3)
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
                                                                        MAlonzo.Code.Reflection.Utils.Args.du_hide_92
                                                                        (coe v13))
                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_take_530
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_length_268
                                                               v5)
                                                            v1)
                                                         (coe v5)))
                                                   (coe v8))
                                                (coe v10)))))))
                          v7))
                v4))
-- Tactic.Derive._.collectRelevantSorts
d_collectRelevantSorts_60 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_collectRelevantSorts_60 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_collectRelevantSorts_60 v5
du_collectRelevantSorts_60 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_collectRelevantSorts_60 v0
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
                                   MAlonzo.Code.Class.MonadTC.du_extendContext_680
                                   (coe
                                      MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
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
                                   (coe du_collectRelevantSorts_60 (coe v2)) v7)
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24
                                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                                     (coe
                                        MAlonzo.Code.Reflection.Utils.TCI.du_isNArySort_446
                                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                        (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                        (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe v6))
                                     (\ v9 ->
                                        case coe v9 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                            -> coe
                                                 MAlonzo.Code.Class.Monad.Core.d_return_22
                                                 MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                                 (coe
                                                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                                                    (coe v10)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_length_268
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
d_genSortInstance_76 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genSortInstance_76 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_genSortInstance_76 v0 v5 v6 v7
du_genSortInstance_76 ::
  AgdaAny ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_genSortInstance_76 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             (\ v4 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                  erased
                  (coe
                     MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibilityDB_490
                     (coe
                        MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                     (coe
                        MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                     MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146
                     (addInt (coe v1) (coe v3))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v5)
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Data.List.Base.d_downFrom_404 v1))
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
                        MAlonzo.Code.Class.MonadTC.du_extendContext_680
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
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
                        (coe du_genSortInstance_76 (coe v0) (coe v1) (coe v4) (coe v3)) v5)
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
d_genSortInstanceWithCtx_92 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genSortInstanceWithCtx_92 v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_genSortInstanceWithCtx_92 v0 v5
du_genSortInstanceWithCtx_92 ::
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_genSortInstanceWithCtx_92 v0 v1
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
                            MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                            erased (coe du_genSortInstance_76 v0 v5 v5 v4 v6)
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
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
                                       (coe v7)))))
                         (\ v7 ->
                            coe
                              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
                              (coe
                                 du___10 erased erased
                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
                              () erased () erased
                              (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v7))
                              (coe
                                 MAlonzo.Code.Class.MonadTC.du_extendContext_680
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
                                 (coe du_genSortInstanceWithCtx_92 (coe v0) (coe v3)))
                              v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._.modifyClassType
d_modifyClassType_104 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  AgdaAny ->
  Maybe [AgdaAny] ->
  Maybe [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_modifyClassType_104 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_modifyClassType_104 v0 v5 v6
du_modifyClassType_104 ::
  AgdaAny ->
  Maybe [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_modifyClassType_104 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Reflection.Utils.Core.d_tyView_98
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
                                (coe du_applyChain_18 (coe v3) (coe v5)))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Reflection.Utils.Core.d_tyView_98
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
-- Tactic.Derive.TransEntry
d_TransEntry_152 :: AgdaAny -> AgdaAny -> ()
d_TransEntry_152 = erased
-- Tactic.Derive.lookupByTerm
d_lookupByTerm_154 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Maybe AgdaAny
d_lookupByTerm_154 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
      (coe
         MAlonzo.Code.Data.List.Base.du_find'7495'_908
         (\ v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                       -> coe
                            d_matchesChain_28 (coe v0) (coe v1) (coe v7) (coe v8) (coe v3)
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         v2)
-- Tactic.Derive.AllChainsTo.chainsTo
d_chainsTo_176 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_chainsTo_176 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.Bool.Base.d__'8744'__30)
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Class.DecEq.Core.du__'8801''7495'__22
                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Name_208 v7 v5))
                           (coe v2)) in
              coe
                (if coe v7
                   then coe
                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v5))
                   else coe
                          MAlonzo.Code.Data.List.Base.du_map_22
                          (coe
                             (\ v8 ->
                                case coe v8 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                                            (coe v9))
                                         (coe v10)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                          (coe d_chainsToArgs_178 (coe v0) (coe v1) (coe v2) (coe v6)))
         _ -> coe v4)
-- Tactic.Derive.AllChainsTo.chainsToArgs
d_chainsToArgs_178 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_chainsToArgs_178 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v3
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe d_chainsTo_176 (coe v0) (coe v1) (coe v2) (coe v7))
                    (coe d_chainsToArgs_178 (coe v0) (coe v1) (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.AllChainsTo.allChainsTo
d_allChainsTo_206 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allChainsTo_206 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Data.List.Base.du_foldr_216
                        (coe MAlonzo.Code.Data.Bool.Base.d__'8744'__30)
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_map_22
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Class.DecEq.Core.du__'8801''7495'__22
                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Name_208 v7 v5))
                           (coe v2)) in
              coe
                (if coe v7
                   then coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                   else coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe d_chainsTo_176 (coe v0) (coe v1) (coe v2) (coe v3))
                          (coe d_allChainsToArgs_208 (coe v0) (coe v1) (coe v2) (coe v6)))
         _ -> coe v4)
-- Tactic.Derive.AllChainsTo.allChainsToArgs
d_allChainsToArgs_208 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allChainsToArgs_208 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v3
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                    (coe d_allChainsTo_206 (coe v0) (coe v1) (coe v2) (coe v7))
                    (coe d_allChainsToArgs_208 (coe v0) (coe v1) (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.genMutualHelpers
d_genMutualHelpers_236 ::
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genMutualHelpers_236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_50
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
         MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28
         (\ v4 -> v4) () ()
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
              (coe
                 du___10 erased erased
                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
              () erased () erased
              (coe
                 MAlonzo.Code.Data.List.Base.du_map_22
                 (coe
                    (\ v5 ->
                       MAlonzo.Code.Reflection.AST.Argument.d_unArg_74
                         (coe
                            MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36 (coe v5)))))
              (coe
                 MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
                 (coe
                    du___10 erased erased
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
                 () erased () erased
                 (coe
                    MAlonzo.Code.Data.List.Base.du_concatMap_246
                    (coe
                       (\ v5 ->
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Reflection.Utils.Core.d_viewTy_86
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                 (coe
                    MAlonzo.Code.Class.MonadTC.du_getConstrs_786
                    (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                    (coe
                       MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_138
                       (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_40))
                    (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe v4))))
         v2 v3)
      (\ v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
           (coe
              MAlonzo.Code.Data.List.Base.du_deduplicate_882
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    du___14 () erased () erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'List_58 (coe ())
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Name_208))
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Name_208))
              (coe
                 MAlonzo.Code.Data.List.Base.du_concatMap_246
                 (coe d_allChainsTo_206 (coe v0) (coe v1) (coe v2))
                 (coe MAlonzo.Code.Data.List.Base.du_concat_244 v4))))
-- Tactic.Derive._.deriveSingle
d_deriveSingle_252 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  Maybe [AgdaAny] -> MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveSingle_252 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
      (coe ("DeriveSingle" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'62''62'__26
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_debugLog_582
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146)
            (coe
               MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_126
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe
               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
               (coe ("For: " :: Data.Text.Text))
               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
               (coe
                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_24)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe
            (\ v8 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                 erased
                 (coe
                    du_genClassType_48 (coe v0) (coe v2) (coe v5) (coe v7) (coe v8))
                 (\ v9 ->
                    coe
                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24
                      MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                      (coe
                         MAlonzo.Code.Tactic.ClauseBuilder.du_constructorPatterns''_278
                         (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                         (coe MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_12)
                         (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                         (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                            (coe
                               MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                               (coe
                                  (\ v10 ->
                                     case coe v10 of
                                       [] -> coe v5
                                       (:) v11 v12 -> coe v11
                                       _ -> MAlonzo.RTE.mazUnreachableError))
                               (coe v5) (coe v7))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                      (\ v10 ->
                         coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24
                           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                           (coe
                              MAlonzo.Code.Class.MonadReader.d_local_44
                              MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 () erased
                              (\ v11 ->
                                 coe
                                   MAlonzo.Code.Class.MonadTC.C_constructor_66
                                   (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_48 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_reduction_50 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v11))
                                   (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v11))
                                   (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v9))
                                   (coe MAlonzo.Code.Class.MonadTC.d_options_58 (coe v11)))
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
                                       (coe
                                          v3 (d_lookupByTerm_154 (coe v0) (coe v1) (coe v4))
                                          v10)))))
                           (\ v11 ->
                              coe
                                MAlonzo.Code.Class.Monad.Core.d_return_22
                                MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                      (coe
                                         (\ v12 ->
                                            coe
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
                                              (coe v6)))
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
                                         MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToClauses_424
                                         (coe v11))))))
                      v8))))
-- Tactic.Derive._.deriveGroup
d_deriveGroup_280 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveGroup_280 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (d_genMutualHelpers_236
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            (coe v4))
         (coe v5))
      (\ v6 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__24
           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
           (coe
              MAlonzo.Code.Class.Traversable.Core.du_traverse_50
              (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
              (coe
                 MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
              (coe (\ v7 -> v7)) (coe ()) (coe ())
              (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
              (coe du_mkHelperName_288 (coe v0)) (coe v6))
           (\ v7 v8 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                erased
                (coe
                   MAlonzo.Code.Class.Traversable.Core.du_traverse_50
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                   MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28
                   (\ v9 -> v9) () ()
                   (coe
                      MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                   (coe
                      du_deriveBase_302 (coe v0) (coe v1) (coe v2) (coe v3)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32
                         (coe
                            MAlonzo.Code.Data.List.Base.du_map_22
                            (coe
                               (\ v9 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))))
                            (coe v4))
                         (coe MAlonzo.Code.Data.List.Base.du_zip_182 v6 v7)))
                   v4 v8)
                (\ v9 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Class.Traversable.Core.du_traverse_50
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                        MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28
                        (\ v10 -> v10) () () MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                        (coe
                           du_deriveHelper_308 (coe v0) (coe v1) (coe v2) (coe v3)
                           (coe
                              MAlonzo.Code.Data.List.Base.du__'43''43'__32
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_map_22
                                 (coe
                                    (\ v10 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))))
                                 (coe v4))
                              (coe MAlonzo.Code.Data.List.Base.du_zip_182 v6 v7)))
                        (coe MAlonzo.Code.Data.List.Base.du_zip_182 v6 v7) v8)
                     (\ v10 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                          (coe
                             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v9) (coe v10)))))
           v5)
-- Tactic.Derive._._.mkHelperName
d_mkHelperName_288 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_mkHelperName_288 v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_mkHelperName_288 v0 v5
du_mkHelperName_288 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_mkHelperName_288 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Reflection.TCI.d_freshName_120
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v0)
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   (coe
                      MAlonzo.Code.Data.List.Base.du_foldr_216
                      (coe
                         (\ v4 v5 ->
                            coe
                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                              ("-" :: Data.Text.Text)
                              (coe
                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v4)
                                 v5)))
                      (coe ("" :: Data.Text.Text)) (coe v2))
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      ("-" :: Data.Text.Text)
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._._.D.deriveBase
d_deriveBase_302 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveBase_302 v0 v1 v2 v3 ~v4 v5 v6
  = du_deriveBase_302 v0 v1 v2 v3 v5 v6
du_deriveBase_302 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_deriveBase_302 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             d_deriveSingle_252 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
             (coe v6) (coe v7)
             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._._.D.deriveHelper
d_deriveHelper_308 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveHelper_308 v0 v1 v2 v3 ~v4 v5 v6
  = du_deriveHelper_308 v0 v1 v2 v3 v5 v6
du_deriveHelper_308 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_deriveHelper_308 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v6 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> coe
                    d_deriveSingle_252 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                    (coe v9) (coe v7)
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive._._._.deriveBase
d_deriveBase_332 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveBase_332 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_deriveBase_302 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe
               (\ v7 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
            (coe v4))
         (coe MAlonzo.Code.Data.List.Base.du_zip_182 v5 v6))
-- Tactic.Derive._._._.deriveHelper
d_deriveHelper_334 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_deriveHelper_334 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_deriveHelper_308 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe
               (\ v7 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
            (coe v4))
         (coe MAlonzo.Code.Data.List.Base.du_zip_182 v5 v6))
-- Tactic.Derive._.derive-Class
d_derive'45'Class_340 ::
  AgdaAny ->
  AgdaAny ->
  Integer ->
  ((MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
    Maybe AgdaAny) ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_derive'45'Class_340 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initUnquoteWithGoal_112 (coe v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__34
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe ()) (coe ())
         (coe
            MAlonzo.Code.Class.MonadTC.du_declareAndDefineFuns_340
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146))
         (coe
            MAlonzo.Code.Class.MonadTC.du_runAndReset_188
            (coe
               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_112
               (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
            (coe
               d_deriveGroup_280 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
