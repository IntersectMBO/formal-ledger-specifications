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

module MAlonzo.Code.Tactic.Cong where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Reflection.AST.AlphaEquality
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.Literal
import qualified MAlonzo.Code.Reflection.AST.Term
import qualified MAlonzo.Code.Reflection.TCM.Utilities
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Tactic.Cong.⌞_⌟
d_'8990'_'8991'_8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_'8990'_'8991'_8 ~v0 ~v1 v2 = du_'8990'_'8991'_8 v2
du_'8990'_'8991'_8 :: AgdaAny -> AgdaAny
du_'8990'_'8991'_8 v0 = coe v0
-- Tactic.Cong.varDescend
d_varDescend_12 :: Integer -> Integer -> Integer
d_varDescend_12 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
      (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v1)
-- Tactic.Cong.patternDescend
d_patternDescend_18 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_patternDescend_18 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.Base.du_map'8321'_138
             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v2))
             (d_patternsDescend_20 (coe v0) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v0)
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                (coe d_varDescend_12 (coe v0) (coe v2)))
             (coe addInt (coe (1 :: Integer)) (coe v0))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_256 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v0)
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v0)
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264
                (coe d_varDescend_12 (coe v0) (coe v2)))
             (coe addInt (coe (1 :: Integer)) (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.patternsDescend
d_patternsDescend_20 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_patternsDescend_20 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v0)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             d_patternsDescend_20
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe d_patternDescend_18 (coe v0) (coe v5)))
                             (coe v3))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          d_patternsDescend_20
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe d_patternDescend_18 (coe v0) (coe v5)))
                          (coe v3)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.notEqualityError
d_notEqualityError_70 ::
  () -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_notEqualityError_70 ~v0 v1 = du_notEqualityError_70 v1
du_notEqualityError_70 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_notEqualityError_70 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
            (coe
               ("Cannot rewrite a goal that is not equality: "
                ::
                Data.Text.Text)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v0))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Cong.unificationError
d_unificationError_76 :: () -> AgdaAny -> AgdaAny -> AgdaAny
d_unificationError_76 ~v0 v1 v2 = du_unificationError_76 v1 v2
du_unificationError_76 :: AgdaAny -> AgdaAny -> AgdaAny
du_unificationError_76 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased v0
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased v1
           (\ v3 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_344 () erased
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                      (coe ("cong! failed, tried:\n" :: Data.Text.Text)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v2))
                      (coe
                         du_'46'extendedlambda0_88 (coe v3)
                         (coe
                            MAlonzo.Code.Reflection.AST.Term.d__'8799'__224 (coe v2)
                            (coe v3)))))))
-- Tactic.Cong..extendedlambda0
d_'46'extendedlambda0_88 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308]
d_'46'extendedlambda0_88 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'46'extendedlambda0_88 v4 v5
du_'46'extendedlambda0_88 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_ErrorPart_308]
du_'46'extendedlambda0_88 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
        -> if coe v2
             then coe
                    seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             else coe
                    seq (coe v3)
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_strErr_310
                          (coe ("\n" :: Data.Text.Text)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_termErr_312 (coe v0))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.EqualityGoal
d_EqualityGoal_90 = ()
data T_EqualityGoal_90
  = C_equals_108 MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
                 MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
                 MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
                 MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
-- Tactic.Cong.EqualityGoal.level
d_level_100 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_level_100 v0
  = case coe v0 of
      C_equals_108 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.EqualityGoal.type
d_type_102 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_type_102 v0
  = case coe v0 of
      C_equals_108 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.EqualityGoal.lhs
d_lhs_104 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_lhs_104 v0
  = case coe v0 of
      C_equals_108 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.EqualityGoal.rhs
d_rhs_106 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_rhs_106 v0
  = case coe v0 of
      C_equals_108 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Cong.destructEqualityGoal
d_destructEqualityGoal_110 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_destructEqualityGoal_110 v0
  = let v1 = coe du_notEqualityError_70 (coe v0) in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> case coe v2 of
                MAlonzo.RTE.QName 12 1335258922519917603 _ _
                  -> case coe v3 of
                       (:) v4 v5
                         -> case coe v5 of
                              (:) v6 v7
                                -> case coe v7 of
                                     (:) v8 v9
                                       -> case coe v9 of
                                            (:) v10 v11
                                              -> case coe v11 of
                                                   []
                                                     -> coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                          () erased
                                                          (coe
                                                             C_equals_108
                                                             (coe
                                                                MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                                (coe v6))
                                                             (coe
                                                                MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                                (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                                (coe v10)))
                                                   _ -> coe v1
                                            _ -> coe v1
                                     _ -> coe v1
                              _ -> coe v1
                       _ -> coe v1
                _ -> coe v1
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v2 v3
           -> coe
                MAlonzo.Code.Agda.Builtin.Reflection.du_blockOnMeta_626 (coe ())
                (coe v2)
         _ -> coe v1)
-- Tactic.Cong.`cong
d_'96'cong_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'96'cong_136 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 v0 erased v6)
      (\ v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 () erased v0)
           (\ v8 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 () erased v1)
                (\ v9 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 v0 erased v2)
                     (\ v10 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                          erased
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 v0 erased v3)
                          (\ v11 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                  (coe
                                     (MAlonzo.RTE.QName
                                        (54 :: Integer) (6189151057044369179 :: Integer)
                                        "Relation.Binary.PropositionalEquality.Core.cong"
                                        (MAlonzo.RTE.Fixity
                                           MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                        (coe v8))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                           (coe v9))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                              (coe d_level_100 (coe v4)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                                 (coe d_type_102 (coe v4)))
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
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                          (coe ("\981" :: Data.Text.Text))
                                                          (coe v5))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                                       (coe v10))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                                          (coe v11))
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
                                                             (coe v7))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
-- Tactic.Cong._.level
d_level_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_level_154 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_level_154 v4
du_level_154 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_level_154 v0 = coe d_level_100 (coe v0)
-- Tactic.Cong._.lhs
d_lhs_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_lhs_156 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_lhs_156 v4
du_lhs_156 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_lhs_156 v0 = coe d_lhs_104 (coe v0)
-- Tactic.Cong._.rhs
d_rhs_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_rhs_158 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_rhs_158 v4
du_rhs_158 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_rhs_158 v0 = coe d_rhs_106 (coe v0)
-- Tactic.Cong._.type
d_type_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_type_160 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_type_160 v4
du_type_160 ::
  T_EqualityGoal_90 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_type_160 v0 = coe d_type_102 (coe v0)
-- Tactic.Cong.antiUnify
d_antiUnify_172 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_antiUnify_172 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v4 v5
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v6 v7
                  -> let v8 = eqInt (coe v4) (coe v6) in
                     coe
                       (let v9 = d_antiUnifyArgs_174 (coe v0) (coe v5) (coe v7) in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                               -> if coe v8
                                    then coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                           (coe d_varDescend_12 (coe v0) (coe v4)) (coe v10)
                                    else coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                           (coe v10)
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v4 v5
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v6 v7
                  -> let v8
                           = coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v4 v6 in
                     coe
                       (let v9 = d_antiUnifyArgs_174 (coe v0) (coe v5) (coe v7) in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                               -> if coe v8
                                    then coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v4)
                                           (coe v10)
                                    else coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                  -> let v8
                           = let v8
                                   = coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.d_primQNameEquality_8 v4
                                       v6 in
                             coe
                               (let v9 = d_antiUnifyArgs_174 (coe v0) (coe v5) (coe v7) in
                                coe
                                  (case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                       -> if coe v8
                                            then coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe v4) (coe v10)
                                            else coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     _ -> MAlonzo.RTE.mazUnreachableError)) in
                     coe
                       (case coe v6 of
                          MAlonzo.RTE.QName 8 8376517378291252342 _ _
                            -> case coe v7 of
                                 (:) v9 v10
                                   -> case coe v10 of
                                        (:) v11 v12
                                          -> case coe v12 of
                                               (:) v13 v14
                                                 -> case coe v13 of
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v15 v16
                                                        -> case coe v14 of
                                                             []
                                                               -> coe
                                                                    d_antiUnify_172 (coe v0)
                                                                    (coe v1) (coe v16)
                                                             _ -> coe v8
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> coe v8
                                        _ -> coe v8
                                 _ -> coe v8
                          _ -> coe v8)
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v4 v5
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v6 v7
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v8 v9
                         -> case coe v9 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v10 v11
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 (coe v4)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 (coe v6)
                                        (coe
                                           d_antiUnify_172
                                           (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v7)
                                           (coe v11)))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> coe v3
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v4 v5
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v6 v7
                  -> let v8 = d_antiUnifyClauses_176 (coe v0) (coe v4) (coe v6) in
                     coe
                       (let v9 = d_antiUnifyArgs_174 (coe v0) (coe v5) (coe v7) in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                               -> case coe v9 of
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
                                      -> coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                           (coe v10) (coe v11)
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                      -> coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v4 v5
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                  -> case coe v5 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v8 v9
                         -> case coe v2 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v10 v11
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v12 v13
                                       -> case coe v11 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v14 v15
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe v6)
                                                      (coe
                                                         d_antiUnify_172 (coe v0) (coe v7)
                                                         (coe v13)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                      (coe v8)
                                                      (coe
                                                         d_antiUnify_172
                                                         (coe addInt (coe (1 :: Integer)) (coe v0))
                                                         (coe v9) (coe v15)))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v3
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v4
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v5
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v6
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_set_220 v7
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
                                        (coe d_antiUnify_172 (coe v0) (coe v5) (coe v7)))
                              _ -> coe v3
                       _ -> coe v3
                MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224 v5
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v6
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_lit_224 v7
                                -> let v8 = eqInt (coe v5) (coe v7) in
                                   coe
                                     (if coe v8
                                        then coe v1
                                        else coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                               (coe v0)
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              _ -> coe v3
                       _ -> coe v3
                MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_232 v5
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v6
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_propLit_232 v7
                                -> let v8 = eqInt (coe v5) (coe v7) in
                                   coe
                                     (if coe v8
                                        then coe v1
                                        else coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                               (coe v0)
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              _ -> coe v3
                       _ -> coe v3
                MAlonzo.Code.Agda.Builtin.Reflection.C_inf_236 v5
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v6
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_inf_236 v7
                                -> let v8 = eqInt (coe v5) (coe v7) in
                                   coe
                                     (if coe v8
                                        then coe v1
                                        else coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                               (coe v0)
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                              _ -> coe v3
                       _ -> coe v3
                MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_238
                  -> case coe v2 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206 v5
                         -> case coe v5 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_238 -> coe v2
                              _ -> coe v3
                       _ -> coe v3
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v4
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210 v5
                  -> let v6
                           = coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_isYes_122
                               (coe
                                  MAlonzo.Code.Reflection.AST.Literal.d__'8799'__48 (coe v4)
                                  (coe v5)) in
                     coe
                       (if coe v6
                          then coe v1
                          else coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v4 v5
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v6 v7
                  -> let v8
                           = coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_primMetaEquality_40 v4 v6 in
                     coe
                       (let v9 = d_antiUnifyArgs_174 (coe v0) (coe v5) (coe v7) in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                               -> if coe v8
                                    then coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v4)
                                           (coe v10)
                                    else coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                             _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 -> coe v2
                _ -> coe v3
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Cong.antiUnifyArgs
d_antiUnifyArgs_174 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_antiUnifyArgs_174 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         []
           -> case coe v2 of
                [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
                _ -> coe v3
         (:) v4 v5
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                  -> case coe v2 of
                       (:) v8 v9
                         -> case coe v8 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
                                -> coe
                                     MAlonzo.Code.Data.Maybe.Base.du_map_64
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v6)
                                           (coe d_antiUnify_172 (coe v0) (coe v7) (coe v11))))
                                     (d_antiUnifyArgs_174 (coe v0) (coe v5) (coe v9))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> coe v3
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Cong.antiUnifyClauses
d_antiUnifyClauses_176 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] ->
  Maybe [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_antiUnifyClauses_176 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) in
    coe
      (case coe v1 of
         (:) v4 v5
           -> case coe v2 of
                (:) v6 v7
                  -> coe
                       MAlonzo.Code.Data.Maybe.Base.du_ap_68
                       (coe
                          MAlonzo.Code.Data.Maybe.Base.du_map_64
                          (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
                          (d_antiUnifyClause_178 (coe v0) (coe v4) (coe v6)))
                       (d_antiUnifyClauses_176 (coe v0) (coe v5) (coe v7))
                _ -> coe v3
         _ -> coe v3)
-- Tactic.Cong.antiUnifyClause
d_antiUnifyClause_178 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_antiUnifyClause_178 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v4 v5 v6
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v7 v8 v9
                  -> coe
                       MAlonzo.Code.Data.Maybe.Base.du_when_88
                       (coe
                          MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                          (coe
                             MAlonzo.Code.Reflection.AST.AlphaEquality.d__'61'α'61''45'Telescope__48
                             (coe v4) (coe v7))
                          (coe
                             MAlonzo.Code.Reflection.AST.AlphaEquality.d__'61'α'61''45'ArgsPattern__66
                             (coe v5) (coe v8)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 (coe v4)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe d_patternsDescend_20 (coe v0) (coe v5)))
                          (coe
                             d_antiUnify_172
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe d_patternsDescend_20 (coe v0) (coe v5)))
                             (coe v6) (coe v9)))
                _ -> coe v3
         MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v4 v5
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v6 v7
                  -> coe
                       MAlonzo.Code.Data.Maybe.Base.du_when_88
                       (coe
                          MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                          (coe
                             MAlonzo.Code.Reflection.AST.AlphaEquality.d__'61'α'61''45'Telescope__48
                             (coe v4) (coe v6))
                          (coe
                             MAlonzo.Code.Reflection.AST.AlphaEquality.d__'61'α'61''45'ArgsPattern__66
                             (coe v5) (coe v7)))
                       (coe v1)
                _ -> coe v3
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Cong.cong!
d_cong'33'_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_cong'33'_622 v0 ~v1 v2 v3 ~v4 v5 = du_cong'33'_622 v0 v2 v3 v5
du_cong'33'_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_cong'33'_622 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withNormalisation_428 ()
      erased (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
         erased
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_346 v3)
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased (d_destructEqualityGoal_110 (coe v4))
              (\ v5 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                      erased
                      (d_'96'cong_136
                         (coe v0) erased (coe v1) (coe v2) (coe v5)
                         (coe
                            d_antiUnify_172 (coe (0 :: Integer)) (coe d_lhs_104 (coe v5))
                            (coe d_rhs_106 (coe v5)))
                         erased)
                      (\ v6 ->
                         coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v6 v3))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_catchTC_358 () erased
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                         erased
                         (d_'96'cong_136
                            (coe v0) erased (coe v1) (coe v2) (coe v5)
                            (coe
                               d_antiUnify_172 (coe (0 :: Integer)) (coe d_rhs_106 (coe v5))
                               (coe d_lhs_104 (coe v5)))
                            erased)
                         (\ v6 ->
                            coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v6 v3))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                         erased
                         (MAlonzo.Code.Reflection.TCM.Utilities.d_blockOnMetas_6 (coe v4))
                         (\ v6 ->
                            coe
                              du_unificationError_76
                              (coe
                                 d_'96'cong_136 (coe v0) erased (coe v1) (coe v2) (coe v5)
                                 (coe
                                    d_antiUnify_172 (coe (0 :: Integer)) (coe d_lhs_104 (coe v5))
                                    (coe d_rhs_106 (coe v5)))
                                 erased)
                              (coe
                                 d_'96'cong_136 (coe v0) erased (coe v1) (coe v2) (coe v5)
                                 (coe
                                    d_antiUnify_172 (coe (0 :: Integer)) (coe d_rhs_106 (coe v5))
                                    (coe d_lhs_104 (coe v5)))
                                 erased)))))))
