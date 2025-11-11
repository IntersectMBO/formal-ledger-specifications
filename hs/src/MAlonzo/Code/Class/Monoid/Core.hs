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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Setoid.Core

-- Class.Monoid.Core.Monoid
d_Monoid_12 a0 a1 a2 = ()
newtype T_Monoid_12 = C_constructor_22 AgdaAny
-- Class.Monoid.Core.Monoid.ε
d_ε_20 :: T_Monoid_12 -> AgdaAny
d_ε_20 v0
  = case coe v0 of
      C_constructor_22 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core._.ε
d_ε_26 :: T_Monoid_12 -> AgdaAny
d_ε_26 v0 = coe d_ε_20 (coe v0)
-- Class.Monoid.Core._.MonoidLaws
d_MonoidLaws_42 a0 a1 a2 a3 a4 = ()
newtype T_MonoidLaws_42
  = C_constructor_314 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Class.Monoid.Core._._.Identity
d_Identity_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_90 = erased
-- Class.Monoid.Core._.MonoidLaws.ε-identity
d_ε'45'identity_308 ::
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_308 v0
  = case coe v0 of
      C_constructor_314 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core._.MonoidLaws.ε-identityˡ
d_ε'45'identity'737'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_310 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'737'_310 v5
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
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_312 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'691'_312 v5
du_ε'45'identity'691'_312 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_312 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_ε'45'identity_308 (coe v0))
-- Class.Monoid.Core._.MonoidLaws≡
d_MonoidLaws'8801'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 -> ()
d_MonoidLaws'8801'_316 = erased
-- Class.Monoid.Core._.ε-identity
d_ε'45'identity_328 ::
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_328 v0 = coe d_ε'45'identity_308 (coe v0)
-- Class.Monoid.Core._.ε-identityʳ
d_ε'45'identity'691'_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_330 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'691'_330 v5
du_ε'45'identity'691'_330 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_330 v0
  = coe du_ε'45'identity'691'_312 (coe v0)
-- Class.Monoid.Core._.ε-identityˡ
d_ε'45'identity'737'_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  MAlonzo.Code.Class.Setoid.Core.T_ISetoid_10 ->
  T_MonoidLaws_42 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_332 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'737'_332 v5
du_ε'45'identity'737'_332 :: T_MonoidLaws_42 -> AgdaAny -> AgdaAny
du_ε'45'identity'737'_332 v0
  = coe du_ε'45'identity'737'_310 (coe v0)
-- Class.Monoid.Core._._.ε-identityʳ
d_ε'45'identity'691'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  T_MonoidLaws_42 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'identity'691'_352 = erased
-- Class.Monoid.Core._._.ε-identityˡ
d_ε'45'identity'737'_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  T_MonoidLaws_42 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'identity'737'_354 = erased
-- Class.Monoid.Core._._.ε-identity
d_ε'45'identity_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_10 ->
  T_Monoid_12 ->
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_356 ~v0 ~v1 ~v2 ~v3 v4 = du_ε'45'identity_356 v4
du_ε'45'identity_356 ::
  T_MonoidLaws_42 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ε'45'identity_356 v0 = coe d_ε'45'identity_308 (coe v0)
