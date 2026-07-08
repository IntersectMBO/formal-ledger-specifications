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

module MAlonzo.Code.Class.Applicative.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base

-- Class.Applicative.Core.Applicative
d_Applicative_8 a0 = ()
data T_Applicative_8
  = C_constructor_58 MAlonzo.Code.Class.Functor.Core.T_Functor_14
                     (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () -> AgdaAny -> AgdaAny)
                     (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () ->
                      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                      () -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.Applicative.Core.Applicative.super
d_super_18 ::
  T_Applicative_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_super_18 v0
  = case coe v0 of
      C_constructor_58 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative.pure
d_pure_20 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_pure_20 v0
  = case coe v0 of
      C_constructor_58 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative._<*>_
d__'60''42''62'__22 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__22 v0
  = case coe v0 of
      C_constructor_58 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative._⊛_
d__'8859'__24 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859'__24 ~v0 v1 = du__'8859'__24 v1
du__'8859'__24 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859'__24 v0 = coe d__'60''42''62'__22 (coe v0)
-- Class.Applicative.Core.Applicative._<*_
d__'60''42'__26 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__26 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'60''42'__26 v1 v2 v4 v6 v7
du__'60''42'__26 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__26 v0 v1 v2 v3 v4
  = coe
      du__'8859'__24 v0 v2 erased v1 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (d_super_18 (coe v0)) v1 erased () erased (\ v5 v6 -> v5) v3)
      v4
-- Class.Applicative.Core.Applicative._*>_
d__'42''62'__32 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__32 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'42''62'__32 v1 v2 v4 v6 v7
du__'42''62'__32 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__32 v0 v1 v2 v3 v4
  = coe
      du__'8859'__24 v0 v2 erased v2 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (d_super_18 (coe v0)) v1 erased v2 erased (\ v5 v6 -> v6) v3)
      v4
-- Class.Applicative.Core.Applicative._<⊛_
d__'60''8859'__38 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''8859'__38 ~v0 v1 = du__'60''8859'__38 v1
du__'60''8859'__38 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''8859'__38 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''42'__26 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core.Applicative._⊛>_
d__'8859''62'__40 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859''62'__40 ~v0 v1 = du__'8859''62'__40 v1
du__'8859''62'__40 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859''62'__40 v0 v1 v2 v3 v4 v5 v6
  = coe du__'42''62'__32 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core.Applicative._⊗_
d__'8855'__42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8855'__42 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'8855'__42 v1 v2 v4 v6 v7
du__'8855'__42 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8855'__42 v0 v1 v2 v3 v4
  = coe
      du__'8859'__24 v0 v2 erased () erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (d_super_18 (coe v0)) v1 erased () erased
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32) v3)
      v4
-- Class.Applicative.Core.Applicative.zipWithA
d_zipWithA_48 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_zipWithA_48 ~v0 v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 v9 v10
  = du_zipWithA_48 v1 v2 v4 v6 v8 v9 v10
du_zipWithA_48 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_zipWithA_48 v0 v1 v2 v3 v4 v5 v6
  = coe
      du__'8859'__24 v0 v2 erased v3 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (d_super_18 (coe v0)) v1 erased () erased v4 v5)
      v6
-- Class.Applicative.Core.Applicative.zipA
d_zipA_56 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_zipA_56 ~v0 v1 v2 ~v3 v4 ~v5 = du_zipA_56 v1 v2 v4
du_zipA_56 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_zipA_56 v0 v1 v2
  = coe
      du_zipWithA_48 (coe v0) (coe v1) (coe v2) (coe ())
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Class.Applicative.Core._._*>_
d__'42''62'__62 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__62 ~v0 v1 = du__'42''62'__62 v1
du__'42''62'__62 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__62 v0 v1 v2 v3 v4 v5 v6
  = coe du__'42''62'__32 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core._._<*_
d__'60''42'__64 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__64 ~v0 v1 = du__'60''42'__64 v1
du__'60''42'__64 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__64 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''42'__26 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core._._<*>_
d__'60''42''62'__66 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__66 v0 = coe d__'60''42''62'__22 (coe v0)
-- Class.Applicative.Core._._<⊛_
d__'60''8859'__68 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''8859'__68 ~v0 v1 = du__'60''8859'__68 v1
du__'60''8859'__68 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''8859'__68 v0 = coe du__'60''8859'__38 (coe v0)
-- Class.Applicative.Core._._⊗_
d__'8855'__70 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8855'__70 ~v0 v1 = du__'8855'__70 v1
du__'8855'__70 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8855'__70 v0 v1 v2 v3 v4 v5 v6
  = coe du__'8855'__42 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core._._⊛_
d__'8859'__72 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859'__72 ~v0 v1 = du__'8859'__72 v1
du__'8859'__72 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859'__72 v0 = coe du__'8859'__24 (coe v0)
-- Class.Applicative.Core._._⊛>_
d__'8859''62'__74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859''62'__74 ~v0 v1 = du__'8859''62'__74 v1
du__'8859''62'__74 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859''62'__74 v0 = coe du__'8859''62'__40 (coe v0)
-- Class.Applicative.Core._.pure
d_pure_76 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_pure_76 v0 = coe d_pure_20 (coe v0)
-- Class.Applicative.Core._.super
d_super_78 ::
  T_Applicative_8 -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_super_78 v0 = coe d_super_18 (coe v0)
-- Class.Applicative.Core._.zipA
d_zipA_80 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_zipA_80 ~v0 v1 = du_zipA_80 v1
du_zipA_80 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du_zipA_80 v0 v1 v2 v3 v4 = coe du_zipA_56 (coe v0) v1 v3
-- Class.Applicative.Core._.zipWithA
d_zipWithA_82 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_zipWithA_82 ~v0 v1 = du_zipWithA_82 v1
du_zipWithA_82 ::
  T_Applicative_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_zipWithA_82 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du_zipWithA_48 (coe v0) v1 v3 v5 v7 v8 v9
-- Class.Applicative.Core.Applicative₀
d_Applicative'8320'_86 a0 = ()
data T_Applicative'8320'_86
  = C_constructor_98 T_Applicative_8
                     (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny)
-- Class.Applicative.Core.Applicative₀.super
d_super_94 :: T_Applicative'8320'_86 -> T_Applicative_8
d_super_94 v0
  = case coe v0 of
      C_constructor_98 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative₀.ε₀
d_ε'8320'_96 ::
  T_Applicative'8320'_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_ε'8320'_96 v0
  = case coe v0 of
      C_constructor_98 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core._.super
d_super_102 :: T_Applicative'8320'_86 -> T_Applicative_8
d_super_102 v0 = coe d_super_94 (coe v0)
-- Class.Applicative.Core._.ε₀
d_ε'8320'_104 ::
  T_Applicative'8320'_86 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_ε'8320'_104 v0 = coe d_ε'8320'_96 (coe v0)
-- Class.Applicative.Core.Alternative
d_Alternative_108 a0 = ()
newtype T_Alternative_108
  = C_constructor_116 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.Applicative.Core.Alternative._<|>_
d__'60''124''62'__114 ::
  T_Alternative_108 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''124''62'__114 v0
  = case coe v0 of
      C_constructor_116 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core._._<|>_
d__'60''124''62'__120 ::
  T_Alternative_108 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''124''62'__120 v0 = coe d__'60''124''62'__114 (coe v0)
-- Class.Applicative.Core.⋃⁺_
d_'8899''8314'__122 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Alternative_108 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
d_'8899''8314'__122 ~v0 v1 ~v2 v3 = du_'8899''8314'__122 v1 v3
du_'8899''8314'__122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Alternative_108 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
du_'8899''8314'__122 v0 v1
  = coe
      MAlonzo.Code.Data.List.NonEmpty.Base.du_foldr'8321'_160
      (coe d__'60''124''62'__114 v1 v0 erased)
-- Class.Applicative.Core.⋃_
d_'8899'__124 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Applicative'8320'_86 -> T_Alternative_108 -> [AgdaAny] -> AgdaAny
d_'8899'__124 ~v0 v1 ~v2 v3 v4 = du_'8899'__124 v1 v3 v4
du_'8899'__124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Applicative'8320'_86 -> T_Alternative_108 -> [AgdaAny] -> AgdaAny
du_'8899'__124 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe d__'60''124''62'__114 v2 v0 erased)
      (coe d_ε'8320'_96 v1 v0 erased)
