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

module MAlonzo.Code.Foreign.HaskellTypes.Deriving where

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
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
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
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.Text.Printf

-- Foreign.HaskellTypes.Deriving.NameEnv
d_NameEnv_12 = ()
data T_NameEnv_12
  = C_constructor_30 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                     (AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6)
                     (AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6)
                     (AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6)
-- Foreign.HaskellTypes.Deriving.NameEnv.customNames
d_customNames_22 ::
  T_NameEnv_12 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_customNames_22 v0
  = case coe v0 of
      C_constructor_30 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.NameEnv.tName
d_tName_24 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_tName_24 v0
  = case coe v0 of
      C_constructor_30 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.NameEnv.cName
d_cName_26 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_cName_26 v0
  = case coe v0 of
      C_constructor_30 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.NameEnv.fName
d_fName_28 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_fName_28 v0
  = case coe v0 of
      C_constructor_30 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.mapHead
d_mapHead_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapHead_32 ~v0 ~v1 v2 v3 = du_mapHead_32 v2 v3
du_mapHead_32 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_mapHead_32 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.capitalize
d_capitalize_42 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_capitalize_42 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
      (coe
         du_mapHead_32 (coe MAlonzo.Code.Agda.Builtin.Char.d_primToUpper_24)
         (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))
-- Foreign.HaskellTypes.Deriving.uncapitalize
d_uncapitalize_44 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_uncapitalize_44 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d_primStringFromList_14
      (coe
         du_mapHead_32 (coe MAlonzo.Code.Agda.Builtin.Char.d_primToLower_26)
         (coe MAlonzo.Code.Agda.Builtin.String.d_primStringToList_12 v0))
-- Foreign.HaskellTypes.Deriving.lookup
d_lookup_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_lookup_46 v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_lookup_46 v0 v4 v5 v6
du_lookup_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
du_lookup_46 v0 v1 v2 v3
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
-- Foreign.HaskellTypes.Deriving.lookupEnv
d_lookupEnv_54 ::
  (T_NameEnv_12 ->
   AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupEnv_54 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
      (coe
         du_lookup_46 (coe ())
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Reflection.AST.Name.d__'8799'__12))
         (coe v2) (coe d_customNames_22 (coe v1)))
      (coe v0 v1 v2)
-- Foreign.HaskellTypes.Deriving.lookupTypeName
d_lookupTypeName_62 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupTypeName_62
  = coe d_lookupEnv_54 (coe (\ v0 -> d_tName_24 (coe v0)))
-- Foreign.HaskellTypes.Deriving.lookupConName
d_lookupConName_64 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupConName_64
  = coe d_lookupEnv_54 (coe (\ v0 -> d_cName_26 (coe v0)))
-- Foreign.HaskellTypes.Deriving.lookupFieldName
d_lookupFieldName_66 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_lookupFieldName_66
  = coe d_lookupEnv_54 (coe (\ v0 -> d_fName_28 (coe v0)))
-- Foreign.HaskellTypes.Deriving.emptyEnv
d_emptyEnv_68 :: T_NameEnv_12
d_emptyEnv_68
  = coe
      C_constructor_30 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (let v0 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v1 -> v0)))
      (let v0 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v1 -> v0)))
      (let v0 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v1 -> v0)))
-- Foreign.HaskellTypes.Deriving.customName
d_customName_70 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_12
d_customName_70 v0 v1
  = coe
      C_constructor_30
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
-- Foreign.HaskellTypes.Deriving.onTypes
d_onTypes_76 ::
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_12
d_onTypes_76 v0
  = coe
      C_constructor_30 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe v0 (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
-- Foreign.HaskellTypes.Deriving.onConstructors
d_onConstructors_80 ::
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_12
d_onConstructors_80 v0
  = coe
      C_constructor_30 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe v0 (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
-- Foreign.HaskellTypes.Deriving.withName
d_withName_84 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_12
d_withName_84 v0 = coe d_onTypes_76 (coe (\ v1 -> v0))
-- Foreign.HaskellTypes.Deriving.withConstructor
d_withConstructor_88 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_12
d_withConstructor_88 v0
  = coe d_onConstructors_80 (coe (\ v1 -> v0))
-- Foreign.HaskellTypes.Deriving.onFields
d_onFields_92 ::
  (MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
   MAlonzo.Code.Agda.Builtin.String.T_String_6) ->
  T_NameEnv_12
d_onFields_92 v0
  = coe
      C_constructor_30 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
       coe (coe (\ v2 -> v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe v0 (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))))
-- Foreign.HaskellTypes.Deriving.fieldPrefix
d_fieldPrefix_96 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> T_NameEnv_12
d_fieldPrefix_96 v0
  = coe
      d_onFields_92
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.String.Base.d__'43''43'__20 v0
              (d_capitalize_42 (coe v1))))
-- Foreign.HaskellTypes.Deriving._•_
d__'8226'__102 :: T_NameEnv_12 -> T_NameEnv_12 -> T_NameEnv_12
d__'8226'__102 v0 v1
  = coe
      C_constructor_30
      (coe
         MAlonzo.Code.Data.List.Base.du__'43''43'__32
         (coe d_customNames_22 (coe v0)) (coe d_customNames_22 (coe v1)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
              (coe d_tName_24 v0 v2) (coe d_tName_24 v1 v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
              (coe d_cName_26 v0 v2) (coe d_cName_26 v1 v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du__'60''8739''62'__80
              (coe d_fName_28 v0 v2) (coe d_fName_28 v1 v2)))
-- Foreign.HaskellTypes.Deriving._.env.cName
d_cName_114 ::
  T_NameEnv_12 ->
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_cName_114 v0 ~v1 = du_cName_114 v0
du_cName_114 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
du_cName_114 v0 = coe d_cName_26 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env.customNames
d_customNames_116 ::
  T_NameEnv_12 ->
  T_NameEnv_12 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_customNames_116 v0 ~v1 = du_customNames_116 v0
du_customNames_116 ::
  T_NameEnv_12 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_customNames_116 v0 = coe d_customNames_22 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env.fName
d_fName_118 ::
  T_NameEnv_12 ->
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_fName_118 v0 ~v1 = du_fName_118 v0
du_fName_118 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
du_fName_118 v0 = coe d_fName_28 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env.tName
d_tName_120 ::
  T_NameEnv_12 ->
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_tName_120 v0 ~v1 = du_tName_120 v0
du_tName_120 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
du_tName_120 v0 = coe d_tName_24 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env₁.cName
d_cName_124 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_cName_124 v0 = coe d_cName_26 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env₁.customNames
d_customNames_126 ::
  T_NameEnv_12 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_customNames_126 v0 = coe d_customNames_22 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env₁.fName
d_fName_128 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_fName_128 v0 = coe d_fName_28 (coe v0)
-- Foreign.HaskellTypes.Deriving._.env₁.tName
d_tName_130 ::
  T_NameEnv_12 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.String.T_String_6
d_tName_130 v0 = coe d_tName_24 (coe v0)
-- Foreign.HaskellTypes.Deriving.solveHsType
d_solveHsType_138 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_solveHsType_138 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_checkType_348
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (26 :: Integer) (15387014652001289505 :: Integer)
                  "Foreign.HaskellTypes.HsType"
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
                             MAlonzo.RTE.QName 26 15387014652001289505 _ _
                               -> coe
                                    MAlonzo.Code.Reflection.TCM.Format.du_typeErrorFmt_92 ()
                                    ("Failed to solve HsType %t" :: Data.Text.Text) v0
                             _ -> coe v3
                      _ -> coe v3))))
-- Foreign.HaskellTypes.Deriving.debug
d_debug_148 ::
  Integer -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_debug_148
  = coe
      MAlonzo.Code.Reflection.TCM.Format.d_debugPrintFmt_98
      (coe ("tactic.hs-types" :: Data.Text.Text))
-- Foreign.HaskellTypes.Deriving._‼_
d__'8252'__150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Integer -> Maybe AgdaAny
d__'8252'__150 ~v0 ~v1 v2 v3 = du__'8252'__150 v2 v3
du__'8252'__150 :: [AgdaAny] -> Integer -> Maybe AgdaAny
du__'8252'__150 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (coe du__'8252'__150 (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.specialHsTypes
d_specialHsTypes_164 :: [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_specialHsTypes_164
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
-- Foreign.HaskellTypes.Deriving.hsTypeName
d_hsTypeName_166 ::
  T_NameEnv_12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsTypeName_166 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (d_capitalize_42
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))
      (coe d_lookupTypeName_62 v0 v1)
-- Foreign.HaskellTypes.Deriving.freshHsTypeName
d_freshHsTypeName_172 :: T_NameEnv_12 -> AgdaAny -> AgdaAny
d_freshHsTypeName_172 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_390
      (d_hsTypeName_166 (coe v0) (coe v1))
-- Foreign.HaskellTypes.Deriving.hsConName
d_hsConName_178 ::
  T_NameEnv_12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsConName_178 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (d_capitalize_42
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))
      (coe d_lookupConName_64 v0 v1)
-- Foreign.HaskellTypes.Deriving.hsFieldName
d_hsFieldName_184 ::
  T_NameEnv_12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsFieldName_184 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (d_uncapitalize_44
         (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1)))
      (coe d_lookupFieldName_66 v0 v1)
-- Foreign.HaskellTypes.Deriving.freshHsConName
d_freshHsConName_190 ::
  T_NameEnv_12 -> AgdaAny -> AgdaAny -> AgdaAny
d_freshHsConName_190 v0 v1 v2
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
         (d_hsConName_178 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_freshName_390
         (d_hsConName_178 (coe v0) (coe v2)))
-- Foreign.HaskellTypes.Deriving.isThis
d_isThis_198 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> Bool
d_isThis_198 v0 v1
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
-- Foreign.HaskellTypes.Deriving.computeHsType
d_computeHsType_204 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_computeHsType_204 v0 v1 v2
  = let v3 = d_isThis_198 (coe v0) (coe v2) in
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
                            d_debug_148 (10 :: Integer) ("solving HsType %t" :: Data.Text.Text)
                            v2)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                            erased (d_solveHsType_138 (coe v2))
                            (\ v4 ->
                               coe
                                 MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                 (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                                 (coe ())
                                 (coe
                                    d_debug_148 (10 :: Integer) ("HsType %t = %t" :: Data.Text.Text)
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
                                                                                                 (d_computeHsType_204
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
                                                           (d_computeHsType_204
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
                                                          (d_computeHsType_204
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
                                                                  (d_computeHsType_204
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
-- Foreign.HaskellTypes.Deriving.makeHsCon
d_makeHsCon_264 ::
  T_NameEnv_12 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_makeHsCon_264 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
      (coe ())
      (coe
         d_debug_148 (10 :: Integer)
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
                        erased (d_freshHsConName_190 (coe v0) (coe v2) (coe v3))
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
                                     d_debug_148 (10 :: Integer) ("cTy = %t" :: Data.Text.Text) v9)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
                                     erased (d_computeHsType_204 (coe v6) (coe v2) (coe v9))
                                     (\ v10 ->
                                        coe
                                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                          (coe ()) (coe ())
                                          (coe
                                             d_debug_148 (10 :: Integer)
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
-- Foreign.HaskellTypes.Deriving.makeHsData
d_makeHsData_284 ::
  T_NameEnv_12 -> AgdaAny -> Integer -> [AgdaAny] -> AgdaAny
d_makeHsData_284 v0 v1 ~v2 v3 = du_makeHsData_284 v0 v1 v3
du_makeHsData_284 ::
  T_NameEnv_12 -> AgdaAny -> [AgdaAny] -> AgdaAny
du_makeHsData_284 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_freshHsTypeName_172 (coe v0) (coe v1))
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
                 (coe d_makeHsCon_264 (coe v0) (coe v1) (coe v3)) (coe v2))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                   (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                   (coe ())
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.d_defineData_402 v3 v4)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
                      v3))))
-- Foreign.HaskellTypes.Deriving.makeHsType
d_makeHsType_298 :: T_NameEnv_12 -> AgdaAny -> AgdaAny
d_makeHsType_298 v0 v1
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
                -> coe du_makeHsData_284 (coe v0) (coe v1) (coe v5)
              MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v4 v5
                -> coe
                     du_makeHsData_284 (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
              _ -> coe v3))
-- Foreign.HaskellTypes.Deriving.joinStrings
d_joinStrings_314 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  [MAlonzo.Code.Agda.Builtin.String.T_String_6] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_joinStrings_314 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe MAlonzo.Code.Data.String.Base.d__'43''43'__20)
      (coe ("" :: Data.Text.Text))
      (coe
         MAlonzo.Code.Data.List.Base.du_intersperse_42 (coe v0) (coe v1))
-- Foreign.HaskellTypes.Deriving.compilePragma
d_compilePragma_320 ::
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_compilePragma_320 v0 v1
  = coe
      MAlonzo.Code.Text.Printf.d_printf_26
      ("= data %s (%s)" :: Data.Text.Text)
      (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v0))
      (d_joinStrings_314
         (coe (" | " :: Data.Text.Text))
         (coe
            MAlonzo.Code.Data.List.Base.du_map_22
            (coe MAlonzo.Code.Tactic.Derive.Show.d_showName_24) (coe v1)))
-- Foreign.HaskellTypes.Deriving.renderHsTypeName
d_renderHsTypeName_326 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_renderHsTypeName_326 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_46
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         ("MAlonzo.Code." :: Data.Text.Text)
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v0))
      (coe
         du_lookup_46 (coe ())
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Reflection.AST.Name.d__'8799'__12))
         (coe v0) (coe d_specialHsTypes_164))
-- Foreign.HaskellTypes.Deriving.renderHsType
d_renderHsType_330 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_renderHsType_330 v0
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
                                (d_renderHsTypeName_326 (coe v2))
                                (d_joinStrings_314
                                   (coe (" " :: Data.Text.Text))
                                   (coe d_renderHsArgs_332 (coe v3))) in
                      coe
                        (case coe v3 of
                           [] -> coe d_renderHsTypeName_326 (coe v2)
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
                                                                                         (d_renderHsType_330
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
                                                                                                                                                 (d_renderHsType_330
                                                                                                                                                    (coe
                                                                                                                                                       v12))
                                                                                                                                                 (d_renderHsType_330
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
         _ -> coe v1)
-- Foreign.HaskellTypes.Deriving.renderHsArgs
d_renderHsArgs_332 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.String.T_String_6]
d_renderHsArgs_332 v0
  = case coe v0 of
      [] -> coe v0
      (:) v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v5 v6
                      -> let v7 = d_renderHsArgs_332 (coe v2) in
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
                                                          (coe d_renderHsType_330 (coe v4))
                                                          (coe d_renderHsArgs_332 (coe v2))
                                                   _ -> coe v7
                                            _ -> coe v7
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.foreignPragma
d_foreignPragma_354 :: AgdaAny -> [AgdaAny] -> AgdaAny
d_foreignPragma_354 v0 v1
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
                                MAlonzo.Code.Text.Printf.d_printf_26 ("%s %s" :: Data.Text.Text)
                                (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v2))
                                (d_joinStrings_314
                                   (coe (" " :: Data.Text.Text))
                                   (coe
                                      d_renderHsArgs_332
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_map_22
                                         (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36)
                                         (coe v4)))))
                      _ -> MAlonzo.RTE.mazUnreachableError))))
      (\ v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326 () erased
           (coe
              MAlonzo.Code.Text.Printf.d_printf_26
              ("data %s = %s\n  deriving (Show, Eq, Generic)" :: Data.Text.Text)
              (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v0))
              (d_joinStrings_314 (coe (" | " :: Data.Text.Text)) (coe v2))))
-- Foreign.HaskellTypes.Deriving.foreignPragmaRec
d_foreignPragmaRec_370 ::
  T_NameEnv_12 -> AgdaAny -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_foreignPragmaRec_370 v0 v1 v2 v3
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
                            ("data %s = %s\n  deriving (Show, Eq, Generic)" :: Data.Text.Text)
                            (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v1))
                            (coe
                               MAlonzo.Code.Text.Printf.d_printf_26 ("%s {%s}" :: Data.Text.Text)
                               (MAlonzo.Code.Tactic.Derive.Show.d_showName_24 (coe v4))
                               (d_joinStrings_314
                                  (coe (", " :: Data.Text.Text))
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_zipWith_104
                                     (coe
                                        (\ v9 v10 ->
                                           coe
                                             MAlonzo.Code.Text.Printf.d_printf_26
                                             ("%s :: %s" :: Data.Text.Text) v9
                                             (d_renderHsType_330
                                                (coe
                                                   MAlonzo.Code.Reflection.AST.Argument.d_unArg_74
                                                   (coe v10)))))
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du_map_22
                                        (coe d_hsFieldName_184 (coe v0)) (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du_map_22
                                        (coe MAlonzo.Code.Reflection.AST.Abstraction.d_unAbs_36)
                                        (coe v7))))))
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Foreign.HaskellTypes.Deriving.hsImports
d_hsImports_398 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_hsImports_398
  = coe ("import GHC.Generics (Generic)" :: Data.Text.Text)
-- Foreign.HaskellTypes.Deriving.bindHsType
d_bindHsType_400 :: T_NameEnv_12 -> AgdaAny -> AgdaAny -> AgdaAny
d_bindHsType_400 v0 v1 v2
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
                        ("GHC" :: Data.Text.Text) d_hsImports_398)
                     (coe
                        MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                        (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                        (coe ())
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaCompile_422
                           ("GHC" :: Data.Text.Text) v2
                           (d_compilePragma_320 (coe v2) (coe v6)))
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
                                          (coe d_foreignPragma_354 (coe v2) (coe v6))
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_record'45'type_296 v9 v10
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__32
                                          (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6)
                                          (coe ()) (coe ())
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.d_pragmaForeign_420
                                             ("GHC" :: Data.Text.Text))
                                          (coe
                                             d_foreignPragmaRec_370 (coe v0) (coe v2) (coe v6)
                                             (coe
                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                (coe
                                                   MAlonzo.Code.Reflection.AST.Argument.d_unArg_74)
                                                (coe v10)))
                                   _ -> coe v8))))
              _ -> coe v4))
-- Foreign.HaskellTypes.Deriving.computeProjections
d_computeProjections_418 :: Integer -> AgdaAny -> AgdaAny
d_computeProjections_418 v0 v1
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
-- Foreign.HaskellTypes.Deriving.makeTypeAlias
d_makeTypeAlias_450 ::
  AgdaAny ->
  T_NameEnv_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_makeTypeAlias_450 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased
      (d_solveHsType_138
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
                 (d_hsTypeName_166 (coe v1) (coe v0))
                 (d_renderHsType_330 (coe v3))))
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
-- Foreign.HaskellTypes.Deriving.doAutoHsType
d_doAutoHsType_460 ::
  T_NameEnv_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_doAutoHsType_460 v0 v1 v2
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
                  (14 :: Integer) (15387014652001289505 :: Integer)
                  "Foreign.HaskellTypes.HasHsType"
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
         erased (d_makeHsType_298 (coe v0) (coe v1))
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
              (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
              (coe ())
              (coe
                 d_debug_148 (50 :: Integer) ("  HsType %q = %q" :: Data.Text.Text)
                 v1 v3)
              (coe
                 MAlonzo.Code.Class.Monad.Core.du__'62''62'__24
                 (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6) (coe ())
                 (coe ()) (coe d_bindHsType_400 (coe v0) (coe v1) (coe v3))
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
                                               (20 :: Integer) (15387014652001289505 :: Integer)
                                               "Foreign.HaskellTypes.HasHsType.HsType"
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
-- Foreign.HaskellTypes.Deriving.autoHsType
d_autoHsType_470 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoHsType_470 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.du__'60''36'__24
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
      (coe ()) (coe ()) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe d_doAutoHsType_460 (coe d_emptyEnv_68) (coe v0) (coe v1))
-- Foreign.HaskellTypes.Deriving.autoHsType_⊣_
d_autoHsType_'8867'__476 ::
  AgdaAny ->
  T_NameEnv_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_autoHsType_'8867'__476 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Functor.Core.du__'60''36'__24
      (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'TC_438)
      (coe ()) (coe ()) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe d_doAutoHsType_460 (coe v1) (coe v0) (coe v2))
-- Foreign.HaskellTypes.Deriving._↦_
d__'8614'__484 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d__'8614'__484 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (70 :: Integer) (18008581653501872126 :: Integer)
               "Foreign.HaskellTypes.Deriving.customName"
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
-- Foreign.HaskellTypes.Deriving.hsTypeAlias
d_hsTypeAlias_490 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsTypeAlias_490 v0
  = coe d_makeTypeAlias_450 (coe v0) (coe d_emptyEnv_68)
-- Foreign.HaskellTypes.Deriving.hsTypeAlias_⊣_
d_hsTypeAlias_'8867'__494 ::
  AgdaAny ->
  T_NameEnv_12 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsTypeAlias_'8867'__494 v0 v1
  = coe d_makeTypeAlias_450 (coe v0) (coe v1)
-- Foreign.HaskellTypes.Deriving.hsCon
d_hsCon_500 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsCon_500 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_solveHsType_138 (coe v0))
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
                             (coe du__'8252'__150 (coe v7) (coe v1)))
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Reflection.d_unify_338 v2
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v8)
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              _ -> coe v4))
-- Foreign.HaskellTypes.Deriving.hsProj
d_hsProj_522 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsProj_522 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_solveHsType_138 (coe v0))
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
                                              [] -> coe d_computeProjections_418 (coe v9) (coe v11)
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
                             (coe du__'8252'__150 (coe v7) (coe v1)))
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
-- Foreign.HaskellTypes.Deriving.hsTyName
d_hsTyName_548 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_hsTyName_548 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 () () erased
      erased (d_solveHsType_138 (coe v0))
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
