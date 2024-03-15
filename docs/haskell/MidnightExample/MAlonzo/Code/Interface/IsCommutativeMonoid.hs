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

module MAlonzo.Code.Interface.IsCommutativeMonoid where

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
import qualified MAlonzo.Code.Data.Nat.Properties

-- Interface.IsCommutativeMonoid.IsCommutativeMonoid'
d_IsCommutativeMonoid''_10 a0 a1 a2 = ()
data T_IsCommutativeMonoid''_10
  = C_IsCommutativeMonoid'''46'constructor_677 MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
                                               MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
                                               MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
-- Interface.IsCommutativeMonoid.IsCommutativeMonoid'._≈_
d__'8776'__26 ::
  T_IsCommutativeMonoid''_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__26 = erased
-- Interface.IsCommutativeMonoid.IsCommutativeMonoid'.semigroup
d_semigroup_28 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_semigroup_28 v0
  = case coe v0 of
      C_IsCommutativeMonoid'''46'constructor_677 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsCommutativeMonoid.IsCommutativeMonoid'.monoid
d_monoid_30 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_monoid_30 v0
  = case coe v0 of
      C_IsCommutativeMonoid'''46'constructor_677 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsCommutativeMonoid.IsCommutativeMonoid'.isCommutativeMonoid
d_isCommutativeMonoid_32 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_32 v0
  = case coe v0 of
      C_IsCommutativeMonoid'''46'constructor_677 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsCommutativeMonoid.fromCommMonoid'
d_fromCommMonoid''_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_fromCommMonoid''_40 ~v0 ~v1 ~v2 v3 = du_fromCommMonoid''_40 v3
du_fromCommMonoid''_40 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_fromCommMonoid''_40 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      (MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe d_semigroup_28 (coe v0)))
      (MAlonzo.Code.Class.Monoid.Core.d_ε_20 (coe d_monoid_30 (coe v0)))
      (d_isCommutativeMonoid_32 (coe v0))
-- Interface.IsCommutativeMonoid._._≈_
d__'8776'__48 ::
  T_IsCommutativeMonoid''_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__48 = erased
-- Interface.IsCommutativeMonoid._.isCommutativeMonoid
d_isCommutativeMonoid_50 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_50 v0 = coe d_isCommutativeMonoid_32 (coe v0)
-- Interface.IsCommutativeMonoid._.monoid
d_monoid_52 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.Monoid.Core.T_Monoid_12
d_monoid_52 v0 = coe d_monoid_30 (coe v0)
-- Interface.IsCommutativeMonoid._.semigroup
d_semigroup_54 ::
  T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10
d_semigroup_54 v0 = coe d_semigroup_28 (coe v0)
-- Interface.IsCommutativeMonoid.toCommMonoid'
d_toCommMonoid''_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  T_IsCommutativeMonoid''_10
d_toCommMonoid''_62 ~v0 ~v1 v2 = du_toCommMonoid''_62 v2
du_toCommMonoid''_62 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  T_IsCommutativeMonoid''_10
du_toCommMonoid''_62 v0
  = coe
      C_IsCommutativeMonoid'''46'constructor_677
      (coe
         MAlonzo.Code.Class.Semigroup.Core.C_Semigroup'46'constructor_25
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 (coe v0)))
      (coe
         MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_37
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844 (coe v0))
-- Interface.IsCommutativeMonoid.ℕ-commMonoid'
d_ℕ'45'commMonoid''_78 :: T_IsCommutativeMonoid''_10
d_ℕ'45'commMonoid''_78
  = coe
      du_toCommMonoid''_62
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196)
