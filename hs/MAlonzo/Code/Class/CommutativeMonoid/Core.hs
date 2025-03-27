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
  = C_CommutativeMonoid'46'constructor_677 MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
                                           MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
                                           MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
-- Class.CommutativeMonoid.Core.CommutativeMonoid._≈_
d__'8776'__28 :: T_CommutativeMonoid_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__28 = erased
-- Class.CommutativeMonoid.Core.CommutativeMonoid.semigroup
d_semigroup_30 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_semigroup_30 v0
  = case coe v0 of
      C_CommutativeMonoid'46'constructor_677 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.CommutativeMonoid.Core.CommutativeMonoid.monoid
d_monoid_32 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_monoid_32 v0
  = case coe v0 of
      C_CommutativeMonoid'46'constructor_677 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.CommutativeMonoid.Core.CommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_34 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_34 v0
  = case coe v0 of
      C_CommutativeMonoid'46'constructor_677 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.CommutativeMonoid.Core.Conversion.toBundle
d_toBundle_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_toBundle_44 ~v0 ~v1 ~v2 v3 = du_toBundle_44 v3
du_toBundle_44 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
du_toBundle_44 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      (MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe d_semigroup_30 (coe v0)))
      (MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe d_monoid_32 (coe v0)))
      (d_isCommutativeMonoid_34 (coe v0))
-- Class.CommutativeMonoid.Core.Conversion._._≈_
d__'8776'__52 :: T_CommutativeMonoid_12 -> AgdaAny -> AgdaAny -> ()
d__'8776'__52 = erased
-- Class.CommutativeMonoid.Core.Conversion._.isCommutativeMonoid
d_isCommutativeMonoid_54 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_54 v0 = coe d_isCommutativeMonoid_34 (coe v0)
-- Class.CommutativeMonoid.Core.Conversion._.monoid
d_monoid_56 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_monoid_56 v0 = coe d_monoid_32 (coe v0)
-- Class.CommutativeMonoid.Core.Conversion._.semigroup
d_semigroup_58 ::
  T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_semigroup_58 v0 = coe d_semigroup_30 (coe v0)
-- Class.CommutativeMonoid.Core.Conversion.fromBundle
d_fromBundle_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  T_CommutativeMonoid_12
d_fromBundle_62 ~v0 ~v1 v2 = du_fromBundle_62 v2
du_fromBundle_62 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  T_CommutativeMonoid_12
du_fromBundle_62 v0
  = coe
      C_CommutativeMonoid'46'constructor_677
      (coe
         MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__982 (coe v0)))
      (coe
         MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_984 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_986 (coe v0))
