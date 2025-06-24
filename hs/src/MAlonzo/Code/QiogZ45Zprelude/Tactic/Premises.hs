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

module MAlonzo.Code.QiogZ45Zprelude.Tactic.Premises where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Foldable.Instances
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
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Meta.Prelude
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.Utils.Args
import qualified MAlonzo.Code.Reflection.Utils.Core
import qualified MAlonzo.Code.Reflection.Utils.Debug
import qualified MAlonzo.Code.Reflection.Utils.Substitute
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Reflection

-- iog-prelude.Tactic.Premises._.errorP
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
-- iog-prelude.Tactic.Premises._.genSimpleDef
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
-- iog-prelude.Tactic.Premises._.print
d_print_94 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_print_94
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_print_16
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- iog-prelude.Tactic.Premises._.printContext
d_printContext_96 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_printContext_96
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printContext_42
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- iog-prelude.Tactic.Premises._.printCurrentContext
d_printCurrentContext_98 :: AgdaAny
d_printCurrentContext_98
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printCurrentContext_58
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- iog-prelude.Tactic.Premises._.printLn
d_printLn_100 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_printLn_100
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printLn_18
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- iog-prelude.Tactic.Premises._.printLns
d_printLns_102 ::
  [MAlonzo.Code.Agda.Builtin.String.T_String_6] -> AgdaAny
d_printLns_102
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printLns_24
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- iog-prelude.Tactic.Premises._.printS
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
-- iog-prelude.Tactic.Premises._.printTerm
d_printTerm_106 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_printTerm_106
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_printTerm_34
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- iog-prelude.Tactic.Premises.genPremises
d_genPremises_108 :: AgdaAny -> AgdaAny -> AgdaAny
d_genPremises_108 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
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
            MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
            (coe ()) (coe du_reduceRuleSyntax_118)
            (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406 v1))
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_82 () erased
                 () erased (d_unbundleHypotheses_126 (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.QstdlibZ45Zmeta.Reflection.du_extendContextTel_90 ()
                    (coe
                       MAlonzo.Code.QstdlibZ45Zmeta.Reflection.d_absTelescope_242
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_breakImplicits_124
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))))
                    (coe
                       MAlonzo.Code.Class.Monad.Core.du_mapM_60
                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                       (coe du_reduceRuleSyntax_118)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             du_breakImplicits_124
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))))))
              (\ v3 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                   erased
                   (coe
                      MAlonzo.Code.Class.Monad.Core.du_filterM_104
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                      (coe
                         du_isDecidable'63'_142
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_breakImplicits_124
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))))
                      (coe v3))
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                        erased
                        (coe
                           du_removeUnusedImplicits_158
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 du_breakImplicits_124
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2)))))
                           (coe du_bundleHypotheses_148 v4))
                        (\ v5 ->
                           case coe v5 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                               -> coe
                                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
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
                                                                     (8 :: Integer)
                                                                     (485937610136811148 :: Integer)
                                                                     "iog-prelude.Prelude.Init.\8707\8263"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                   ("\n" :: Data.Text.Text))))))
                                    (coe
                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
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
                                                         (8 :: Integer)
                                                         (485937610136811148 :: Integer)
                                                         "iog-prelude.Prelude.Init.\8707\8263"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.d_defineFun_404 v0
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zmeta.Reflection.d_absTelescope_242
                                                   v6)
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                   (coe
                                                      (\ v8 ->
                                                         coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe
                                                              MAlonzo.Code.Reflection.Utils.Args.du_argInfo_34
                                                              (coe
                                                                 MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36
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
                                                            MAlonzo.Code.Data.List.Base.du_reverse_460)
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
-- iog-prelude.Tactic.Premises._.reduceRuleSyntax
d_reduceRuleSyntax_118 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceRuleSyntax_118 ~v0 ~v1 v2 = du_reduceRuleSyntax_118 v2
du_reduceRuleSyntax_118 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_reduceRuleSyntax_118 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withReduceDefs_454 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               (MAlonzo.RTE.QName
                  (6 :: Integer) (1304513467043467816 :: Integer)
                  "iog-prelude.Prelude.InferenceRules._\8729_"
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
                        (168 :: Integer) (14287528571658597862 :: Integer)
                        "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                        (MAlonzo.RTE.Fixity
                           MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        (MAlonzo.RTE.QName
                           (840 :: Integer) (14287528571658597862 :: Integer)
                           "Prelude.InferenceRules.\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                           (MAlonzo.RTE.Fixity
                              MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-501.0 :: Double)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           (MAlonzo.RTE.QName
                              (154 :: Integer) (14287528571658597862 :: Integer)
                              "Prelude.InferenceRules._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                              (MAlonzo.RTE.Fixity
                                 MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              (MAlonzo.RTE.QName
                                 (826 :: Integer) (14287528571658597862 :: Integer)
                                 "Prelude.InferenceRules.\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-501.0 :: Double)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_350 v0)
-- iog-prelude.Tactic.Premises._.breakImplicits
d_breakImplicits_124 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_breakImplicits_124 ~v0 ~v1 v2 = du_breakImplicits_124 v2
du_breakImplicits_124 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_breakImplicits_124 v0
  = coe
      MAlonzo.Code.Data.Product.Base.du_map'8322'_150
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Reflection.Utils.Args.du_unArgs_10
           (coe
              MAlonzo.Code.Data.List.Base.du_map_22
              (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36)
              (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Base.du_break_776
         (\ v1 ->
            coe
              MAlonzo.Code.Reflection.Utils.Args.du_isVisible'63'_40
              (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36 (coe v1)))
         v0)
-- iog-prelude.Tactic.Premises._.unbundleHypotheses
d_unbundleHypotheses_126 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_unbundleHypotheses_126 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_246
      (coe d_go_132 (coe v0) (coe v1))
-- iog-prelude.Tactic.Premises._._.go
d_go_132 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_go_132 v0 v1 = coe d_'46'extendedlambda0_134 (coe v0) (coe v1)
-- iog-prelude.Tactic.Premises._._..extendedlambda0
d_'46'extendedlambda0_134 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_'46'extendedlambda0_134 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2) in
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
                                                                                                                                                                                                                                     d_go_132
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
-- iog-prelude.Tactic.Premises._.isDecidable?
d_isDecidable'63'_142 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isDecidable'63'_142 ~v0 ~v1 v2 v3 = du_isDecidable'63'_142 v2 v3
du_isDecidable'63'_142 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isDecidable'63'_142 v0 v1
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_190
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
      (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_30)
      (coe MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_878) (coe ())
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
-- iog-prelude.Tactic.Premises._.bundleHypotheses
d_bundleHypotheses_148 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_bundleHypotheses_148 ~v0 ~v1 = du_bundleHypotheses_148
du_bundleHypotheses_148 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_bundleHypotheses_148
  = coe
      MAlonzo.Code.Class.Foldable.Instances.du_go_12 (coe ())
      (coe
         MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
         (coe
            (\ v0 v1 ->
               coe
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
                       (coe v0))
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
      (coe
         MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (6 :: Integer) (13559399870857524843 :: Integer)
                  "Agda.Builtin.Unit.\8868"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- iog-prelude.Tactic.Premises._.removeUnusedImplicits
d_removeUnusedImplicits_158 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_removeUnusedImplicits_158 ~v0 ~v1 v2 v3
  = du_removeUnusedImplicits_158 v2 v3
du_removeUnusedImplicits_158 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_removeUnusedImplicits_158 v0 v1
  = coe
      du_go_170 (coe v1)
      (coe
         MAlonzo.Code.Data.Nat.Base.d_pred_192
         (coe MAlonzo.Code.Data.List.Base.du_length_284 v0))
      (coe v0) (coe v1)
-- iog-prelude.Tactic.Premises._._.fvs
d_fvs_168 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_fvs_168 ~v0 ~v1 ~v2 v3 = du_fvs_168 v3
du_fvs_168 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
du_fvs_168 v0
  = coe MAlonzo.Code.QstdlibZ45Zmeta.Reflection.d_freeVars_134 v0
-- iog-prelude.Tactic.Premises._._.go
d_go_170 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_go_170 ~v0 ~v1 ~v2 v3 v4 v5 v6 = du_go_170 v3 v4 v5 v6
du_go_170 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_go_170 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
      (:) v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.du_if'7496'_then_else__58
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                      (coe
                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                         (coe v1))))
                (coe du_fvs_168 (coe v0)))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        du_go_170 (coe v0)
                        (coe MAlonzo.Code.Data.Nat.Base.d_pred_192 (coe v1)) (coe v5)
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
                     du_go_170 (coe v0)
                     (coe MAlonzo.Code.Data.Nat.Base.d_pred_192 (coe v1)) (coe v5)
                     (coe
                        MAlonzo.Code.Reflection.Utils.Substitute.d_mapFreeVars_110
                        MAlonzo.Code.Data.Nat.Base.d_pred_192 v1 v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- iog-prelude.Tactic.Premises.ℝ
d_ℝ_218 a0 a1 = ()
data T_ℝ_218 = C_base_220 | C_step_226 T_ℝ_218
-- iog-prelude.Tactic.Premises.ℚ
d_ℚ_262 a0 a1 a2 a3 a4 = ()
data T_ℚ_262
  = C_base_270 |
    C_step_280 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- iog-prelude.Tactic.Premises.ℝ′
d_ℝ'8242'_324 a0 a1 = ()
data T_ℝ'8242'_324
  = C_base_326 |
    C_step_336 (Integer -> Integer) (Integer -> Integer)
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- iog-prelude.Tactic.Premises.𝕍
d_𝕍_420 a0 a1 a2 a3 a4 = ()
data T_𝕍_420
  = C_base_428 |
    C_step_442 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Class.Show.Core.T_Show_10
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- iog-prelude.Tactic.Premises.𝕍′
d_𝕍'8242'_492 a0 a1 a2 a3 a4 = ()
data T_𝕍'8242'_492
  = C_base_500 |
    C_step_516 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Class.Show.Core.T_Show_10
               MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- iog-prelude.Tactic.Premises.ℚ′
d_ℚ'8242'_566 a0 a1 a2 a3 a4 = ()
data T_ℚ'8242'_566
  = C_base_574 |
    C_step_586 AgdaAny AgdaAny AgdaAny AgdaAny
               MAlonzo.Code.Class.Show.Core.T_Show_10
               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
