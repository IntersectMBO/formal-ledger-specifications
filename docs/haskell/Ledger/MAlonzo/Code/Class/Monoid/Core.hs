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

module MAlonzo.Code.Class.Monoid.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Semigroup.Core

-- Class.Monoid.Core.Monoid
d_Monoid_12 a0 a1 a2 = ()
newtype T_Monoid_12 = C_Monoid'46'constructor_37 AgdaAny
-- Class.Monoid.Core.Monoid.ε
d_ε_20 :: T_Monoid_12 -> AgdaAny
d_ε_20 v0
  = case coe v0 of
      C_Monoid'46'constructor_37 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core._.ε
d_ε_24 :: T_Monoid_12 -> AgdaAny
d_ε_24 v0 = coe d_ε_20 (coe v0)
-- Class.Monoid.Core._.MonoidLaws
d_MonoidLaws_42 a0 a1 a2 a3 a4 a5 = ()
newtype T_MonoidLaws_42
  = C_MonoidLaws'46'constructor_2645 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Class.Monoid.Core._._.Identity
d_Identity_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_90 = erased
-- Class.Monoid.Core._.MonoidLaws.ε-identity
d_ε'45'identity_308 ::
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_308 v0
  = case coe v0 of
      C_MonoidLaws'46'constructor_2645 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core._.MonoidLaws.ε-identityˡ
d_ε'45'identity'737'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ε'45'identity'737'_310 v6
du_ε'45'identity'737'_310 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'737'_310 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_ε'45'identity_308 (coe v0))
-- Class.Monoid.Core._.MonoidLaws.ε-identityʳ
d_ε'45'identity'691'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ε'45'identity'691'_312 v6
du_ε'45'identity'691'_312 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_312 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_ε'45'identity_308 (coe v0))
-- Class.Monoid.Core._._.ε-identity
d_ε'45'identity_316 ::
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_316 v0 = coe d_ε'45'identity_308 (coe v0)
-- Class.Monoid.Core._._.ε-identityʳ
d_ε'45'identity'691'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ε'45'identity'691'_318 v6
du_ε'45'identity'691'_318 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_318 v0
  = coe du_ε'45'identity'691'_312 (coe v0)
-- Class.Monoid.Core._._.ε-identityˡ
d_ε'45'identity'737'_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ε'45'identity'737'_320 v6
du_ε'45'identity'737'_320 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'737'_320 v0
  = coe du_ε'45'identity'737'_310 (coe v0)
-- Class.Monoid.Core._.MonoidLaws≡
d_MonoidLaws'8801'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 -> ()
d_MonoidLaws'8801'_322 = erased
-- Class.Monoid.Core._.ε-identityʳ
d_ε'45'identity'691'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ε'45'identity'691'_326 v6
du_ε'45'identity'691'_326 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_326 v0
  = coe du_ε'45'identity'691'_312 (coe v0)
-- Class.Monoid.Core._.ε-identityˡ
d_ε'45'identity'737'_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_ε'45'identity'737'_328 v6
du_ε'45'identity'737'_328 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'737'_328 v0
  = coe du_ε'45'identity'737'_310 (coe v0)
-- Class.Monoid.Core._.ε-identity
d_ε'45'identity_330 ::
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_330 v0 = coe d_ε'45'identity_308 (coe v0)
