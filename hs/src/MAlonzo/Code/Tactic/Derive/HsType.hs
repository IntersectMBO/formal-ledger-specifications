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

module MAlonzo.Code.Tactic.Derive.HsType where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.String.Properties
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.DeBruijn
import qualified MAlonzo.Code.Reflection.AST.Name
import qualified MAlonzo.Code.Reflection.AST.Show
import qualified MAlonzo.Code.Reflection.TCM
import qualified MAlonzo.Code.Reflection.TCM.Format
import qualified MAlonzo.Code.Reflection.Utils.Core
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.Text.Printf

-- Tactic.Derive.HsType.NameEnv
d_NameEnv_6 = ()
data T_NameEnv_6
  = C_constructor_24 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                     (AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6)
                     (AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6)
                     (AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6)
-- Tactic.Derive.HsType.NameEnv.customNames
d_customNames_16 ::
  T_NameEnv_6 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_customNames_16 v0
  = case coe v0 of
      C_constructor_24 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.NameEnv.tName
d_tName_18 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_tName_18 v0
  = case coe v0 of
      C_constructor_24 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.NameEnv.cName
d_cName_20 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_cName_20 v0
  = case coe v0 of
      C_constructor_24 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.NameEnv.fName
d_fName_22 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_fName_22 v0
  = case coe v0 of
      C_constructor_24 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.mapHead
d_mapHead_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapHead_26 ~v0 ~v1 v2 v3 = du_mapHead_26 v2 v3
du_mapHead_26 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_mapHead_26 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.capitalize
d_capitalize_36 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_capitalize_36 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
      (coe
         du_mapHead_26 (coe MAlonzo.Code.Agda.Builtin.Char.d_primToUpper_24)
         (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))
-- Tactic.Derive.HsType.uncapitalize
d_uncapitalize_38 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_uncapitalize_38 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
      (coe
         du_mapHead_26 (coe MAlonzo.Code.Agda.Builtin.Char.d_primToLower_26)
         (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))
-- Tactic.Derive.HsType.lookup
d_lookup_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_lookup_40 v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_lookup_40 v0 v4 v5 v6
du_lookup_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
du_lookup_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_64
      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
      (coe
         MAlonzo.Code.Data.List.Base.du_find'7495'_908
         (\ v4 ->
            coe
              MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe v0) (coe v1)
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         v3)
-- Tactic.Derive.HsType.lookupEnv
d_lookupEnv_48 ::
  (T_NameEnv_6 ->
   AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupEnv_48 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
      (coe
         du_lookup_40 (coe ())
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Reflection.AST.Name.d__'8799'__12))
         (coe v2) (coe d_customNames_16 (coe v1)))
      (coe v0 v1 v2)
-- Tactic.Derive.HsType.lookupTypeName
d_lookupTypeName_56 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupTypeName_56
  = coe d_lookupEnv_48 (coe (\ v0 -> d_tName_18 (coe v0)))
-- Tactic.Derive.HsType.lookupConName
d_lookupConName_58 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupConName_58
  = coe d_lookupEnv_48 (coe (\ v0 -> d_cName_20 (coe v0)))
-- Tactic.Derive.HsType.lookupFieldName
d_lookupFieldName_60 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupFieldName_60
  = coe d_lookupEnv_48 (coe (\ v0 -> d_fName_22 (coe v0)))
-- Tactic.Derive.HsType.emptyEnv
d_emptyEnv_62 :: T_NameEnv_6
d_emptyEnv_62
  = coe
      C_constructor_24 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (let v0 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v1 -> v0)))
      (let v0 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v1 -> v0)))
      (let v0 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v1 -> v0)))
-- Tactic.Derive.HsType.customName
d_customName_64 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_6
d_customName_64 v0 v1
  = coe
      C_constructor_24
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v3 -> v2)))
      (let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v3 -> v2)))
      (let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v3 -> v2)))
-- Tactic.Derive.HsType.onTypes
d_onTypes_70 ::
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_6
d_onTypes_70 v0
  = coe
      C_constructor_24 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe v0 (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
-- Tactic.Derive.HsType.onConstructors
d_onConstructors_74 ::
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_6
d_onConstructors_74 v0
  = coe
      C_constructor_24 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe v0 (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
-- Tactic.Derive.HsType.withName
d_withName_78 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_6
d_withName_78 v0 = coe d_onTypes_70 (coe (\ v1 -> v0))
-- Tactic.Derive.HsType.withConstructor
d_withConstructor_82 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_6
d_withConstructor_82 v0
  = coe d_onConstructors_74 (coe (\ v1 -> v0))
-- Tactic.Derive.HsType.onFields
d_onFields_86 ::
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_6
d_onFields_86 v0
  = coe
      C_constructor_24 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe v0 (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))))
-- Tactic.Derive.HsType.fieldPrefix
d_fieldPrefix_90 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_6
d_fieldPrefix_90 v0
  = coe
      d_onFields_86
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.String.Base.d__'43''43'__20 v0
              (d_capitalize_36 (coe v1))))
-- Tactic.Derive.HsType._•_
d__'8226'__96 :: T_NameEnv_6 -> T_NameEnv_6 -> T_NameEnv_6
d__'8226'__96 v0 v1
  = coe
      C_constructor_24
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe d_customNames_16 (coe v0)) (coe d_customNames_16 (coe v1)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
              (coe d_tName_18 v0 v2) (coe d_tName_18 v1 v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
              (coe d_cName_20 v0 v2) (coe d_cName_20 v1 v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
              (coe d_fName_22 v0 v2) (coe d_fName_22 v1 v2)))
-- Tactic.Derive.HsType._.env.cName
d_cName_108 ::
  T_NameEnv_6 ->
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_cName_108 v0 ~v1 = du_cName_108 v0
du_cName_108 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
du_cName_108 v0 = coe d_cName_20 (coe v0)
-- Tactic.Derive.HsType._.env.customNames
d_customNames_110 ::
  T_NameEnv_6 ->
  T_NameEnv_6 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_customNames_110 v0 ~v1 = du_customNames_110 v0
du_customNames_110 ::
  T_NameEnv_6 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_customNames_110 v0 = coe d_customNames_16 (coe v0)
-- Tactic.Derive.HsType._.env.fName
d_fName_112 ::
  T_NameEnv_6 ->
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_fName_112 v0 ~v1 = du_fName_112 v0
du_fName_112 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
du_fName_112 v0 = coe d_fName_22 (coe v0)
-- Tactic.Derive.HsType._.env.tName
d_tName_114 ::
  T_NameEnv_6 ->
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_tName_114 v0 ~v1 = du_tName_114 v0
du_tName_114 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
du_tName_114 v0 = coe d_tName_18 (coe v0)
-- Tactic.Derive.HsType._.env₁.cName
d_cName_118 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_cName_118 v0 = coe d_cName_20 (coe v0)
-- Tactic.Derive.HsType._.env₁.customNames
d_customNames_120 ::
  T_NameEnv_6 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_customNames_120 v0 = coe d_customNames_16 (coe v0)
-- Tactic.Derive.HsType._.env₁.fName
d_fName_122 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_fName_122 v0 = coe d_fName_22 (coe v0)
-- Tactic.Derive.HsType._.env₁.tName
d_tName_124 ::
  T_NameEnv_6 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_tName_124 v0 = coe d_tName_18 (coe v0)
-- Tactic.Derive.HsType.solveHsType
d_solveHsType_132 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solveHsType_132 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (38 :: Integer) (5300038832148290500 :: Integer)
                  "Class.HasHsType.Core._._.HsType"
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
                  (coe v0))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                  (coe
                     (MAlonzo.RTE.QName
                        (22 :: Integer) (18364543503877314478 :: Integer) "Level.0\8467"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
           (coe ())
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_solveInstanceConstraints_486)
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_350 v1)
              (\ v2 ->
                 let v3
                       = coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased v2 in
                 coe
                   (case coe v2 of
                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
                        -> case coe v4 of
                             MAlonzo.RTE.QName 38 5300038832148290500 _ _
                               -> coe
                                    MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                    ("Failed to solve HsType %t" :: Data.Text.Text) v0
                             _ -> coe v3
                      _ -> coe v3))))
-- Tactic.Derive.HsType.debug
d_debug_142 ::
  Integer -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_debug_142
  = coe
      MAlonzo.Code.Reflection.TCM.Format.d_debugPrintFmt_98
      (coe ("tactic.hs-types" :: Data.Text.Text))
-- Tactic.Derive.HsType._‼_
d__'8252'__144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Integer -> Maybe AgdaAny
d__'8252'__144 ~v0 ~v1 v2 v3 = du__'8252'__144 v2 v3
du__'8252'__144 :: [AgdaAny] -> Integer -> Maybe AgdaAny
du__'8252'__144 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (coe du__'8252'__144 (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.specialHsTypes
d_specialHsTypes_158 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_specialHsTypes_158
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (MAlonzo.RTE.QName
               (6 :: Integer) (13559399870857524843 :: Integer)
               "Agda.Builtin.Unit.\8868"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe ("()" :: Data.Text.Text)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (MAlonzo.RTE.QName
                  (6 :: Integer) (13537827747504913145 :: Integer)
                  "Agda.Builtin.Nat.Nat"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe ("Integer" :: Data.Text.Text)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  (MAlonzo.RTE.QName
                     (6 :: Integer) (10098474421514259553 :: Integer)
                     "Agda.Builtin.Int.Int"
                     (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
               (coe ("Integer" :: Data.Text.Text)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     (MAlonzo.RTE.QName
                        (6 :: Integer) (4305008439024043551 :: Integer)
                        "Agda.Builtin.Bool.Bool"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe ("Bool" :: Data.Text.Text)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        (MAlonzo.RTE.QName
                           (10 :: Integer) (15090436609435731260 :: Integer)
                           "Agda.Builtin.List.List"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe ("[]" :: Data.Text.Text)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           (MAlonzo.RTE.QName
                              (22 :: Integer) (3878156331500646419 :: Integer)
                              "Foreign.Haskell.Pair.Pair"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                        (coe ("(,)" :: Data.Text.Text)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              (MAlonzo.RTE.QName
                                 (10 :: Integer) (15412666033012224255 :: Integer)
                                 "Agda.Builtin.Maybe.Maybe"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe ("Maybe" :: Data.Text.Text)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (MAlonzo.RTE.QName
                                    (22 :: Integer) (16169884092978735326 :: Integer)
                                    "Foreign.Haskell.Either.Either"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe ("Either" :: Data.Text.Text)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (6 :: Integer) (17322389743613163802 :: Integer)
                                       "Agda.Builtin.String.String"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe ("Data.Text.Text" :: Data.Text.Text)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Tactic.Derive.HsType.hsTypeName
d_hsTypeName_160 ::
  T_NameEnv_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsTypeName_160 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (d_capitalize_36
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))
      (coe d_lookupTypeName_56 v0 v1)
-- Tactic.Derive.HsType.freshHsTypeName
d_freshHsTypeName_166 :: T_NameEnv_6 -> AgdaAny -> AgdaAny
d_freshHsTypeName_166 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_390
      (d_hsTypeName_160 (coe v0) (coe v1))
-- Tactic.Derive.HsType.hsConName
d_hsConName_172 ::
  T_NameEnv_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsConName_172 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (d_capitalize_36
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))
      (coe d_lookupConName_58 v0 v1)
-- Tactic.Derive.HsType.hsFieldName
d_hsFieldName_178 ::
  T_NameEnv_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsFieldName_178 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (d_uncapitalize_38
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))
      (coe d_lookupFieldName_60 v0 v1)
-- Tactic.Derive.HsType.freshHsConName
d_freshHsConName_184 ::
  T_NameEnv_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_freshHsConName_184 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
      (coe
         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.String.Properties.d__'8799'__54))
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v2))
         (coe ("constructor" :: Data.Text.Text)))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_390
         (d_hsConName_172 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_390
         (d_hsConName_172 (coe v0) (coe v2)))
-- Tactic.Derive.HsType.isThis
d_isThis_192 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isThis_192 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v3 v4
           -> coe
                MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                   (coe MAlonzo.Code.Reflection.AST.Name.d__'8799'__12))
                (coe v0) (coe v3)
         _ -> coe v2)
-- Tactic.Derive.HsType.computeHsType
d_computeHsType_198 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_computeHsType_198 v0 v1 v2
  = let v3 = d_isThis_192 (coe v0) (coe v2) in
    coe
      (if coe v3
         then coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         else (let v4
                     = coe
                         MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                         (coe ())
                         (coe
                            d_debug_142 (10 :: Integer) ("solving HsType %t" :: Data.Text.Text)
                            v2)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                            erased (d_solveHsType_132 (coe v2))
                            (\ v4 ->
                               coe
                                 MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                 (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                                 (coe ())
                                 (coe
                                    d_debug_142 (10 :: Integer) ("HsType %t = %t" :: Data.Text.Text)
                                    v2 v4)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                                    v4))) in
               coe
                 (case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
                      -> case coe v5 of
                           MAlonzo.RTE.QName 10 15090436609435731260 _ _
                             -> case coe v6 of
                                  (:) v7 v8
                                    -> case coe v8 of
                                         (:) v9 v10
                                           -> case coe v9 of
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v11 v12
                                                  -> case coe v11 of
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v13 v14
                                                         -> case coe v13 of
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                -> case coe v14 of
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v15 v16
                                                                       -> case coe v15 of
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                              -> case coe v16 of
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                     -> case coe
                                                                                               v10 of
                                                                                          []
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                                                                 ()
                                                                                                 ()
                                                                                                 erased
                                                                                                 erased
                                                                                                 (d_computeHsType_198
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       v1)
                                                                                                    (coe
                                                                                                       v12))
                                                                                                 (\ v17 ->
                                                                                                    coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                                                      ()
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                         (coe
                                                                                                            (MAlonzo.RTE.QName
                                                                                                               (10 ::
                                                                                                                  Integer)
                                                                                                               (15090436609435731260 ::
                                                                                                                  Integer)
                                                                                                               "Agda.Builtin.List.List"
                                                                                                               (MAlonzo.RTE.Fixity
                                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                               (coe
                                                                                                                  v11)
                                                                                                               (coe
                                                                                                                  v17))
                                                                                                            (coe
                                                                                                               v10))))
                                                                                          _ -> coe
                                                                                                 v4
                                                                                   _ -> coe v4
                                                                            _ -> coe v4
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> coe v4
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> coe v4
                                  _ -> coe v4
                           _ -> coe v4
                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v5 v6
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                             -> case coe v7 of
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v9 v10
                                    -> let v11
                                             = case coe v6 of
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                                                   -> coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                        () () erased erased
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382
                                                           () erased v11 v5
                                                           (d_computeHsType_198
                                                              (coe v0) (coe v1) (coe v12)))
                                                        (\ v13 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                             () () erased erased
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                () erased
                                                                (coe
                                                                   MAlonzo.Code.Reflection.AST.DeBruijn.d_strengthen_292
                                                                   v13))
                                                             (\ v14 ->
                                                                case coe v14 of
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15
                                                                    -> coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                         () erased v15
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                    -> coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382
                                                                         () erased v11 v5
                                                                         (coe
                                                                            MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92
                                                                            ()
                                                                            ("%s free in computed HsType %t"
                                                                             ::
                                                                             Data.Text.Text)
                                                                            v11 v13)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                 _ -> MAlonzo.RTE.mazUnreachableError in
                                       coe
                                         (case coe v9 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                              -> case coe v6 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                     -> coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                          () () erased erased
                                                          (d_computeHsType_198
                                                             (coe v0) (coe v1) (coe v8))
                                                          (\ v14 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336
                                                               () () erased erased
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.d_extendContext_382
                                                                  () erased v12
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe v9)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe v8))
                                                                  (d_computeHsType_198
                                                                     (coe v0) (coe v1) (coe v13)))
                                                               (\ v15 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326
                                                                    () erased
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe v9)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe v14))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe v12) (coe v15)))))
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> coe v4)))
-- Tactic.Derive.HsType.makeHsCon
d_makeHsCon_258 ::
  T_NameEnv_6 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_makeHsCon_258 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
      (coe ())
      (coe
         d_debug_142 (10 :: Integer)
         ("Making constructor %q : %q" :: Data.Text.Text) v3 v1)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
         erased
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.d_normalise_350
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (\ v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                      ("Failed to compute source type for %q" :: Data.Text.Text) v1 in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                        erased (d_freshHsConName_184 (coe v0) (coe v2) (coe v3))
                        (\ v8 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                             erased (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406 v3)
                             (\ v9 ->
                                coe
                                  MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                  (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                                  (coe ())
                                  (coe
                                     d_debug_142 (10 :: Integer) ("cTy = %t" :: Data.Text.Text) v9)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                     erased (d_computeHsType_198 (coe v6) (coe v2) (coe v9))
                                     (\ v10 ->
                                        coe
                                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                          (coe ()) (coe ())
                                          (coe
                                             d_debug_142 (10 :: Integer)
                                             ("hsTy = %t" :: Data.Text.Text) v10)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 ()
                                             erased
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)
                                                   (coe v10))))))))
                 _ -> coe v5)))
-- Tactic.Derive.HsType.makeHsData
d_makeHsData_278 ::
  T_NameEnv_6 -> AgdaAny -> Integer -> [AgdaAny] -> AgdaAny
d_makeHsData_278 v0 v1 ~v2 v3 = du_makeHsData_278 v0 v1 v3
du_makeHsData_278 :: T_NameEnv_6 -> AgdaAny -> [AgdaAny] -> AgdaAny
du_makeHsData_278 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_freshHsTypeName_166 (coe v0) (coe v1))
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
           (coe ())
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_declareData_396 v3
              (0 :: Integer)
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                       (coe
                          (MAlonzo.RTE.QName
                             (22 :: Integer) (18364543503877314478 :: Integer) "Level.0\8467"
                             (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
              erased
              (coe
                 MAlonzo.Code.Class.Monad.Core.du_mapM_104
                 (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                 (coe d_makeHsCon_258 (coe v0) (coe v1) (coe v3)) (coe v2))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                   (coe ())
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.d_defineData_402 v3 v4)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                      v3))))
-- Tactic.Derive.HsType.makeHsType
d_makeHsType_292 :: T_NameEnv_6 -> AgdaAny -> AgdaAny
d_makeHsType_292 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408 v1)
      (\ v2 ->
         let v3
               = coe
                   MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                   ("%q is not a data or record type" :: Data.Text.Text) v1 in
         coe
           (case coe v2 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v4 v5
                -> coe du_makeHsData_278 (coe v0) (coe v1) (coe v5)
              MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v4 v5
                -> coe
                     du_makeHsData_278 (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              _ -> coe v3))
-- Tactic.Derive.HsType.joinStrings
d_joinStrings_308 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  [MAlonzo.Code.Agda.Builtin.String.T_String_6] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_joinStrings_308 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe MAlonzo.Code.Data.String.Base.d__'43''43'__20)
      (coe ("" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Data.List.Base.du_intersperse_42 (coe v0) (coe v1))
-- Tactic.Derive.HsType.removeUnderscore
d_removeUnderscore_314 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_removeUnderscore_314 v0
  = coe
      d_joinStrings_308 (coe ("." :: Data.Text.Text))
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_648
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'String_46
                    ("_" :: Data.Text.Text) v1)))
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14)
            (coe
               MAlonzo.Code.Data.List.Base.du_wordsBy_802
               (coe
                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Char_40 '.')
               (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))))
-- Tactic.Derive.HsType.compilePragma
d_compilePragma_322 ::
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_compilePragma_322 v0 v1
  = coe
      MAlonzo.Code.Text.Printf.d_printf_26
      ("= data %s (%s)" :: Data.Text.Text)
      (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v0))
      (d_joinStrings_308
         (coe (" | " :: Data.Text.Text))
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24) (coe v1)))
-- Tactic.Derive.HsType.renderHsTypeName
d_renderHsTypeName_328 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_renderHsTypeName_328 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         ("MAlonzo.Code." :: Data.Text.Text)
         (d_removeUnderscore_314
            (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v0)))
      (coe
         du_lookup_40 (coe ())
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Reflection.AST.Name.d__'8799'__12))
         (coe v0) (coe d_specialHsTypes_158))
-- Tactic.Derive.HsType.renderHsType
d_renderHsType_332 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_renderHsType_332 v0
  = let v1
          = coe
              MAlonzo.Code.Text.Printf.d_printf_26
              ("(TODO: renderHsType %s)" :: Data.Text.Text)
              (MAlonzo.Code.Reflection.AST.Show.d_showTerm_40 (coe v0)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> let v4
                    = let v4
                            = coe
                                MAlonzo.Code.Text.Printf.d_printf_26 ("(%s %s)" :: Data.Text.Text)
                                (d_renderHsTypeName_328 (coe v2))
                                (d_joinStrings_308
                                   (coe (" " :: Data.Text.Text))
                                   (coe d_renderHsArgs_334 (coe v3))) in
                      coe
                        (case coe v3 of
                           [] -> coe d_renderHsTypeName_328 (coe v2)
                           _ -> coe v4) in
              coe
                (case coe v2 of
                   MAlonzo.RTE.QName 10 15090436609435731260 _ _
                     -> case coe v3 of
                          (:) v5 v6
                            -> case coe v6 of
                                 (:) v7 v8
                                   -> case coe v7 of
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v9 v10
                                          -> case coe v9 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v11 v12
                                                 -> case coe v11 of
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                        -> case coe v12 of
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v13 v14
                                                               -> case coe v13 of
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                      -> case coe v14 of
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                             -> case coe v8 of
                                                                                  []
                                                                                    -> coe
                                                                                         MAlonzo.Code.Text.Printf.d_printf_26
                                                                                         ("[%s]"
                                                                                          ::
                                                                                          Data.Text.Text)
                                                                                         (d_renderHsType_332
                                                                                            (coe
                                                                                               v10))
                                                                                  _ -> coe v4
                                                                           _ -> coe v4
                                                                    _ -> coe v4
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> coe v4
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v4
                          _ -> coe v4
                   MAlonzo.RTE.QName 22 3878156331500646419 _ _
                     -> case coe v3 of
                          (:) v5 v6
                            -> case coe v6 of
                                 (:) v7 v8
                                   -> case coe v8 of
                                        (:) v9 v10
                                          -> case coe v9 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v11 v12
                                                 -> case coe v11 of
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v13 v14
                                                        -> case coe v13 of
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                               -> case coe v14 of
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v15 v16
                                                                      -> case coe v15 of
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                             -> case coe v16 of
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                    -> case coe
                                                                                              v10 of
                                                                                         (:) v17 v18
                                                                                           -> case coe
                                                                                                     v17 of
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v19 v20
                                                                                                  -> case coe
                                                                                                            v19 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v21 v22
                                                                                                         -> case coe
                                                                                                                   v21 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                -> case coe
                                                                                                                          v22 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v23 v24
                                                                                                                       -> case coe
                                                                                                                                 v23 of
                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                              -> case coe
                                                                                                                                        v24 of
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                     -> case coe
                                                                                                                                               v18 of
                                                                                                                                          []
                                                                                                                                            -> coe
                                                                                                                                                 MAlonzo.Code.Text.Printf.d_printf_26
                                                                                                                                                 ("(%s, %s)"
                                                                                                                                                  ::
                                                                                                                                                  Data.Text.Text)
                                                                                                                                                 (d_renderHsType_332
                                                                                                                                                    (coe
                                                                                                                                                       v12))
                                                                                                                                                 (d_renderHsType_332
                                                                                                                                                    (coe
                                                                                                                                                       v20))
                                                                                                                                          _ -> coe
                                                                                                                                                 v4
                                                                                                                                   _ -> coe
                                                                                                                                          v4
                                                                                                                            _ -> coe
                                                                                                                                   v4
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              _ -> coe
                                                                                                                     v4
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                         _ -> coe v4
                                                                                  _ -> coe v4
                                                                           _ -> coe v4
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> coe v4
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> coe v4
                                 _ -> coe v4
                          _ -> coe v4
                   _ -> coe v4)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v6 v7
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                -> case coe v7 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                              -> case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                     -> case coe v3 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v10 v11
                                                            -> coe
                                                                 MAlonzo.Code.Text.Printf.d_printf_26
                                                                 ("(%s -> %s)" :: Data.Text.Text)
                                                                 (d_renderHsType_332 (coe v5))
                                                                 (d_renderHsType_332 (coe v11))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> coe v1
                                            _ -> coe v1
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v1
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Tactic.Derive.HsType.renderHsArgs
d_renderHsArgs_334 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.String.T_String_6]
d_renderHsArgs_334 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> let v7 = d_renderHsArgs_334 (coe v2) in
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
                                                          (coe d_renderHsType_332 (coe v4))
                                                          (coe d_renderHsArgs_334 (coe v2))
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.canDeriveInstancesT
d_canDeriveInstancesT_362 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_canDeriveInstancesT_362 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v2 v3
           -> coe d_canDeriveInstancesA_364 (coe v3)
         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202 v2 v3
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v6 v7
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                -> case coe v7 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v8 v9
                                       -> case coe v8 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                              -> case coe v9 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                     -> coe
                                                          seq (coe v3)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                   _ -> coe v1
                                            _ -> coe v1
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v1
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Tactic.Derive.HsType.canDeriveInstancesA
d_canDeriveInstancesA_364 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> Bool
d_canDeriveInstancesA_364 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> let v7 = d_canDeriveInstancesA_364 (coe v2) in
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
                                                          MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                                          (coe d_canDeriveInstancesT_362 (coe v4))
                                                          (coe d_canDeriveInstancesA_364 (coe v2))
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.foreignPragma
d_foreignPragma_384 :: AgdaAny -> [AgdaAny] -> AgdaAny
d_foreignPragma_384 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Class.Monad.Core.du_forM_120
         (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
         (coe v1)
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                 erased
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                    erased (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406 v2)
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                         (MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v3))))
                 (\ v3 ->
                    case coe v3 of
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                             (coe
                                MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
                                (coe
                                   MAlonzo.Code.Text.Printf.d_printf_26 ("%s %s" :: Data.Text.Text)
                                   (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v2))
                                   (d_joinStrings_308
                                      (coe (" " :: Data.Text.Text))
                                      (coe
                                         d_renderHsArgs_334
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_map_22
                                            (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36)
                                            (coe v4)))))
                                (d_canDeriveInstancesA_364
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_map_22
                                      (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36)
                                      (coe v4))))
                      _ -> MAlonzo.RTE.mazUnreachableError))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
           (coe
              MAlonzo.Code.Text.Printf.d_printf_26
              ("data %s = %s\n  deriving (%sGeneric)" :: Data.Text.Text)
              (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v0))
              (d_joinStrings_308
                 (coe (" | " :: Data.Text.Text))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Data.List.Base.du_unzip_186 v2)))
              (coe
                 MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                 (coe
                    MAlonzo.Code.Data.List.Base.du_foldl_230
                    (coe MAlonzo.Code.Data.Bool.Base.d__'8743'__24)
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Data.List.Base.du_unzip_186 v2)))
                 (coe ("Show, Eq, " :: Data.Text.Text))
                 (coe ("" :: Data.Text.Text)))))
-- Tactic.Derive.HsType.foreignPragmaRec
d_foreignPragmaRec_404 ::
  T_NameEnv_6 -> AgdaAny -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_foreignPragmaRec_404 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
             ("impossible: %q is a record type with no constructors"
              ::
              Data.Text.Text)
             v1
      (:) v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
             erased
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                erased
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_withNormalisation_428 ()
                   erased (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406 v4))
                (\ v6 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                     (MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v6))))
             (\ v6 ->
                case coe v6 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                    -> coe
                         MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                         (coe
                            MAlonzo.Code.Text.Printf.d_printf_26
                            ("data %s = %s\n  deriving (%sGeneric)" :: Data.Text.Text)
                            (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1))
                            (coe
                               MAlonzo.Code.Text.Printf.d_printf_26 ("%s {%s}" :: Data.Text.Text)
                               (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v4))
                               (d_joinStrings_308
                                  (coe (", " :: Data.Text.Text))
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_zipWith_104
                                     (coe
                                        (\ v9 v10 ->
                                           coe
                                             MAlonzo.Code.Text.Printf.d_printf_26
                                             ("%s :: %s" :: Data.Text.Text) v9
                                             (d_renderHsType_332
                                                (coe
                                                   MAlonzo.Code.Reflection.AST.Argument.d_unArg_74
                                                   (coe v10)))))
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du_map_22
                                        (coe d_hsFieldName_178 (coe v0)) (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du_map_22
                                        (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36)
                                        (coe v7)))))
                            (coe
                               MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                               (coe
                                  d_canDeriveInstancesA_364
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_map_22
                                     (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36)
                                     (coe v7)))
                               (coe ("Show, Eq, " :: Data.Text.Text))
                               (coe ("" :: Data.Text.Text))))
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.HsType.hsImports
d_hsImports_432 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsImports_432
  = coe ("import GHC.Generics (Generic)" :: Data.Text.Text)
-- Tactic.Derive.HsType.bindHsType
d_bindHsType_434 :: T_NameEnv_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_bindHsType_434 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408 v2)
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                   ("%q is not a data type (impossible)" :: Data.Text.Text) v2 in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v5 v6
                -> coe
                     MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                     (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                     (coe ())
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaForeign_420
                        ("GHC" :: Data.Text.Text) d_hsImports_432)
                     (coe
                        MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                        (coe ())
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaCompile_422
                           ("GHC" :: Data.Text.Text) v2
                           (d_compilePragma_322 (coe v2) (coe v6)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                           erased
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408 v1)
                           (\ v7 ->
                              let v8
                                    = coe
                                        MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                        ("%q is not a data or record type" :: Data.Text.Text) v1 in
                              coe
                                (case coe v7 of
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v9 v10
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                          (coe ()) (coe ())
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaForeign_420
                                             ("GHC" :: Data.Text.Text))
                                          (coe d_foreignPragma_384 (coe v2) (coe v6))
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v9 v10
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                          (coe ()) (coe ())
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaForeign_420
                                             ("GHC" :: Data.Text.Text))
                                          (coe
                                             d_foreignPragmaRec_404 (coe v0) (coe v2) (coe v6)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                (coe
                                                   MAlonzo.Code.Reflection.AST.Argument.d_unArg_74)
                                                (coe v10)))
                                   _ -> coe v8))))
              _ -> coe v4))
-- Tactic.Derive.HsType.computeProjections
d_computeProjections_452 :: Integer -> AgdaAny -> AgdaAny
d_computeProjections_452 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
         erased (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getType_406 v1)
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
              (MAlonzo.Code.Reflection.Utils.Core.d_viewTy_22 (coe v2))))
      (\ v2 ->
         case coe v2 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
             -> coe
                  MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                  (coe
                     MAlonzo.Code.Data.List.Base.du_map_22
                     (coe
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_map_22
                                      (coe
                                         (\ v6 ->
                                            case coe v6 of
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v7 v8
                                                -> coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7) (coe v8)
                                              _ -> MAlonzo.RTE.mazUnreachableError))
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
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v1)
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du_map_22
                                               (coe
                                                  (\ v6 ->
                                                     case coe v6 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                                                         -> case coe v8 of
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v9 v10
                                                                -> case coe v10 of
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v11 v12
                                                                       -> coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe v11)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                                               (coe v7))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_drop_542 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_zip_182
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.d_downFrom_404
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                           v3))
                                                     v3)))))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v5)
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_drop_542 (coe v0)
                        (coe
                           MAlonzo.Code.Data.List.Base.d_downFrom_404
                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v3))))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.Derive.HsType.makeTypeAlias
d_makeTypeAlias_484 ::
  AgdaAny ->
  T_NameEnv_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_makeTypeAlias_484 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (d_solveHsType_132
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v0)
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (\ v3 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
           (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
           (coe ())
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaForeign_420
              ("GHC" :: Data.Text.Text)
              (coe
                 MAlonzo.Code.Text.Printf.d_printf_26
                 ("type %s = %s" :: Data.Text.Text)
                 (d_hsTypeName_160 (coe v1) (coe v0))
                 (d_renderHsType_332 (coe v3))))
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2
              (coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                 (coe
                    (MAlonzo.RTE.QName
                       (92 :: Integer) (14950354816602916260 :: Integer)
                       "Class.Monad.Core._.return"
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
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                          (coe
                             (MAlonzo.RTE.QName
                                (8 :: Integer) (13559399870857524843 :: Integer)
                                "Agda.Builtin.Unit.tt"
                                (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Tactic.Derive.HsType.doAutoHsType
d_doAutoHsType_494 ::
  T_NameEnv_6 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_doAutoHsType_494 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348 v2
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (10 :: Integer) (5300038832148290500 :: Integer)
                  "Class.HasHsType.Core.HasHsType"
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
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
         erased (d_makeHsType_292 (coe v0) (coe v1))
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
              (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
              (coe ())
              (coe
                 d_debug_142 (50 :: Integer) ("  HsType %q = %q" :: Data.Text.Text)
                 v1 v3)
              (coe
                 MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                 (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                 (coe ()) (coe d_bindHsType_434 (coe v0) (coe v1) (coe v3))
                 (coe
                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                    (coe ())
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
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
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260
                                         (coe
                                            (MAlonzo.RTE.QName
                                               (16 :: Integer) (5300038832148290500 :: Integer)
                                               "Class.HasHsType.Core.HasHsType.HsType"
                                               (MAlonzo.RTE.Fixity
                                                  MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v3)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
-- Tactic.Derive.HsType.autoHsType
d_autoHsType_504 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoHsType_504 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.du__'60''36'__24
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
      (coe ()) (coe ()) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe d_doAutoHsType_494 (coe d_emptyEnv_62) (coe v0) (coe v1))
-- Tactic.Derive.HsType.autoHsType_⊣_
d_autoHsType_'8867'__510 ::
  AgdaAny ->
  T_NameEnv_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoHsType_'8867'__510 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Functor.Core.du__'60''36'__24
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
      (coe ()) (coe ()) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe d_doAutoHsType_494 (coe v1) (coe v0) (coe v2))
-- Tactic.Derive.HsType._↦_
d__'8614'__518 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d__'8614'__518 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (64 :: Integer) (15422988094639456485 :: Integer)
               "Tactic.Derive.HsType.customName"
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
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_name_148 (coe v0))))
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
                     MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_string_144 (coe v1))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Tactic.Derive.HsType.hsTypeAlias
d_hsTypeAlias_524 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsTypeAlias_524 v0
  = coe d_makeTypeAlias_484 (coe v0) (coe d_emptyEnv_62)
-- Tactic.Derive.HsType.hsTypeAlias_⊣_
d_hsTypeAlias_'8867'__528 ::
  AgdaAny ->
  T_NameEnv_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsTypeAlias_'8867'__528 v0 v1
  = coe d_makeTypeAlias_484 (coe v0) (coe v1)
-- Tactic.Derive.HsType.hsCon
d_hsCon_534 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsCon_534 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_solveHsType_132 (coe v0))
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                   ("Failed to compute HsType of %t" :: Data.Text.Text) v0 in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                        erased
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408 v5)
                        (\ v7 ->
                           let v8
                                 = coe
                                     MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                     ("Expected HsType %t to be a data type, but got %t"
                                      ::
                                      Data.Text.Text)
                                     v0 v3 in
                           coe
                             (case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v9 v10
                                  -> coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                                       v10
                                _ -> coe v8)))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                          erased
                          (coe
                             MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_44
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased)
                             (coe
                                MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                ("%q has only %u constructors" :: Data.Text.Text) v5
                                (coe MAlonzo.Code.Data.List.Base.du_length_268 v7))
                             (coe du__'8252'__144 (coe v7) (coe v1)))
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v8)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              _ -> coe v4))
-- Tactic.Derive.HsType.hsProj
d_hsProj_556 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsProj_556 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_solveHsType_132 (coe v0))
      (\ v3 ->
         let v4
               = coe
                   MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                   ("Failed to compute HsType of %t" :: Data.Text.Text) v0 in
         coe
           (case coe v3 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v5 v6
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                     erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                        erased
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.d_getDefinition_408 v5)
                        (\ v7 ->
                           let v8
                                 = coe
                                     MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                     ("Expected HsType %t to be a single constructor data type, but got %t"
                                      ::
                                      Data.Text.Text)
                                     v0 v3 in
                           coe
                             (case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Reflection.C_data'45'type_290 v9 v10
                                  -> case coe v10 of
                                       (:) v11 v12
                                         -> case coe v12 of
                                              [] -> coe d_computeProjections_452 (coe v9) (coe v11)
                                              _ -> coe v8
                                       _ -> coe v8
                                _ -> coe v8)))
                     (\ v7 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                          erased
                          (coe
                             MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_44
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased)
                             (coe
                                MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                ("%q has only %u fields" :: Data.Text.Text) v5
                                (coe MAlonzo.Code.Data.List.Base.du_length_268 v7))
                             (coe du__'8252'__144 (coe v7) (coe v1)))
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                               erased
                               (coe
                                  MAlonzo.Code.Reflection.TCM.d_newMeta_4
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_agda'45'sort_206
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_set_220
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                           (coe
                                              (MAlonzo.RTE.QName
                                                 (22 :: Integer) (18364543503877314478 :: Integer)
                                                 "Level.0\8467"
                                                 (MAlonzo.RTE.Fixity
                                                    MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                               (\ v9 ->
                                  coe
                                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                    (coe ()) (coe ())
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348 v2
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
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
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                             (coe ("_" :: Data.Text.Text)) (coe v9))))
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2 v8))))
              _ -> coe v4))
-- Tactic.Derive.HsType.hsTyName
d_hsTyName_582 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsTyName_582 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_solveHsType_132 (coe v0))
      (\ v2 ->
         let v3
               = coe
                   MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                   ("Failed to compute HsType of %t" :: Data.Text.Text) v0 in
         coe
           (case coe v2 of
              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v1
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_lit_210
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_name_148 (coe v4)))
              _ -> coe v3))
