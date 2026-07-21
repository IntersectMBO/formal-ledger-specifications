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

module MAlonzo.Code.Tactic.Constrs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.Core
import qualified MAlonzo.Code.Reflection.Utils.Metas
import qualified MAlonzo.Code.Reflection.Utils.TCI

-- Tactic.Constrs.applyConstrToUnknowns
d_applyConstrToUnknowns_6 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_applyConstrToUnknowns_6 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22 (coe du_toUnknown_16)
         (coe MAlonzo.Code.Reflection.Utils.Core.d_argTys_68 (coe v1)))
-- Tactic.Constrs._.toUnknown
d_toUnknown_16 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
d_toUnknown_16 ~v0 ~v1 v2 = du_toUnknown_16 v2
du_toUnknown_16 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88
du_toUnknown_16 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Constrs.tryConstrsWith'
d_tryConstrsWith''_20 ::
  Integer ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_tryConstrsWith''_20 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
             (coe
                MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
                (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
             (coe
                MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
                (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
             (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
             (coe ("tryConstrs" :: Data.Text.Text))
             (coe
                (\ v2 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
                     (coe v1 v2)
                     (coe
                        MAlonzo.Code.Class.MonadError.d_error_26
                        MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_12 () erased
                        (coe
                           MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                           (coe ("Maximum depth reached!" :: Data.Text.Text))
                           (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                        v2)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
                (coe
                   MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe
                   MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
                (coe ("tryConstrs" :: Data.Text.Text))
                (coe
                   (\ v3 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
                        (coe v1 v3)
                        (coe
                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                           (coe
                              MAlonzo.Code.Class.MonadReader.du_reader_46 (coe ())
                              (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                              (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8) (coe ())
                              (coe (\ v4 -> MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v4))))
                           (coe du_'46'extendedlambda0_32 (coe v2) (coe v1)) v3))))
-- Tactic.Constrs..extendedlambda0
d_'46'extendedlambda0_32 ::
  Integer ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_'46'extendedlambda0_32 v0 v1 ~v2 v3
  = du_'46'extendedlambda0_32 v0 v1 v3
du_'46'extendedlambda0_32 ::
  Integer ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_'46'extendedlambda0_32 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Class.MonadError.d_error_26
              MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
              (coe
                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                 (coe ("Goal is not a hole!" :: Data.Text.Text))
                 (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
           -> coe
                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                (coe
                   MAlonzo.Code.Class.MonadTC.d_inferType_140
                   MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v4)
                (\ v5 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                     (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ()) (coe ())
                     (coe
                        MAlonzo.Code.Class.MonadTC.du_debugLog_578
                        (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                        (coe
                           MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                           (coe ("Find constructor for type " :: Data.Text.Text))
                           (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                           (coe
                              MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
                              (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                     (coe
                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                        MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                        (coe
                           MAlonzo.Code.Class.MonadTC.du_getConstrsForTerm_812
                           (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                           (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                           (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6) (coe v4))
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Class.MonadTC.du_try_770
                             (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                             (coe
                                MAlonzo.Code.Data.List.Base.du_map_22
                                (coe
                                   (\ v7 ->
                                      coe
                                        MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                        (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4) (coe ())
                                        (coe ())
                                        (coe
                                           MAlonzo.Code.Class.MonadTC.du_debugLog_578
                                           (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                           (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                           (coe
                                              MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                              (coe ("Try constructor " :: Data.Text.Text))
                                              (coe
                                                 MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                              (coe
                                                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v7))
                                                 (coe
                                                    MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_24)
                                                 (coe
                                                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                    (coe (" of type: " :: Data.Text.Text))
                                                    (coe
                                                       MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                                    (coe
                                                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe v7))
                                                       (coe
                                                          MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_22)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                        (coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased ()
                                           erased
                                           (coe
                                              MAlonzo.Code.Class.MonadReader.d_local_40
                                              MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8 ()
                                              erased
                                              (\ v8 ->
                                                 coe
                                                   MAlonzo.Code.Class.MonadTC.C_constructor_66
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_normalisation_44
                                                      (coe v8))
                                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_noConstraints_48
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_reduction_50
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_globalContext_52
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_localContext_54
                                                      (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v8))
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.d_options_58
                                                      (coe v8)))
                                              (coe
                                                 MAlonzo.Code.Class.MonadTC.d_checkType_142
                                                 MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                                    (coe d_applyConstrToUnknowns_6) (coe v7))
                                                 v5))
                                           (\ v8 ->
                                              coe
                                                MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                                (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                (coe ()) (coe ())
                                                (coe
                                                   MAlonzo.Code.Class.MonadTC.d_unify_136
                                                   MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6 v4 v8)
                                                (coe
                                                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                                   (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                   (coe ()) (coe ())
                                                   (coe
                                                      MAlonzo.Code.Class.MonadTC.du_debugLog1_736
                                                      (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                      (coe
                                                         MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                                      (coe
                                                         MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                                      (coe
                                                         MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                                      (coe ("Success!" :: Data.Text.Text)))
                                                   (coe
                                                      MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                                      (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                      (coe ()) (coe ())
                                                      (coe
                                                         MAlonzo.Code.Class.Traversable.Core.du_traverse_46
                                                         (coe
                                                            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92)
                                                         (coe
                                                            MAlonzo.Code.Class.Traversable.Instances.d_TraversableM'45'List_28)
                                                         (coe ()) (coe ())
                                                         (coe
                                                            MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                         (coe
                                                            (\ v9 ->
                                                               coe
                                                                 MAlonzo.Code.Class.MonadReader.d_local_40
                                                                 MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                                                 () erased
                                                                 (\ v10 ->
                                                                    coe
                                                                      MAlonzo.Code.Class.MonadTC.C_constructor_66
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_normalisation_44
                                                                         (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_reconstruction_46
                                                                         (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_noConstraints_48
                                                                         (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_reduction_50
                                                                         (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_globalContext_52
                                                                         (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_localContext_54
                                                                         (coe v10))
                                                                      (coe
                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                         (coe v9))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.d_options_58
                                                                         (coe v10)))
                                                                 (d_tryConstrsWith''_20
                                                                    (coe v0) (coe v1))))
                                                         (coe
                                                            MAlonzo.Code.Reflection.Utils.Metas.d_findMetas_10
                                                            v8))
                                                      (coe
                                                         (\ v9 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                              () erased
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))))))
                                (coe v6))
                             (coe
                                MAlonzo.Code.Class.MonadTC.du_logAndError1_740
                                (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8) (coe ())
                                (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                (coe
                                   ("No constructors were able to solve the goal!"
                                    ::
                                    Data.Text.Text))))))
         _ -> coe v3)
-- Tactic.Constrs._.tryConstrsᵗ
d_tryConstrs'7511'_56 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_tryConstrs'7511'_56 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe
         d_tryConstrsWith''_20 (coe v1)
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 () erased
                 (coe
                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                    (coe ("Leaf reached!" :: Data.Text.Text))
                    (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Tactic.Constrs._.tryConstrsWith
d_tryConstrsWith_60 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  Integer ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_tryConstrsWith_60 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_tryConstrsWith''_20 (coe v1) (coe v2))
-- Tactic.Constrs._.tryConstrs
d_tryConstrs_66 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_tryConstrs_66 v0 = coe d_tryConstrs'7511'_56 (coe v0)
