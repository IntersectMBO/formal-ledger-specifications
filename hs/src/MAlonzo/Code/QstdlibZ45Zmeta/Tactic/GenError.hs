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

module MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Meta.Init
import qualified MAlonzo.Code.Reflection.AST.DeBruijn
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Reflection.Tactic
import qualified MAlonzo.Code.Reflection.Utils.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder

-- stdlib-meta.Tactic.GenError.decideOne
d_decideOne_8 ::
  () ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_decideOne_8 ~v0 v1 = du_decideOne_8 v1
du_decideOne_8 ::
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_decideOne_8 v0
  = coe MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v0)
-- stdlib-meta.Tactic.GenError.vArgsOf
d_vArgsOf_12 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_vArgsOf_12 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> let v7 = d_vArgsOf_12 (coe v2) in
                         coe
                           (case coe v5 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                -> case coe v6 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                              -> case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                     -> coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe v4) (coe d_vArgsOf_12 (coe v2))
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib-meta.Tactic.GenError.joinMsgs
d_joinMsgs_20 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_joinMsgs_20 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.String.Base.d__'43''43'__20 v0
              (coe
                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                 (" \215 " :: Data.Text.Text) v1) in
    coe
      (case coe v1 of
         l | (==) l ("" :: Data.Text.Text) -> coe v0
         _ -> coe v2)
-- stdlib-meta.Tactic.GenError.genError'
d_genError''_34 :: MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genError''_34
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
      (coe ("genError" :: Data.Text.Text))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Reflection.TCI.d_inferType_102
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                 v0)
              (\ v1 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                   MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                   (coe
                      MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_formatErrorParts_460
                         (coe
                            MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v1)))))
                   (\ v2 ->
                      coe
                        MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                        (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                        (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v2))))
                   v0)))
-- stdlib-meta.Tactic.GenError._.genError
d_genError_46 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genError_46 v0
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_genError''_34)
-- stdlib-meta.Tactic.GenError.unwrapNeg
d_unwrapNeg_48 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_unwrapNeg_48 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> case coe v2 of
                MAlonzo.RTE.QName 24 13644016371775158408 _ _
                  -> let v4 = d_vArgsOf_12 (coe v3) in
                     coe
                       (case coe v4 of
                          (:) v5 v6
                            -> case coe v6 of
                                 [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v5)
                                 _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                          _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                _ -> coe v1
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
                  -> case coe v3 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v6 v7
                         -> case coe v7 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v8 v9
                                -> case coe v8 of
                                     MAlonzo.RTE.QName 6 15304854876389679301 _ _
                                       -> case coe v9 of
                                            []
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe v5)
                                            _ -> coe v1
                                     _ -> coe v1
                              _ -> coe v1
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- stdlib-meta.Tactic.GenError.truePat
d_truePat_64 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_truePat_64
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe ("" :: Data.Text.Text))
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
            (coe
               (MAlonzo.RTE.QName
                  (32 :: Integer) (16368259409245829246 :: Integer)
                  "Relation.Nullary.Decidable.Core._because_"
                  (MAlonzo.RTE.Fixity
                     MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
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
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                     (coe
                        (MAlonzo.RTE.QName
                           (10 :: Integer) (4305008439024043551 :: Integer)
                           "Agda.Builtin.Bool.Bool.true"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                        (coe (0 :: Integer))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- stdlib-meta.Tactic.GenError.falsePat
d_falsePat_66 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_falsePat_66
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe ("" :: Data.Text.Text))
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
            (coe
               (MAlonzo.RTE.QName
                  (32 :: Integer) (16368259409245829246 :: Integer)
                  "Relation.Nullary.Decidable.Core._because_"
                  (MAlonzo.RTE.Fixity
                     MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
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
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                     (coe
                        (MAlonzo.RTE.QName
                           (8 :: Integer) (4305008439024043551 :: Integer)
                           "Agda.Builtin.Bool.Bool.false"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                        (coe (0 :: Integer))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- stdlib-meta.Tactic.GenError.leaf
d_leaf_68 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_leaf_68 v0 ~v1 v2 v3 = du_leaf_68 v0 v2 v3
du_leaf_68 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_leaf_68 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
      (coe du_strictAtTop_80 v0 (coe du_decided_88 (coe v0) (coe v1)) v2)
      (coe du_unconditional_84 (coe v0) (coe v1) (coe v2))
-- stdlib-meta.Tactic.GenError._.strictAtTop
d_strictAtTop_80 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_strictAtTop_80 v0 ~v1 ~v2 = du_strictAtTop_80 v0
du_strictAtTop_80 ::
  Integer ->
  (MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny) ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_strictAtTop_80 v0
  = case coe v0 of
      0 -> coe
             (\ v1 v2 ->
                coe
                  v1
                  (coe
                     MAlonzo.Code.Class.MonadTC.C_constructor_66
                     (coe MAlonzo.Code.Class.MonadTC.d_normalisation_44 (coe v2))
                     (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_46 (coe v2))
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                     (coe MAlonzo.Code.Class.MonadTC.d_reduction_50 (coe v2))
                     (coe MAlonzo.Code.Class.MonadTC.d_globalContext_52 (coe v2))
                     (coe MAlonzo.Code.Class.MonadTC.d_localContext_54 (coe v2))
                     (coe MAlonzo.Code.Class.MonadTC.d_goal_56 (coe v2))
                     (coe MAlonzo.Code.Class.MonadTC.d_options_58 (coe v2))))
      _ -> coe (\ v1 -> v1)
-- stdlib-meta.Tactic.GenError._.unconditional
d_unconditional_84 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_unconditional_84 v0 ~v1 v2 v3 = du_unconditional_84 v0 v2 v3
du_unconditional_84 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_unconditional_84 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.d_formatErrorParts_460
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                  (coe ("\172 " :: Data.Text.Text)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312
                     (coe MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96 v0 v1))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe v2))
      (\ v3 ->
         coe
           MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
           MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6
           MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10
           MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
           MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v3)))
           v2)
-- stdlib-meta.Tactic.GenError._.decided
d_decided_88 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_decided_88 v0 ~v1 v2 v3 = du_decided_88 v0 v2 v3
du_decided_88 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
du_decided_88 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Reflection.TCI.du_liftTC_66 (coe ())
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.d_formatErrorParts_460
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                  (coe ("\172 " :: Data.Text.Text)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312
                     (coe MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96 v0 v1))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe v2))
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
           MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () ()
           (coe
              MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
              (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
              (coe MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
              (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
              (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8))
           (coe
              MAlonzo.Code.Tactic.ClauseBuilder.du_caseMatch_508
              (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
              (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
              (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                 (coe
                    (MAlonzo.RTE.QName
                       (8 :: Integer) (4251189518202500422 :: Integer)
                       "stdlib-meta.Tactic.GenError.decideOne"
                       (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                       (coe MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96 v0 v1))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                      (coe
                         MAlonzo.Code.Tactic.ClauseBuilder.C_MatchExpr_304
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_truePat_64)
                               (coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_string_144
                                           (coe ("" :: Data.Text.Text)))))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_falsePat_66)
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_string_144
                                              (coe v3))))))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
           v2)
-- stdlib-meta.Tactic.GenError.buildLevel
d_buildLevel_94 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_buildLevel_94 v0 v1 v2 v3
  = let v4 = coe du_leaf_68 (coe v1) (coe v3) in
    coe
      (case coe v0 of
         _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
             let v5 = subInt (coe v0) (coe (1 :: Integer)) in
             coe
               (case coe v3 of
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                    -> case coe v6 of
                         MAlonzo.RTE.QName 76 14176793942586333973 _ _
                           -> let v8 = d_vArgsOf_12 (coe v7) in
                              coe
                                (let v9
                                       = coe
                                           du_leaf_68 (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                              (coe
                                                 (MAlonzo.RTE.QName
                                                    (76 :: Integer)
                                                    (14176793942586333973 :: Integer)
                                                    "Data.Product.Base._\215_"
                                                    (MAlonzo.RTE.Fixity
                                                       MAlonzo.RTE.RightAssoc
                                                       (MAlonzo.RTE.Related (2.0 :: Double)))))
                                              (coe v7)) in
                                 coe
                                   (case coe v8 of
                                      (:) v10 v11
                                        -> case coe v11 of
                                             (:) v12 v13
                                               -> case coe v13 of
                                                    []
                                                      -> coe
                                                           (\ v14 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                                () () erased erased
                                                                (coe
                                                                   MAlonzo.Code.Reflection.TCI.du_liftTC_66
                                                                   (coe ())
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.d_formatErrorParts_460
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                                                                            (coe
                                                                               ("\172 "
                                                                                ::
                                                                                Data.Text.Text)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96
                                                                                  v1 v10))
                                                                            (coe v13))))
                                                                   (coe v14))
                                                                (\ v15 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                     MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Class.MonadTC.du_newMeta_396
                                                                        MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                     (\ v16 ->
                                                                        coe
                                                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                          MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                          () erased () erased
                                                                          (coe
                                                                             MAlonzo.Code.Class.MonadTC.du_extendContext_676
                                                                             MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                                                             ()
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   (""
                                                                                    ::
                                                                                    Data.Text.Text))
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
                                                                                   (coe v16)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.MonadTC.du_newMeta_396
                                                                                MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                                                                (coe
                                                                                   MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96
                                                                                   (addInt
                                                                                      (coe
                                                                                         (1 ::
                                                                                            Integer))
                                                                                      (coe v1))
                                                                                   v2)))
                                                                          (\ v17 ->
                                                                             coe
                                                                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                               MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                               () erased () erased
                                                                               (coe
                                                                                  MAlonzo.Code.Class.MonadTC.du_newMeta_396
                                                                                  MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                               (\ v18 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                    MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4
                                                                                    () erased ()
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.MonadTC.du_extendContext_676
                                                                                       MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8
                                                                                       ()
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             (""
                                                                                              ::
                                                                                              Data.Text.Text))
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
                                                                                                v18)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.MonadTC.du_newMeta_396
                                                                                          MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6
                                                                                          (coe
                                                                                             MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96
                                                                                             (addInt
                                                                                                (coe
                                                                                                   (1 ::
                                                                                                      Integer))
                                                                                                (coe
                                                                                                   v1))
                                                                                             v2)))
                                                                                    (\ v19 ->
                                                                                       coe
                                                                                         MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                                                                         (coe
                                                                                            MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                                                         (coe ())
                                                                                         (coe ())
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
                                                                                            (coe
                                                                                               MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                                                            (coe ())
                                                                                            (coe ())
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.MonadTC.du_unifyWithGoal_824
                                                                                               (coe
                                                                                                  MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Tactic.ClauseBuilder.du_caseMatch_508
                                                                                               (coe
                                                                                                  MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_6)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                  (coe
                                                                                                     (MAlonzo.RTE.QName
                                                                                                        (8 ::
                                                                                                           Integer)
                                                                                                        (4251189518202500422 ::
                                                                                                           Integer)
                                                                                                        "stdlib-meta.Tactic.GenError.decideOne"
                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                           MAlonzo.RTE.Unrelated)))
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
                                                                                                           MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_96
                                                                                                           v1
                                                                                                           v10))
                                                                                                     (coe
                                                                                                        v13)))
                                                                                               (coe
                                                                                                  (\ v20 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                                                       ()
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Tactic.ClauseBuilder.C_MatchExpr_304
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (coe
                                                                                                                   d_truePat_64)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                      (coe
                                                                                                                         v17))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      d_falsePat_66)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                            (coe
                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                  (20 ::
                                                                                                                                     Integer)
                                                                                                                                  (4251189518202500422 ::
                                                                                                                                     Integer)
                                                                                                                                  "stdlib-meta.Tactic.GenError.joinMsgs"
                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                     MAlonzo.RTE.Unrelated)))
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
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_string_144
                                                                                                                                        (coe
                                                                                                                                           v15))))
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
                                                                                                                                        v19))
                                                                                                                                  (coe
                                                                                                                                     v13)))))))
                                                                                                                (coe
                                                                                                                   v13))))))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                                                            (coe ())
                                                                                            (coe ())
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.MonadTC.du_extendContext_676
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                                                               ()
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     (""
                                                                                                      ::
                                                                                                      Data.Text.Text))
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
                                                                                                        v16)))
                                                                                               (\ v20 ->
                                                                                                  coe
                                                                                                    d_buildLevel_94
                                                                                                    v5
                                                                                                    (addInt
                                                                                                       (coe
                                                                                                          (1 ::
                                                                                                             Integer))
                                                                                                       (coe
                                                                                                          v1))
                                                                                                    v2
                                                                                                    v12
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.MonadTC.C_constructor_66
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_normalisation_44
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_reconstruction_46
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_noConstraints_48
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_reduction_50
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_globalContext_52
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_localContext_54
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                                                          (coe
                                                                                                             v17))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_options_58
                                                                                                          (coe
                                                                                                             v20)))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.MonadTC.du_extendContext_676
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
                                                                                               ()
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     (""
                                                                                                      ::
                                                                                                      Data.Text.Text))
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
                                                                                                        v18)))
                                                                                               (\ v20 ->
                                                                                                  coe
                                                                                                    d_buildLevel_94
                                                                                                    v5
                                                                                                    (addInt
                                                                                                       (coe
                                                                                                          (1 ::
                                                                                                             Integer))
                                                                                                       (coe
                                                                                                          v1))
                                                                                                    v2
                                                                                                    v12
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.MonadTC.C_constructor_66
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_normalisation_44
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_reconstruction_46
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_noConstraints_48
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_reduction_50
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_globalContext_52
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_localContext_54
                                                                                                          (coe
                                                                                                             v20))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                                                          (coe
                                                                                                             v19))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.MonadTC.d_options_58
                                                                                                          (coe
                                                                                                             v20))))))))))
                                                                     v14))
                                                    _ -> coe v9
                                             _ -> coe v9
                                      _ -> coe v9))
                         _ -> coe v4
                  _ -> coe v4)
         _ -> coe v4)
-- stdlib-meta.Tactic.GenError.genErrors'
d_genErrors''_150 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_26 -> AgdaAny
d_genErrors''_150 v0
  = coe
      MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_318
      (coe
         MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_108
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe
         MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_122
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_146) (coe ())
      (coe ("genErrors" :: Data.Text.Text))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased (coe MAlonzo.Code.Reflection.TCI.d_inferType_102 v0 v1)
              (\ v2 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                   erased
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                      (d_unwrapNeg_48 (coe v2)))
                   (\ v3 ->
                      case coe v3 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                          -> coe
                               MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                               MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4 () erased () erased
                               (coe
                                  MAlonzo.Code.Class.MonadTC.du_goalTy_752
                                  (coe MAlonzo.Code.Meta.Init.d_iMonad'45'TC_4)
                                  (coe MAlonzo.Code.Meta.Init.d_iMonadTC'45'TCI_6)
                                  (coe MAlonzo.Code.Meta.Init.d_iMonadReader'45'TC_8))
                               (\ v5 ->
                                  d_buildLevel_94
                                    (coe (100 :: Integer)) (coe (0 :: Integer)) (coe v5) (coe v4))
                               v1
                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                          -> coe
                               MAlonzo.Code.Class.MonadError.d_error_26
                               MAlonzo.Code.Meta.Init.d_iMonadError'45'TC_10 () erased
                               (coe
                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                  (coe
                                     ("genErrors: argument is not of the form \172 (P \215 Q \215 ...)"
                                      ::
                                      Data.Text.Text))
                                  (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_20)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                               v1
                        _ -> MAlonzo.RTE.mazUnreachableError))))
-- stdlib-meta.Tactic.GenError._.genErrors
d_genErrors_168 ::
  MAlonzo.Code.Class.MonadTC.T_TCOptions_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genErrors_168 v0 v1
  = coe
      MAlonzo.Code.Reflection.Tactic.d_initTac_108 (coe v0)
      (coe d_genErrors''_150 (coe v1))
