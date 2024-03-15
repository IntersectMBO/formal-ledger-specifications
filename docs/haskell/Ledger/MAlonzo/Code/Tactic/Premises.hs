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

module MAlonzo.Code.Tactic.Premises where

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
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
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
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.MetaPrelude
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Show
import qualified MAlonzo.Code.Reflection.Ext
import qualified MAlonzo.Code.Reflection.Utils
import qualified MAlonzo.Code.Reflection.Utils.Debug

-- Tactic.Premises._.print
d_print_10 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_print_10
  = coe
      MAlonzo.Code.Reflection.Utils.Debug.d_print_20
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Tactic.Premises.genPremises
d_genPremises_24 :: AgdaAny -> AgdaAny -> AgdaAny
d_genPremises_24 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Reflection.Utils.Debug.d_print_20
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
         (coe
            MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
            (coe
               ("*** Generating premises for constructor:" :: Data.Text.Text))
            (coe
               MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
               (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v1)
               (coe ("***" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
         erased
         (coe
            MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__28
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
            (coe ()) (coe du_reduceRuleSyntax_34)
            (coe
               MAlonzo.Code.Class.MonadTC.d_getType_172
               MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v1))
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_82 () erased
                 () erased (d_unbundleHypotheses_42 (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Reflection.Ext.du_extendContextTel_10 ()
                    (coe
                       MAlonzo.Code.Reflection.Ext.d_absTelescope_192
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_breakImplicits_40
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Reflection.Utils.d_viewTy_146 (coe v2))))))
                    (coe
                       MAlonzo.Code.Class.Monad.Core.du_mapM_60
                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                       (coe du_reduceRuleSyntax_34)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             du_breakImplicits_40
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Reflection.Utils.d_viewTy_146 (coe v2))))))))
              (\ v3 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                   erased
                   (coe
                      MAlonzo.Code.Class.Monad.Core.du_filterM_104
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                      (coe
                         du_isDecidable'63'_58
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_breakImplicits_40
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Reflection.Utils.d_viewTy_146 (coe v2))))))
                      (coe v3))
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                        MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
                        erased
                        (coe
                           du_removeUnusedImplicits_74
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 du_breakImplicits_40
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe MAlonzo.Code.Reflection.Utils.d_viewTy_146 (coe v2)))))
                           (coe du_bundleHypotheses_64 v4))
                        (\ v5 ->
                           case coe v5 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                               -> coe
                                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                    (coe ()) (coe ())
                                    (coe
                                       MAlonzo.Code.Reflection.Utils.Debug.d_print_20
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe ("tactic.premises" :: Data.Text.Text))
                                          (coe (100 :: Integer)))
                                       (coe
                                          MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                          MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                          ("```\n" :: Data.Text.Text)
                                          (MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12
                                                v0)
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                (coe (":" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                   (MAlonzo.Code.Reflection.AST.Show.d_showTerm_38
                                                      (coe
                                                         MAlonzo.Code.Reflection.Utils.d_tyView_158
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (8 :: Integer)
                                                                     (14013364223396800871 ::
                                                                        Integer)
                                                                     "Prelude.\8707\8263"
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
                                          MAlonzo.Code.Class.MonadTC.d_declareDef_166
                                          MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742
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
                                          (MAlonzo.Code.Reflection.Utils.d_tyView_158
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (8 :: Integer)
                                                         (14013364223396800871 :: Integer)
                                                         "Prelude.\8707\8263"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe
                                          MAlonzo.Code.Class.MonadTC.d_defineFun_170
                                          MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v0
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                                (coe
                                                   MAlonzo.Code.Reflection.Ext.d_absTelescope_192
                                                   v6)
                                                (coe
                                                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                   () erased () erased
                                                   (\ v8 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Reflection.Utils.du_argInfo_394
                                                           (coe
                                                              MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v8))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v8))))
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                                      (coe MAlonzo.Code.Data.List.Base.du_zip_212)
                                                      (coe
                                                         MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                                                         (coe
                                                            MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_reverse_536)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_unzip_216
                                                            (coe
                                                               MAlonzo.Code.MetaPrelude.du_enumerate_34
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
-- Tactic.Premises._.reduceRuleSyntax
d_reduceRuleSyntax_34 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceRuleSyntax_34 ~v0 ~v1 v2 = du_reduceRuleSyntax_34 v2
du_reduceRuleSyntax_34 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_reduceRuleSyntax_34 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withReduceDefs_450 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               (MAlonzo.RTE.QName
                  (8 :: Integer) (8796295082965660208 :: Integer)
                  "Interface.STS._\8729_"
                  (MAlonzo.RTE.Fixity
                     MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (-100.0 :: Double)))))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  (MAlonzo.RTE.QName
                     (4 :: Integer) (8796295082965660208 :: Integer)
                     "Interface.STS.\8729_"
                     (MAlonzo.RTE.Fixity
                        MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-150.0 :: Double)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     (MAlonzo.RTE.QName
                        (18 :: Integer) (8796295082965660208 :: Integer)
                        "Interface.STS._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                        (MAlonzo.RTE.Fixity
                           MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        (MAlonzo.RTE.QName
                           (14 :: Integer) (8796295082965660208 :: Integer)
                           "Interface.STS.\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                           (MAlonzo.RTE.Fixity
                              MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-501.0 :: Double)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           (MAlonzo.RTE.QName
                              (28 :: Integer) (8796295082965660208 :: Integer)
                              "Interface.STS._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                              (MAlonzo.RTE.Fixity
                                 MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              (MAlonzo.RTE.QName
                                 (24 :: Integer) (8796295082965660208 :: Integer)
                                 "Interface.STS.\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-501.0 :: Double)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
      (coe
         MAlonzo.Code.Class.MonadTC.d_normalise_152
         MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742 v0)
-- Tactic.Premises._.breakImplicits
d_breakImplicits_40 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_breakImplicits_40 ~v0 ~v1 v2 = du_breakImplicits_40 v2
du_breakImplicits_40 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_breakImplicits_40 v0
  = coe
      MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
      (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
      (\ v1 ->
         coe
           MAlonzo.Code.Reflection.Utils.du_unArgs_118
           (coe
              MAlonzo.Code.Class.Functor.Core.du_fmap_22
              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
              () erased (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36)
              v1))
      (coe
         MAlonzo.Code.Data.List.Base.du_break_910
         (\ v1 ->
            coe
              MAlonzo.Code.Reflection.Utils.du_isVisible'63'_400
              (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36 (coe v1)))
         v0)
-- Tactic.Premises._.unbundleHypotheses
d_unbundleHypotheses_42 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_unbundleHypotheses_42 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_272
      (coe d_go_48 (coe v0) (coe v1))
-- Tactic.Premises._._.go
d_go_48 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_go_48 v0 v1 = coe d_'46'extendedlambda0_50 (coe v0) (coe v1)
-- Tactic.Premises._._..extendedlambda0
d_'46'extendedlambda0_50 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_'46'extendedlambda0_50 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v2) in
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
                                                                                                                                                                                                                                     d_go_48
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
-- Tactic.Premises._.isDecidable?
d_isDecidable'63'_58 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isDecidable'63'_58 ~v0 ~v1 v2 v3 = du_isDecidable'63'_58 v2 v3
du_isDecidable'63'_58 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isDecidable'63'_58 v0 v1
  = coe
      MAlonzo.Code.Class.MonadTC.du_isSuccessful_202
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
      (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32)
      (coe MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742) (coe ())
      (coe
         MAlonzo.Code.Class.MonadTC.d_checkType_150
         MAlonzo.Code.Class.MonadTC.d_MonadTC'45'TC_742
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (264 :: Integer) (10779521135412943468 :: Integer)
                  "Function.Base.it"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (MAlonzo.Code.Reflection.Utils.d_tyView_158
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
-- Tactic.Premises._.bundleHypotheses
d_bundleHypotheses_64 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_bundleHypotheses_64 ~v0 ~v1 = du_bundleHypotheses_64
du_bundleHypotheses_64 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_bundleHypotheses_64
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
-- Tactic.Premises._.removeUnusedImplicits
d_removeUnusedImplicits_74 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_removeUnusedImplicits_74 ~v0 ~v1 v2 v3
  = du_removeUnusedImplicits_74 v2 v3
du_removeUnusedImplicits_74 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_removeUnusedImplicits_74 v0 v1
  = coe
      du_go_86 (coe v1)
      (coe
         MAlonzo.Code.Data.Nat.Base.d_pred_154
         (coe MAlonzo.Code.Data.List.Base.du_length_304 v0))
      (coe v0) (coe v1)
-- Tactic.Premises._._.fvs
d_fvs_84 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_fvs_84 ~v0 ~v1 ~v2 v3 = du_fvs_84 v3
du_fvs_84 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
du_fvs_84 v0 = coe MAlonzo.Code.Reflection.Ext.d_freeVars_84 v0
-- Tactic.Premises._._.go
d_go_86 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_go_86 ~v0 ~v1 ~v2 v3 v4 v5 v6 = du_go_86 v3 v4 v5 v6
du_go_86 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_go_86 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_16
             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
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
                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550) (coe v1))))
                (coe du_fvs_84 (coe v0)))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_82 () erased
                     () erased
                     (coe
                        MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                        (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                        (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)))
                     (coe
                        du_go_86 (coe v0)
                        (coe MAlonzo.Code.Data.Nat.Base.d_pred_154 (coe v1)) (coe v5)
                        (coe v3))))
             (coe
                (\ v6 ->
                   coe
                     du_go_86 (coe v0)
                     (coe MAlonzo.Code.Data.Nat.Base.d_pred_154 (coe v1)) (coe v5)
                     (coe
                        MAlonzo.Code.Reflection.Utils.d_mapFreeVars_224
                        MAlonzo.Code.Data.Nat.Base.d_pred_154 v1 v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
