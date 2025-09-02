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

module MAlonzo.Code.Class.CommutativeMonoid.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core

-- Class.CommutativeMonoid.Core.CommutativeMonoid
d_CommutativeMonoid_12 a0 a1 a2 = ()
data T_CommutativeMonoid_12
  = C_constructor_36 MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
                     MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
                     MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
-- Class.CommutativeMonoid.Core.CommutativeMonoid._≈_
d__'8776'__28 :: T_CommutativeMonoid_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__28 = erased
-- Class.CommutativeMonoid.Core.CommutativeMonoid.semigroup
d_semigroup_30 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_semigroup_30 v0
  = case coe v0 of
      C_constructor_36 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.CommutativeMonoid.Core.CommutativeMonoid.monoid
d_monoid_32 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_monoid_32 v0
  = case coe v0 of
      C_constructor_36 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.CommutativeMonoid.Core.CommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_34 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_34 v0
  = case coe v0 of
      C_constructor_36 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.CommutativeMonoid.Core.Conversion.toBundle
d_toBundle_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
d_toBundle_46 ~v0 ~v1 ~v2 v3 = du_toBundle_46 v3
du_toBundle_46 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996
du_toBundle_46 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_1088
      (MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe d_semigroup_30 (coe v0)))
      (MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe d_monoid_32 (coe v0)))
      (d_isCommutativeMonoid_34 (coe v0))
-- Class.CommutativeMonoid.Core.Conversion._._≈_
d__'8776'__54 :: T_CommutativeMonoid_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__54 = erased
-- Class.CommutativeMonoid.Core.Conversion._.isCommutativeMonoid
d_isCommutativeMonoid_56 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_764
d_isCommutativeMonoid_56 v0 = coe d_isCommutativeMonoid_34 (coe v0)
-- Class.CommutativeMonoid.Core.Conversion._.monoid
d_monoid_58 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_monoid_58 v0 = coe d_monoid_32 (coe v0)
-- Class.CommutativeMonoid.Core.Conversion._.semigroup
d_semigroup_60 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_semigroup_60 v0 = coe d_semigroup_30 (coe v0)
-- Class.CommutativeMonoid.Core.Conversion.fromBundle
d_fromBundle_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  T_CommutativeMonoid_12
d_fromBundle_64 ~v0 ~v1 v2 = du_fromBundle_64 v2
du_fromBundle_64 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  T_CommutativeMonoid_12
du_fromBundle_64 v0
  = coe
      C_constructor_36
      (coe
         MAlonzo.Code.Class.Semigroup.Core.C_constructor_20
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 (coe v0)))
      (coe
         MAlonzo.Code.Class.Monoid.Core.C_constructor_22
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020 (coe v0))
