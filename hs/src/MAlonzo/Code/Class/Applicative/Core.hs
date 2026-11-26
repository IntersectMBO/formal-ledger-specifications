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
d_Applicative_10 a0 a1 = ()
data T_Applicative_10
  = C_mkApplicative_60 MAlonzo.Code.Class.Functor.Core.T_Functor_16
                       (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                        () -> AgdaAny -> AgdaAny)
                       (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                        () ->
                        MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                        () -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.Applicative.Core.Applicative.super
d_super_20 ::
  T_Applicative_10 -> MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_super_20 v0
  = case coe v0 of
      C_mkApplicative_60 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative.pure
d_pure_22 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_pure_22 v0
  = case coe v0 of
      C_mkApplicative_60 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative._<*>_
d__'60''42''62'__24 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__24 v0
  = case coe v0 of
      C_mkApplicative_60 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative._⊛_
d__'8859'__26 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859'__26 ~v0 ~v1 v2 = du__'8859'__26 v2
du__'8859'__26 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859'__26 v0 = coe d__'60''42''62'__24 (coe v0)
-- Class.Applicative.Core.Applicative._<*_
d__'60''42'__28 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__28 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'60''42'__28 v2 v3 v5 v7 v8
du__'60''42'__28 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__28 v0 v1 v2 v3 v4
  = coe
      du__'8859'__26 v0 v2 erased v1 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
         (d_super_20 (coe v0)) v1 erased () erased (\ v5 v6 -> v5) v3)
      v4
-- Class.Applicative.Core.Applicative._*>_
d__'42''62'__34 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__34 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'42''62'__34 v2 v3 v5 v7 v8
du__'42''62'__34 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__34 v0 v1 v2 v3 v4
  = coe
      du__'8859'__26 v0 v2 erased v2 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
         (d_super_20 (coe v0)) v1 erased v2 erased (\ v5 v6 -> v6) v3)
      v4
-- Class.Applicative.Core.Applicative._<⊛_
d__'60''8859'__40 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''8859'__40 ~v0 ~v1 v2 = du__'60''8859'__40 v2
du__'60''8859'__40 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''8859'__40 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''42'__28 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core.Applicative._⊛>_
d__'8859''62'__42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859''62'__42 ~v0 ~v1 v2 = du__'8859''62'__42 v2
du__'8859''62'__42 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859''62'__42 v0 v1 v2 v3 v4 v5 v6
  = coe du__'42''62'__34 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core.Applicative._⊗_
d__'8855'__44 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8855'__44 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 v8
  = du__'8855'__44 v2 v3 v5 v7 v8
du__'8855'__44 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8855'__44 v0 v1 v2 v3 v4
  = coe
      du__'8859'__26 v0 v2 erased () erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
         (d_super_20 (coe v0)) v1 erased () erased
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32) v3)
      v4
-- Class.Applicative.Core.Applicative.zipWithA
d_zipWithA_50 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_zipWithA_50 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 v7 ~v8 v9 v10 v11
  = du_zipWithA_50 v2 v3 v5 v7 v9 v10 v11
du_zipWithA_50 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_zipWithA_50 v0 v1 v2 v3 v4 v5 v6
  = coe
      du__'8859'__26 v0 v2 erased v3 erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
         (d_super_20 (coe v0)) v1 erased () erased v4 v5)
      v6
-- Class.Applicative.Core.Applicative.zipA
d_zipA_58 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_zipA_58 ~v0 ~v1 v2 v3 ~v4 v5 ~v6 = du_zipA_58 v2 v3 v5
du_zipA_58 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_zipA_58 v0 v1 v2
  = coe
      du_zipWithA_50 (coe v0) (coe v1) (coe v2) (coe ())
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Class.Applicative.Core._._*>_
d__'42''62'__64 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'42''62'__64 ~v0 ~v1 v2 = du__'42''62'__64 v2
du__'42''62'__64 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'42''62'__64 v0 v1 v2 v3 v4 v5 v6
  = coe du__'42''62'__34 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core._._<*_
d__'60''42'__66 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42'__66 ~v0 ~v1 v2 = du__'60''42'__66 v2
du__'60''42'__66 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''42'__66 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''42'__28 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core._._<*>_
d__'60''42''62'__68 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''42''62'__68 v0 = coe d__'60''42''62'__24 (coe v0)
-- Class.Applicative.Core._._<⊛_
d__'60''8859'__70 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''8859'__70 ~v0 ~v1 v2 = du__'60''8859'__70 v2
du__'60''8859'__70 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''8859'__70 v0 = coe du__'60''8859'__40 (coe v0)
-- Class.Applicative.Core._._⊗_
d__'8855'__72 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8855'__72 ~v0 ~v1 v2 = du__'8855'__72 v2
du__'8855'__72 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8855'__72 v0 v1 v2 v3 v4 v5 v6
  = coe du__'8855'__44 (coe v0) v1 v3 v5 v6
-- Class.Applicative.Core._._⊛_
d__'8859'__74 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859'__74 ~v0 ~v1 v2 = du__'8859'__74 v2
du__'8859'__74 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859'__74 v0 = coe du__'8859'__26 (coe v0)
-- Class.Applicative.Core._._⊛>_
d__'8859''62'__76 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8859''62'__76 ~v0 ~v1 v2 = du__'8859''62'__76 v2
du__'8859''62'__76 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8859''62'__76 v0 = coe du__'8859''62'__42 (coe v0)
-- Class.Applicative.Core._.pure
d_pure_78 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_pure_78 v0 = coe d_pure_22 (coe v0)
-- Class.Applicative.Core._.super
d_super_80 ::
  T_Applicative_10 -> MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_super_80 v0 = coe d_super_20 (coe v0)
-- Class.Applicative.Core._.zipA
d_zipA_82 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_zipA_82 ~v0 ~v1 v2 = du_zipA_82 v2
du_zipA_82 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du_zipA_82 v0 v1 v2 v3 v4 = coe du_zipA_58 (coe v0) v1 v3
-- Class.Applicative.Core._.zipWithA
d_zipWithA_84 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_zipWithA_84 ~v0 ~v1 v2 = du_zipWithA_84 v2
du_zipWithA_84 ::
  T_Applicative_10 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_zipWithA_84 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe du_zipWithA_50 (coe v0) v1 v3 v5 v7 v8 v9
-- Class.Applicative.Core.MkApplicative.⇒Functor
d_'8658'Functor_106 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_'8658'Functor_106 ~v0 ~v1 v2 v3 = du_'8658'Functor_106 v2 v3
du_'8658'Functor_106 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
du_'8658'Functor_106 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.C_constructor_34
      (coe
         (\ v2 v3 v4 v5 v6 v7 -> coe v1 v2 v4 v3 v5 (coe v0 () () v6) v7))
-- Class.Applicative.Core.MkApplicative.⇒Applicative
d_'8658'Applicative_112 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_Applicative_10
d_'8658'Applicative_112 ~v0 ~v1 v2 v3
  = du_'8658'Applicative_112 v2 v3
du_'8658'Applicative_112 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () -> () -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_Applicative_10
du_'8658'Applicative_112 v0 v1
  = coe
      C_mkApplicative_60 (coe du_'8658'Functor_106 (coe v0) (coe v1))
      (coe v0) (coe (\ v2 v3 v4 -> coe v1 v2 v4 v3))
-- Class.Applicative.Core.Applicative₀
d_Applicative'8320'_118 a0 a1 = ()
data T_Applicative'8320'_118
  = C_constructor_130 T_Applicative_10
                      (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny)
-- Class.Applicative.Core.Applicative₀.super
d_super_126 :: T_Applicative'8320'_118 -> T_Applicative_10
d_super_126 v0
  = case coe v0 of
      C_constructor_130 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core.Applicative₀.ε₀
d_ε'8320'_128 ::
  T_Applicative'8320'_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_ε'8320'_128 v0
  = case coe v0 of
      C_constructor_130 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core._.super
d_super_134 :: T_Applicative'8320'_118 -> T_Applicative_10
d_super_134 v0 = coe d_super_126 (coe v0)
-- Class.Applicative.Core._.ε₀
d_ε'8320'_136 ::
  T_Applicative'8320'_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_ε'8320'_136 v0 = coe d_ε'8320'_128 (coe v0)
-- Class.Applicative.Core.Alternative
d_Alternative_142 a0 a1 = ()
newtype T_Alternative_142
  = C_constructor_150 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                       () -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.Applicative.Core.Alternative._<|>_
d__'60''124''62'__148 ::
  T_Alternative_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''124''62'__148 v0
  = case coe v0 of
      C_constructor_150 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Applicative.Core._._<|>_
d__'60''124''62'__154 ::
  T_Alternative_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''124''62'__154 v0 = coe d__'60''124''62'__148 (coe v0)
-- Class.Applicative.Core.⋃⁺_
d_'8899''8314'__156 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Alternative_142 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
d_'8899''8314'__156 ~v0 ~v1 v2 ~v3 v4 = du_'8899''8314'__156 v2 v4
du_'8899''8314'__156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Alternative_142 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 -> AgdaAny
du_'8899''8314'__156 v0 v1
  = coe
      MAlonzo.Code.Data.List.NonEmpty.Base.du_foldr'8321'_160
      (coe d__'60''124''62'__148 v1 v0 erased)
-- Class.Applicative.Core.⋃_
d_'8899'__158 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Applicative'8320'_118 ->
  T_Alternative_142 -> [AgdaAny] -> AgdaAny
d_'8899'__158 ~v0 ~v1 v2 ~v3 v4 v5 = du_'8899'__158 v2 v4 v5
du_'8899'__158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Applicative'8320'_118 ->
  T_Alternative_142 -> [AgdaAny] -> AgdaAny
du_'8899'__158 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_216
      (coe d__'60''124''62'__148 v2 v0 erased)
      (coe d_ε'8320'_128 v1 v0 erased)
