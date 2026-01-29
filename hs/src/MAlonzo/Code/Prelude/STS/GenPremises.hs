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

module MAlonzo.Code.Prelude.STS.GenPremises where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Meta.Prelude
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument.Information
import qualified MAlonzo.Code.Reflection.AST.Argument.Visibility
import qualified MAlonzo.Code.Reflection.Utils.Args
import qualified MAlonzo.Code.Reflection.Utils.Core
import qualified MAlonzo.Code.Reflection.Utils.Debug
import qualified MAlonzo.Code.Reflection.Utils.Substitute

-- Prelude.STS.GenPremises._.errorP
d_errorP_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_errorP_90 v0 v1 v2
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.du_errorP_30
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
      v0 v2
-- Prelude.STS.GenPremises._.genSimpleDef
d_genSimpleDef_92 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_genSimpleDef_92
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_genSimpleDef_60
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises._.print
d_print_94 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_print_94
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_print_16
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises._.printContext
d_printContext_96 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_printContext_96
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printContext_42
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises._.printCurrentContext
d_printCurrentContext_98 :: AgdaAny
d_printCurrentContext_98
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printCurrentContext_58
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises._.printLn
d_printLn_100 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_printLn_100
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printLn_18
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises._.printLns
d_printLns_102 ::
  [MAlonzo.Code.Agda.Builtin.String.T_String_6] -> AgdaAny
d_printLns_102
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printLns_24
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises._.printS
d_printS_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Show.Core.T_Show_10 -> AgdaAny -> AgdaAny
d_printS_104 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.du_printS_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
      v2 v3
-- Prelude.STS.GenPremises._.printTerm
d_printTerm_106 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_printTerm_106
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printTerm_34
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Prelude.STS.GenPremises.iTC
d_iTC_108 :: MAlonzo.Code.Class.MonadTC.T_MonadTC_84
d_iTC_108 = coe MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_882
-- Prelude.STS.GenPremises.iTCE
d_iTCE_110 :: MAlonzo.Code.Class.MonadError.T_MonadError_16
d_iTCE_110
  = coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32
-- Prelude.STS.GenPremises.extendContextTel
d_extendContextTel_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_extendContextTel_112 v0 ~v1 = du_extendContextTel_112 v0
du_extendContextTel_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_extendContextTel_112 v0
  = coe du_'46'extendedlambda0_114 (coe v0)
-- Prelude.STS.GenPremises..extendedlambda0
d_'46'extendedlambda0_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_'46'extendedlambda0_114 v0 ~v1 v2
  = du_'46'extendedlambda0_114 v0 v2
du_'46'extendedlambda0_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_'46'extendedlambda0_114 v0 v1
  = case coe v1 of
      [] -> coe (\ v2 -> v2)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    (\ v6 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382 v0 erased
                         v4 v5 (coe du_extendContextTel_112 v0 v3 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises.reduceDef
d_reduceDef_122 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceDef_122 v0
  = let v1
          = coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v0 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe MAlonzo.Code.Agda.Builtin.Reflection.d_reduce_352 v0
         _ -> coe v1)
-- Prelude.STS.GenPremises._`∷_
d__'96''8759'__130 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d__'96''8759'__130 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 () erased v0)
      (\ v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
           erased
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_quoteTC_364 () erased v1)
           (\ v4 ->
              coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                   (coe
                      (MAlonzo.RTE.QName
                         (22 :: Integer) (15090436609435731260 :: Integer)
                         "Agda.Builtin.List.List._\8759_"
                         (MAlonzo.RTE.Fixity
                            MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (5.0 :: Double)))))
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
                         (coe v3))
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
                            (coe v4))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Prelude.STS.GenPremises.freeVars
d_freeVars_142 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_freeVars_142 = coe d_go_148 (coe (0 :: Integer))
-- Prelude.STS.GenPremises._.go
d_go_148 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_go_148 v0 = coe d_'46'extendedlambda2_162 (coe v0)
-- Prelude.STS.GenPremises._.goArg
d_goArg_150 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> [Integer]
d_goArg_150 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> coe d_go_148 v0 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises._.goAbs
d_goAbs_152 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 -> [Integer]
d_goAbs_152 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v2 v3
        -> coe d_go_148 v0 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises._.goArgs
d_goArgs_154 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_goArgs_154 v0 = coe d_'46'extendedlambda3_194 (coe v0)
-- Prelude.STS.GenPremises._.goCl
d_goCl_156 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> [Integer]
d_goCl_156 v0 = coe d_'46'extendedlambda4_202 (coe v0)
-- Prelude.STS.GenPremises._.goCls
d_goCls_158 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> [Integer]
d_goCls_158 v0 = coe d_'46'extendedlambda5_210 (coe v0)
-- Prelude.STS.GenPremises._..extendedlambda2
d_'46'extendedlambda2_162 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_'46'extendedlambda2_162 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
           -> coe
                MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                (coe
                   MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v3 v0))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
           -> coe d_goArgs_154 v0 v4
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe d_goArgs_154 v0 v4
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
           -> coe
                d_goAbs_152 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v3 v4
           -> coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                (coe d_goCls_158 v0 v3) (coe d_goArgs_154 v0 v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v3 v4
           -> coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32
                (coe d_goArg_150 (coe v0) (coe v3))
                (coe
                   d_goAbs_152 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4))
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
           -> coe d_goArgs_154 v0 v4
         _ -> coe v2)
-- Prelude.STS.GenPremises._..extendedlambda3
d_'46'extendedlambda3_194 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_'46'extendedlambda3_194 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32
             (coe d_goArg_150 (coe v0) (coe v2)) (coe d_goArgs_154 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises._..extendedlambda4
d_'46'extendedlambda4_202 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 -> [Integer]
d_'46'extendedlambda4_202 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v2 v3 v4
        -> coe
             d_go_148
             (addInt
                (coe MAlonzo.Code.Data.List.Base.du_length_268 v2) (coe v0))
             v4
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises._..extendedlambda5
d_'46'extendedlambda5_210 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160] -> [Integer]
d_'46'extendedlambda5_210 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe d_goCl_156 v0 v2)
             (coe d_goCls_158 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises.AbsTelescope
d_AbsTelescope_248 :: ()
d_AbsTelescope_248 = erased
-- Prelude.STS.GenPremises.absTelescope
d_absTelescope_250 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_absTelescope_250
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v1 v2
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Prelude.STS.GenPremises.telescopeAbs
d_telescopeAbs_258 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_telescopeAbs_258
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122))
-- Prelude.STS.GenPremises.showAbsTel
d_showAbsTel_260 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_showAbsTel_260 v0
  = coe
      MAlonzo.Code.Class.Show.Core.d_show_16
      MAlonzo.Code.Class.Show.Instances.d_Show'45'Tel_104
      (coe d_absTelescope_250 v0)
-- Prelude.STS.GenPremises.hasInstance
d_hasInstance_262 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hasInstance_262 v0
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_192
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
      (coe d_iTCE_110) (coe d_iTC_108) (coe ())
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (264 :: Integer) (10779521135412943468 :: Integer)
                  "Function.Base.it"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         v0)
-- Prelude.STS.GenPremises.whitelist
d_whitelist_264 :: [AgdaAny]
d_whitelist_264
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe
         (MAlonzo.RTE.QName
            (1124 :: Integer) (14287528571658597862 :: Integer)
            "Prelude.InferenceRules._\8729_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (-100.0 :: Double)))))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            (MAlonzo.RTE.QName
               (1130 :: Integer) (14287528571658597862 :: Integer)
               "Prelude.InferenceRules.\8729_"
               (MAlonzo.RTE.Fixity
                  MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-150.0 :: Double)))))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               (MAlonzo.RTE.QName
                  (4 :: Integer) (14287528571658597862 :: Integer)
                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                  (MAlonzo.RTE.Fixity
                     MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  (MAlonzo.RTE.QName
                     (6 :: Integer) (14287528571658597862 :: Integer)
                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                     (MAlonzo.RTE.Fixity
                        MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     (MAlonzo.RTE.QName
                        (8 :: Integer) (14287528571658597862 :: Integer)
                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                        (MAlonzo.RTE.Fixity
                           MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        (MAlonzo.RTE.QName
                           (10 :: Integer) (14287528571658597862 :: Integer)
                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                           (MAlonzo.RTE.Fixity
                              MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           (MAlonzo.RTE.QName
                              (12 :: Integer) (14287528571658597862 :: Integer)
                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                              (MAlonzo.RTE.Fixity
                                 MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              (MAlonzo.RTE.QName
                                 (14 :: Integer) (14287528571658597862 :: Integer)
                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 (MAlonzo.RTE.QName
                                    (16 :: Integer) (14287528571658597862 :: Integer)
                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc
                                       (MAlonzo.RTE.Related (-500.0 :: Double)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (18 :: Integer) (14287528571658597862 :: Integer)
                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc
                                          (MAlonzo.RTE.Related (-500.0 :: Double)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (20 :: Integer) (14287528571658597862 :: Integer)
                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc
                                             (MAlonzo.RTE.Related (-500.0 :: Double)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (22 :: Integer) (14287528571658597862 :: Integer)
                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc
                                                (MAlonzo.RTE.Related (-500.0 :: Double)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (24 :: Integer) (14287528571658597862 :: Integer)
                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc
                                                   (MAlonzo.RTE.Related (-500.0 :: Double)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (26 :: Integer) (14287528571658597862 :: Integer)
                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc
                                                      (MAlonzo.RTE.Related (-500.0 :: Double)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (28 :: Integer)
                                                      (14287528571658597862 :: Integer)
                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         (MAlonzo.RTE.Related (-500.0 :: Double)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (30 :: Integer)
                                                         (14287528571658597862 :: Integer)
                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            (MAlonzo.RTE.Related
                                                               (-500.0 :: Double)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (32 :: Integer)
                                                            (14287528571658597862 :: Integer)
                                                            "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               (MAlonzo.RTE.Related
                                                                  (-500.0 :: Double)))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            (MAlonzo.RTE.QName
                                                               (34 :: Integer)
                                                               (14287528571658597862 :: Integer)
                                                               "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  (MAlonzo.RTE.Related
                                                                     (-500.0 :: Double)))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               (MAlonzo.RTE.QName
                                                                  (36 :: Integer)
                                                                  (14287528571658597862 :: Integer)
                                                                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     (MAlonzo.RTE.Related
                                                                        (-500.0 :: Double)))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (38 :: Integer)
                                                                     (14287528571658597862 ::
                                                                        Integer)
                                                                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        (MAlonzo.RTE.Related
                                                                           (-500.0 :: Double)))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     (MAlonzo.RTE.QName
                                                                        (40 :: Integer)
                                                                        (14287528571658597862 ::
                                                                           Integer)
                                                                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                        (MAlonzo.RTE.Fixity
                                                                           MAlonzo.RTE.NonAssoc
                                                                           (MAlonzo.RTE.Related
                                                                              (-500.0 :: Double)))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        (MAlonzo.RTE.QName
                                                                           (42 :: Integer)
                                                                           (14287528571658597862 ::
                                                                              Integer)
                                                                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                           (MAlonzo.RTE.Fixity
                                                                              MAlonzo.RTE.NonAssoc
                                                                              (MAlonzo.RTE.Related
                                                                                 (-500.0 ::
                                                                                    Double)))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           (MAlonzo.RTE.QName
                                                                              (44 :: Integer)
                                                                              (14287528571658597862 ::
                                                                                 Integer)
                                                                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 (MAlonzo.RTE.Related
                                                                                    (-500.0 ::
                                                                                       Double)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              (MAlonzo.RTE.QName
                                                                                 (46 :: Integer)
                                                                                 (14287528571658597862 ::
                                                                                    Integer)
                                                                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    (MAlonzo.RTE.Related
                                                                                       (-500.0 ::
                                                                                          Double)))))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (48 :: Integer)
                                                                                    (14287528571658597862 ::
                                                                                       Integer)
                                                                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       (MAlonzo.RTE.Related
                                                                                          (-500.0 ::
                                                                                             Double)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (50 ::
                                                                                          Integer)
                                                                                       (14287528571658597862 ::
                                                                                          Integer)
                                                                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          (MAlonzo.RTE.Related
                                                                                             (-500.0 ::
                                                                                                Double)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (52 ::
                                                                                             Integer)
                                                                                          (14287528571658597862 ::
                                                                                             Integer)
                                                                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             (MAlonzo.RTE.Related
                                                                                                (-500.0 ::
                                                                                                   Double)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe
                                                                                          (MAlonzo.RTE.QName
                                                                                             (54 ::
                                                                                                Integer)
                                                                                             (14287528571658597862 ::
                                                                                                Integer)
                                                                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                (MAlonzo.RTE.Related
                                                                                                   (-500.0 ::
                                                                                                      Double)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (56 ::
                                                                                                   Integer)
                                                                                                (14287528571658597862 ::
                                                                                                   Integer)
                                                                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   (MAlonzo.RTE.Related
                                                                                                      (-500.0 ::
                                                                                                         Double)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                             (coe
                                                                                                (MAlonzo.RTE.QName
                                                                                                   (58 ::
                                                                                                      Integer)
                                                                                                   (14287528571658597862 ::
                                                                                                      Integer)
                                                                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                      (MAlonzo.RTE.Related
                                                                                                         (-500.0 ::
                                                                                                            Double)))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (60 ::
                                                                                                         Integer)
                                                                                                      (14287528571658597862 ::
                                                                                                         Integer)
                                                                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         (MAlonzo.RTE.Related
                                                                                                            (-500.0 ::
                                                                                                               Double)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                   (coe
                                                                                                      (MAlonzo.RTE.QName
                                                                                                         (62 ::
                                                                                                            Integer)
                                                                                                         (14287528571658597862 ::
                                                                                                            Integer)
                                                                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                            (MAlonzo.RTE.Related
                                                                                                               (-500.0 ::
                                                                                                                  Double)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                      (coe
                                                                                                         (MAlonzo.RTE.QName
                                                                                                            (64 ::
                                                                                                               Integer)
                                                                                                            (14287528571658597862 ::
                                                                                                               Integer)
                                                                                                            "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                               (MAlonzo.RTE.Related
                                                                                                                  (-500.0 ::
                                                                                                                     Double)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                         (coe
                                                                                                            (MAlonzo.RTE.QName
                                                                                                               (66 ::
                                                                                                                  Integer)
                                                                                                               (14287528571658597862 ::
                                                                                                                  Integer)
                                                                                                               "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  (MAlonzo.RTE.Related
                                                                                                                     (-500.0 ::
                                                                                                                        Double)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                            (coe
                                                                                                               (MAlonzo.RTE.QName
                                                                                                                  (68 ::
                                                                                                                     Integer)
                                                                                                                  (14287528571658597862 ::
                                                                                                                     Integer)
                                                                                                                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                     (MAlonzo.RTE.Related
                                                                                                                        (-500.0 ::
                                                                                                                           Double)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                               (coe
                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                     (70 ::
                                                                                                                        Integer)
                                                                                                                     (14287528571658597862 ::
                                                                                                                        Integer)
                                                                                                                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                        (MAlonzo.RTE.Related
                                                                                                                           (-500.0 ::
                                                                                                                              Double)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                  (coe
                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                        (72 ::
                                                                                                                           Integer)
                                                                                                                        (14287528571658597862 ::
                                                                                                                           Integer)
                                                                                                                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                           (MAlonzo.RTE.Related
                                                                                                                              (-500.0 ::
                                                                                                                                 Double)))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                     (coe
                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                           (74 ::
                                                                                                                              Integer)
                                                                                                                           (14287528571658597862 ::
                                                                                                                              Integer)
                                                                                                                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                              (MAlonzo.RTE.Related
                                                                                                                                 (-500.0 ::
                                                                                                                                    Double)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           (MAlonzo.RTE.QName
                                                                                                                              (76 ::
                                                                                                                                 Integer)
                                                                                                                              (14287528571658597862 ::
                                                                                                                                 Integer)
                                                                                                                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                 (MAlonzo.RTE.Related
                                                                                                                                    (-500.0 ::
                                                                                                                                       Double)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                           (coe
                                                                                                                              (MAlonzo.RTE.QName
                                                                                                                                 (78 ::
                                                                                                                                    Integer)
                                                                                                                                 (14287528571658597862 ::
                                                                                                                                    Integer)
                                                                                                                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                    (MAlonzo.RTE.Related
                                                                                                                                       (-500.0 ::
                                                                                                                                          Double)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                              (coe
                                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                                    (80 ::
                                                                                                                                       Integer)
                                                                                                                                    (14287528571658597862 ::
                                                                                                                                       Integer)
                                                                                                                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                       (MAlonzo.RTE.Related
                                                                                                                                          (-500.0 ::
                                                                                                                                             Double)))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                 (coe
                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                       (82 ::
                                                                                                                                          Integer)
                                                                                                                                       (14287528571658597862 ::
                                                                                                                                          Integer)
                                                                                                                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                          (MAlonzo.RTE.Related
                                                                                                                                             (-500.0 ::
                                                                                                                                                Double)))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                    (coe
                                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                                          (84 ::
                                                                                                                                             Integer)
                                                                                                                                          (14287528571658597862 ::
                                                                                                                                             Integer)
                                                                                                                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                             (MAlonzo.RTE.Related
                                                                                                                                                (-500.0 ::
                                                                                                                                                   Double)))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                       (coe
                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                             (86 ::
                                                                                                                                                Integer)
                                                                                                                                             (14287528571658597862 ::
                                                                                                                                                Integer)
                                                                                                                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                (MAlonzo.RTE.Related
                                                                                                                                                   (-500.0 ::
                                                                                                                                                      Double)))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                          (coe
                                                                                                                                             (MAlonzo.RTE.QName
                                                                                                                                                (88 ::
                                                                                                                                                   Integer)
                                                                                                                                                (14287528571658597862 ::
                                                                                                                                                   Integer)
                                                                                                                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                   (MAlonzo.RTE.Related
                                                                                                                                                      (-500.0 ::
                                                                                                                                                         Double)))))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                             (coe
                                                                                                                                                (MAlonzo.RTE.QName
                                                                                                                                                   (90 ::
                                                                                                                                                      Integer)
                                                                                                                                                   (14287528571658597862 ::
                                                                                                                                                      Integer)
                                                                                                                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                      (MAlonzo.RTE.Related
                                                                                                                                                         (-500.0 ::
                                                                                                                                                            Double)))))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                (coe
                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                      (92 ::
                                                                                                                                                         Integer)
                                                                                                                                                      (14287528571658597862 ::
                                                                                                                                                         Integer)
                                                                                                                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                         (MAlonzo.RTE.Related
                                                                                                                                                            (-500.0 ::
                                                                                                                                                               Double)))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                   (coe
                                                                                                                                                      (MAlonzo.RTE.QName
                                                                                                                                                         (94 ::
                                                                                                                                                            Integer)
                                                                                                                                                         (14287528571658597862 ::
                                                                                                                                                            Integer)
                                                                                                                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                                                                            (MAlonzo.RTE.Related
                                                                                                                                                               (-500.0 ::
                                                                                                                                                                  Double)))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                      (coe
                                                                                                                                                         (MAlonzo.RTE.QName
                                                                                                                                                            (96 ::
                                                                                                                                                               Integer)
                                                                                                                                                            (14287528571658597862 ::
                                                                                                                                                               Integer)
                                                                                                                                                            "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                                                                               (MAlonzo.RTE.Related
                                                                                                                                                                  (-500.0 ::
                                                                                                                                                                     Double)))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                         (coe
                                                                                                                                                            (MAlonzo.RTE.QName
                                                                                                                                                               (98 ::
                                                                                                                                                                  Integer)
                                                                                                                                                               (14287528571658597862 ::
                                                                                                                                                                  Integer)
                                                                                                                                                               "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                                                                  (MAlonzo.RTE.Related
                                                                                                                                                                     (-500.0 ::
                                                                                                                                                                        Double)))))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                            (coe
                                                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                                                  (100 ::
                                                                                                                                                                     Integer)
                                                                                                                                                                  (14287528571658597862 ::
                                                                                                                                                                     Integer)
                                                                                                                                                                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                                                     (MAlonzo.RTE.Related
                                                                                                                                                                        (-500.0 ::
                                                                                                                                                                           Double)))))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                               (coe
                                                                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                                                                     (102 ::
                                                                                                                                                                        Integer)
                                                                                                                                                                     (14287528571658597862 ::
                                                                                                                                                                        Integer)
                                                                                                                                                                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                                                                        (MAlonzo.RTE.Related
                                                                                                                                                                           (-500.0 ::
                                                                                                                                                                              Double)))))
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                  (coe
                                                                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                                                                        (104 ::
                                                                                                                                                                           Integer)
                                                                                                                                                                        (14287528571658597862 ::
                                                                                                                                                                           Integer)
                                                                                                                                                                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                                                                           (MAlonzo.RTE.Related
                                                                                                                                                                              (-500.0 ::
                                                                                                                                                                                 Double)))))
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                     (coe
                                                                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                                                                           (106 ::
                                                                                                                                                                              Integer)
                                                                                                                                                                           (14287528571658597862 ::
                                                                                                                                                                              Integer)
                                                                                                                                                                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                                                                              (MAlonzo.RTE.Related
                                                                                                                                                                                 (-500.0 ::
                                                                                                                                                                                    Double)))))
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                        (coe
                                                                                                                                                                           (MAlonzo.RTE.QName
                                                                                                                                                                              (108 ::
                                                                                                                                                                                 Integer)
                                                                                                                                                                              (14287528571658597862 ::
                                                                                                                                                                                 Integer)
                                                                                                                                                                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                                                                 (MAlonzo.RTE.Related
                                                                                                                                                                                    (-500.0 ::
                                                                                                                                                                                       Double)))))
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                           (coe
                                                                                                                                                                              (MAlonzo.RTE.QName
                                                                                                                                                                                 (110 ::
                                                                                                                                                                                    Integer)
                                                                                                                                                                                 (14287528571658597862 ::
                                                                                                                                                                                    Integer)
                                                                                                                                                                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                                                                    (MAlonzo.RTE.Related
                                                                                                                                                                                       (-500.0 ::
                                                                                                                                                                                          Double)))))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                              (coe
                                                                                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                                                                                    (112 ::
                                                                                                                                                                                       Integer)
                                                                                                                                                                                    (14287528571658597862 ::
                                                                                                                                                                                       Integer)
                                                                                                                                                                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                                                                       (MAlonzo.RTE.Related
                                                                                                                                                                                          (-500.0 ::
                                                                                                                                                                                             Double)))))
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                 (coe
                                                                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                                                                       (114 ::
                                                                                                                                                                                          Integer)
                                                                                                                                                                                       (14287528571658597862 ::
                                                                                                                                                                                          Integer)
                                                                                                                                                                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                                                                          (MAlonzo.RTE.Related
                                                                                                                                                                                             (-500.0 ::
                                                                                                                                                                                                Double)))))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                    (coe
                                                                                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                                                                                          (116 ::
                                                                                                                                                                                             Integer)
                                                                                                                                                                                          (14287528571658597862 ::
                                                                                                                                                                                             Integer)
                                                                                                                                                                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                                                                             (MAlonzo.RTE.Related
                                                                                                                                                                                                (-500.0 ::
                                                                                                                                                                                                   Double)))))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                       (coe
                                                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                                                             (118 ::
                                                                                                                                                                                                Integer)
                                                                                                                                                                                             (14287528571658597862 ::
                                                                                                                                                                                                Integer)
                                                                                                                                                                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                (MAlonzo.RTE.Related
                                                                                                                                                                                                   (-500.0 ::
                                                                                                                                                                                                      Double)))))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                          (coe
                                                                                                                                                                                             (MAlonzo.RTE.QName
                                                                                                                                                                                                (120 ::
                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                (14287528571658597862 ::
                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                   (MAlonzo.RTE.Related
                                                                                                                                                                                                      (-500.0 ::
                                                                                                                                                                                                         Double)))))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                             (coe
                                                                                                                                                                                                (MAlonzo.RTE.QName
                                                                                                                                                                                                   (122 ::
                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                   (14287528571658597862 ::
                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                      (MAlonzo.RTE.Related
                                                                                                                                                                                                         (-500.0 ::
                                                                                                                                                                                                            Double)))))
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                                                                      (124 ::
                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                      (14287528571658597862 ::
                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                         (MAlonzo.RTE.Related
                                                                                                                                                                                                            (-500.0 ::
                                                                                                                                                                                                               Double)))))
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      (MAlonzo.RTE.QName
                                                                                                                                                                                                         (126 ::
                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                         (14287528571658597862 ::
                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                            (MAlonzo.RTE.Related
                                                                                                                                                                                                               (-500.0 ::
                                                                                                                                                                                                                  Double)))))
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         (MAlonzo.RTE.QName
                                                                                                                                                                                                            (128 ::
                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                            (14287528571658597862 ::
                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                            "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                               (MAlonzo.RTE.Related
                                                                                                                                                                                                                  (-500.0 ::
                                                                                                                                                                                                                     Double)))))
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            (MAlonzo.RTE.QName
                                                                                                                                                                                                               (130 ::
                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                               (14287528571658597862 ::
                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                               "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                  (MAlonzo.RTE.Related
                                                                                                                                                                                                                     (-500.0 ::
                                                                                                                                                                                                                        Double)))))
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                                                                                                  (132 ::
                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                  (14287528571658597862 ::
                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                     (MAlonzo.RTE.Related
                                                                                                                                                                                                                        (-500.0 ::
                                                                                                                                                                                                                           Double)))))
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                                                                                                                     (134 ::
                                                                                                                                                                                                                        Integer)
                                                                                                                                                                                                                     (14287528571658597862 ::
                                                                                                                                                                                                                        Integer)
                                                                                                                                                                                                                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                        (MAlonzo.RTE.Related
                                                                                                                                                                                                                           (-500.0 ::
                                                                                                                                                                                                                              Double)))))
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                                                                                                                        (136 ::
                                                                                                                                                                                                                           Integer)
                                                                                                                                                                                                                        (14287528571658597862 ::
                                                                                                                                                                                                                           Integer)
                                                                                                                                                                                                                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                           (MAlonzo.RTE.Related
                                                                                                                                                                                                                              (-500.0 ::
                                                                                                                                                                                                                                 Double)))))
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                                                                                                                           (138 ::
                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                           (14287528571658597862 ::
                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                              (MAlonzo.RTE.Related
                                                                                                                                                                                                                                 (-500.0 ::
                                                                                                                                                                                                                                    Double)))))
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           (MAlonzo.RTE.QName
                                                                                                                                                                                                                              (140 ::
                                                                                                                                                                                                                                 Integer)
                                                                                                                                                                                                                              (14287528571658597862 ::
                                                                                                                                                                                                                                 Integer)
                                                                                                                                                                                                                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                 (MAlonzo.RTE.Related
                                                                                                                                                                                                                                    (-500.0 ::
                                                                                                                                                                                                                                       Double)))))
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              (MAlonzo.RTE.QName
                                                                                                                                                                                                                                 (142 ::
                                                                                                                                                                                                                                    Integer)
                                                                                                                                                                                                                                 (14287528571658597862 ::
                                                                                                                                                                                                                                    Integer)
                                                                                                                                                                                                                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                    (MAlonzo.RTE.Related
                                                                                                                                                                                                                                       (-500.0 ::
                                                                                                                                                                                                                                          Double)))))
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                                                                                                                                    (144 ::
                                                                                                                                                                                                                                       Integer)
                                                                                                                                                                                                                                    (14287528571658597862 ::
                                                                                                                                                                                                                                       Integer)
                                                                                                                                                                                                                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                       (MAlonzo.RTE.Related
                                                                                                                                                                                                                                          (-500.0 ::
                                                                                                                                                                                                                                             Double)))))
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                                                                                                                       (146 ::
                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                       (14287528571658597862 ::
                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                          (MAlonzo.RTE.Related
                                                                                                                                                                                                                                             (-500.0 ::
                                                                                                                                                                                                                                                Double)))))
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                                                                                                                                          (148 ::
                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                          (14287528571658597862 ::
                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                             (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                (-500.0 ::
                                                                                                                                                                                                                                                   Double)))))
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                                                                                                             (150 ::
                                                                                                                                                                                                                                                Integer)
                                                                                                                                                                                                                                             (14287528571658597862 ::
                                                                                                                                                                                                                                                Integer)
                                                                                                                                                                                                                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                   (-500.0 ::
                                                                                                                                                                                                                                                      Double)))))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                (152 ::
                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                (14287528571658597862 ::
                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                   (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                      (-500.0 ::
                                                                                                                                                                                                                                                         Double)))))
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                   (154 ::
                                                                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                                                                   (14287528571658597862 ::
                                                                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                      (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                         (-500.0 ::
                                                                                                                                                                                                                                                            Double)))))
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                      (156 ::
                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                      (14287528571658597862 ::
                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                         (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                            (-500.0 ::
                                                                                                                                                                                                                                                               Double)))))
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                         (158 ::
                                                                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                                                                         (14287528571658597862 ::
                                                                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                            (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                               (-500.0 ::
                                                                                                                                                                                                                                                                  Double)))))
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                            (160 ::
                                                                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                                                                            (14287528571658597862 ::
                                                                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                                                                            "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                               (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                  (-500.0 ::
                                                                                                                                                                                                                                                                     Double)))))
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                               (162 ::
                                                                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                                                                               (14287528571658597862 ::
                                                                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                                                                               "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                  (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                     (-500.0 ::
                                                                                                                                                                                                                                                                        Double)))))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                  (164 ::
                                                                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                                                                  (14287528571658597862 ::
                                                                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                                                                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                     (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                        (-500.0 ::
                                                                                                                                                                                                                                                                           Double)))))
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                     (166 ::
                                                                                                                                                                                                                                                                        Integer)
                                                                                                                                                                                                                                                                     (14287528571658597862 ::
                                                                                                                                                                                                                                                                        Integer)
                                                                                                                                                                                                                                                                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                        (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                           (-500.0 ::
                                                                                                                                                                                                                                                                              Double)))))
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                        (168 ::
                                                                                                                                                                                                                                                                           Integer)
                                                                                                                                                                                                                                                                        (14287528571658597862 ::
                                                                                                                                                                                                                                                                           Integer)
                                                                                                                                                                                                                                                                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                           (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                              (-500.0 ::
                                                                                                                                                                                                                                                                                 Double)))))
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                           (170 ::
                                                                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                                                                           (14287528571658597862 ::
                                                                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                                                                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                              (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                 (-500.0 ::
                                                                                                                                                                                                                                                                                    Double)))))
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                              (172 ::
                                                                                                                                                                                                                                                                                 Integer)
                                                                                                                                                                                                                                                                              (14287528571658597862 ::
                                                                                                                                                                                                                                                                                 Integer)
                                                                                                                                                                                                                                                                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                 (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                    (-500.0 ::
                                                                                                                                                                                                                                                                                       Double)))))
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                              (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                 (174 ::
                                                                                                                                                                                                                                                                                    Integer)
                                                                                                                                                                                                                                                                                 (14287528571658597862 ::
                                                                                                                                                                                                                                                                                    Integer)
                                                                                                                                                                                                                                                                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                       (-500.0 ::
                                                                                                                                                                                                                                                                                          Double)))))
                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                    (176 ::
                                                                                                                                                                                                                                                                                       Integer)
                                                                                                                                                                                                                                                                                    (14287528571658597862 ::
                                                                                                                                                                                                                                                                                       Integer)
                                                                                                                                                                                                                                                                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                          (-500.0 ::
                                                                                                                                                                                                                                                                                             Double)))))
                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                       (178 ::
                                                                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                                                                       (14287528571658597862 ::
                                                                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                                                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                             (-500.0 ::
                                                                                                                                                                                                                                                                                                Double)))))
                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                          (180 ::
                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                          (14287528571658597862 ::
                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                (-500.0 ::
                                                                                                                                                                                                                                                                                                   Double)))))
                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                             (182 ::
                                                                                                                                                                                                                                                                                                Integer)
                                                                                                                                                                                                                                                                                             (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                Integer)
                                                                                                                                                                                                                                                                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                   (-500.0 ::
                                                                                                                                                                                                                                                                                                      Double)))))
                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                (184 ::
                                                                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                                                                (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                      (-500.0 ::
                                                                                                                                                                                                                                                                                                         Double)))))
                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                   (186 ::
                                                                                                                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                                                                                                                   (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                                                                                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                         (-500.0 ::
                                                                                                                                                                                                                                                                                                            Double)))))
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                      (188 ::
                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                      (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                         (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                            (-500.0 ::
                                                                                                                                                                                                                                                                                                               Double)))))
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                         (190 ::
                                                                                                                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                                                                                                                         (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                                                                                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                            (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                               (-500.0 ::
                                                                                                                                                                                                                                                                                                                  Double)))))
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                            (192 ::
                                                                                                                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                                                                                                                            (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                                                                                                                            "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                               (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                  (-500.0 ::
                                                                                                                                                                                                                                                                                                                     Double)))))
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                               (194 ::
                                                                                                                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                                                                                                                               (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                                                                                                                               "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                  (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                     (-500.0 ::
                                                                                                                                                                                                                                                                                                                        Double)))))
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                  (196 ::
                                                                                                                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                                                                                                                  (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                                                                                                                  "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                     (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                        (-500.0 ::
                                                                                                                                                                                                                                                                                                                           Double)))))
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                     (198 ::
                                                                                                                                                                                                                                                                                                                        Integer)
                                                                                                                                                                                                                                                                                                                     (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                        Integer)
                                                                                                                                                                                                                                                                                                                     "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                        (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                           (-500.0 ::
                                                                                                                                                                                                                                                                                                                              Double)))))
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                        (200 ::
                                                                                                                                                                                                                                                                                                                           Integer)
                                                                                                                                                                                                                                                                                                                        (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                           Integer)
                                                                                                                                                                                                                                                                                                                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                           (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                              (-500.0 ::
                                                                                                                                                                                                                                                                                                                                 Double)))))
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                           (202 ::
                                                                                                                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                                                                                                                           (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                                                                                                                           "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                              (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                 (-500.0 ::
                                                                                                                                                                                                                                                                                                                                    Double)))))
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                                                           (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                              (204 ::
                                                                                                                                                                                                                                                                                                                                 Integer)
                                                                                                                                                                                                                                                                                                                              (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                 Integer)
                                                                                                                                                                                                                                                                                                                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                 (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                    (-500.0 ::
                                                                                                                                                                                                                                                                                                                                       Double)))))
                                                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                                                              (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                 (206 ::
                                                                                                                                                                                                                                                                                                                                    Integer)
                                                                                                                                                                                                                                                                                                                                 (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                    Integer)
                                                                                                                                                                                                                                                                                                                                 "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                       (-500.0 ::
                                                                                                                                                                                                                                                                                                                                          Double)))))
                                                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                    (208 ::
                                                                                                                                                                                                                                                                                                                                       Integer)
                                                                                                                                                                                                                                                                                                                                    (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                       Integer)
                                                                                                                                                                                                                                                                                                                                    "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                          (-500.0 ::
                                                                                                                                                                                                                                                                                                                                             Double)))))
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                       (210 ::
                                                                                                                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                                                                                                                       (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                                                                                                                       "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                             (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                Double)))))
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                          (212 ::
                                                                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                                                                          (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                                                                          "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                   Double)))))
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                             (214 ::
                                                                                                                                                                                                                                                                                                                                                Integer)
                                                                                                                                                                                                                                                                                                                                             (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                Integer)
                                                                                                                                                                                                                                                                                                                                             "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                   (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                      Double)))))
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                (216 ::
                                                                                                                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                                                                                                                (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                                                                                                                "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                      (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                         Double)))))
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                   (218 ::
                                                                                                                                                                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                                                                                                                                                                   (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                      Integer)
                                                                                                                                                                                                                                                                                                                                                   "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                         (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                            Double)))))
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                      (220 ::
                                                                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                                                                      (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                                                                      "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                         (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                            (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                               Double)))))
                                                                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                         (222 ::
                                                                                                                                                                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                                                                                                                                                                         (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                            Integer)
                                                                                                                                                                                                                                                                                                                                                         "Prelude.InferenceRules._\9472\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                                         (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                            MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                            (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                               (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                                  Double)))))
                                                                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                                                                         (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                            (224 ::
                                                                                                                                                                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                                                                                                                                                                            (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                               Integer)
                                                                                                                                                                                                                                                                                                                                                            "Prelude.InferenceRules._\9472\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                               (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                                  (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                                     Double)))))
                                                                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                                                                            (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                               (226 ::
                                                                                                                                                                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                                                                                                                                                                               (14287528571658597862 ::
                                                                                                                                                                                                                                                                                                                                                                  Integer)
                                                                                                                                                                                                                                                                                                                                                               "Prelude.InferenceRules._\9472\9472\9472_"
                                                                                                                                                                                                                                                                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                                  (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                                     (-500.0 ::
                                                                                                                                                                                                                                                                                                                                                                        Double)))))
                                                                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
-- Prelude.STS.GenPremises.genPremises
d_genPremises_266 :: AgdaAny -> AgdaAny -> AgdaAny
d_genPremises_266 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Reflection.Utils.Debug.d_print_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
         (coe
            MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
            (coe
               ("*** Generating premises for constructor:" :: Data.Text.Text))
            (coe
               MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
               (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v1)
               (coe ("***" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
         erased
         (coe
            MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
            (coe ()) (coe du_reduceRuleSyntax_276)
            (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406 v1))
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438 () erased
                 () erased (d_unbundleHypotheses_282 (coe v0) (coe v1))
                 (coe
                    du_extendContextTel_112 ()
                    (coe
                       d_absTelescope_250
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_breakImplicits_280
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))))
                    (coe
                       MAlonzo.Code.Class.Monad.Core.du_mapM_104
                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                       (coe du_reduceRuleSyntax_276)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             du_breakImplicits_280
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))))))
              (\ v3 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                   erased
                   (coe
                      MAlonzo.Code.Class.Monad.Core.du_filterM_140
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                      (coe
                         du_isDecidable'63'_298
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_breakImplicits_280
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))))
                      (coe v3))
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                        erased
                        (coe
                           du_removeUnusedImplicits_312
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 du_breakImplicits_280
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2)))))
                           (coe du_bundleHypotheses_304 (coe v4)))
                        (\ v5 ->
                           case coe v5 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                               -> coe
                                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                    (coe ()) (coe ())
                                    (coe
                                       MAlonzo.Code.Reflection.Utils.Debug.d_print_16
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe ("tactic.premises" :: Data.Text.Text))
                                          (coe (100 :: Integer)))
                                       (coe
                                          MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                          MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                          ("```\n" :: Data.Text.Text)
                                          (MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                             (coe
                                                MAlonzo.Code.Class.Show.Core.d_show_16
                                                MAlonzo.Code.Class.Show.Instances.d_Show'45'Name_68
                                                v0)
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                                                (coe (":" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                   (coe
                                                      MAlonzo.Code.Class.Show.Core.d_show_16
                                                      MAlonzo.Code.Class.Show.Instances.d_Show'45'Term_92
                                                      (MAlonzo.Code.Reflection.Utils.Core.d_tyView_34
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (100 :: Integer)
                                                                     (17751323597233875765 ::
                                                                        Integer)
                                                                     "Prelude.Init.\8707\8263"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                   ("\n" :: Data.Text.Text))))))
                                    (coe
                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                       (coe ()) (coe ())
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_declareDef_392
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
                                             (coe v0))
                                          (MAlonzo.Code.Reflection.Utils.Core.d_tyView_34
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (100 :: Integer)
                                                         (17751323597233875765 :: Integer)
                                                         "Prelude.Init.\8707\8263"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_404 v0
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                                (coe d_absTelescope_250 v6)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                   (coe
                                                      (\ v8 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Reflection.Utils.Args.d_argInfo_34
                                                              (coe
                                                                 MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v8))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v8)))))
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                                      (coe MAlonzo.Code.Data.List.Base.du_zip_182)
                                                      (coe
                                                         MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_reverse_444)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_unzip_186
                                                            (coe
                                                               MAlonzo.Code.Meta.Prelude.du_enumerate_44
                                                               v6)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (32 :: Integer)
                                                         (15581396396021577314 :: Integer)
                                                         "Agda.Builtin.Sigma._,_"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.RightAssoc
                                                            (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (264 :: Integer)
                                                                     (10779521135412943468 ::
                                                                        Integer)
                                                                     "Function.Base.it"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                             _ -> MAlonzo.RTE.mazUnreachableError)))))
-- Prelude.STS.GenPremises._.reduceRuleSyntax
d_reduceRuleSyntax_276 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceRuleSyntax_276 ~v0 ~v1 v2 = du_reduceRuleSyntax_276 v2
du_reduceRuleSyntax_276 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_reduceRuleSyntax_276 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withReduceDefs_454 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe d_whitelist_264))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_350 v0)
-- Prelude.STS.GenPremises._.breakImplicits
d_breakImplicits_280 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_breakImplicits_280 ~v0 ~v1 v2 = du_breakImplicits_280 v2
du_breakImplicits_280 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_breakImplicits_280 v0
  = coe
      MAlonzo.Code.Data.Product.Base.du_map'8322'_150
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Reflection.Utils.Args.du_unArgs_10
           (coe
              MAlonzo.Code.Data.List.Base.du_map_22
              (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36) (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Base.du_break_760
         (\ v1 ->
            MAlonzo.Code.Reflection.AST.Argument.Visibility.d__'8799'__8
              (coe
                 MAlonzo.Code.Reflection.AST.Argument.Information.d_visibility_16
                 (coe
                    MAlonzo.Code.Reflection.Utils.Args.d_argInfo_34
                    (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36 (coe v1))))
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50))
         v0)
-- Prelude.STS.GenPremises._.unbundleHypotheses
d_unbundleHypotheses_282 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_unbundleHypotheses_282 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_246
      (coe d_go_288 (coe v0) (coe v1))
-- Prelude.STS.GenPremises._._.go
d_go_288 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_go_288 v0 v1 = coe d_'46'extendedlambda3_290 (coe v0) (coe v1)
-- Prelude.STS.GenPremises._._..extendedlambda3
d_'46'extendedlambda3_290 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_'46'extendedlambda3_290 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v2) in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
           -> case coe v4 of
                MAlonzo.RTE.QName 76 14176793942586333973 _ _
                  -> case coe v5 of
                       (:) v6 v7
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
                                -> case coe v8 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v10 v11
                                       -> case coe v10 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                                              -> case coe v11 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v12 v13
                                                     -> case coe v12 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                            -> case coe v13 of
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                   -> case coe v7 of
                                                                        (:) v14 v15
                                                                          -> case coe v14 of
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v16 v17
                                                                                 -> case coe v16 of
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v18 v19
                                                                                        -> case coe
                                                                                                  v18 of
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                                                                                               -> case coe
                                                                                                         v19 of
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v20 v21
                                                                                                      -> case coe
                                                                                                                v20 of
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                             -> case coe
                                                                                                                       v21 of
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                    -> case coe
                                                                                                                              v15 of
                                                                                                                         (:) v22 v23
                                                                                                                           -> case coe
                                                                                                                                     v22 of
                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v24 v25
                                                                                                                                  -> case coe
                                                                                                                                            v24 of
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v26 v27
                                                                                                                                         -> case coe
                                                                                                                                                   v26 of
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                -> case coe
                                                                                                                                                          v27 of
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v28 v29
                                                                                                                                                       -> case coe
                                                                                                                                                                 v28 of
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                              -> case coe
                                                                                                                                                                        v29 of
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                     -> case coe
                                                                                                                                                                               v23 of
                                                                                                                                                                          (:) v30 v31
                                                                                                                                                                            -> case coe
                                                                                                                                                                                      v30 of
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v32 v33
                                                                                                                                                                                   -> case coe
                                                                                                                                                                                             v32 of
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v34 v35
                                                                                                                                                                                          -> case coe
                                                                                                                                                                                                    v34 of
                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                                                                 -> case coe
                                                                                                                                                                                                           v35 of
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v36 v37
                                                                                                                                                                                                        -> case coe
                                                                                                                                                                                                                  v36 of
                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                                                                               -> case coe
                                                                                                                                                                                                                         v37 of
                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                                                                      -> case coe
                                                                                                                                                                                                                                v31 of
                                                                                                                                                                                                                           []
                                                                                                                                                                                                                             -> coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     v25)
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     d_go_288
                                                                                                                                                                                                                                     v0
                                                                                                                                                                                                                                     v1
                                                                                                                                                                                                                                     v33)
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
                                                                                             _ -> coe
                                                                                                    v3
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> coe v3
                                                                 _ -> coe v3
                                                          _ -> coe v3
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> coe v3
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> coe v3
                _ -> coe v3
         _ -> coe v3)
-- Prelude.STS.GenPremises._.isDecidable?
d_isDecidable'63'_298 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isDecidable'63'_298 ~v0 ~v1 v2 v3 = du_isDecidable'63'_298 v2 v3
du_isDecidable'63'_298 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isDecidable'63'_298 v0 v1
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_192
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
      (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32)
      (coe MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_882) (coe ())
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (264 :: Integer) (10779521135412943468 :: Integer)
                  "Function.Base.it"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (MAlonzo.Code.Reflection.Utils.Core.d_tyView_34
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                  (coe
                     (MAlonzo.RTE.QName
                        (10 :: Integer) (12646483465183122639 :: Integer)
                        "Class.Decidable.Core._\8263"
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
                        (coe v1))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Prelude.STS.GenPremises._.bundleHypotheses
d_bundleHypotheses_304 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_bundleHypotheses_304 ~v0 ~v1 v2 = du_bundleHypotheses_304 v2
du_bundleHypotheses_304 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_bundleHypotheses_304 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
             (coe
                (MAlonzo.RTE.QName
                   (6 :: Integer) (13559399870857524843 :: Integer)
                   "Agda.Builtin.Unit.\8868"
                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
             (coe v0)
      (:) v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                     (coe
                        (MAlonzo.RTE.QName
                           (76 :: Integer) (14176793942586333973 :: Integer)
                           "Data.Product.Base._\215_"
                           (MAlonzo.RTE.Fixity
                              MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
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
                           (coe v1))
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
                              (coe du_bundleHypotheses_304 (coe v2)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))) in
           coe
             (case coe v2 of
                [] -> coe v1
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises._.removeUnusedImplicits
d_removeUnusedImplicits_312 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_removeUnusedImplicits_312 ~v0 ~v1 v2 v3
  = du_removeUnusedImplicits_312 v2 v3
du_removeUnusedImplicits_312 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_removeUnusedImplicits_312 v0 v1
  = coe
      du_go_324 (coe v1)
      (coe
         MAlonzo.Code.Data.Nat.Base.d_pred_196
         (coe MAlonzo.Code.Data.List.Base.du_length_268 v0))
      (coe v0) (coe v1)
-- Prelude.STS.GenPremises._._.fvs
d_fvs_322 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_fvs_322 ~v0 ~v1 ~v2 v3 = du_fvs_322 v3
du_fvs_322 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
du_fvs_322 v0 = coe d_freeVars_142 v0
-- Prelude.STS.GenPremises._._.go
d_go_324 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_go_324 ~v0 ~v1 ~v2 v3 v4 v5 v6 = du_go_324 v3 v4 v5 v6
du_go_324 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_go_324 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
      (:) v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.WithoutK.du_if'7496'_then_else__14
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                      (coe
                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                         (coe v1))))
                (coe du_fvs_322 (coe v0)))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        du_go_324 (coe v0)
                        (coe MAlonzo.Code.Data.Nat.Base.d_pred_196 (coe v1)) (coe v5)
                        (coe v3))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                          (coe
                             MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                             (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)) v7))))
             (coe
                (\ v6 ->
                   coe
                     du_go_324 (coe v0)
                     (coe MAlonzo.Code.Data.Nat.Base.d_pred_196 (coe v1)) (coe v5)
                     (coe
                        MAlonzo.Code.Reflection.Utils.Substitute.d_mapFreeVars_110
                        MAlonzo.Code.Data.Nat.Base.d_pred_196 v1 v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Prelude.STS.GenPremises.ℝ
d_ℝ_372 a0 a1 = ()
data T_ℝ_372 = C_base_374 | C_step_380 T_ℝ_372
-- Prelude.STS.GenPremises.ℚ
d_ℚ_416 a0 a1 a2 a3 a4 = ()
data T_ℚ_416
  = C_base_424 |
    C_step_434 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Prelude.STS.GenPremises.ℝ′
d_ℝ'8242'_478 a0 a1 = ()
data T_ℝ'8242'_478
  = C_base_480 |
    C_step_490 (Integer -> Integer) (Integer -> Integer)
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Prelude.STS.GenPremises.𝕍
d_𝕍_574 a0 a1 a2 a3 a4 = ()
data T_𝕍_574
  = C_base_582 |
    C_step_596 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Class.Show.Core.T_Show_10
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Prelude.STS.GenPremises.𝕍′
d_𝕍'8242'_646 a0 a1 a2 a3 a4 = ()
data T_𝕍'8242'_646
  = C_base_654 |
    C_step_670 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Class.Show.Core.T_Show_10
               MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Prelude.STS.GenPremises.ℚ′
d_ℚ'8242'_720 a0 a1 a2 a3 a4 = ()
data T_ℚ'8242'_720
  = C_base_728 |
    C_step_740 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Class.Show.Core.T_Show_10
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
